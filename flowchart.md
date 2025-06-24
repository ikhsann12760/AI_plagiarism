```mermaid
# Web Application Flowchart - Plagiarism and AI Text Detection System

flowchart TD
    A[Start] --> B[User Access Web Interface]
    B --> C[Upload File Form]
    C --> D{File Upload?}
    D -->|Yes| E{File Type Check}
    D -->|No| C
    E -->|Invalid| F[Show Error Message]
    F --> C
    E -->|Valid| G[Save File Temporarily]
    G --> H[Extract Text from File]
    H --> I{Text Extraction Successful?}
    I -->|No| J[Show Error: No Text Found]
    J --> C
    I -->|Yes| K[Text Processing]
    
    subgraph "Text Processing"
        K --> L1[Preprocess Text]
        L1 --> L2[Remove Stopwords]
        L2 --> L3[Tokenization]
    end
    
    subgraph "Parallel Analysis"
        K --> M1[Plagiarism Detection]
        K --> M2[AI Text Detection]
        
        M1 --> N1[Calculate TF-IDF]
        N1 --> N2[Compute Cosine Similarity]
        
        M2 --> O1[Call Sapling.ai API]
        O1 --> O2[Get AI Score]
    end
    
    N2 --> P[Combine Results]
    O2 --> P
    P --> Q[Store Results in Session]
    Q --> R[Delete Temporary File]
    R --> S[Display Results]
    
    subgraph "Results Display"
        S --> T1[Show Plagiarism Score]
        S --> T2[Show AI Detection Score]
        S --> T3[Display Charts]
    end
    
    T1 --> U[End]
    T2 --> U
    T3 --> U
```

## Description

This flowchart represents the complete flow of the Plagiarism and AI Text Detection web application. The system processes uploaded documents (PDF/DOCX) through multiple stages:

1. File Upload and Validation
2. Text Extraction
3. Text Processing (preprocessing, stopword removal, tokenization)
4. Parallel Analysis:
   - Plagiarism Detection using TF-IDF and Cosine Similarity
   - AI Text Detection using Sapling.ai API
5. Results Display with Charts and Scores

The application includes error handling, secure file processing, and session management for a robust user experience. 