Return-Path: <jessica.zhang@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id D0BE84C80FD4
	for <yocto@yoctoproject.org>; Fri, 12 Nov 2010 16:29:50 -0600 (CST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 12 Nov 2010 14:29:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.59,190,1288594800"; 
	d="p7s'?scan'208";a="677006675"
Received: from orsmsx602.amr.corp.intel.com ([10.22.226.211])
	by orsmga001.jf.intel.com with ESMTP; 12 Nov 2010 14:29:41 -0800
Received: from orsmsx001.amr.corp.intel.com ([10.22.226.42]) by
	orsmsx602.amr.corp.intel.com ([10.22.226.211]) with mapi;
	Fri, 12 Nov 2010 14:29:41 -0800
From: "Zhang, Jessica" <jessica.zhang@intel.com>
To: "Zanussi, Tom" <tom.zanussi@intel.com>, Yocto Project Discussion
	<yocto@yoctoproject.org>
Date: Fri, 12 Nov 2010 14:29:39 -0800
Thread-Topic: Tracing/profiling tools for Yocto v1.0
Thread-Index: AcuCuHwXL11Hbc84TRWgm0lXxfVuvgAAFUBg
Message-ID: <B08D4353009C0E4FB5FE1A4D0041EBC4B2120E@orsmsx001.amr.corp.intel.com>
References: <1289600719.1842.404.camel@elmorro>
In-Reply-To: <1289600719.1842.404.camel@elmorro>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Cc: Bruce Ashfield <bruce.ashfield@gmail.com>
Subject: Re: Tracing/profiling tools for Yocto v1.0
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
X-List-Received-Date: Fri, 12 Nov 2010 22:29:51 -0000
X-Groupsio-MsgNum: 283
Content-Language: en-US
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=SHA1; boundary="----=_NextPart_000_0028_01CB8276.0A355410"

------=_NextPart_000_0028_01CB8276.0A355410
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Here's another thread about sysprof, my question is should we support both
oprofile and sysprof or we should be using sysprof which seems a better
tool...

> Hi Rob,
> 
> Could you please tell us how to contribute to oprofileUI? The
yoctoproject.org is using oprofileUI as a profiling tool, and during the
development we found some bugs of oprofileUI and want to contribute our
patches to fix it.
> 

Okay. Interesting... :-) i'll expedite the move to the gnome
infrastructure. These days most of what you can do with OprofileUI you
shouldn't and instead should look at using the sysprof daemon and then
sysprof GUI. (Given that sysprof builds on perf counters and so isn't
x86 specific any longer.)

Cheerio,

Rob

