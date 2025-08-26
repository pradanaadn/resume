
#import "@preview/fontawesome:0.5.0": fa-icon

#let name = "Putu Gede Pradana Adnyana"
#let locale-catalog-page-numbering-style = context { "Putu Gede Pradana Adnyana - Page " + str(here().page()) + " of " + str(counter(page).final().first()) + "" }
#let locale-catalog-last-updated-date-style = "Last updated in Aug 2025"
#let locale-catalog-language = "en"
#let design-page-size = "a4"
#let design-section-titles-font-size = 1.2em
#let design-colors-text = rgb(0, 0, 0)
#let design-colors-section-titles = rgb(0, 0, 0)
#let design-colors-last-updated-date-and-page-numbering = rgb(128, 128, 128)
#let design-colors-name = rgb(0, 0, 0)
#let design-colors-connections = rgb(0, 0, 0)
#let design-colors-links = rgb(0, 0, 0)
#let design-section-titles-font-family = "XCharter"
#let design-section-titles-bold = true
#let design-section-titles-line-thickness = 0.5pt
#let design-section-titles-font-size = 1.2em
#let design-section-titles-type = "with-full-line"
#let design-section-titles-vertical-space-above = 0.55cm
#let design-section-titles-vertical-space-below = 0.3cm
#let design-section-titles-small-caps = false
#let design-links-use-external-link-icon = false
#let design-text-font-size = 10pt
#let design-text-leading = 0.6em
#let design-text-font-family = "XCharter"
#let design-text-alignment = "justified"
#let design-text-date-and-location-column-alignment = right
#let design-header-photo-width = 3.5cm
#let design-header-use-icons-for-connections = false
#let design-header-name-font-family = "XCharter"
#let design-header-name-font-size = 25pt
#let design-header-name-bold = false
#let design-header-connections-font-family = "XCharter"
#let design-header-vertical-space-between-name-and-connections = 0.7cm
#let design-header-vertical-space-between-connections-and-first-section = 0.7cm
#let design-header-use-icons-for-connections = false
#let design-header-horizontal-space-between-connections = 0.5cm
#let design-header-separator-between-connections = "|"
#let design-header-alignment = center
#let design-highlights-summary-left-margin = 0cm
#let design-highlights-bullet = "•"
#let design-highlights-top-margin = 0.25cm
#let design-highlights-left-margin = 0cm
#let design-highlights-vertical-space-between-highlights = 0.19cm
#let design-highlights-horizontal-space-between-bullet-and-highlights = 0.3em
#let design-entries-vertical-space-between-entries = 0.4cm
#let design-entries-date-and-location-width = 4.15cm
#let design-entries-allow-page-break-in-entries = true
#let design-entries-horizontal-space-between-columns = 0.1cm
#let design-entries-left-and-right-margin = 0cm
#let design-page-top-margin = 2cm
#let design-page-bottom-margin = 2cm
#let design-page-left-margin = 2cm
#let design-page-right-margin = 2cm
#let design-page-show-last-updated-date = true
#let design-page-show-page-numbering = false
#let design-links-underline = true
#let design-entry-types-education-entry-degree-column-width = 1cm
#let date = datetime.today()

// Metadata:
#set document(author: name, title: name + "'s CV", date: date)

// Page settings:
#set page(
  margin: (
    top: design-page-top-margin,
    bottom: design-page-bottom-margin,
    left: design-page-left-margin,
    right: design-page-right-margin,
  ),
  paper: design-page-size,
  footer: if design-page-show-page-numbering {
    text(
      fill: design-colors-last-updated-date-and-page-numbering,
      align(center, [_#locale-catalog-page-numbering-style _]),
      size: 0.9em,
    )
  } else {
    none
  },
  footer-descent: 0% - 0.3em + design-page-bottom-margin / 2,
)
// Text settings:
#let justify
#let hyphenate
#if design-text-alignment == "justified" {
  justify = true
  hyphenate = true
} else if design-text-alignment == "left" {
  justify = false
  hyphenate = false
} else if design-text-alignment == "justified-with-no-hyphenation" {
  justify = true
  hyphenate = false
}
#set text(
  font: design-text-font-family,
  size: design-text-font-size,
  lang: locale-catalog-language,
  hyphenate: hyphenate,
  fill: design-colors-text,
  // Disable ligatures for better ATS compatibility:
  ligatures: true,
)
#set par(
  spacing: 0pt,
  leading: design-text-leading,
  justify: justify,
)
#set enum(
  spacing: design-entries-vertical-space-between-entries,
)

