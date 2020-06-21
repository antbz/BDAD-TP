db.tweets.aggregate(
    [
        {
            $group:
                {
                    _id : '$user.time_zone',
                    count: {$sum:1}
                }
        },
        {
            $sort : {count:-1}
        },
        {
            $limit : 2
        }
    ]
)