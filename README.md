# CRM Test Automation

This project contains automated tests for the CRM application using Robot Framework.

## Project Structure

- `Tests/`: Contains the test cases for the CRM application.
- `Resources/`: Contains reusable keywords and variables.
- `Results/`: Directory where test results are stored.

## Getting Started

### Prerequisites

- Python 3.x
- Robot Framework
- Browser library for Robot Framework

### Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/yourusername/crm-test-automation.git
    cd crm-test-automation
    ```

2. Install the required Python packages:
    ```sh
    pip install -r requirements.txt
    ```

### Running Tests

To execute the test suite, run the following command from the project root directory:
```sh
robot -d Results Tests/crm.robot
```

## Test Suite

### Settings

- **Documentation**: Basic info about the test suite for the CRM application.
- **Resource**: Includes common and CRM-specific keywords.
- **Test Setup**: `Begin Web Test`
- **Test Teardown**: `End Web Test`

### Variables

- `${BROWSER}`: Browser to be used (default is `chrome`).
- `${URL}`: URL of the CRM application.
- `${VALID_LOGIN_EMAIL}`: Valid login email.
- `${VALID_LOGIN_PASSWORD}`: Valid login password.

### Test Cases

1. **Home Page Should Load**
    - Verifies that the home page loads successfully.

2. **Should Be Able To Login with Valid Credentials**
    - Tests login functionality with valid credentials.

3. **Should Be Able To Logout**
    - Tests logout functionality.

4. **Should Be Able To Add New Customer**
    - Tests the functionality of adding a new customer.

## Contributing

1. Fork the repository.
2. Create a new branch (`git checkout -b feature-branch`).
3. Commit your changes (`git commit -am 'Add new feature'`).
4. Push to the branch (`git push origin feature-branch`).
5. Create a new Pull Request.

## License

This project is licensed under the MIT License.