// Highlights settings:
#let highlights(..content) = {
  list(
    ..content,
    marker: design-highlights-bullet,
    spacing: design-highlights-vertical-space-between-highlights,
    indent: design-highlights-left-margin,
    body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
  )
}
#show list: set list(
  marker: design-highlights-bullet,
  spacing: 0pt,
  indent: 0pt,
  body-indent: design-highlights-horizontal-space-between-bullet-and-highlights,
)

// Entry utilities:
#let three-col(
  left-column-width: 1fr,
  middle-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (auto, auto, auto),
) = [
  #block(
    grid(
      columns: (left-column-width, middle-column-width, right-column-width),
      column-gutter: design-entries-horizontal-space-between-columns,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #middle-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

#let two-col(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, auto),
  column-gutter: design-entries-horizontal-space-between-columns,
) = [
  #block(
    grid(
      columns: (left-column-width, right-column-width),
      column-gutter: column-gutter,
      align: alignments,
      ([#set par(spacing: design-text-leading); #left-content]),
      ([#set par(spacing: design-text-leading); #right-content]),
    ),
    breakable: true,
    width: 100%,
  )
]

// Main heading settings:
#let header-font-weight
#if design-header-name-bold {
  header-font-weight = 700
} else {
  header-font-weight = 400
}
#show heading.where(level: 1): it => [
  #set par(spacing: 0pt)
  #set align(design-header-alignment)
  #set text(
    font: design-header-name-font-family,
    weight: header-font-weight,
    size: design-header-name-font-size,
    fill: design-colors-name,
  )
  #it.body
  // Vertical space after the name
  #v(design-header-vertical-space-between-name-and-connections)
]

#let section-title-font-weight
#if design-section-titles-bold {
  section-title-font-weight = 700
} else {
  section-title-font-weight = 400
}

#show heading.where(level: 2): it => [
  #set align(left)
  #set text(size: (1em / 1.2)) // reset
  #set text(
    font: design-section-titles-font-family,
    size: (design-section-titles-font-size),
    weight: section-title-font-weight,
    fill: design-colors-section-titles,
  )
  #let section-title = (
    if design-section-titles-small-caps [
      #smallcaps(it.body)
    ] else [
      #it.body
    ]
  )
  // Vertical space above the section title
  #v(design-section-titles-vertical-space-above, weak: true)
  #block(
    breakable: false,
    width: 100%,
    [
      #if design-section-titles-type == "moderncv" [
        #two-col(
          alignments: (right, left),
          left-column-width: design-entries-date-and-location-width,
          right-column-width: 1fr,
          left-content: [
            #align(horizon, box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles))
          ],
          right-content: [
            #section-title
          ]
        )

      ] else [
        #box(
          [
            #section-title
            #if design-section-titles-type == "with-parial-line" [
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ] else if design-section-titles-type == "with-full-line" [

              #v(design-text-font-size * 0.4)
              #box(width: 1fr, height: design-section-titles-line-thickness, fill: design-colors-section-titles)
            ]
          ]
        )
      ]
     ] + v(1em),
  )
  #v(-1em)
  // Vertical space after the section title
  #v(design-section-titles-vertical-space-below - 0.5em)
]

// Links:
#let original-link = link
#let link(url, body) = {
  body = [#if design-links-underline [#underline(body)] else [#body]]
  body = [#if design-links-use-external-link-icon [#body#h(design-text-font-size/4)#box(
        fa-icon("external-link", size: 0.7em),
        baseline: -10%,
      )] else [#body]]
  body = [#set text(fill: design-colors-links);#body]
  original-link(url, body)
}

// Last updated date text:
#if design-page-show-last-updated-date {
  let dx
  if design-section-titles-type == "moderncv" {
    dx = 0cm
  } else {
    dx = -design-entries-left-and-right-margin
  }
  place(
    top + right,
    dy: -design-page-top-margin / 2,
    dx: dx,
    text(
      [_#locale-catalog-last-updated-date-style _],
      fill: design-colors-last-updated-date-and-page-numbering,
      size: 0.9em,
    ),
  )
}

#let connections(connections-list) = context {
  set text(fill: design-colors-connections, font: design-header-connections-font-family)
  set par(leading: design-text-leading*1.7, justify: false)
  let list-of-connections = ()
  let separator = (
    h(design-header-horizontal-space-between-connections / 2, weak: true)
      + design-header-separator-between-connections
      + h(design-header-horizontal-space-between-connections / 2, weak: true)
  )
  let starting-index = 0
  while (starting-index < connections-list.len()) {
    let left-sum-right-margin
    if type(page.margin) == "dictionary" {
      left-sum-right-margin = page.margin.left + page.margin.right
    } else {
      left-sum-right-margin = page.margin * 4
    }

    let ending-index = starting-index + 1
    while (
      measure(connections-list.slice(starting-index, ending-index).join(separator)).width
        < page.width - left-sum-right-margin
    ) {
      ending-index = ending-index + 1
      if ending-index > connections-list.len() {
        break
      }
    }
    if ending-index > connections-list.len() {
      ending-index = connections-list.len()
    }
    list-of-connections.push(connections-list.slice(starting-index, ending-index).join(separator))
    starting-index = ending-index
  }
  align(list-of-connections.join(linebreak()), design-header-alignment)
  v(design-header-vertical-space-between-connections-and-first-section - design-section-titles-vertical-space-above)
}

