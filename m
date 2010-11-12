Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id DD3254C80FD4
	for <yocto@yoctoproject.org>; Fri, 12 Nov 2010 16:25:15 -0600 (CST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 12 Nov 2010 14:25:15 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,189,1288594800"; d="scan'208";a="856998767"
Received: from unknown (HELO [10.255.12.220]) ([10.255.12.220])
	by fmsmga001.fm.intel.com with ESMTP; 12 Nov 2010 14:25:14 -0800
From: Tom Zanussi <tom.zanussi@intel.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Date: Fri, 12 Nov 2010 16:25:19 -0600
Message-ID: <1289600719.1842.404.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: Tracing/profiling tools for Yocto v1.0
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 12 Nov 2010 22:25:16 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Hi,

For the 1.0 Yocto release, we'd like to have as complete a set of
tracing and profiling tools as possible, enough so that most users will
be satisfied with what's available, but not so many as to produce a
maintenance burden.

The current set is pretty decent:

latencytop
powertop
lttng
lttng-ust
oprofile(ui)
trace-cmd
perf

but there seems to be an omission or two with respect to the current set
as packaged in Yocto, and there are a few other tools that I think would
make sense to add, either to address a gap in the current set, or
because they're popular enough to be missed by more than a couple
users: 

KernelShark
perf trace scripting support
SystemTap
blktrace
sysprof

These are just my own opinions regarding what I think is missing - see
below for more details on each tool, and some reasons I think it would
make sense to include them.  If you disagree, or even better, have
suggestions for other tools that you think are essential and missing,
please let me know.  Otherwise, I plan on adding support for them to
Yocto in the very near future (e.g. starting next week).

Just one note - I know that some of these may not be appropriate for all
platforms; in those cases, I'd expect they just wouldn't be included in
the images for those machines.  Actually, except for sysprof and
KernelShark, they all have modes that should allow them to be used with
minimal footprints on the target system, and even then I think both
KernelShark and sysprof could both be relatively easily retrofitted with
a remote layer like OprofileUI's that would make them lightweight on the
target.

Anyway, on to some descriptions of the tools themselves, followed by a
short summary at the end...

----

Tool: KernelShark
URL: http://rostedt.homelinux.com/kernelshark/
Architectures supported: all, nothing arch-specific

KernelShark is a front-end GUI interface to trace-cmd, a tracing tool
that's already included in the Yocto SDK (trace-cmd basically provides
an easier-to-use text-based interface to the raw debugfs tracing files
contained in /sys/kernel/debug/tracing).

Tracing can be started and stopped from the GUI; when the trace session
ends, the results are displayed in a couple of sub-windows: a graphical
area that displays events for each CPU but that can also display
per-task graphs, and a listbox that displays a detailed list of events
in the trace.  In addition to display of raw events, it also supports
display of the output of the kernel's ftrace plugins
(/sys/kernel/debug/tracing/available_tracers) such as the function and
function_graph tracers, which are very useful on their own for figuring
out exactly what the kernel does in particular codepaths.

One very nice KernelShark feature is the ability to easily toggle the
individual events or event subsystems of interest; specifying these
manually is usually one of the most unpleasant parts of command-line
tracing, for this reason alone KernelShark is worth looking at, as it
makes the whole tracing experience much more manageable and enjoyable
(and therefore more likely to be used).  Additionally, the extensive
support of filtering and searching is very useful.  The GUI itself is
also extensible via Python plug-ins.  All in all a great tool for
running and viewing traces.

Support for remote targets: The event subsystem and ftrace plugins that
provide the data for trace-cmd/KernelShark are completely implemented
within the kernel; both control and trace stream data retrieval are
accessed via debugfs files.  The files that provide the data retrieval
function are accessible via splice, which means that the trace streams
could be easily sent over the network and processed on the host.  The
current KernelShark code doesn't do that - currently the UI needs to run
on the target - but that would be an area where Yocto could add some
value - it shouldn't be a huge amount of effort to add that capability.
In the worst case, something along the lines of what OprofileUI does
(start/stop the trace on the target, and send the results back when
done) could also be acceptable as a local stopgap solution.

