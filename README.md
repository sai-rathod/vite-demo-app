# Task-02:
# React + Vite Frontend with Jenkins CI/CD

A modern React frontend application built with Vite, featuring automated CI/CD pipeline using Jenkins with local deployment.

## 🚀 Tech Stack

- **React** - JavaScript library for building user interfaces
- **Vite** - Next generation frontend tooling for faster development
- **Jenkins** - CI/CD automation server
- **Docker** - Containerization (optional deployment method)
- **ngrok** - Secure tunneling for local webhook triggers

## 📋 Features

- Hot Module Replacement (HMR) for fast development
- ESLint configuration for code quality
- Automated CI/CD pipeline with Jenkins
- Docker support for containerized deployment
- Webhook-triggered builds
- Local deployment configuration

## 🛠️ Setup & Installation

### Prerequisites

- Node.js (v14 or higher)
- npm or yarn
- Jenkins installed and running
- Docker (optional, for containerized deployment)
- ngrok (for local webhook setup)

### Local Development

1. Clone the repository
```bash
git clone <your-repo-url>
cd <project-directory>
```

2. Install dependencies
```bash
npm install
```

3. Run development server
```bash
npm run dev
```

The application will be available at `http://localhost:5173`

## 🐳 Docker Deployment

Build and run the application using Docker:

```bash
# Build Docker image
docker build -t react-vite-app .

# Run Docker container
docker run -p 5173:5173 react-vite-app
```

## 🔄 CI/CD Pipeline

### Jenkins Pipeline Stages

The Jenkins pipeline includes the following automated stages:

1. **Install Dependencies** - Installs all npm packages
2. **Lint** - Runs ESLint to check code quality
3. **Test** - Executes test suites
4. **Build** - Creates production build
5. **Deploy** - Deploys to local system

### Pipeline Configuration

- Complete CI/CD configuration is available in the `Jenkinsfile`
- Any pipeline changes can be made directly in the Jenkinsfile
- Pipeline is triggered automatically via webhooks

### Webhook Setup

**For Local Development:**
- Webhooks are configured using **ngrok** for secure tunneling
- ngrok exposes local Jenkins instance to receive GitHub/GitLab webhooks

**For EC2/Cloud Deployment:**
- Can be configured using `IP:PORT` directly
- No need for ngrok when using public IP addresses

### Why Local Deployment?

- Jenkins CI runs on Jenkins server
- CD (Continuous Deployment) uses local system
- Reason: Jenkins requires larger EC2 instances for optimal performance
- Cost-effective solution for development/testing environments

## 📁 Project Structure

```
.
├── src/                    # Source files
├── public/                 # Static assets
├── Dockerfile             # Docker configuration
├── Jenkinsfile            # Jenkins pipeline configuration
├── package.json           # Project dependencies
├── vite.config.js         # Vite configuration
├── eslint.config.js       # ESLint rules
└── README.md              # Project documentation
```

## Project Screenshots:
*https://drive.google.com/drive/folders/163WfSB_k15tXuQPfoNNWNRHMcdiFs9Js?usp=sharing*

## 🔧 Available Scripts

```bash
npm run dev          # Start development server
npm run build        # Build for production
npm run preview      # Preview production build
npm run lint         # Run ESLint
npm test             # Run tests
```

## 📦 Build & Production

To create a production build:

```bash
npm run build
```

The build artifacts will be stored in the `dist/` directory.

## 🔌 Vite Plugins

This project uses official Vite plugins:

- **[@vitejs/plugin-react](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react)** - Uses Babel for Fast Refresh
- **[@vitejs/plugin-react-swc](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react-swc)** - Uses SWC for Fast Refresh

## 📝 Notes

- React Compiler is not enabled by default due to performance considerations
- For production applications with TypeScript, refer to the [TS template](https://github.com/vitejs/vite/tree/main/packages/create-vite/template-react-ts)
- ESLint configuration can be expanded based on project requirements

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 👨‍💻 Author

**Your Name**
- GitHub: @sai-rathod
- LinkedIn: www.linkedin.com/in/sayindra-rathod-59601231a

---

**Happy Coding! 🎉**
