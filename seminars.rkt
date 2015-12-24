#lang scribble/text
@(require
   racket/date
  gregor
  "templates.rkt")

@(define id 0)
@(define (seminar title speaker link aff date room abstract bio)
   (set! id (add1 id))
  @list{
<div id="seminar-@|id|" class="col-md-12 pn-seminar compact">
  <script type="text/javascript">
    if (new Date() >= new Date('@(datetime->iso8601 date)')) {
      document.getElementById('seminar-@|id|').classList.add('finished');
    }
  </script>
  <div class="pn-main-informations">
    <a onclick="return false;" class="pn-title">@|title|</a>
    <br />
    <span class="pn-name">@|speaker|</span>
    <br />
    <span class="pn-affiliation">@|aff|</span>
    <a class="pn-url" target="_blank" href="@link">link</a>
    <span class="pn-datetime">@(~t date "d MMMM, y h:mma")</span>
    <span class="pn-room">@|room|</span>
  </div>
  <div class="pn-abstract-bio">
    <p>
      <span class="pn-title-2">Abstract</span>
      <span>@|abstract|</span>
    </p>
    <p>
      <span class="pn-title-2">Bio</span>
      <span>@|bio|</span>
    </p>
  </div>
</div>

<br />
})

@;; TODO: Define list of seminars here, automagically sort by date and insert in the below HTML