#let three-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  middle-content: "",
  right-content: "",
  alignments: (left, auto, right),
) = (
  if design-section-titles-type == "moderncv" [
    #three-col(
      left-column-width: right-column-width,
      middle-column-width: left-column-width,
      right-column-width: 1fr,
      left-content: right-content,
      middle-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      right-content: middle-content,
      alignments: (design-text-date-and-location-column-alignment, left, auto),
    )
  ] else [
    #block(
      [
        #three-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          middle-content: middle-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let two-col-entry(
  left-column-width: 1fr,
  right-column-width: design-entries-date-and-location-width,
  left-content: "",
  right-content: "",
  alignments: (auto, design-text-date-and-location-column-alignment),
  column-gutter: design-entries-horizontal-space-between-columns,
) = (
  if design-section-titles-type == "moderncv" [
    #two-col(
      left-column-width: right-column-width,
      right-column-width: left-column-width,
      left-content: right-content,
      right-content: [
        #block(
          [
            #left-content
          ],
          inset: (
            left: design-entries-left-and-right-margin,
            right: design-entries-left-and-right-margin,
          ),
          breakable: design-entries-allow-page-break-in-entries,
          width: 100%,
        )
      ],
      alignments: (design-text-date-and-location-column-alignment, auto),
    )
  ] else [
    #block(
      [
        #two-col(
          left-column-width: left-column-width,
          right-column-width: right-column-width,
          left-content: left-content,
          right-content: right-content,
          alignments: alignments,
        )
      ],
      inset: (
        left: design-entries-left-and-right-margin,
        right: design-entries-left-and-right-margin,
      ),
      breakable: design-entries-allow-page-break-in-entries,
      width: 100%,
    )
  ]
)

#let one-col-entry(content: "") = [
  #let left-space = design-entries-left-and-right-margin
  #if design-section-titles-type == "moderncv" [
    #(left-space = left-space + design-entries-date-and-location-width + design-entries-horizontal-space-between-columns)
  ]
  #block(
    [#set par(spacing: design-text-leading); #content],
    breakable: design-entries-allow-page-break-in-entries,
    inset: (
      left: left-space,
      right: design-entries-left-and-right-margin,
    ),
    width: 100%,
  )
]

= Putu Gede Pradana Adnyana