----

Tool: perf trace scripting support
URL: none, included in the kernel sources
Architectures supported: all, nothing arch-specific

Yocto already includes the 'perf' tool, which is a userspace tool that's
actually bundled as part of the mainline linux kernel source.  'perf
trace' is a subtool of perf that performs system-wide (or per-task)
event tracing and displays the raw trace event data using format strings
associated with each trace event.  In fact, the events and event
descriptions used by perf are the same as those used by
trace-cmd/KernelShark to generate its traces (the kernel event
subsystem, see /sys/kernel/debug/tracing/events).

As is the case with KernelShark, the reams of raw trace data provided by
perf trace provide a lot of useful detail, but the question becomes how
to realistically extract useful high-level information from it.  You
could sit down and pore through it for trends or specific conditions (no
fun, and it's not really humanly possible with large data sets).
Filtering can be used, but that only goes so far.  Realistically, to
make sense of it, it needs to be 'boiled down' somehow into a more
manageable form.  The fancy word for that is 'aggregation', which
basically just means 'sticking the important stuff in a hash table'.

The perf trace scripting support embeds scripting language interpreters
into perf to allow perf's internal event dispatch mechanism to call
script handlers directly (script handlers can also call back into perf).
The scripting_ops interface formalizes this interaction and allows any
scripting engine that implements the API to be used as a full-fledged
event-processing language - currently Python and Perl are implemented.

Events are exposed in the scripting interpreter as function calls, where
each param is an event field (in the event description pseudo-file for
the event in the kernel event subsystem).  During processing, every
event in the trace stream is converted into a corresponding function
call in the scripting language.  At that point, the handler can do
anything it want to using the available facilities of the scripting
language such as, for example, aggregate the event data in a hash table.

A starter script with handlers for each event type can be automatically
generated from existing trace data using the 'perf trace -g' command.
This allows for one-off, quick turnaround trace experiments.  But
scripts can be 'promoted' to full-fledged 'perf trace' scripts that
essentially become part of perf and can be listed using 'perf trace -l'.
This involves simply writing a couple wrapper shell scripts and putting
them in the right places.

In general, perf trace scripting is a useful tool to have when the
standard set of off-the-shelf tools aren't really enough to analyze a
problem.  To take a simple example, using tools like iostat you can get
a general statistical idea of the read/write activity on the system, but
those tools won't tell you which processes are actually responsible for
most of the I/O activity.  The 'perf trace rw-by-pid' canned script in
perf trace uses the system-call read/write tracepoints
(sys_enter/exit_read/write) to capture all the reads and writes (and
failed reads/writes) of every process on the system and at the end
displays a detailed per-process summary of the results.  That
information can be used to determine which processes are responsible for
the most I/O activity on the system, which can in turn be used to target
and drill down into the detailed read/write activity caused by a
specific process using for example the rw-by-file canned script which
displays the per-file read/write activity for a specific process.

To give a couple more concrete examples of how this capability can be
useful, here are some other examples of things that can only be done
with scripting, such as detecting complex or 'compound' events.

Simple hard-coded filters and triggers can scan data for simple
conditions e.g. someone tried to read /etc/passwd.  This kind of thing
should be possible with the current event filtering capabilities even
without scripting support e.g. scan the event stream for events that
satisfy the condition:

event == vfs_open && filename == "/etc/passwd"

(This would tell you that someone tried to open /etc/password, but that
in itself isn't very useful - you'd really like to at least know who,
which of course could be accomplished by scripting.)

But a lot of other problems involve pattern matching over multiple
events.  One example from a recent lkml posting:

The poster had noticed a certain inefficient pattern in block I/O data,
where multiple readahead requests resulted in an unnecessarily
inefficient pattern:

- queue first request
- plug queue
- queue second adjacent request 
- merge
- unplug, issue, complete

In the case of readahead, latency is extremely important for throughput:
explicitly unplugging after each readahead increased throughput by 68%.
It's interesting to note that older kernels didn't have this problem,
but some unknown commit(s) introduced it.

This is the type of pattern that you would really need scripting support
in order to detect.  A simple script to check for this condition and
detect a regression such as this could be quickly written and made
available, and possibly avoid the situation where a problem like this
could go undetected for a couple kernel revisions.

Perf and perf trace scripting also support 'live mode' (over the network
if desired), where the trace stream is processed as soon as it's
generated.  Getting back to the "/etc/password" example - as mentioned,
something an administrator might want would be to monitor accesses to
"/etc/passwd" and see who's trying to access it.  With live mode, a
continuously running script could monitor sys_open calls, compare the
opened filename against "/etc/passwd", get the uid and look up username
to find out who's trying to read it, and have the Python script e-mail
the culprit's name to the admin when detected.

Baically, live-mode allows for long-running trace sessions that can
continuously scan for rare conditions.  Referring back to the readahead
example, one assumption the poster made was that "merging of a readahead
window with anything other than its own sibling" would be extremely
rare.  A long-running script could easily be written to detect this
exact condition and either confirm or refute that assumption, which
would be hard to do without some kind of scripting support. 

Perf trace scripting is relatively new, so there aren't yet a lot of
real-world examples - currently there are about 15 canned scripts
available (see 'perf trace -l') including the rw-by-pid and rw-by-file
examples described above.

The main data source for perf trace scripting are the statically defined
trace events defined in /sys/kernel/debug/tracing/events.  It's also
possible to use the dynamic event sources available from the 'perf
probe' tool, but this is still an area of active integration at the
moment.

Support for remote targets:  perf and perf trace scripting 'live-mode'
support allows the trace stream to be piped over the network using e.g.
netcat.  Using that mode, the target does nothing but generate the trace
stream and send it over the network to the host, where a live-mode
script can be applied to it.  Even so, this is probably not the most
efficient way to transfer trace data - one hope would be that perf would
add support for splice, but that's uncertain at this point.

----

Tool: SystemTap
URL: http://sourceware.org/systemtap/
Architectures supported: x86, x86_64, ppc, ppc64, ia64, s390, arm

SystemTap is also a system-wide tracing tool that allows users to write
scripts that attach handlers to events and perform complex aggregation
and filtering of the event stream.  It's been around for a long time and
thus has a lot of canned scripts available, which make use of a set of
general-purpose script-support libraries called 'tapsets' (see the
SystemTap wiki, off of the above link).

The language used to write SystemTap scripts isn't however a
general-purpose language like Perl or Python, but rather a C-like
language defined specifically for SystemTap.  The reason for that has to
do with the way SystemTap works - SystemTap scripts are executed in the
kernel, which makes general-purpose language runtimes off-limits.
Basically what SystemTap does is translate a user script into an
equivalent C version, which is then compiled into a kernel module.
Inserting the kernel module attaches the C code to specific event
sources in the kernel - whenever an event is hit, the corresponding
event handler is invoked and does whatever it's told to do - usually
this is updating a counter in a hash table or something similar.  When
the tracing session exits, the script typically calculates and displays
a summary of the aggregation(s), or whatever the user wants it to do.

In addition to the standard set of event sources (the static kernel
tracepoint events, and dynamic events via kprobes) SystemTap also
supports user space probing if the kernel is built with utrace support.
User space probing can be done either dynamically, or statically if the
application contains static tracepoints.  A very interesting aspect of
this is that via dtrace-compatible markers, the existing static dtrace
tracepoints contained in, for example, the Java or Python runtimes can
also be used as event sources (e.g. if they're compiled with
--enable-dtrace).  This should allow any Python or Java application to
be much more meaningfully traced and profiled using SystemTap - for
example, with complete userspace support theoretically every detail of
say an http request to a Java web application could be followed, from
the network device driver to the web server through a Java servlet and
back out through the kernel again.  Supporting this however, in addition
to having utrace support in the kernel, might also require some
SystemTap-specific patches to the affected applications.  Users can also
instrument their own applications using static tracepoints
(http://sourceware.org/systemtap/wiki/AddingUserSpaceProbingToApps).

As mentioned, there are a whole host of scripts available.  Examples
include everything from per-process network traffic monitoring,
packet-drop monitoring, per-process disk I/O times, to the same types of
applications described above for 'perf trace scripting).  There are too
many to usefully cover here, see
http://sourceware.org/systemtap/examples/keyword-index.html for a
complete list of the available scripts.  Everything in SystemTap is also
very well documented - there are tutorials, handbooks, and a bunch of
useful information on the wiki such as 'War Stories' and deep-dives into
other use cases i.e. there's no shortage of useful info for new (and
old) users.  I won't cover any specific examples here - basically all of
the motivations and capabilities described above for 'perf trace
scripting' should apply equally well to SystemTap, and won't be repeated
here.

Support for remote targets: SystemTap supports a cross-instrumentation
mode, where only the SystemTap run-time needs to be available on the
target.  The instrumentation kernel module derived from a myscript.stp
generated on host (stap -r kernel_version myscript.stp -m module_name)
is copied over to target and executed via staprun 'myscript.ko'.

However, apparently host and target must still be the same architecture
for this to work.

----

Tool: blktrace
URL: http://linux.die.net/man/8/blktrace
Architectures supported: all, nothing arch-specific

Still the best way to get detailed disk I/O traces, and you can do some
really cool things with it:

http://feedblog.org/2010/04/27/2009/

Support for remote targets:  Uses splice/sendfile, so the target can if
it wants do nothing but generate the trace data and send it over the
network.  blkparse, the data collection portion of blktrace, fully
supports this mode and in fact encourages it in order to avoid
perturbing the results that occur when writing trace data on the target.

----

Tool: sysprof
URL: http://www.daimi.au.dk/~sandmann/sysprof/
Architectures supported: all, nothing arch-specific

A nice simple system-wide profiling UI - it profiles the kernel and all
running userspace applications. It displays functions in one window, and
an expandable tree of callees for the selected function in the the other
window, all with hit stats.  Clicking on a callee in the callee window
shows callers of that function in a third window.

I don't know if this provides much more than OprofileUI, but the
interface is nice and it's popular in some quarters...

----

In summary, each of these tools provides a unique set of useful
capabilities that I think would be very nice to have in Yocto.  There
are of course overlaps e.g. both SystemTap and trace-cmd provide
function-callgraph tracing, both trace-cmd and perf trace provide
event-subsystem-based tracing, SystemTap and perf trace scripting both
provide different ways of achieving the same kinds of high-level
aggregation goals, while blktrace, SystemTap, and perf trace scripting
all provide different ways of looking at block I/O.  But they also each
have their own strengths as well, and do much more than what they do in
overlap.

At some point some of the these tools will be completely overlap each
other - for example SystemTap and/or perf trace scripting eventually
will probably do everything blktrace does, and will additionally have
the potential to show that information in a larger context e.g. along
with VFS and/or mm data sources.  Making things like that happen -
adding value to those tools or providing larger contexts could be a
focus for future Yocto contributions.  On the other hand, it may make
sense in v1.0 to spend a small amount of development time to actually
help provide some coherent integration to all these tools and maybe
contribute to something like perfkit (http://audidude.com/?p=504).
There may not be time to do that, but at least the minimum set of tools
for a great user experience should be available, which I think the above
list goes a long way to providing.  Comments welcome...

Tom




