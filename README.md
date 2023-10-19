<a name="readme-top"></a>

<div align="center">
    <br/>

# Budget-App

![e2954fb3deb2407e8e4bcb40b1fd6376](https://github.com/AnsarIbrahim/LeaderBoard-new/assets/117971223/9d715e43-a095-4b33-b5f2-161236e8fdcc)
</div>
<!-- TABLE OF CONTENTS -->

## 📗 Table of Contents

- [📖 Blog app ](#-blog-app-)
  - [🛠 Built With ](#-built-with-)
    - [Tech Stack ](#tech-stack-)
    - [Key Features ](#key-features-)
    - [🚀 Live Demo ](#-live-demo-)
  - [💻 Getting Started ](#-getting-started-)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Install](#install)
    - [Usage](#usage)
  - [👥 Author ](#-author-)
  - [🔭 Future Features ](#-future-features-)
  - [🤝 Contributing ](#-contributing-)
  - [⭐️ Show your support ](#️-show-your-support-)
  - [🙏 Acknowledgments ](#-acknowledgments-)
  - [📝 License ](#-license-)

<!-- PROJECT DESCRIPTION -->

# 📖 Budget-App <a name="about-project"></a>

**Budget-App** is a web-based application designed to help users manage their expenses and budgets effectively. It allows users to track their spending, categorize expenses, and set budget goals to achieve financial control.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <summary>Frontend</summary>
    <li><a href="https://developer.mozilla.org/en-US/docs/Web/HTML">HTML</a></li>
    <li><a href="https://tailwindcss.com/">TailwindCSS</a></li>
    <li><a href="https://developer.mozilla.org/en-US/docs/Web/javascript">JavaScript</a></li>
</details>
<details>
  <summary>Server</summary>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
    <li><a href="https://rubyonrails.org/">Rails</a></li>
</details>
<details>
  <summary>Database</summary>
    <li><a href="https://www.postgresql.org/">PostgreSQL</a></li>
</details>

<!-- Features -->

### Key Features <a name="key-features"></a>

- Create and manage expense categories.
- Add individual transactions.
- View transaction history for each category.
- Calculate and display the total amount spent within each category.
- Set budget goals for different expense categories.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LIVE DEMO -->

## 🚀 Live Demo <a name="live-demo"></a>

- [Live Demo Link]()
- [Video Walkthrough]()

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

To get a local copy up and running, follow these steps.

### Prerequisites

In order to run this project you need:

```
    ruby >= 3.2.0
    rails >= 7.0
    postgres >- 15.3
```

### Setup

Clone this repository to your desired folder:

```bash
  git clone https://github.com/AnsarIbrahim/Budget-App.git
```

You need to set up a database for these project

```
  development = budget_app_dev
  test        = budget_app_test
  production  = budget_app_production
```

or you can use your own database and change the ```config/database.yml```

```yml
  default: &default
    adapter: PostgreSQL
    encoding: Unicode
    pool: 5
    username: [your_username]
    password: [your_password]
    host: localhost

  development:
    <<: *default
    database: [your_database_for_development]

  test:
    <<: *default
    database: [your_database_for_test]

  production:
    <<: *default
    database: [your_database_for_production]
```

### Install

Install this project with:

```bash
  cd budget_app
  bundle install
```

it will install the required gem file for running the project

### Usage

to use this project:

```ruby
   rails server -p 3000
```
```
  rails tailwindcss:watch
```

it will run the server on ```localhost:3000```


<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 👥 Author <a name="author"></a>

👤 **Ansar Ibrahim**
- [GitHub](https://github.com/AnsarIbrahim)
- [LinkedIn](https://linkedin.com/in/ansar-ibrahim/)
- [Twitter](https://twitter.com/ansaradheeb)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

- [ ] Expense categories and tags
- [ ] Customizable spending categories
- [ ] Android and iOS app development
- [ ] Scheduled payment reminders
- [ ] API Documentation

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/AnsarIbrahim/Budget-App/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project you can share this project to your friend

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

> The original design idea for this web page was created by [Gregoire Vella on Behance](https://www.behance.net/gregoirevella).
- I would like to thank Microverse for defining these project requirements.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