<!DOCTYPE html>
<html lang="en">
  @header{Seminars}
  <body id="pn-top">
   @navbar{Seminars}
   @subpage-title{Seminars}

    <div class="pn-main-wrapper">
      <div class="content">
        <div class="container">
          <div class="row">
            <p>For NEU students and staff, the mailing lists <strong>prl-students</strong> and <strong>prl-staff</strong> are maintained by <a mailto:"j.vitek@"@"neu.edu">Jan Vitek</a>.</p>
          </div>
        </div>

        <div class="pn-separator-img-short"></div>

        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <h2>Programming Language Seminar</h2>
              <p>
              The PL seminar meets in WVH
              [<a href="http://www.ccs.neu.edu/home/wand/directions.html">directions</a>]. The <a href="http://lists.ccs.neu.edu/pipermail/pl-seminar">mailing
                list</a> is public. An <a
                href="https://calendar.google.com/calendar/embed?src=k4cg1vgb3l2n8r2ph4t01dmtpc@"@"group.calendar.google.com&ctz=America/New_York">HTML
                calendar</a> and an <a
                href="https://calendar.google.com/calendar/ical/k4cg1vgb3l2n8r2ph4t01dmtpc%40group.calendar.google.com/public/basic.ics">ICAL
                calendar</a>
              are available for your convenience.
              </p>
            </div>
          </div>

          <br />

        <!-- ROW -->
        <div class="row">
          @(seminar
            "Reasoning about Object Capabilities with Logical Relations and Effect Parametricity"
            "Dominique Devriese"
            "https://distrinet.cs.kuleuven.be/people/dominiqu"
            "Katholieke Universiteit Leuven"
            (datetime 2016 02 25 11 00)
            "WVH 366"
            @list{
Object capabilities are a technique for fine-grained privilege separation in programming languages and systems,with important applications in security. However, current formal characterisations do not fully capture capability-safety of a programming language and are not sufficient for verifying typical applications. Using state-of-the-art techniques from programming languages research, we define a logical relation for a core calculus of JavaScript that better characterises capability-safety. The relation is powerful enough to reason about typical capability patterns and supports evolvable invariants on shared data structures, capabilities with restricted authority over them and isolated components with restricted communication channels. We use a novel notion of effect parametricity for deriving properties about effects. We demonstrate that our results imply memory access bounds that have previously been used to characterise capability-safety.}
            @list{
Dominique is a postdoctoral researcher in the research group
DistriNet, part of the Computer Science department of the Katholieke
Universiteit Leuven. He holds a postdoctoral research fellowship of
the Research Foundation - Flanders (FWO). He works on formalising
properties of object-oriented and object-capability programming
languages---specifically a property called effect parametricity--is
the author of the grammar-combinators Haskell parsing library, and has
added instance arguments to the programming language/proof assistant
Agda.
He is interested in information flow security, secure compilation,
full abstraction, and functional and dependently typed programming
languages.
})

          @(seminar
            "TBD"
            "Satish Chandra"
            "https://sites.google.com/site/schandraacmorg/"
            "Samsung"
            (datetime 2016 02 22 11 00)
            "WVH 366"
            @list{}
            @list{
Satish Chandra obtained a PhD from the University of Wisconsin-Madison in 1997, and a B.Tech from the Indian Institute of Technology-Kanpur in 1991, both in computer science. From 1997 to 2002, he was a member of technical staff at Bell Laboratories, where his research focused on program analysis, domain-specific languages, and data-communication protocols. From 2002 to 2013, he was a research staff member at IBM Research, where his research focused on bug finding and verification, software synthesis, and test automation. He joined Samsung Electronics in 2013, where he leads the advanced programming tools research team. He is an ACM Distinguished Scientist.})

          @(seminar
            "TBD"
            "Ori Lahav"
            "https://www.mpi-sws.org/~orilahav/"
            "Max Planck Institute for Software Systems"
            (datetime 2016 01 27 11 45)
            "WVH 366"
            @list{}
            @list{})

          @(seminar
            "TBD"
            "Marco Patrignani"
            "http://www.mpi-sws.org/~marcopat/"
            "Max Planck Institute for Software Systems"
            (datetime 2016 01 25 11 00)
            "WVH 366"
            @list{}
            @list{})

          @(seminar
            "Program verification under weak memory consistency"
            "Viktor Vafeiadis"
            "http://www.mpi-sws.org/~viktor/"
            "Max Planck Institute for Software Systems"
            (datetime 2016 01 14 13 30)
            "WVH 366"
            @list{
<p>
Weak memory models formalize the inconsistent behaviors that one can observe in multithreaded programs running on modern hardware. In so doing, they complicate the already-difficult task of reasoning about correctness of concurrent code. Worse, they render impotent most formal methods that have been developed to tame concurrency, which almost universally assume a strong (i.e., sequentially consistent) memory model. In response, we have developed a number of alternative reasoning techniques that are sound for programs running weak memory consistency. I will cover both program logics, such as relaxed separation logic, as well as theorems that allow reducing reasoning about well-structured weakly consistent implementations down to sequential consistency, and show how these can be applied to reason about a practical RCU implementation.</p>}
            @list{
Viktor Vafeiadis is a tenure-track researcher at MPI-SWS. He received his BA (2004) and PhD (2008) from the University of Cambridge. Before joining MPI-SWS in October 2010, he was a postdoc at Microsoft Research and at the University of Cambridge. He is interested in programming languages and verification with a focus program logics for weak memory, program logics for concurrency, compiler verifications, automated verification of concurrent programs, and interactive theorem proving.
})

          @(seminar
            "Lightweight Formal Methods for LLVM Verification"
            "Santosh Nagarakatte"
            "http://www.cs.rutgers.edu/~santosh.nagarakatte/"
            "Rutgers University"
            (datetime 2016 01 13 12 00)
            "WVH 366"
            @list{
<p>Compilers form an integral component of the software development ecosystem. Compiler writers must understand the specification of source and target languages to design sophisticated algorithms that transform programs while preserving semantics. Unfortunately, compiler bugs in mainstream compilers are common. Compiler bugs can manifest as crashes during compilation, or, much worse, result in the silent generation of incorrect programs. Such mis-compilations can introduce subtle errors that are difficult to diagnose and generally puzzling to software developers.</p>
<p>The talk  will describe the problems  in developing peephole optimizations that perform local rewriting to improve the efficiency of LLVM code. These optimizations are individually difficult to get right, particularly in the presence of undefined behavior; taken together they represent a persistent source of bugs.  The talk will present Alive, a domain-specific language for writing optimizations and for automatically either proving them correct or else generating counterexamples.  A transformation in Alive is shown to be correct automatically by encoding the transformation into constraints, which are automatically checked for validity using a Satisfiability Modulo Theory (SMT) solver. Furthermore, Alive can be automatically translated into C++ code that is suitable for inclusion in an LLVM optimization pass.</p>
<p>
Alive is based on an attempt to balance usability and formal methods; for example, it captures—but largely hides—the detailed semantics of three different kinds of undefined behavior in LLVM. We have translated more than 300 LLVM optimizations into Alive and, in the process, found that eight of them were wrong.  I will conclude the talk highlighting the lessons learned and the challenges in incorporating lightweight formal methods in the tool-chain of the compiler developer.</p>}
            @list{
Santosh Nagarakatte is an Assistant Professor of Computer Science at Rutgers University. He obtained his PhD from the University of Pennsylvania. His research interests are in Hardware-Software Interfaces spanning Programming Languages, Compilers, Software Engineering, and Computer Architecture. His papers have been selected as IEEE MICRO TOP Picks papers of computer architecture conferences in 2010 and 2013. He has received the NSF CAREER Award in 2015, PLDI 2015 Distinguished Paper Award, and the Google Faculty Research Award in 2014 for his research on incorporating lightweight formal methods for LLVM compiler verification.})

          @(seminar
            "Feature Specific Profiling for R"
            "Leif Andersen"
            "http://leifandersen.net"
            "Northeastern University"
            (datetime 2015 12 2 12 00)
            "WVH 366"
            @list{
<p>
Programmers use profilers to understand the performance
characteristics of
their programs and to focus on those pieces whose improvement may yield the
largest gains. A conventional profiler measures the time that a program
spends in functions, methods, expressions, and statements. Racket's novel
feature-specific profiler supplements this information with timings of
instances of linguistic features. This paper reports the results of a
successful reproducibility effort to adapt feature-specific profiling to
the R programming language. Specifically, the paper demonstrates how easy
and effective it is to add the necessary language support, that the
approach usefully enhances the information produced by a classical
profiler, and that the additional overhead is tolerable.
</p>}
            @list{
Leif Andersen is a second year Ph.D. student at Northeastern University, studying programming language
with Matthias Felleisen.
})

          @(seminar
            "Performance Matters"
            "Emery Berger"
            "http://emeryberger.com/"
            "U. Massachusetts, Amherst"
            (datetime 2015 11 20 10 30)
            "WVH 366"
            @list{
<p>
Performance clearly matters to users. The most common software update
on the AppStore *by far* is "Bug fixes and performance enhancements."
Now that Moore's Law Free Lunch has ended, programmers have to work
hard to get high performance for their applications. But why is
performance so hard to deliver?</p>
<p>I will first explain why our current approaches to evaluating and
optimizing performance don't work, especially on modern hardware and
for modern applications. I will then present two systems that address
these challenges. Stabilizer is a tool that enables statistically
sound performance evaluation, making it possible to understand the
impact of optimizations and conclude things like the fact that the -O2
and -O3 optimization levels are indistinguishable from noise
(unfortunately true).</p>
<p>Since compiler optimizations have largely run out of steam, we need
better profiling support, especially for modern concurrent,
multi-threaded applications. Coz is a novel "causal profiler" that
lets programmers optimize for throughput or latency, and which
pinpoints and accurately predicts the impact of optimizations. Coz's
approach unlocks numerous previously unknown optimization
opportunities. Guided by Coz, we improved the performance of Memcached
by 9%, SQLite by 25%, and accelerated six Parsec applications by as
much as 68%; in most cases, these optimizations involved modifying
under 10 lines of code.</p>
<p>This talk is based on work with Charlie Curtsinger published at ASPLOS
2013 (Stabilizer) and SOSP 2015 (Coz), where it received a Best Paper
Award.
</p>}
            @list{
<p>Emery Berger is a Professor in the College of Information and Computer
Sciences at the University of Massachusetts Amherst, the flagship
campus of the UMass system. He graduated with a Ph.D. in Computer
Science from the University of Texas at Austin in 2002. Professor
Berger has been a Visiting Scientist at Microsoft Research (7 times)
and at the Universitat Politecnica de Catalunya (UPC) / Barcelona
Supercomputing Center (BSC).</p>
<p>Professor Berger’s research spans programming languages, runtime
systems, and operating systems, with a particular focus on systems
that transparently improve reliability, security, and performance. He
is the creator of a number of influential software systems including
Hoard, a fast and scalable memory manager that accelerates
multithreaded applications (used by companies including British
Telecom, Cisco, Crédit Suisse, Reuters, Royal Bank of Canada, SAP, and
Tata, and on which the Mac OS X memory manager is based); DieHard, an
error-avoiding memory manager that directly influenced the design of
the Windows 7 Fault-Tolerant Heap; and DieHarder, a secure memory
manager that was an inspiration for hardening changes made to the
Windows 8 heap.</p>
<p>His honors include a Microsoft Research Fellowship, an NSF CAREER
Award, a Lilly Teaching Fellowship, a Most Influential Paper Award at
OOPSLA 2012, a Google Research Award, a Microsoft SEIF Award, a Best
Artifact Award at PLDI, and Best Paper Awards at FAST, OOPSLA, and
SOSP; he was named an ACM Senior Member in 2010. Professor Berger is
currently a Member of the SIGPLAN Executive Committee and an Associate
Editor of the ACM Transactions on Programming Languages and Systems,
and will serve as Program Chair for PLDI 2016.</p>
})

          @(seminar
            "Programming Languages Meets Programmable Networks"
            "Arjun Guha"
            "https://people.cs.umass.edu/~arjun/home/"
            "U. Massachusetts, Amherst"
            (datetime 2015 11 16 13 00)
            "WVH 366"
            @list{
<p>Computer networks do not simply connect machines together, but run several
applications on network devices, such as load balancers, intrusion detection
systems, authentication portals, and more. Historically, these applications were
black-boxes running on proprietary hardware, but software-defined networking
(SDN) now allows anyone to write their own programs using open networking
protocols (e.g., OpenFlow). So, what are the right abstractions for programming networks? This talk will try
to address this question in three ways. </p>
<p>First, we present a syntactic theory of network forwarding called NetKAT, which supports equational reasoning about network-wide behavior. Using NetKAT, programmers can ask and answer questions like, "Can A communicate with B?",
"Does all traffic traverse my intrusion detection system?", "Is there a loop in
my network?", and so on. </p>
<p>Second, we present a fast and efficient compiler for NetKAT. Although several
network compilers already exist, they are unusable on even moderately sized
networks. Using new data structures and compilation algorithms, our new compiler
is two orders of magnitudes faster than prior work and scales to large
datacenter networks. </p>
<p>Finally, we consider the problem of building a reliable runtime system for
NetKAT. NetKAT abstracts away several low-level details of networking hardware.
Although this is a boon for the network programmer, the burden now shifts to us
to engineer abstractions correctly. We present a Coq-certified runtime system
that is proven correct with respect to a detailed operational model software-
defined networks.
</p>}
            @list{
Arjun Guha is an assistant professor of Computer Science at UMass Amherst. He
enjoys tackling problems in systems using the tools and principles of
programming languages. Apart from network programming, he has worked on Web
security and system configuration languages. He received a PhD in Computer
Science from Brown University in 2012 and a BA in Computer Science from Grinnell
College in 2006.})

        @(seminar
           "Declarative Programming for Eventual Consistency"
           "Suresh Jagannathan"
           "https://www.cs.purdue.edu/homes/suresh/"
           "Purdue University"
           (datetime 2015 11 13 10 30)
           "WVH 366"
           @list{
<p>In geo-replicated distributed data stores, the need to ensure responsiveness
in the face of network partitions and processor failures results in
implementations that provide only weak (so-called eventually consistent)
guarantees on when data updated by one process becomes visible to another.
Applications must be carefully constructed to be aware of unwanted
inconsistencies permitted by such implementations (e.g., having negative
balances in a bank account, or having an item appear in a shopping cart
after it has been removed), but must balance correctness concerns with
performance and scalability needs.  Because understanding these tradeoffs
requires subtle reasoning and detailed knowledge about the underlying data
store, implementing robust distributed applications in such environments is
often an error-prone and expensive task.</p>

<p>To overcome these issues, this talk presents a declarative programming model
for eventually consistent data stores called Quelea.  The model comprises a
contract language, capable of defining fine-grained application-level
consistency properties for replicated data types (and transactions over
objects of these types), and a contract enforcement system to analyze
contracts and automatically generate the appropriate consistency protocol
for the method protected by the contract.  By doing so, Quelea enables
programmers to reason compositionally about consistency from the perspective
of high-level application requirements, not low-level implementation
features.</p>

<p>This is joint work with Gowtham Kaki and K.C. Sivaramakrishnan.</p>}
        @list{
<p>Suresh Jagannathan is a Professor of Computer Science at Purdue University
where he has been on leave since September 2013, serving as a program
manager in the Information Innovation Office at DARPA.  He has also been a
visiting faculty at Cambridge University, where he spent a sabbatical year
in 2010; and, prior to joining Purdue, was a senior research scientist at
the NEC Research Institute in Princeton, N.J.  He received his Ph.D from
MIT.</p>

<p>His research interests are in programming languages generally, with specific
focus on compilers, functional programming, program verification, and
concurrent and distributed systems.  At DARPA, he manages programs on
probabilistic programming and machine learning (PPAML), program synthesis
and repair leveraging predictive analytics over large software corpora
(MUSE), and self-adaptive software through resource-aware analyses,
runtimes, and architectures (BRASS).</p>})

        @(seminar
           "Hop.js: multitier programming in JavaScript"
           "Manuel Serrano"
           "http://www-sop.inria.fr/members/Manuel.Serrano/"
           "INRIA"
           (datetime 2015 11 3 10 30)
           "WVH 366"
           @list{
Hop.js is a multitier extension of JavaScript. It allows a single
JavaScript program to describe the client-side and the server-side
components of a Web application. Its runtime environment ensures a
consistent execution of the application on the server and on the
client. This talk will shows its minimal set of JavaScript extensions
that makes Web programming easier. It will present its runtime
environment, with an emphasize on the handling of server-side
parallelism.
           }
           @list{
Manuel is a researcher at INRIA Sophia Antipolis, he used to work on Scheme.
           }
           )

          <div class="col-md-12 pn-seminar compact finished">
            <div class="pn-main-informations">
              <a onclick="return false;" class="pn-title">Scalloc and Selfie: Fast Memory Allocation and Self-referential Systems Software</a>
              <br /><span class="pn-name">Christoph Kirsch</span>
              <br />
              <span class="pn-affiliation">U. of Salzburg</span>
              <a class="pn-url" target="_blank" href="http://cs.uni-salzburg.at/~ck/">link</a>
              <span class="pn-datetime">2 November, 11:00AM</span><span class="pn-room">WVH 366</span>
            </div>
            <div class="pn-abstract-bio">
              <p>
              <span class="pn-title-2">Abstract</span>
              <span>
         This talk is about scalloc, a fast, multicore-scalable, low-fragmentation memory allocator and selfie, a 4000-line implementation of a tiny self-compiling C compiler and a tiny self-executing MIPS emulator for teaching systems engineering. Scalloc is a typical example of a very complex, multi-year research effort while selfie is, at least for now, a purely educational, many-year effort in teaching compiler, operating system, and virtual machine design based on a single, highly principled software platform. So far scalloc and selfie only share the passion of their authors and are otherwise two distinct projects. Yet earlier versions of selfie, before they were even identified as such, were instrumental in bringing up the generation of students who did scalloc.
        The main ideas behind scalloc are: uniform treatment of small and big objects through so-called virtual spans, efficiently and effectively reclaiming free memory through fast and scalable global data structures, and constant-time (modulo synchronization) allocation and deallocation operations that trade off memory reuse and spatial locality without being subject to false sharing. The main ideas behind selfie are: a compiler written in and for a tiny subset of C called C* which uses the dereferencing * operator of C for memory access but lacks data structures and many other features and a MIPS emulator written in C* that can execute itself. Both are combined and extended by students to do very cool stuff.
              </span>
              </p>
              <p>
              <span class="pn-title-2">Bio</span>
              <span>
        Christoph Kirsch is Professor at the University of Salzburg, Austria. From
        1999 to 2004 he worked as Postdoctoral Researcher at UC, Berkeley. He later
        returned to Berkeley as Visiting Scholar (2008-2013) and Visiting Professor
        (2014) as part of a collaborative research effort in Cyber-Physical
        Systems. His most recent research interests are in concurrent data
        structures, memory management, and so-called spatial programming. Dr. Kirsch
        co-invented embedded programming languages and systems such as Giotto, HTL,
        and the Embedded Machine, and more recently co-designed high-performance,
        multicore-scalable concurrent data structures and memory management
        systems. He co-founded the International Conference on Embedded Software
        (EMSOFT) and served as ACM SIGBED chair from 2011 until 2013 and ACM TODAES
        associate editor from 2011 until 2014.
              </span>
              </p>
            </div>
          </div>

          <br />



          <div class="col-md-12 pn-seminar compact finished">
            <div class="pn-main-informations">
              <a onclick="return false;" class="pn-title">Coordinated Concurrent Programming in Syndicate</a>
              <br /><span class="pn-name">Tony Garnock-Jones</span>
              <br />
              <span class="pn-affiliation">Northeastern University</span>
              <a class="pn-url" target="_blank" href="http://www.ccs.neu.edu/home/tonyg/">link</a>
              <span class="pn-datetime">October 28, 12:00PM</span><span class="pn-room">WVH 366</span>
            </div>
            <div class="pn-abstract-bio">
              <p>
              <span class="pn-title-2">Abstract</span>
              <span>Most programs interact with the world: via graphical
