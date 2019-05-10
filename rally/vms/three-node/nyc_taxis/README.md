#### Nyc_taxis delete,create,index

``
esrally configure
esrally --track=nyc_taxis --target-hosts=a1:9200 --pipeline=benchmark-only --include-tasks="delete-index,create-index,index" --report-file=report.md
```

##### Three Node Elasticsearch