// Print connections:
#let connections-list = (
  [Bali, Indonesia],
  [#box(original-link("mailto:work.pradanaadn@gmail.com")[work.pradanaadn\@gmail.com])],
  [#box(original-link("tel:+62-812-3737-4363")[0812-3737-4363])],
  [#box(original-link("https://pradanaadn.github.io/")[pradanaadn.github.io])],
  [#box(original-link("https://linkedin.com/in/pradanaadn")[linkedin.com\/in\/pradanaadn])],
  [#box(original-link("https://github.com/pradanaadn")[github.com\/pradanaadn])],
)
#connections(connections-list)



== Summary


#one-col-entry(
  content: [Python Developer with #strong[4+ years] hands on experience specializing in data science, machine learning, and AI engineering. Experienced in building scalable data pipelines, deploying ML models, and optimizing APIs for business insights. Strong in SQL\/PostgreSQL, FastAPI, and cloud deployment. Willing to work on-site in Karawaci, Tangerang.]
)


== Education


// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #strong[Udayana University], S.T. in Electrical and Computer Engineering -- Bali, Indonesia
  ],
  right-content: [
    Sept 2020 – Aug 2024
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    #v(design-highlights-top-margin);#highlights([GPA: 3.97\/4.0 \(#link("https://drive.google.com/file/d/1pP8v7Sbi2i_VDCOLNyjXUbzSdkNwGF2a/view?usp=sharing")[Transcript]\)],[Relevant Coursework: Calculus, Statistics, Big Data, Machine Learning, Computer Vision, Databases],)
  ],
  inset: (
    left: design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)

#v(design-entries-vertical-space-between-entries)
// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #strong[Mastering AI Bootcamp by Skill Academy],  in AI Engineering -- Online
  ],
  right-content: [
    Mar 2024 – June 2024
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    #v(design-highlights-top-margin);#highlights([GPA: 90\/100 \(#link("https://drive.google.com/file/d/1zavbSHSpPOePGauqHs-WYxpkUhOqOrRa/view?usp=sharing")[Transcript]\)],[Relevant Coursework: Python, Data Cleaning, Data Visualization, Statistics, Linear algebra and Calculus, Machine Learning, Deep Learning, CNN and Computer Vision, PyTorch, NLP and Transformer, MLOps],)
  ],
  inset: (
    left: design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)

#v(design-entries-vertical-space-between-entries)
// YES DATE, NO DEGREE
#two-col-entry(
  left-content: [
    #strong[Bangkit Academy by Google, Gojek, and Tokopedia],  in Machine Learning -- Online
  ],
  right-content: [
    Feb 2023 – June 2023
  ],
)
#block(
  [
    #set par(spacing: 0pt)
    #v(design-highlights-top-margin);#highlights([GPA: 95\/100 \(#link("https://drive.google.com/file/d/1JOm2b6ws9PepLZTCV8uZDdDENN64KT7d/view?usp=sharing")[Transcript]\)],[Top 5\% of 5,000+ participants.],[Relevant Coursework:\"Python, Data Analytics, Mathematics for Machine Learning \(Linear Algebra, Calculus\), Machine Learning, Deep Learning with Tensorflow, ML Deployment],)
  ],
  inset: (
    left: design-entries-left-and-right-margin,
    right: design-entries-left-and-right-margin,
  ),
)



== Certification


#one-col-entry(
  content: [- TensorFlow Developer Certificate],
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [- Microsoft Certified: Azure AI Engineer Associate],
)


== Experience


#two-col-entry(
  left-content: [
    #strong[AI\/ML Engineer \(Contract\)], WWWaste PTE. LTD -- Bali, Indonesia
  ],
  right-content: [
    July 2025 – present
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Built and deployed ETL pipelines for LLM context enrichment and insight generation, leveraging Langchain to transform large datasets into actionable business decisions.],[Developed and deployed time series forecasting \(ARIMA, SARIMA, Prophet, LightGBM, XGBoost\) for user waste generation, achieving RMSE of 1.2.],[Created and deployed object detection models for waste category \(YOLO with mAP50 95\%\) and brand detection \(zero-shot classification\) on AWS SageMaker, including data collection and training.],[Integrated LLM observability \(Langfuse\), optimized REST API \(FastAPI\) with Redis caching, reducing token usage by 90\% and response time by 99.7\%.],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Machine Learning Engineer Intern], PT. Adamata Indonesia -- Tangerang, Indonesia
  ],
  right-content: [
    Jan 2025 – June 2025
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Developed Bottle Cap Color Sorter software using Two Stage Object Detection, achieved latency under 35 ms with a 90\% pick rate.],[Researched and implemented a Lightweight Object Detection model \(Nanodet\) for Bottle Cap Color Sorted.],[Optimized object detection with various run-time optimizations, including quantization and pruning, to improve performance on edge devices.],[Automated the deployment process on Raspberry Pi using Ansible, reducing deployment time by 50\%.],[Gathered and Annotated datasets from the production line and trained models to improve accuracy and performance.],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[AI Engineer Intern], Ruang Guru -- Jakarta, Indonesia
  ],
  right-content: [
    Sept 2024 – Dec 2024
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Developed a web application for centralized various AI models, to be used by internal teams.],[Developed REST API for code generation and autocomplete and integrated with open-source coding assistant.],[Implemented CI\/CD pipelines to automate the deployment process, reducing deployment errors by 25\% and enhancing system reliability.],[Conducted performance testing and optimization, achieving a 30\% reduction in response time for API endpoints.],[Documented the API endpoints and guides to set up the coding assistant, improving developer onboarding and usage.],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #strong[Product Development Intern], X-Camp by XL Axiata -- Jakarta, Indonesia
  ],
  right-content: [
    July 2024 – Aug 2024
  ],
)
#one-col-entry(
  content: [
    #v(design-highlights-top-margin);#highlights([Contributed to integration of RTSP cameras for object detection and optimized multithreaded data processing using CUDA, improving system performance by 40\% and enabling real-time analytics.],[Led data collection and labeling for training datasets for object detection.],[Configured MQTT protocols and integrated them with ThingsBoard, ensuring seamless data communication and system reliability.],)
  ],
)