user interfaces, networks, etc. This form of interactivity entails
concurrency, and concurrent program components must coordinate their
computations. This talk will present Syndicate, a design for a coordinated,
concurrent programming language. Each concurrent component in Syndicate is a
functional actor that participates in scoped conversations. The medium of
conversation arranges for message exchanges and coordinates access to common
knowledge. As such, Syndicate occupies a point in design space halfway
between actors and threads.
              </span>
              </p>
              <p>
              <span class="pn-title-2">Bio</span>
              <span>
        Tony is a graduate student working with Matthias.
              </span>
              </p>
            </div>
          </div>

          <br />





          <div class="col-md-12 pn-seminar compact finished">
            <div class="pn-main-informations">
              <a onclick="return false;" class="pn-title">Memory corruption: why protection is hard</a>
              <br /><span class="pn-name">Mathias Payer</span>
              <br />
              <span class="pn-affiliation">Purdue University</span>
              <a class="pn-url" target="_blank" href="https://nebelwelt.net">link</a>
              <span class="pn-datetime">23 October, 1:30PM</span><span class="pn-room">WVH 366</span>
            </div>
            <div class="pn-abstract-bio">
              <p>
              <span class="pn-title-2">Abstract</span>
              <span>
		Memory corruption plagues systems since the dawn of computing. With the
