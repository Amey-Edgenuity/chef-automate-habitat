# Chef-Automate-Habitat
Setting up your complete solution on cloud premises & local using Chef and Habitat

## Prerequisites

* Chef

## Design

![blank diagram - page 1 3](https://user-images.githubusercontent.com/8342133/34644093-7184fe1e-f356-11e7-9210-f7fc4fadc24b.png)

## Contents
* [Provisioning and Deployment](#chef-habitat)
* [Application Management](#hadoop-kafka-grafana)

### Chef
* Chef

Install Knife 

````
$ gem install knife-ec2
````

Create a role
````
$ knife role create nodejs
````

````
{
  "name": "nodejs",
  "description": "",
  "json_class": "Chef::Role",
  "default_attributes": {
  },
  "override_attributes": {
    "nodejs": {
      "version": "0.4.11",
      "npm": "1.0.30"
    }
  },
  "chef_type": "role",
  "run_list": [
    "recipe[apt]",
    "recipe[build-essential]",
    "recipe[git]",
    "recipe[nodejs]",
    "recipe[nodejs::npm]"
  ]
}
````

Create your instance

````
$ knife ec2 server create -x ubuntu -r "role[nodejs]"
````

* Habitat

## References

* [Multi-Server Setup](https://github.com/dwatrous/hadoop-multi-server-ansible)
* [Hadoop Cookbook](https://github.com/caskdata/hadoop_cookbook/blob/master/recipes/)
* [Habitat Examples](https://github.com/habitat-sh/habitat-example-plans)
* [Habitat Docs](https://www.habitat.sh/docs/developing-packages/)

## License

MIT License