== Projects


#two-col-entry(
  left-content: [
    #link("https://github.com/TemanWisata")[#strong[Teman Wisata]] 
  ],
  right-content: [
    2025
  ],
)
#one-col-entry(
  content: [
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [Tourism recommendation system deployed on Biznet Gio Cloud.])], column-gutter: 0cm)

#v(-design-text-leading)  #v(design-highlights-top-margin);#highlights([#strong[Tools:] Python, Pytorch, MLFLow, Redis, Supabase, Scikit-learn, Fastapi, Docker, K3S, Typescript, Tailwindcss, Daisyui, Alpinejs, Vite ],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://github.com/SafeFlood")[#strong[SafeFlood]] 
  ],
  right-content: [
    2025
  ],
)
#one-col-entry(
  content: [
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [Predictive flood monitoring and management system using Machine Learning and Google Earth Engine.])], column-gutter: 0cm)

#v(-design-text-leading)  #v(design-highlights-top-margin);#highlights([#strong[Tools:] Python, Google Earth Engine, Reflex, Leaflet JS, Scikit Learn, Tensorflow, Github Action],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://pitch.com/v/mangorenai-x6n96f")[#strong[Trash Object Detection - AI-Based Waste Audit and Assistant]] 
  ],
  right-content: [
    2024
  ],
)
#one-col-entry(
  content: [
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [A Hackathon project that aims to help people to sort their waste properly.])], column-gutter: 0cm)

#v(-design-text-leading)  #v(design-highlights-top-margin);#highlights([#strong[Tools:] Python, OpenCV, Alibaba Cloud, Ultralytics, Streamlit],)
  ],
)

#v(design-entries-vertical-space-between-entries)
#two-col-entry(
  left-content: [
    #link("https://www.linkedin.com/posts/pradanaadn_ummeals-deck-activity-7223282999407099904-g2PD/?utm_source=share&utm_medium=member_desktop")[#strong[UmMeals – Maternal and Child Nutrition App]] 
  ],
  right-content: [
    2024
  ],
)
#one-col-entry(
  content: [
    #two-col(left-column-width: design-highlights-summary-left-margin, right-column-width: 1fr, left-content: [], right-content: [#v(design-highlights-top-margin);#align(left, [A Hackathon project that aims to help monitoring maternal and child nutrition.])], column-gutter: 0cm)

#v(-design-text-leading)  #v(design-highlights-top-margin);#highlights([Achieved Top 6 in Microsoft Innovation Challenge 2024.],[#strong[Tools:] Python, Microsoft Azure AI, Power BI, and Streamlit],)
  ],
)



== Skills


#one-col-entry(
  content: [#strong[Programming Languages:] #strong[Advanced:] Python, SQL; #strong[Intermediate:] C++, JavaScript, Bash, PHP, TypeScript]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Data Science & Machine Learning:] Pandas, NumPy, SciPy, scikit-learn, PyTorch, TensorFlow, Keras, XGBoost, LightGBM, MLflow, CometML, Huggingface Transformers, OpenCV, OpenVINO]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Backend & API Development:] FastAPI \(async\), Flask, REST API, Docker, Redis]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Database Management:] PostgreSQL, Supabase, MySQL, MongoDB]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Cloud & MLOps:] AWS SageMaker, Google Cloud, Microsoft Azure, Vertex AI, Ansible, GitHub Actions, CI\/CD]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Engineering Practices:] pytest, mypy, ruff, black, Git, Linux]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Visualization & Web:] Streamlit, Gradio, Power BI, Leaflet.js]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Soft Skills:] Teamwork, Communication, Analytical Problem-Solving, Adaptability, Project Management, Fast Learner]
)
#v(design-entries-vertical-space-between-entries)
#one-col-entry(
  content: [#strong[Languages:] Bahasa Indonesia \(Native\), English \(Professional Working Proficiency\)]
)