rise of defense techniques like stack cookies, ASLR, and DEP, attacks
have become much more complicated, yet control-flow hijack attacks are
still prevalent. Attacks leverage code reuse attacks, often using some
form of information disclosure. Stronger defense mechanisms have been
proposed but none have seen wide deployment so far (i) due to the time
it takes to deploy a security mechanism, (ii) incompatibility with
specific features, and (iii) most severely due to performance overhead.
In the talk, we evaluate the security benefits and limitations of the
status quo and look into upcoming defense mechanisms (and their attacks).

Control-Flow Integrity (CFI) and Code-Pointer Integrity (CPI) are two of
the hottest upcoming defense mechanisms. CFI guarantees that the runtime
control flow follows the statically determined control-flow graph. An
attacker may reuse any of the valid transitions at any control flow
transfer. CPI on the other hand is a dynamic property that enforces
memory safety guarantees like bounds checks for code pointers by
separating code pointers from regular data. We will discuss differences
and advantages/disadvantages of both approaches, especially the security
benefits they give under novel attacks like Counterfeit Object-Oriented
Programming (COOP) and Control-Flow Bending (CFB).  COOP reuses complete
functions as gadgets and CFB bends the control flow along valid but
unintended paths in the control-flow graph of a program.

              </span>
              </p>
              <p>
              <span class="pn-title-2">Bio</span>
              <span>