Zanussi, Tom wrote:
> Hi,
> 
> For the 1.0 Yocto release, we'd like to have as complete a set of
> tracing and profiling tools as possible, enough so that most users
> will be satisfied with what's available, but not so many as to
> produce a maintenance burden.
> 
> The current set is pretty decent:
> 
> latencytop
> powertop
> lttng
> lttng-ust
> oprofile(ui)
> trace-cmd
> perf
> 
> but there seems to be an omission or two with respect to the current
> set as packaged in Yocto, and there are a few other tools that I
> think would make sense to add, either to address a gap in the current
> set, or because they're popular enough to be missed by more than a
> couple users:
> 
> KernelShark
> perf trace scripting support
> SystemTap
> blktrace
> sysprof
> 
> These are just my own opinions regarding what I think is missing - see
> below for more details on each tool, and some reasons I think it would
> make sense to include them.  If you disagree, or even better, have
> suggestions for other tools that you think are essential and missing,
> please let me know.  Otherwise, I plan on adding support for them to
> Yocto in the very near future (e.g. starting next week).
> 
> Just one note - I know that some of these may not be appropriate for
> all platforms; in those cases, I'd expect they just wouldn't be
> included in the images for those machines.  Actually, except for
> sysprof and KernelShark, they all have modes that should allow them
> to be used with minimal footprints on the target system, and even
> then I think both KernelShark and sysprof could both be relatively
> easily retrofitted with a remote layer like OprofileUI's that would
> make them lightweight on the target.
> 
> Anyway, on to some descriptions of the tools themselves, followed by a
> short summary at the end...
> 
> ----
> 
> Tool: KernelShark
> URL: http://rostedt.homelinux.com/kernelshark/
> Architectures supported: all, nothing arch-specific
> 
> KernelShark is a front-end GUI interface to trace-cmd, a tracing tool
> that's already included in the Yocto SDK (trace-cmd basically provides
> an easier-to-use text-based interface to the raw debugfs tracing files
> contained in /sys/kernel/debug/tracing).
> 
> Tracing can be started and stopped from the GUI; when the trace
> session ends, the results are displayed in a couple of sub-windows: a
> graphical area that displays events for each CPU but that can also
> display per-task graphs, and a listbox that displays a detailed list
> of events in the trace.  In addition to display of raw events, it
> also supports display of the output of the kernel's ftrace plugins
> (/sys/kernel/debug/tracing/available_tracers) such as the function and
> function_graph tracers, which are very useful on their own for
> figuring out exactly what the kernel does in particular codepaths.
> 
> One very nice KernelShark feature is the ability to easily toggle the
> individual events or event subsystems of interest; specifying these
> manually is usually one of the most unpleasant parts of command-line
> tracing, for this reason alone KernelShark is worth looking at, as it
> makes the whole tracing experience much more manageable and enjoyable
> (and therefore more likely to be used).  Additionally, the extensive
> support of filtering and searching is very useful.  The GUI itself is
> also extensible via Python plug-ins.  All in all a great tool for
> running and viewing traces.
> 
> Support for remote targets: The event subsystem and ftrace plugins
> that provide the data for trace-cmd/KernelShark are completely
> implemented within the kernel; both control and trace stream data
> retrieval are accessed via debugfs files.  The files that provide the
> data retrieval function are accessible via splice, which means that
> the trace streams could be easily sent over the network and processed
> on the host.  The current KernelShark code doesn't do that -
> currently the UI needs to run on the target - but that would be an
> area where Yocto could add some value - it shouldn't be a huge amount
> of effort to add that capability. In the worst case, something along
> the lines of what OprofileUI does (start/stop the trace on the
> target, and send the results back when done) could also be acceptable
> as a local stopgap solution. 
> 
> ----
> 
> Tool: perf trace scripting support
> URL: none, included in the kernel sources
> Architectures supported: all, nothing arch-specific
> 
> Yocto already includes the 'perf' tool, which is a userspace tool
> that's actually bundled as part of the mainline linux kernel source. 
> 'perf trace' is a subtool of perf that performs system-wide (or
> per-task) event tracing and displays the raw trace event data using
> format strings associated with each trace event.  In fact, the events
> and event descriptions used by perf are the same as those used by
> trace-cmd/KernelShark to generate its traces (the kernel event
> subsystem, see /sys/kernel/debug/tracing/events).
> 
> As is the case with KernelShark, the reams of raw trace data provided
> by perf trace provide a lot of useful detail, but the question
> becomes how to realistically extract useful high-level information
> from it.  You could sit down and pore through it for trends or
> specific conditions (no fun, and it's not really humanly possible
> with large data sets). Filtering can be used, but that only goes so
> far.  Realistically, to make sense of it, it needs to be 'boiled
> down' somehow into a more manageable form.  The fancy word for that
> is 'aggregation', which basically just means 'sticking the important
> stuff in a hash table'. 
> 
> The perf trace scripting support embeds scripting language
> interpreters into perf to allow perf's internal event dispatch
> mechanism to call script handlers directly (script handlers can also
> call back into perf). The scripting_ops interface formalizes this
> interaction and allows any scripting engine that implements the API
> to be used as a full-fledged event-processing language - currently
> Python and Perl are implemented. 
> 
> Events are exposed in the scripting interpreter as function calls,
> where each param is an event field (in the event description
> pseudo-file for the event in the kernel event subsystem).  During
> processing, every event in the trace stream is converted into a
> corresponding function call in the scripting language.  At that
> point, the handler can do anything it want to using the available
> facilities of the scripting language such as, for example, aggregate
> the event data in a hash table. 
> 
> A starter script with handlers for each event type can be
> automatically generated from existing trace data using the 'perf
> trace -g' command. This allows for one-off, quick turnaround trace
> experiments.  But scripts can be 'promoted' to full-fledged 'perf
> trace' scripts that essentially become part of perf and can be listed
> using 'perf trace -l'. This involves simply writing a couple wrapper
> shell scripts and putting them in the right places.
> 
> In general, perf trace scripting is a useful tool to have when the
> standard set of off-the-shelf tools aren't really enough to analyze a
> problem.  To take a simple example, using tools like iostat you can
> get a general statistical idea of the read/write activity on the
> system, but those tools won't tell you which processes are actually
> responsible for most of the I/O activity.  The 'perf trace rw-by-pid'
> canned script in perf trace uses the system-call read/write
> tracepoints (sys_enter/exit_read/write) to capture all the reads and
> writes (and failed reads/writes) of every process on the system and
> at the end displays a detailed per-process summary of the results. 
> That information can be used to determine which processes are
> responsible for the most I/O activity on the system, which can in
> turn be used to target and drill down into the detailed read/write
> activity caused by a specific process using for example the
> rw-by-file canned script which displays the per-file read/write
> activity for a specific process. 
> 
> To give a couple more concrete examples of how this capability can be
> useful, here are some other examples of things that can only be done
> with scripting, such as detecting complex or 'compound' events.
> 
> Simple hard-coded filters and triggers can scan data for simple
> conditions e.g. someone tried to read /etc/passwd.  This kind of thing
> should be possible with the current event filtering capabilities even
> without scripting support e.g. scan the event stream for events that
> satisfy the condition:
> 
> event == vfs_open && filename == "/etc/passwd"
> 
> (This would tell you that someone tried to open /etc/password, but
> that in itself isn't very useful - you'd really like to at least know
> who, which of course could be accomplished by scripting.)
> 
> But a lot of other problems involve pattern matching over multiple
> events.  One example from a recent lkml posting:
> 
> The poster had noticed a certain inefficient pattern in block I/O
> data, where multiple readahead requests resulted in an unnecessarily
> inefficient pattern:
> 
> - queue first request
> - plug queue
> - queue second adjacent request
> - merge
> - unplug, issue, complete
> 
> In the case of readahead, latency is extremely important for
> throughput: explicitly unplugging after each readahead increased
> throughput by 68%. It's interesting to note that older kernels didn't
> have this problem, but some unknown commit(s) introduced it.
> 
> This is the type of pattern that you would really need scripting
> support in order to detect.  A simple script to check for this
> condition and detect a regression such as this could be quickly
> written and made available, and possibly avoid the situation where a
> problem like this could go undetected for a couple kernel revisions.
> 
> Perf and perf trace scripting also support 'live mode' (over the
> network if desired), where the trace stream is processed as soon as
> it's generated.  Getting back to the "/etc/password" example - as
> mentioned, something an administrator might want would be to monitor
> accesses to "/etc/passwd" and see who's trying to access it.  With
> live mode, a continuously running script could monitor sys_open
> calls, compare the opened filename against "/etc/passwd", get the uid
> and look up username to find out who's trying to read it, and have
> the Python script e-mail the culprit's name to the admin when
> detected. 
> 
> Baically, live-mode allows for long-running trace sessions that can
> continuously scan for rare conditions.  Referring back to the
> readahead example, one assumption the poster made was that "merging
> of a readahead window with anything other than its own sibling" would
> be extremely rare.  A long-running script could easily be written to
> detect this exact condition and either confirm or refute that
> assumption, which would be hard to do without some kind of scripting
> support. 
> 
> Perf trace scripting is relatively new, so there aren't yet a lot of
> real-world examples - currently there are about 15 canned scripts
> available (see 'perf trace -l') including the rw-by-pid and rw-by-file
> examples described above.
> 
> The main data source for perf trace scripting are the statically
> defined trace events defined in /sys/kernel/debug/tracing/events. 
> It's also possible to use the dynamic event sources available from
> the 'perf probe' tool, but this is still an area of active
> integration at the moment.
> 
> Support for remote targets:  perf and perf trace scripting 'live-mode'
> support allows the trace stream to be piped over the network using
> e.g. netcat.  Using that mode, the target does nothing but generate
> the trace stream and send it over the network to the host, where a
> live-mode script can be applied to it.  Even so, this is probably not
> the most efficient way to transfer trace data - one hope would be
> that perf would add support for splice, but that's uncertain at this
> point. 
> 
> ----
> 
> Tool: SystemTap
> URL: http://sourceware.org/systemtap/
> Architectures supported: x86, x86_64, ppc, ppc64, ia64, s390, arm
> 
> SystemTap is also a system-wide tracing tool that allows users to
> write scripts that attach handlers to events and perform complex
> aggregation and filtering of the event stream.  It's been around for
> a long time and thus has a lot of canned scripts available, which
> make use of a set of general-purpose script-support libraries called
> 'tapsets' (see the SystemTap wiki, off of the above link).
> 
> The language used to write SystemTap scripts isn't however a
> general-purpose language like Perl or Python, but rather a C-like
> language defined specifically for SystemTap.  The reason for that has
> to do with the way SystemTap works - SystemTap scripts are executed
> in the kernel, which makes general-purpose language runtimes
> off-limits. Basically what SystemTap does is translate a user script
> into an equivalent C version, which is then compiled into a kernel
> module. Inserting the kernel module attaches the C code to specific
> event sources in the kernel - whenever an event is hit, the
> corresponding event handler is invoked and does whatever it's told to
> do - usually this is updating a counter in a hash table or something
> similar.  When the tracing session exits, the script typically
> calculates and displays a summary of the aggregation(s), or whatever
> the user wants it to do. 
> 
> In addition to the standard set of event sources (the static kernel
> tracepoint events, and dynamic events via kprobes) SystemTap also
> supports user space probing if the kernel is built with utrace
> support. User space probing can be done either dynamically, or
> statically if the application contains static tracepoints.  A very
> interesting aspect of this is that via dtrace-compatible markers, the
> existing static dtrace tracepoints contained in, for example, the
> Java or Python runtimes can also be used as event sources (e.g. if
> they're compiled with --enable-dtrace).  This should allow any Python
> or Java application to be much more meaningfully traced and profiled
> using SystemTap - for example, with complete userspace support
> theoretically every detail of say an http request to a Java web
> application could be followed, from the network device driver to the
> web server through a Java servlet and back out through the kernel
> again.  Supporting this however, in addition to having utrace support
> in the kernel, might also require some SystemTap-specific patches to
> the affected applications.  Users can also instrument their own
> applications using static tracepoints
> (http://sourceware.org/systemtap/wiki/AddingUserSpaceProbingToApps). 
> 
> As mentioned, there are a whole host of scripts available.  Examples
> include everything from per-process network traffic monitoring,
> packet-drop monitoring, per-process disk I/O times, to the same types
> of applications described above for 'perf trace scripting).  There
> are too many to usefully cover here, see
> http://sourceware.org/systemtap/examples/keyword-index.html for a
> complete list of the available scripts.  Everything in SystemTap is
> also very well documented - there are tutorials, handbooks, and a
> bunch of useful information on the wiki such as 'War Stories' and
> deep-dives into other use cases i.e. there's no shortage of useful
> info for new (and old) users.  I won't cover any specific examples
> here - basically all of the motivations and capabilities described
> above for 'perf trace scripting' should apply equally well to
> SystemTap, and won't be repeated here.
> 
> Support for remote targets: SystemTap supports a cross-instrumentation
> mode, where only the SystemTap run-time needs to be available on the
> target.  The instrumentation kernel module derived from a myscript.stp
> generated on host (stap -r kernel_version myscript.stp -m module_name)
> is copied over to target and executed via staprun 'myscript.ko'.
> 
> However, apparently host and target must still be the same
> architecture for this to work.
> 
> ----
> 
> Tool: blktrace
> URL: http://linux.die.net/man/8/blktrace
> Architectures supported: all, nothing arch-specific
> 
> Still the best way to get detailed disk I/O traces, and you can do
> some really cool things with it:
> 
> http://feedblog.org/2010/04/27/2009/
> 
> Support for remote targets:  Uses splice/sendfile, so the target can
> if it wants do nothing but generate the trace data and send it over
> the network.  blkparse, the data collection portion of blktrace, fully
> supports this mode and in fact encourages it in order to avoid
> perturbing the results that occur when writing trace data on the
> target. 
> 
> ----
> 
> Tool: sysprof
> URL: http://www.daimi.au.dk/~sandmann/sysprof/
> Architectures supported: all, nothing arch-specific
> 
> A nice simple system-wide profiling UI - it profiles the kernel and
> all running userspace applications. It displays functions in one
> window, and an expandable tree of callees for the selected function
> in the the other window, all with hit stats.  Clicking on a callee in
> the callee window shows callers of that function in a third window.
> 
> I don't know if this provides much more than OprofileUI, but the
> interface is nice and it's popular in some quarters...
> 
> ----
> 
> In summary, each of these tools provides a unique set of useful
> capabilities that I think would be very nice to have in Yocto.  There
> are of course overlaps e.g. both SystemTap and trace-cmd provide
> function-callgraph tracing, both trace-cmd and perf trace provide
> event-subsystem-based tracing, SystemTap and perf trace scripting both
> provide different ways of achieving the same kinds of high-level
> aggregation goals, while blktrace, SystemTap, and perf trace scripting
> all provide different ways of looking at block I/O.  But they also
> each have their own strengths as well, and do much more than what
> they do in overlap.
> 
> At some point some of the these tools will be completely overlap each
> other - for example SystemTap and/or perf trace scripting eventually
> will probably do everything blktrace does, and will additionally have
> the potential to show that information in a larger context e.g. along
> with VFS and/or mm data sources.  Making things like that happen -
> adding value to those tools or providing larger contexts could be a
> focus for future Yocto contributions.  On the other hand, it may make
> sense in v1.0 to spend a small amount of development time to actually
> help provide some coherent integration to all these tools and maybe
> contribute to something like perfkit (http://audidude.com/?p=504).
> There may not be time to do that, but at least the minimum set of
> tools for a great user experience should be available, which I think
> the above list goes a long way to providing.  Comments welcome...
> 
> Tom

------=_NextPart_000_0028_01CB8276.0A355410
Content-Type: application/x-pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIdiDCCAyAw
ggKJoAMCAQICBDXe9M8wDQYJKoZIhvcNAQEFBQAwTjELMAkGA1UEBhMCVVMxEDAOBgNVBAoTB0Vx
dWlmYXgxLTArBgNVBAsTJEVxdWlmYXggU2VjdXJlIENlcnRpZmljYXRlIEF1dGhvcml0eTAeFw05
ODA4MjIxNjQxNTFaFw0xODA4MjIxNjQxNTFaME4xCzAJBgNVBAYTAlVTMRAwDgYDVQQKEwdFcXVp
ZmF4MS0wKwYDVQQLEyRFcXVpZmF4IFNlY3VyZSBDZXJ0aWZpY2F0ZSBBdXRob3JpdHkwgZ8wDQYJ
KoZIhvcNAQEBBQADgY0AMIGJAoGBAMFdsVhnCGLuoJotHwhtkRRomAoe/toEbxOEYiHD0XzOnwXg
uAHwTjTs4oqVBGSs8WtTXwWzy2eAv0ICjv7dAQns4QAUT/z78AzdQ7pbK+EfgHCZFVeTFvEPl2q3
wmgjHMxNWTCsUR47ryvW7mNFe8XZX1DS41APOojnvxT94Me5AgMBAAGjggEJMIIBBTBwBgNVHR8E
aTBnMGWgY6BhpF8wXTELMAkGA1UEBhMCVVMxEDAOBgNVBAoTB0VxdWlmYXgxLTArBgNVBAsTJEVx
dWlmYXggU2VjdXJlIENlcnRpZmljYXRlIEF1dGhvcml0eTENMAsGA1UEAxMEQ1JMMTAaBgNVHRAE
EzARgQ8yMDE4MDgyMjE2NDE1MVowCwYDVR0PBAQDAgEGMB8GA1UdIwQYMBaAFEjmaPkr0rKV10fY
IyAQTzOYkJ/UMB0GA1UdDgQWBBRI5mj5K9KylddH2CMgEE8zmJCf1DAMBgNVHRMEBTADAQH/MBoG
CSqGSIb2fQdBAAQNMAsbBVYzLjBjAwIGwDANBgkqhkiG9w0BAQUFAAOBgQBYzinq/Pfetc4CuRe1
hdG54+CVzCUxDQCmkm5/tpJjnlCV0Zpv5BHeY4VumO6o/1rI01WyZnFX3sAh6z0qpyNJAQSGQnv8
7n+iFlK1Z2fTQNs7JliyKHc9rhR3Ydb6KmYnoA36p3Nc6nDxlCFlRF/6/O8paKmih3nvee9PrAd3
ODCCAz0wggKmoAMCAQICAwWw/zANBgkqhkiG9w0BAQUFADBOMQswCQYDVQQGEwJVUzEQMA4GA1UE
ChMHRXF1aWZheDEtMCsGA1UECxMkRXF1aWZheCBTZWN1cmUgQ2VydGlmaWNhdGUgQXV0aG9yaXR5
MB4XDTA2MDIxNjE4MDEzMFoXDTE2MDIxOTE4MDEzMFowUjELMAkGA1UEBhMCVVMxGjAYBgNVBAoT
EUludGVsIENvcnBvcmF0aW9uMScwJQYDVQQDEx5JbnRlbCBFeHRlcm5hbCBCYXNpYyBQb2xpY3kg
Q0EwggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDBpd/XOb9QVqEZ8mQ1042TdOIq3ATD
IsV2xDyt30yLyMR5Wjtus0bn3B+he89BiNO/LP6+rFzEwlD55PlX+HLGIKeNNG97dqyc30FElEUj
ZzTZFq2N4e3kVJ/XAEEgANzV8v9qp7qWwxugPgfc3z9BkYot+CifozexHLb/hEZj+yISCU61kRZv
uSQ0E11yYL4dRgcglJeaHo3oX57rvIckaLsYV5/1Aj+R8DM1Ppk965XQAKsHfnyT7C4S50T4lVn4
lz36wOdNZn/zegG1zp41lnoTFfT4KuKVJH5x7YD1p6KbgJCKLovnujGuohquBNfdXKpZkvz6pGv+
iC1HawJdAgMBAAGjgaAwgZ0wDgYDVR0PAQH/BAQDAgEGMB0GA1UdDgQWBBQaxgxKxEdvqNutK/D0
Vgaj7TdUDDA6BgNVHR8EMzAxMC+gLaArhilodHRwOi8vY3JsLmdlb3RydXN0LmNvbS9jcmxzL3Nl
Y3VyZWNhLmNybDAfBgNVHSMEGDAWgBRI5mj5K9KylddH2CMgEE8zmJCf1DAPBgNVHRMBAf8EBTAD
AQH/MA0GCSqGSIb3DQEBBQUAA4GBABMQOK2kVKVIlUWwLTdywJ+e2O+PC/uQltK2F3lRyrPfBn69
tOkIP4SgDJOfsxyobIrPLe75kBLw+Dom13OBDp/EMZJZ1CglQfVV8co9mT3aZMjSGGQiMgkJLR3j
Mfr900fXZKj5XeqCJ+JP0mEhJGEdVCY+FFlksJjV86fDrq1QMIIFYzCCBEugAwIBAgIKYSyUiQAA
AAAABTANBgkqhkiG9w0BAQUFADBSMQswCQYDVQQGEwJVUzEaMBgGA1UEChMRSW50ZWwgQ29ycG9y
YXRpb24xJzAlBgNVBAMTHkludGVsIEV4dGVybmFsIEJhc2ljIFBvbGljeSBDQTAeFw0wNjAzMjIy
MjIyNDJaFw0xMjAzMjIyMjMyNDJaMFYxCzAJBgNVBAYTAlVTMRowGAYDVQQKExFJbnRlbCBDb3Jw
b3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNzdWluZyBDQSAzQTCCASIw
DQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAKvXqH/ah10uJc7YzQUh+XEDNqS6IsXOyqCtizr9
x6F+v6iRAbvddRRJRWixfV78qarSN9WMymJ90M8c9/Dfr1yzFuq95RgCAF3vdve3wKi7kJv6lkMJ
wyyB+uIYcWtljYx2LDqbb9S6Z6He3q8W/aGKvu23I9ksNx+cmZcDNZwGdXVIEHpEMyA4bp0RvYtf
p8BsGAyn6YuK63HugeyYdeFL+4+Wz2tGUqw9OWhob6oV1oDH3zboLhHJiQ2oIj3jAJ3/LrIkzcWP
2R20UIliDAPAAl6MNWJPdsNK5EEeuxEuUSpdFsMj5rBmPHH4U8i8rUmi6GEOcX5rwAw64AzS3gEC
AwEAAaOCAjUwggIxMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFAlpgTN7BnOPI0wKA9/3FoER
ghMFMAsGA1UdDwQEAwIBhjAQBgkrBgEEAYI3FQEEAwIBADAZBgkrBgEEAYI3FAIEDB4KAFMAdQBi
AEMAQTAfBgNVHSMEGDAWgBQaxgxKxEdvqNutK/D0Vgaj7TdUDDCBvQYDVR0fBIG1MIGyMIGvoIGs
oIGphk5odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9JbnRlbCUyMEV4dGVybmFs
JTIwQmFzaWMlMjBQb2xpY3klMjBDQS5jcmyGV2h0dHA6Ly9jZXJ0aWZpY2F0ZXMuaW50ZWwuY29t
L3JlcG9zaXRvcnkvQ1JML0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMFBvbGljeSUyMENBLmNy
bDCB4wYIKwYBBQUHAQEEgdYwgdMwYwYIKwYBBQUHMAKGV2h0dHA6Ly93d3cuaW50ZWwuY29tL3Jl
cG9zaXRvcnkvY2VydGlmaWNhdGVzL0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMFBvbGljeSUy
MENBLmNydDBsBggrBgEFBQcwAoZgaHR0cDovL2NlcnRpZmljYXRlcy5pbnRlbC5jb20vcmVwb3Np
dG9yeS9jZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwUG9saWN5JTIwQ0Eu
Y3J0MA0GCSqGSIb3DQEBBQUAA4IBAQCuNCnecJ+vDpXzsHOzMEyz4KgTNDbJROHag8H/ZVga7soc
oJyC+HKqDfQgxifVorbTbSajCBEAxqg6bbNWBJ6qKOFHneBrXkENf5WdD50eCTCFWRV3EIsHEOQ1
kP0eNYV5Ed4hp9y6wASV6z2z86O4+qouLJiow4AIhoCKD8rEyD7ODgTvjvLCKpsVyPlG1jOVSsOS
IF2VUmueAmK3RFU4np83zerK/j0G37owhniEDT6ZhwkUd0XL45nt1m7yApMEbnXUTHNaXnE+P98k
k3nDXdW25sB+5xWcYR3GpgMdQiZgP/f0KZ+yZKNE7gcp3I/O4pXqUNWIsLSYTi3soAR2MIIFYzCC
BEugAwIBAgIKYSyl/gAAAAAABjANBgkqhkiG9w0BAQUFADBSMQswCQYDVQQGEwJVUzEaMBgGA1UE
ChMRSW50ZWwgQ29ycG9yYXRpb24xJzAlBgNVBAMTHkludGVsIEV4dGVybmFsIEJhc2ljIFBvbGlj
eSBDQTAeFw0wNjAzMjIyMjIyNDdaFw0xMjAzMjIyMjMyNDdaMFYxCzAJBgNVBAYTAlVTMRowGAYD
VQQKExFJbnRlbCBDb3Jwb3JhdGlvbjErMCkGA1UEAxMiSW50ZWwgRXh0ZXJuYWwgQmFzaWMgSXNz
dWluZyBDQSAzQjCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAMDoHJYUGvcdR4k0Qv8/
RrwNX4+vEe5PN2LnGn4xfIWwdUbk5+zvrRy1HjoKdG/AShZfxAuFoVyNIah5GJLpiS/vGbsDYKK+
EZcIcmtPfvbB9Yg09EnQ0OpsZ2ORRd5lYUfMUU+zkpgL96vKFdkiG+eeHEwnSS3VikGVrF7UDdKf
vxZwRwQCx6rEHAFPCjBDVfGYZuYT1EDhSDvzEiU7KzBsxrdBCFU4RYL7kh+do+vyMDlBzpw3WKvM
Vbf3s5lxYiY7AjEhU8OSyZEQlgtK8PNyifHjmyrSaeJrPshM3PuLFG4d3gm1UJEiGNzxcHGb6YLP
29IQAwY5mAk8j+UOVcsCAwEAAaOCAjUwggIxMA8GA1UdEwEB/wQFMAMBAf8wHQYDVR0OBBYEFG/D
cREooZ0ZV/VnV8/ZKSaI1aWiMAsGA1UdDwQEAwIBhjAQBgkrBgEEAYI3FQEEAwIBADAZBgkrBgEE
AYI3FAIEDB4KAFMAdQBiAEMAQTAfBgNVHSMEGDAWgBQaxgxKxEdvqNutK/D0Vgaj7TdUDDCBvQYD
VR0fBIG1MIGyMIGvoIGsoIGphk5odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9J
bnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBQb2xpY3klMjBDQS5jcmyGV2h0dHA6Ly9jZXJ0aWZp
Y2F0ZXMuaW50ZWwuY29tL3JlcG9zaXRvcnkvQ1JML0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUy
MFBvbGljeSUyMENBLmNybDCB4wYIKwYBBQUHAQEEgdYwgdMwYwYIKwYBBQUHMAKGV2h0dHA6Ly93
d3cuaW50ZWwuY29tL3JlcG9zaXRvcnkvY2VydGlmaWNhdGVzL0ludGVsJTIwRXh0ZXJuYWwlMjBC
YXNpYyUyMFBvbGljeSUyMENBLmNydDBsBggrBgEFBQcwAoZgaHR0cDovL2NlcnRpZmljYXRlcy5p
bnRlbC5jb20vcmVwb3NpdG9yeS9jZXJ0aWZpY2F0ZXMvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2lj
JTIwUG9saWN5JTIwQ0EuY3J0MA0GCSqGSIb3DQEBBQUAA4IBAQBAiWWHL6T21QXFZDyaUIye0jh7
f40GXqi75Ro5JbpROtlZBqyRq6oPMAG6Igxd5Bd9TMtNkOvguknFnK1y17UdMhLOl+FuInE+FAWk
803aRW27OsX+ot0KmPioKnZ3L1K5qcQS3tp6or7AaZzd0w0qFitm4UfP9nnTXQtY9XM5QJ07IKFD
E3tlOlamKhjbiJV3FKigCVesPZSx9h2G7Ve4irEfz915Vks26AJHGZagEHNxM9exkgem4ENsG+t0
vYqn9x7YsqJ6fmbOSyrzjzb3CYeEfyE5SL+f3Vx9uMsQDyb8LVCDBXQtxLEHnFEBPrRSSF9kPmyj
avx4UqFdPEyCMIIGAzCCBOugAwIBAgIKGmwusAAAAAApdjANBgkqhkiG9w0BAQUFADBWMQswCQYD
VQQGEwJVUzEaMBgGA1UEChMRSW50ZWwgQ29ycG9yYXRpb24xKzApBgNVBAMTIkludGVsIEV4dGVy
bmFsIEJhc2ljIElzc3VpbmcgQ0EgM0IwHhcNMDgwNDE0MjMxNDQ4WhcNMTEwNDE0MjMxNDQ4WjBB
MRcwFQYDVQQDEw5aaGFuZywgSmVzc2ljYTEmMCQGCSqGSIb3DQEJARYXamVzc2ljYS56aGFuZ0Bp
bnRlbC5jb20wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIBAQDQbirxoX/8OWYyzy4UnZ7N
xXoADLZqxxH1q4lMF2zuAHjyDnNj/4ReRzB6AIDEg1BQWS4z5jC6oApos3HvFEsGbS3pYCWSo5Vb
jtY5HWOBRPJ2rQ8wzITqcEEBWooYCj5LJeAjPuOZoZPVrKPI1khbOYzaJUwQpICfaErHZyM4p2mV
AYXcUa/N0zKGnZmNaO6Dff96g41C9jEyfOFEtYOpLdQoXhD1i8tW17WxbHMuiXx3PR3GUdBADrRf
I3wzqn4rh0y0D4l9mBfgTybVN3UR35ZFGSRsuldyJeeKcCSgghJi3K4ZTxzMfQ6+OKBu6SBeNKWk
e2Q4f8CIf0+8ZpwfAgMBAAGjggLmMIIC4jALBgNVHQ8EBAMCB4AwHQYDVR0OBBYEFPIpOYEzCqH+
037yR8d0Rarz7r7mMDwGCSsGAQQBgjcVBwQvMC0GJSsGAQQBgjcVCIbDjHWEmeVRg/2BKIWOn1OC
kcAJZ4HevTmV8EMCAWQCAQYwHwYDVR0jBBgwFoAUb8NxESihnRlX9WdXz9kpJojVpaIwgckGA1Ud
HwSBwTCBvjCBu6CBuKCBtYZUaHR0cDovL3d3dy5pbnRlbC5jb20vcmVwb3NpdG9yeS9DUkwvSW50
ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwSXNzdWluZyUyMENBJTIwM0IuY3Jshl1odHRwOi8vY2Vy
dGlmaWNhdGVzLmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9JbnRlbCUyMEV4dGVybmFsJTIwQmFz
aWMlMjBJc3N1aW5nJTIwQ0ElMjAzQi5jcmwwge8GCCsGAQUFBwEBBIHiMIHfMGkGCCsGAQUFBzAC
hl1odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRpZmljYXRlcy9JbnRlbCUyMEV4
dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjAzQi5jcnQwcgYIKwYBBQUHMAKGZmh0dHA6
Ly9jZXJ0aWZpY2F0ZXMuaW50ZWwuY29tL3JlcG9zaXRvcnkvY2VydGlmaWNhdGVzL0ludGVsJTIw
RXh0ZXJuYWwlMjBCYXNpYyUyMElzc3VpbmclMjBDQSUyMDNCLmNydDAfBgNVHSUEGDAWBggrBgEF
BQcDBAYKKwYBBAGCNwoDDDApBgkrBgEEAYI3FQoEHDAaMAoGCCsGAQUFBwMEMAwGCisGAQQBgjcK
AwwwSwYDVR0RBEQwQqAnBgorBgEEAYI3FAIDoBkMF2plc3NpY2EuemhhbmdAaW50ZWwuY29tgRdq
ZXNzaWNhLnpoYW5nQGludGVsLmNvbTANBgkqhkiG9w0BAQUFAAOCAQEANFSBbauSm1ktwUQI6fGq
9XhTSUsty5/CHOrOwFe4K7LX0clVirXUYakIZXXG86lD1piRrjt23MhKRekYNIv0mfJklEF7yV5M
VVqwDK1Uz6bsiw/SQnqfBuFrd70W4cua3bU1uu3dAhZBh482BtBZYFockuHd3YBFT7xmykOaAMLP
CttrNSijP7HsbetGG2GLLc3CWauSXXr2ELseXkw3KkUKBPMw+DFAJdsRyBe0L+OwlDplr8POBXXb
uuQK7Wo84mX7gMT0uSq/Luex/BD1xn2brKVs9t4FvL8ifxv4LuWRzv45EgPN4T12I202GBQ8iJtZ
DkT3+9QPiQ35Hmuy6zCCBkowggUyoAMCAQICCnmKHVEAAAAAHyswDQYJKoZIhvcNAQEFBQAwVjEL
MAkGA1UEBhMCVVMxGjAYBgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBF
eHRlcm5hbCBCYXNpYyBJc3N1aW5nIENBIDNBMB4XDTA4MDQxNDIzMTM1MVoXDTExMDQxNDIzMTM1
MVowQTEXMBUGA1UEAxMOWmhhbmcsIEplc3NpY2ExJjAkBgkqhkiG9w0BCQEWF2plc3NpY2Euemhh
bmdAaW50ZWwuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA2Lgwg9E/0F9weWx5
ZCk0oiuerOIqOFTXcithjh7zRhiq8v/z9sXR/yWXUA7JK5E5JLPRNl0nQJFv/FLTaq9/9PchiI/N
4v7L/ERXTzdMNvwOEqNOy8SOmmOOjF8N1vtrIv+WdBYiqBvtfQ9xGXadxckgrBOSTtTrw4iShbnG
mVrw6mYYIOdPIKhq3QFmxHs93R8IrmIjvMbf31JhiAp7KJ/mc+bckmYW/9fNNEQkMbuF3B6iWsTk
8c+D8oWmxuw+m6svwEMKck8yr3ldF6sZ6NCKXJChwDmjZMHBBSV6IUUycyl6SJ33j3r9Beki5bvG
mhZnfGBLWODaLv4PDbG7BwIDAQABo4IDLTCCAykwCwYDVR0PBAQDAgQwMEQGCSqGSIb3DQEJDwQ3
MDUwDgYIKoZIhvcNAwICAgCAMA4GCCqGSIb3DQMEAgIAgDAHBgUrDgMCBzAKBggqhkiG9w0DBzAd
BgNVHQ4EFgQUKEdHKlCw71rRzz5gJWoRJwoviW0wPQYJKwYBBAGCNxUHBDAwLgYmKwYBBAGCNxUI
hsOMdYSZ5VGD/YEohY6fU4KRwAlnhLnZQYeE/04CAWQCAQkwHwYDVR0jBBgwFoAUCWmBM3sGc48j
TAoD3/cWgRGCEwUwgckGA1UdHwSBwTCBvjCBu6CBuKCBtYZUaHR0cDovL3d3dy5pbnRlbC5jb20v
cmVwb3NpdG9yeS9DUkwvSW50ZWwlMjBFeHRlcm5hbCUyMEJhc2ljJTIwSXNzdWluZyUyMENBJTIw
M0EuY3Jshl1odHRwOi8vY2VydGlmaWNhdGVzLmludGVsLmNvbS9yZXBvc2l0b3J5L0NSTC9JbnRl
bCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjAzQS5jcmwwge8GCCsGAQUFBwEB
BIHiMIHfMGkGCCsGAQUFBzAChl1odHRwOi8vd3d3LmludGVsLmNvbS9yZXBvc2l0b3J5L2NlcnRp
ZmljYXRlcy9JbnRlbCUyMEV4dGVybmFsJTIwQmFzaWMlMjBJc3N1aW5nJTIwQ0ElMjAzQS5jcnQw
cgYIKwYBBQUHMAKGZmh0dHA6Ly9jZXJ0aWZpY2F0ZXMuaW50ZWwuY29tL3JlcG9zaXRvcnkvY2Vy
dGlmaWNhdGVzL0ludGVsJTIwRXh0ZXJuYWwlMjBCYXNpYyUyMElzc3VpbmclMjBDQSUyMDNBLmNy
dDAfBgNVHSUEGDAWBggrBgEFBQcDBAYKKwYBBAGCNwoDBDApBgkrBgEEAYI3FQoEHDAaMAoGCCsG
AQUFBwMEMAwGCisGAQQBgjcKAwQwSwYDVR0RBEQwQqAnBgorBgEEAYI3FAIDoBkMF2plc3NpY2Eu
emhhbmdAaW50ZWwuY29tgRdqZXNzaWNhLnpoYW5nQGludGVsLmNvbTANBgkqhkiG9w0BAQUFAAOC
AQEAlkSHAnj2YSCjtyOIJJtoNia1mv4qLpp3rxqxeZzEG9Bk4k4hGHkozj1p+mi368ieYl/fTPtK
IIBDCwod9o12adTGGW7wyUHjZfalumhsFoKTXbUU/CC7lpooUKuDxCjaIjsc4rdDxP1MEAUX43IG
kLRqq9elDWluC0WjR+q+cAqKMJxLmAKhKz7JDTNrbfWwuoETGdCMkLUK464/FSvfDKoV+Ypkoq1x
YiTi71VhwWenYKPnyKbLgiULEgdfwQscMzJQ9rmq1iyfoXuXPSkCA6nfZKoSkBOVJQXjW/+B2wxe
YmaO9Qc5P3CJvsmgmgX5mK2wyKEw0JCwTHE3w7FkFjGCA0EwggM9AgEBMGQwVjELMAkGA1UEBhMC
VVMxGjAYBgNVBAoTEUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBC
YXNpYyBJc3N1aW5nIENBIDNCAgoabC6wAAAAACl2MAkGBSsOAwIaBQCgggGyMBgGCSqGSIb3DQEJ
AzELBgkqhkiG9w0BBwEwHAYJKoZIhvcNAQkFMQ8XDTEwMTExMjIyMjkzOVowIwYJKoZIhvcNAQkE
MRYEFGiaVYrf2dmIM0J1Zk7vFC4uZYQvMGcGCSqGSIb3DQEJDzFaMFgwCgYIKoZIhvcNAwcwDgYI
KoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAcGBSsOAwIHMA0GCCqGSIb3DQMCAgEoMAcGBSsO
AwIaMAoGCCqGSIb3DQIFMHMGCSsGAQQBgjcQBDFmMGQwVjELMAkGA1UEBhMCVVMxGjAYBgNVBAoT
EUludGVsIENvcnBvcmF0aW9uMSswKQYDVQQDEyJJbnRlbCBFeHRlcm5hbCBCYXNpYyBJc3N1aW5n
IENBIDNBAgp5ih1RAAAAAB8rMHUGCyqGSIb3DQEJEAILMWagZDBWMQswCQYDVQQGEwJVUzEaMBgG
A1UEChMRSW50ZWwgQ29ycG9yYXRpb24xKzApBgNVBAMTIkludGVsIEV4dGVybmFsIEJhc2ljIElz
c3VpbmcgQ0EgM0ECCnmKHVEAAAAAHyswDQYJKoZIhvcNAQEBBQAEggEAUg+Bj5N84/8a3GAEMPXI
wCIetzHAt30tlUBYAEn+sO9HZceUWTSLg7D8fo+M2xzYlaewBnke3eNYQNh5PWfrok+Z1MG4yhy1
NvvstaaDk9e60UNulL5GdntaYTDQ7CCx+Fd5pxLl+opDm3dGSeD2sc7OU9L4Lcqk9Z4jCejfu9gh
8kvUZdeZNoJCBOR5IRDKfnYjIy55L5A75XSmocx6pLde5qEqGSPxT5m9Lj7UtETsbfWHuuezJh7/
+sQb34qFBO46Idzf5NTWzJRf+mPo5tlEZTuOTQdbOovVK0MSKDHMhPsfVBgty+Rb/8Lzypw9vvNK
eJgSilP6Pnr6V5cwVQAAAAAAAA==

------=_NextPart_000_0028_01CB8276.0A355410--
