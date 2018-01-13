# Chef-Automate-Habitat
Setting up your complete solution on cloud premises & local using Chef and Habitat

## Prerequisites

* Chef

## Design

![chef-automate-habitat](https://user-images.githubusercontent.com/8342133/34904310-62fdd600-f869-11e7-8aa9-f9da60a268da.png)

## Contents
* [Chef](#chef)
* [Habitat](#habitat)

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