Mathias Payer is a security researcher and an assistant professor in
computer science at Purdue university. His interests are related to
system security, binary exploitation, user-space software-based fault
isolation, binary translation/recompilation, and (application)
virtualization. His research focuses on protecting applications even in
the presence of vulnerabilities, with a focus on memory corruption.
Before joining Purdue in 2014 he spent two years as PostDoc in Dawn
Song's BitBlaze group at UC Berkeley. He graduated from ETH Zurich with
a Dr. sc. ETH in 2012.
              </span>
              </p>
            </div>
          </div>

          <br />


         <div class="col-md-12 pn-seminar compact finished">
            <div class="pn-main-informations">
              <a onclick="return false;" class="pn-title">Using LLVM as a backend for R</a>
              <br /><span class="pn-name">Jan Vitek</span>
              <br />
              <span class="pn-affiliation">Northeastern University</span>
              <a class="pn-url" target="_blank" href="http://homepage.stat.uiowa.edu/~luke/">link</a>
              <span class="pn-datetime">2 October 2015, 12:00PM</span><span class="pn-room">WVH 366</span>
            </div>
            <div class="pn-abstract-bio">
              <p>
              <span class="pn-title-2">Abstract</span>
              <span>
        I will provide an  update on the status of the Reactor project which aims to use LLVM as just-in-time compiler for the R language.  I will discuss early challenges such as integration in the environment and garbage collection suport.
              </span>
              </p>
              <p>
              <span class="pn-title-2">Bio</span>
              <span>
        Jan Vitek is a Professor at Northeastern, he works on programming language design and implementation.
              </span>
              </p>
            </div>
          </div>

          <br />

          <div class="col-md-12 pn-seminar compact finished">
            <div class="pn-main-informations">
              <a onclick="return false;" class="pn-title">Some New Developments for the R Engine</a>
              <br /><span class="pn-name">Luke Tierney</span>
              <br />
              <span class="pn-affiliation">U. Iowa</span>
              <a class="pn-url" target="_blank" href="http://homepage.stat.uiowa.edu/~luke/">link</a>
              <span class="pn-datetime">2 October 2015, 10:00AM</span><span class="pn-room">WVH 366</span>
            </div>
            <div class="pn-abstract-bio">
              <p>
              <span class="pn-title-2">Abstract</span>
              <span> R is a dynamic language for statistical
        computing and graphics. In recent years R has become a major framework
        for both statistical practice and research. This talk present a very
        brief outline of the R language and its evolution and describe some
        current efforts on improvements to the core computational engine,
        including work on compilation of R code, efforts to take advantage of
        multiple processor cores, and modifications to support working with
        larger data sets.
              </span>
              </p>
              <p>
              <span class="pn-title-2">Bio</span>
              <span>
        Luke Tierney is a Professor Statistics at the University of Iowa and one of the key contributors to the R project.
              </span>
              </p>
            </div>
          </div>

          <br />

          <div class="col-md-12 pn-seminar compact finished">
            <div class="pn-main-informations">
              <a onclick="return false;" class="pn-title">Completions and Diagnostics in RStudio </a>
              <br /><span class="pn-name">Kevin Ushey</span>
              <br />
              <span class="pn-affiliation">RStudio</span>
              <a class="pn-url" target="_blank" href="#">link</a>
              <span class="pn-datetime">2 October 2015, 11:00AM</span><span class="pn-room">WVH 366</span>
            </div>
            <div class="pn-abstract-bio">
              <p>
              <span class="pn-title-2">Abstract</span>
              <span>
        Kevin will discuss the details behind the implementation of completions +
        diagnostics, as well as some future goals re: enabling user extensibility of
        both the autocompletion and diagnostics systems.
              </span>
              </p>
              <p>
              <span class="pn-title-2">Bio</span>
              <span>
        Kevin is a software engineer at RStudio. He graduated from the University of British Columbia with an MSc in Statistics, with a thesis focusing on the use of non-linear mixed effects models in the analysis of yeast growth curves in gene knockout studies. Shortly thereafter, he worked doing data analysis at St. Paul's hospital in Vancouver as part of the Daley lab, and later at the Fred Hutchinson Cancer Research Center in Seattle as part of the Gottardo lab. At RStudio, Kevin primarily works on the RStudio IDE, but also maintains the R package packrat.
              </span>
              </p>
            </div>
          </div>

          <br />

          <div class="col-md-12 pn-seminar compact finished">
            <div class="pn-main-informations">
              <a onclick="return false;" class="pn-title">Verification Infrastructure for Permission-based Reasoning</a> <br /><span class="pn-name">Alex Summers</span>
              <br />
              <span class="pn-affiliation">ETH Zürich</span>
              <a class="pn-url" target="_blank" href="http://people.inf.ethz.ch/summersa/wiki/">link</a>
              <span class="pn-datetime">26 July 2015, 1:45PM</span><span class="pn-room">WVH 166</span>
            </div>
            <div class="pn-abstract-bio">
              <p>
              <span class="pn-title-2">Abstract</span>
              <span> Modern verification techniques are becoming
        ever-more powerful and sophisticated, and building tools to implement
        them is a time-consuming and difficult task. Writing a new verifier to
        validate each on-paper approach is impractical; for this reason
        intermediate verification languages such as Boogie and Why3 have become
        popular over the last decade. However, verification approaches geared
        around complex program logics (such as separation logic) have typically
        been implemented in specialised tools, since the reasoning is hard to
        map down to first-order automated reasoning. In practice, this means
        that a rich variety of modern techniques have no corresponding tool
        support.  In this talk, I will present the new Silver intermediate
        verification language, which has been designed to facilitate the
        lightweight implementation of a variety of modern methodologies for
        program verification. In contrast to lower-level verification languages,
        Silver provides native support for heap reasoning; modes of reasoning
        such as concurrent separation logic, dynamic frames and
        rely-guarantee/invariants can be simply encoded.  Silver has been
        developed as part of the Viper project, which provides two automated
        back-end verifiers for Silver programs. Since releasing our software in
        September last year, it has been used for (internal and external)
        projects to build tools for Java verification, non-blocking concurrency
        reasoning, flow-sensitive typing and reasoning about GPU and Linux
        kernel code.
              </span></p>
              <p>
              <span class="pn-title-2">Bio</span>
              <span>
        Alex Summers obtained his PhD from Imperial College
        London in 2009, in the area of type systems and
        classical logics. Since then he has worked in a
        variety of areas concerning software correctness and
        verification, at Imperial College London and ETH
        Zurich. His research interests include developing
        specification techniques for different (usually
        concurrent) programming paradigms, and implementing
        these in automatic verification tools. He was
        recently awarded the 2015 AITO Dahl-Nygaard Junior
        Prize for his work on type systems and the
        verification of object-oriented programs.
              </span>
              </p>
            </div>
          </div>

          <div class="col-md-12 pn-seminar compact finished">
            <div class="pn-main-informations">
              <a onclick="return false;" class="pn-title">Concurrent Trace Sets for Synchronization Synthesis</a> <br /><span class="pn-name">Roopsha Samanta</span>
              <br />
              <span class="pn-affiliation">IST Austria </span>
              <a class="pn-url" target="_blank" href="http://pub.ist.ac.at/~rsamanta/">link</a>
              <span class="pn-datetime">26 June 2015, 1:30PM</span><span class="pn-room">WVH 366</span>
            </div>
            <div class="pn-abstract-bio">
              <p>
              <span class="pn-title-2">Abstract</span>
              <span>In this talk, I will first present a method and
        a tool TARA for generating succinct representations of sets of
        concurrent traces. In our work, we focus on trace sets that contain all
        correct or all incorrect permutations of events from a given trace. We
        represent such trace sets as Boolean combinations of happens-before
        ordering constraints between events.  Our trace set representations can
        drive diverse verification, fault localization, repair, and synthesis
        techniques for concurrent programs. In the remainder of the talk, I will
        focus on the use of our representation for synchronization synthesis.
        This work appears in POPL 2015 and CAV 2015, and is joint work with
        Pavol Cerny, Ed Clarke, Ashutosh Gupta, Tom Henzinger, Arjun
        Radhakrishna, Leonid Ryzhyk and Thorsten Tarrach.
              </span></p>
              <p>
              <span class="pn-title-2">Bio</span>
              <span>
              </span>
              </p>
            </div>
          </div>
        </div>


        <br />

        </div>

        <div class="pn-separator-img"></div>

        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <h2>Programming Language Seminar, Junior</h2>
              <p>The junior PL seminar (<a href="http://lists.ccs.neu.edu/pipermail/pl-sem-jr">mailing list</a>) (<a href="http://www.ccs.neu.edu/home/stamourv/pljr.html">home page</a>): a regular student-only seminar, suitable for those new to the study of programming languages.
              <br>
              <p>The PL Seminar, Jr. is a seminar where students new to the area can discuss the study of programming languages. This seminar is not intended to replace the main PL Seminar, but we hope that it can augment that by providing a place where junior students can discuss topics and ask questions at a pace better suited to our level of knowledge. Topics include:
              <ul>
                <li>Design and analysis of programming languages: syntax, semantics, pragmatics (ie, how do you use a language feature in real programs?)</li>
                <li>Implementation of programming languages</li>
                <li>Program development, both large and small</li>
                <li>Programming pedagogy</li>
                <li>Programming tools and environments</li>
                <li>and anything else that catches our interest.</li>
              </ul>
              We will not restrict ourselves to current research. Indeed, we intend to focus on older papers, textbook chapters, and surveys.
              </p>
              <br>
              <h4>Why PL Seminar, Jr.?</h4>
              <small>
                <p>In many ways, the existing PL Seminar doesn't serve junior students well. For us, it is intended to provide an environment where we can go to listen to current research. While nobody expects us to understand the entire presentation, we would ideally be able to say, "I didn't understand that, but it sounded really neat." By and large, that hasn't happened, for a number of reasons:
                <ul>
                  <li>For many of us, once our level of comprehension drops below a certain threshold, we tend to get frustrated and tune out. It's very difficult to say that something sounds interesting when you don't even feel like you understand the language.</li>
                  <li>The discussion environment isn't really helpful to junior students. The questions from the audience are typically research-oriented; often, a great deal of background knowledge is required to follow the ensuing discussions.</li>
                  <li>To overuse a metaphor, the bandwidth available for discussion tends to be filled by a relatively small number of people; it's often difficult for a junior student to get a word in edgewise.</li>
                </ul>
                <p></small>
              <br>
              <h4>Seminar Culture</h4>

              <small><p>For this seminar to be as useful as possible, it is important we establish the right "seminar culture." This is, of course, something that is hard to describe, and it will shift and evolve. However, there are some guidelines for what we are trying to accomplish:
                <ul>
                  <li>Attendees are willing to learn and to help others learn. They should not come in order to demonstrate how much smarter they are than everyone else just because they know so much more about a specific topic.</li>
                  <li>Active listening is encouraged. Ask questions! In particular, while research questions are of course welcome, basic comprehension questions are especially encouraged. If you don't understand something, or if you don't believe a step in a proof, ask!</li>
                  <li>An important corollary: no question is too stupid to ask. This places an obligation on other members of the seminar: rather than express frustration at the basic nature of a question, look at it as an opportunity to practice your skills in explaining things.</li>
                  <li>Of course, while active listening is a good thing, we want to avoid having a few people fill the communications channel. So, please be considerate of the other people present and allow them to join the discussions as well.</li>
                </ul>
                <p>Any attendee may propose a topic; we'll solicit volunteers to present a survey of the area. We expect that most of the presenters will be junior PL students, although outside presentations are welcome.</p></small>
            </div>
          </div>
        </div>
      </div>
    </div>
    @footer
  </body>
</html>
