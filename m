Return-Path: <rahul.saxena@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C41EE004AB
	for <yocto@yoctoproject.org>; Wed, 19 Sep 2012 10:00:23 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 19 Sep 2012 10:00:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,450,1344236400"; 
	d="scan'208,217";a="194619337"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by azsmga001.ch.intel.com with ESMTP; 19 Sep 2012 10:00:21 -0700
Received: from orsmsx107.amr.corp.intel.com ([169.254.10.146]) by
	ORSMSX102.amr.corp.intel.com ([169.254.1.89]) with mapi id
	14.01.0355.002; Wed, 19 Sep 2012 10:00:21 -0700
From: "Saxena, Rahul" <rahul.saxena@intel.com>
To: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Thread-Topic: maximum recursion depth exceeded errors with gnutls_2.12.17.bb
Thread-Index: Ac2WiECgpozC9IdtTgW4HcHc3a/1PQ==
Date: Wed, 19 Sep 2012 17:00:20 +0000
Message-ID: <63ECFF2A2302B44093D7CE9E9962C49003CCC541@ORSMSX107.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: maximum recursion depth exceeded errors with gnutls_2.12.17.bb
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
X-List-Received-Date: Wed, 19 Sep 2012 17:00:23 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_63ECFF2A2302B44093D7CE9E9962C49003CCC541ORSMSX107amrcor_"

--_000_63ECFF2A2302B44093D7CE9E9962C49003CCC541ORSMSX107amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi,



I have suddenly started getting maximum recursion depth exceeded python err=
ors with gnutls_2.12.17.bb

 recipe on Denzil branch.



I am copying snippets of the message log below (some of the stuff that repe=
ats has been removed)



Any suggestions as what could be the problem ?



Thanks

Rahul



Pseudo is not present but is required, building this first before the main =
build
WARNING: Host distribution "Ubuntu 11.04" has not been validated with this =
version of the build system; you may possibly experience unexpected failure=
s. It is recommended that you use a tested distribution.
Parsing recipes...done.
Parsing of 848 .bb files complete (0 cached, 848 parsed). 1125 targets, 25 =
skipped, 0 masked, 0 errors.

OE Build Configuration:
BB_VERSION        =3D "1.15.2"
TARGET_ARCH       =3D "i586"
TARGET_OS         =3D "linux"
MACHINE           =3D "cedartrail"
DISTRO            =3D "poky"
DISTRO_VERSION    =3D "1.2.1"
TUNE_FEATURES     =3D "m32 core2"
TARGET_FPU        =3D ""
meta
meta-yocto        =3D "denzil19aug:65ffa7395055f7e012cb973f63f92380828eed0d=
"
meta-intel
meta-cedartrail   =3D "denzil5:eb89634175a1993df879e00325c029d37bea0f1d"

.
.
.
.

lib/libxfont_1.4.5.bb, do_fetch)
NOTE: package perl-5.14.2-r6: task do_patch: Succeeded
NOTE: package liboil-0.3.17-r5: task do_populate_lic: Started
ERROR: Error executing a python function in /home/rsaxena/YoctoWork3x/meta/=
recipes-support/gnutls/gnutls_2.12.17.bb:
RuntimeError: maximum recursion depth exceeded

ERROR: The stack trace of python calls that resulted in this exception/fail=
ure was:
ERROR:   File "base_do_fetch", line 18, in <module>
ERROR:
ERROR:   File "base_do_fetch", line 13, in base_do_fetch
ERROR:
ERROR:   File "/home/rsaxena/YoctoWork3x/bitbake/lib/bb/fetch2/__init__.py"=
, line 1029, in download
ERROR:     localpath =3D try_mirrors (self.d, ud, mirrors)
ERROR:
ERROR:   File "/home/rsaxena/YoctoWork3x/bitbake/lib/bb/fetch2/__init__.py"=
, line 547, in try_mirrors
ERROR:     uris, uds =3D build_mirroruris(origud, mirrors, ld)
ERROR:
ERROR:   File "/home/rsaxena/YoctoWork3x/bitbake/lib/bb/fetch2/__init__.py"=
, line 481, in build_mirroruris
ERROR:     adduri(None, origud, uris, uds)
ERROR:
ERROR:   File "/home/rsaxena/YoctoWork3x/bitbake/lib/bb/fetch2/__init__.py"=
, line 479, in adduri
ERROR:     adduri(newuri, newud, uris, uds)
NOTE: Running task 1165 of 5212 (ID: 3334, /home/rsaxena/YoctoWork3x/meta/r=
ecipes-graphics/xorg-proto/xcmiscproto_1.2.1.bb, do_fetch)
ERROR:
ERROR:   File "/home/rsaxena/YoctoWork3x/bitbake/lib/bb/fetch2/__init__.py"=
, line 479, in adduri
ERROR:     adduri(newuri, newud, uris, uds)
ERROR:
ERROR:   File "/home/rsaxena/YoctoWork3x/bitbake/lib/bb/fetch2/__init__.py"=
, line 479, in adduri
ERROR:     adduri(newuri, newud, uris, uds)
ERROR:
ERROR:   File "/home/rsaxena/YoctoWork3x/bitbake/lib/bb/fetch2/__init__.py"=
, line 479, in adduri
ERROR:     adduri(newuri, newud, uris, uds)
ERROR:
ERROR:   File "/home/rsaxena/YoctoWork3x/bitbake/lib/bb/fetch2/__init__.py"=
, line 479, in adduri
ERROR:     adduri(newuri, newud, uris, uds)
ERROR:
ERROR:   File "/home/rsaxena/YoctoWork3x/bitbake/lib/bb/fetch2/__init__.py"=
, line 479, in adduri
ERROR:     adduri(newuri, newud, uris, uds)
ERROR:
ERROR:   File "/home/rsaxena/YoctoWork3x/bitbake/lib/bb/fetch2/__init__.py"=
, line 479, in adduri
ERROR:     adduri(newuri, newud, uris, uds)
ERROR:
.

.

.

.

.

"/home/rsaxena/YoctoWork3x/bitbake/lib/bb/fetch2/__init__.py", line 479, in=
 adduri
ERROR:     adduri(newuri, newud, uris, uds)
ERROR:
ERROR:   File "/home/rsaxena/YoctoWork3x/bitbake/lib/bb/fetch2/__init__.py"=
, line 462, in adduri
ERROR:     newuri =3D uri_replace(ud, find, replace, ld)
ERROR:
ERROR:   File "/home/rsaxena/YoctoWork3x/bitbake/lib/bb/fetch2/__init__.py"=
, line 182, in uri_replace
ERROR:     logger.debug(2, "For url %s comparing %s to %s" % (uri_decoded, =
uri_find_decoded, uri_replace_decoded))
ERROR:
ERROR:   File "/home/rsaxena/YoctoWork3x/bitbake/lib/bb/__init__.py", line =
58, in bbdebug
ERROR:     return self.log(logging.DEBUG - level + 1, msg, *args, **kwargs)
ERROR:
ERROR:   File "/usr/lib/python2.7/logging/__init__.py", line 1195, in log
ERROR:     self._log(level, msg, args, **kwargs)
ERROR:
ERROR:   File "/usr/lib/python2.7/logging/__init__.py", line 1250, in _log
ERROR:     self.handle(record)
ERROR:
ERROR:   File "/usr/lib/python2.7/logging/__init__.py", line 1260, in handl=
e
ERROR:     self.callHandlers(record)
ERROR:
ERROR:   File "/usr/lib/python2.7/logging/__init__.py", line 1300, in callH=
andlers
ERROR:     hdlr.handle(record)
ERROR:
ERROR:   File "/usr/lib/python2.7/logging/__init__.py", line 744, in handle
ERROR:     self.emit(record)
ERROR:
ERROR:   File "/home/rsaxena/YoctoWork3x/bitbake/lib/bb/event.py", line 502=
, in emit
ERROR:     fire(record, None)
ERROR:
ERROR:   File "/home/rsaxena/YoctoWork3x/bitbake/lib/bb/event.py", line 143=
, in fire
ERROR:     worker_fire(event, d)
ERROR:
ERROR:   File "/home/rsaxena/YoctoWork3x/bitbake/lib/bb/event.py", line 148=
, in worker_fire
ERROR: Running idle function
Traceback (most recent call last):
  File "/home/rsaxena/YoctoWork3x/bitbake/lib/bb/cooker.py", line 1134, in =
buildTargetsIdle(server=3D<ProcessServer(ProcessServer-1, started)>, rq=3D<=
bb.runqueue.RunQueue instance at 0x9580320>, abort=3DFalse):
                 try:
    >                retval =3D rq.execute_runqueue()
                 except runqueue.TaskFailure as exc:
  File "/home/rsaxena/YoctoWork3x/bitbake/lib/bb/runqueue.py", line 971, in=
 RunQueue.execute_runqueue():
             if self.state is runQueueRunning:
    >            retval =3D self.rqexe.execute()

  File "/home/rsaxena/YoctoWork3x/bitbake/lib/bb/runqueue.py", line 1407, i=
n RunQueueExecuteTasks.execute():
             for pipe in self.build_pipes:
    >            self.build_pipes[pipe].read()

  File "/home/rsaxena/YoctoWork3x/bitbake/lib/bb/runqueue.py", line 1808, i=
n runQueuePipe.read():
             while index !=3D -1:
    >            bb.event.fire_from_worker(self.queue[:index+8], self.d)
                 self.queue =3D self.queue[index+8:]
  File "/home/rsaxena/YoctoWork3x/bitbake/lib/bb/event.py", line 155, in fi=
re_from_worker(event=3D'<event>ccopy_reg\n_reconstructor\np1\n(clogging\nLo=
gRecord\np2\nc__builtin__\nobject\np3\nNtRp4\n(dp5\nS\'taskpid\'\np6\nI8285=
2\nsS\'threadName\'\np7\nS\'MainThread\'\np8\nsS\'name\'\np9\nS\'BitBake.Ut=
il\'\np10\nsS\'thread\'\np11\nI139835935696672\nsS\'created\'\np12\nF134807=
2550.6744399\nsS\'process\'\np13\nI82852\nsS\'processName\'\np14\nS\'Proces=
sServer-1\'\np15\nsS\'args\'\np16\n(tsS\'module\'\np17\nS\'utils\'\np18\nsS=
\'filename\'\np19\nS\'utils.py\'\np20\nsS\'levelno\'\np21\nI40\nsS\'exc_tex=
t\'\np22\nNsS\'pathname\'\np23\nS\'/home/rsaxena/YoctoWork3x/bitbake/lib/bb=
/utils.py\'\np24\nsS\'lineno\'\np25\nI372\nsS\'msg\'\np26\nS\'    data =3D =
"<event>" + pickle.dumps(event) + "</event>', d=3D<bb.data_smart.DataSmart =
object at 0x1e37990>):
             return
    >    event =3D pickle.loads(event[7:-8])
         fire_ui_handlers(event, d)
ValueError: insecure string pickle

NOTE: package libglade-2.6.4-r3: task do_patch: Started
NOTE: package rpm-5.4.0-r37: task do_unpack: Succeeded
ERROR: Running idle function
Traceback (most recent call last):
  File "/home/rsaxena/YoctoWork3x/bitbake/lib/bb/cooker.py", line 1134, in =
buildTargetsIdle(server=3D<ProcessServer(ProcessServer-1, started)>, rq=3D<=
bb.runqueue.RunQueue instance at 0x9580320>, abort=3DFalse):
                 try:
    >                retval =3D rq.execute_runqueue()
                 except runqueue.TaskFailure as exc:
  File "/home/rsaxena/YoctoWork3x/bitbake/lib/bb/runqueue.py", line 971, in=
 RunQueue.execute_runqueue():
             if self.state is runQueueRunning:
    >            retval =3D self.rqexe.execute()

  File "/home/rsaxena/YoctoWork3x/bitbake/lib/bb/runqueue.py", line 1407, i=
n RunQueueExecuteTasks.execute():
             for pipe in self.build_pipes:
    >            self.build_pipes[pipe].read()

  File "/home/rsaxena/YoctoWork3x/bitbake/lib/bb/runqueue.py", line 1808, i=
n runQueuePipe.read():
             while index !=3D -1:
    >            bb.event.fire_from_worker(self.queue[:index+8], self.d)
                 self.queue =3D self.queue[index+8:]
  File "/home/rsaxena/YoctoWork3x/bitbake/lib/bb/event.py", line 155, in fi=
re_from_worker(event=3D'<event>ccopy_reg\n_reconstructor\np1\n(clogging\nLo=
gRecord\np2\nc__builtin__\nobject\np3\nNtRp4\n(dp5\nS\'taskpid\'\np6\nI8285=
2\nsS\'threadName\'\np7\nS\'MainThread\'\np8\nsS\'name\'\np9\nS\'BitBake.Ut=
il\'\np10\nsS\'thread\'\np11\nI139835935696672\nsS\'created\'\np12\nF134807=
2550.6744399\nsS\'process\'\np13\nI82852\nsS\'processName\'\np14\nS\'Proces=
sServer-1\'\np15\nsS\'args\'\np16\n(tsS\'module\'\np17\nS\'utils\'\np18\nsS=
\'filename\'\np19\nS\'utils.py\'\np20\nsS\'levelno\'\np21\nI40\nsS\'exc_tex=
t\'\np22\nNsS\'pathname\'\np23\nS\'/home/rsaxena/YoctoWork3x/bitbake/lib/bb=
/utils.py\'\np24\nsS\'lineno\'\np25\nI372\nsS\'msg\'\np26\nS\'    data =3D =
"<event>" + pickle.dumps(event) + "</event>', d=3D<bb.data_smart.DataSmart =
object at 0x1e37990>):
             return
    >    event =3D pickle.loads(event[7:-8])
         fire_ui_handlers(event, d)
ValueError: insecure string pickle
.
.
.
.

--_000_63ECFF2A2302B44093D7CE9E9962C49003CCC541ORSMSX107amrcor_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 12 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.5pt;
	font-family:Consolas;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:Consolas;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Hi,<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">I have suddenly started getting maximum recursion depth exceeded python =
errors with gnutls_2.12.17.bb
<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&nbsp;recipe on Denzil branch.<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">I am copying snippets of the message log below (some of the stuff that r=
epeats has been removed)<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Any suggestions as what could be the problem ?<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Thanks<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Rahul<o:p></o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">Pseudo is not present but is required, building this first before the ma=
in build<br>
WARNING: Host distribution &quot;Ubuntu 11.04&quot; has not been validated =
with this version of the build system; you may possibly experience unexpect=
ed failures. It is recommended that you use a tested distribution.<br>
Parsing recipes...done.<br>
Parsing of 848 .bb files complete (0 cached, 848 parsed). 1125 targets, 25 =
skipped, 0 masked, 0 errors.<br>
<br>
OE Build Configuration:<br>
BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;1.15.2&quot;=
<br>
TARGET_ARCH&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;i586&quot;<br>
TARGET_OS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;linux&q=
uot;<br>
MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &qu=
ot;cedartrail&quot;<br>
DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D &quot;poky&quot;<br>
DISTRO_VERSION&nbsp;&nbsp;&nbsp; =3D &quot;1.2.1&quot;<br>
TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;m32 core2&quot;<br>
TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;&quot;<br>
meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp; <br>
meta-yocto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D &quot;denzil19aug:=
65ffa7395055f7e012cb973f63f92380828eed0d&quot;<br>
meta-intel&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>
meta-cedartrail&nbsp;&nbsp; =3D &quot;denzil5:eb89634175a1993df879e00325c02=
9d37bea0f1d&quot;</span><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">.<o:p></o:p></p>
<p class=3D"MsoNormal">.<o:p></o:p></p>
<p class=3D"MsoNormal">.<o:p></o:p></p>
<p class=3D"MsoNormal">.<o:p></o:p></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">lib/libxfont_1.4.5.bb, do_fetch)<br>
NOTE: package perl-5.14.2-r6: task do_patch: Succeeded<br>
NOTE: package liboil-0.3.17-r5: task do_populate_lic: Started<br>
ERROR: Error executing a python function in /home/rsaxena/YoctoWork3x/meta/=
recipes-support/gnutls/gnutls_2.12.17.bb:<br>
RuntimeError: maximum recursion depth exceeded<br>
<br>
ERROR: The stack trace of python calls that resulted in this exception/fail=
ure was:<br>
ERROR:&nbsp;&nbsp; File &quot;base_do_fetch&quot;, line 18, in &lt;module&g=
t;<br>
ERROR: <br>
ERROR:&nbsp;&nbsp; File &quot;base_do_fetch&quot;, line 13, in base_do_fetc=
h<br>
ERROR: <br>
ERROR:&nbsp;&nbsp; File &quot;/home/rsaxena/YoctoWork3x/bitbake/lib/bb/fetc=
h2/__init__.py&quot;, line 1029, in download<br>
ERROR:&nbsp;&nbsp;&nbsp;&nbsp; localpath =3D try_mirrors (self.d, ud, mirro=
rs)<br>
ERROR: <br>
ERROR:&nbsp;&nbsp; File &quot;/home/rsaxena/YoctoWork3x/bitbake/lib/bb/fetc=
h2/__init__.py&quot;, line 547, in try_mirrors<br>
ERROR:&nbsp;&nbsp;&nbsp;&nbsp; uris, uds =3D build_mirroruris(origud, mirro=
rs, ld)<br>
ERROR: <br>
ERROR:&nbsp;&nbsp; File &quot;/home/rsaxena/YoctoWork3x/bitbake/lib/bb/fetc=
h2/__init__.py&quot;, line 481, in build_mirroruris<br>
ERROR:&nbsp;&nbsp;&nbsp;&nbsp; adduri(None, origud, uris, uds)<br>
ERROR: <br>
ERROR:&nbsp;&nbsp; File &quot;/home/rsaxena/YoctoWork3x/bitbake/lib/bb/fetc=
h2/__init__.py&quot;, line 479, in adduri<br>
ERROR:&nbsp;&nbsp;&nbsp;&nbsp; adduri(newuri, newud, uris, uds)<br>
NOTE: Running task 1165 of 5212 (ID: 3334, /home/rsaxena/YoctoWork3x/meta/r=
ecipes-graphics/xorg-proto/xcmiscproto_1.2.1.bb, do_fetch)<br>
ERROR: <br>
ERROR:&nbsp;&nbsp; File &quot;/home/rsaxena/YoctoWork3x/bitbake/lib/bb/fetc=
h2/__init__.py&quot;, line 479, in adduri<br>
ERROR:&nbsp;&nbsp;&nbsp;&nbsp; adduri(newuri, newud, uris, uds)<br>
ERROR: <br>
ERROR:&nbsp;&nbsp; File &quot;/home/rsaxena/YoctoWork3x/bitbake/lib/bb/fetc=
h2/__init__.py&quot;, line 479, in adduri<br>
ERROR:&nbsp;&nbsp;&nbsp;&nbsp; adduri(newuri, newud, uris, uds)<br>
ERROR: <br>
ERROR:&nbsp;&nbsp; File &quot;/home/rsaxena/YoctoWork3x/bitbake/lib/bb/fetc=
h2/__init__.py&quot;, line 479, in adduri<br>
ERROR:&nbsp;&nbsp;&nbsp;&nbsp; adduri(newuri, newud, uris, uds)<br>
ERROR: <br>
ERROR:&nbsp;&nbsp; File &quot;/home/rsaxena/YoctoWork3x/bitbake/lib/bb/fetc=
h2/__init__.py&quot;, line 479, in adduri<br>
ERROR:&nbsp;&nbsp;&nbsp;&nbsp; adduri(newuri, newud, uris, uds)<br>
ERROR: <br>
ERROR:&nbsp;&nbsp; File &quot;/home/rsaxena/YoctoWork3x/bitbake/lib/bb/fetc=
h2/__init__.py&quot;, line 479, in adduri<br>
ERROR:&nbsp;&nbsp;&nbsp;&nbsp; adduri(newuri, newud, uris, uds)<br>
ERROR: <br>
ERROR:&nbsp;&nbsp; File &quot;/home/rsaxena/YoctoWork3x/bitbake/lib/bb/fetc=
h2/__init__.py&quot;, line 479, in adduri<br>
ERROR:&nbsp;&nbsp;&nbsp;&nbsp; adduri(newuri, newud, uris, uds)<br>
ERROR: <br>
</span>.<o:p></o:p></p>
<p class=3D"MsoPlainText">.<o:p></o:p></p>
<p class=3D"MsoPlainText">.<o:p></o:p></p>
<p class=3D"MsoPlainText">.<o:p></o:p></p>
<p class=3D"MsoPlainText">.<o:p></o:p></p>
<p class=3D"MsoPlainText"><span style=3D"font-family:&quot;Courier New&quot=
;">&quot;/home/rsaxena/YoctoWork3x/bitbake/lib/bb/fetch2/__init__.py&quot;,=
 line 479, in adduri<br>
ERROR:&nbsp;&nbsp;&nbsp;&nbsp; adduri(newuri, newud, uris, uds)<br>
ERROR: <br>
ERROR:&nbsp;&nbsp; File &quot;/home/rsaxena/YoctoWork3x/bitbake/lib/bb/fetc=
h2/__init__.py&quot;, line 462, in adduri<br>
ERROR:&nbsp;&nbsp;&nbsp;&nbsp; newuri =3D uri_replace(ud, find, replace, ld=
)<br>
ERROR: <br>
ERROR:&nbsp;&nbsp; File &quot;/home/rsaxena/YoctoWork3x/bitbake/lib/bb/fetc=
h2/__init__.py&quot;, line 182, in uri_replace<br>
ERROR:&nbsp;&nbsp;&nbsp;&nbsp; logger.debug(2, &quot;For url %s comparing %=
s to %s&quot; % (uri_decoded, uri_find_decoded, uri_replace_decoded))<br>
ERROR: <br>
ERROR:&nbsp;&nbsp; File &quot;/home/rsaxena/YoctoWork3x/bitbake/lib/bb/__in=
it__.py&quot;, line 58, in bbdebug<br>
ERROR:&nbsp;&nbsp;&nbsp;&nbsp; return self.log(logging.DEBUG - level &#43; =
1, msg, *args, **kwargs)<br>
ERROR: <br>
ERROR:&nbsp;&nbsp; File &quot;/usr/lib/python2.7/logging/__init__.py&quot;,=
 line 1195, in log<br>
ERROR:&nbsp;&nbsp;&nbsp;&nbsp; self._log(level, msg, args, **kwargs)<br>
ERROR: <br>
ERROR:&nbsp;&nbsp; File &quot;/usr/lib/python2.7/logging/__init__.py&quot;,=
 line 1250, in _log<br>
ERROR:&nbsp;&nbsp;&nbsp;&nbsp; self.handle(record)<br>
ERROR: <br>
ERROR:&nbsp;&nbsp; File &quot;/usr/lib/python2.7/logging/__init__.py&quot;,=
 line 1260, in handle<br>
ERROR:&nbsp;&nbsp;&nbsp;&nbsp; self.callHandlers(record)<br>
ERROR: <br>
ERROR:&nbsp;&nbsp; File &quot;/usr/lib/python2.7/logging/__init__.py&quot;,=
 line 1300, in callHandlers<br>
ERROR:&nbsp;&nbsp;&nbsp;&nbsp; hdlr.handle(record)<br>
ERROR: <br>
ERROR:&nbsp;&nbsp; File &quot;/usr/lib/python2.7/logging/__init__.py&quot;,=
 line 744, in handle<br>
ERROR:&nbsp;&nbsp;&nbsp;&nbsp; self.emit(record)<br>
ERROR: <br>
ERROR:&nbsp;&nbsp; File &quot;/home/rsaxena/YoctoWork3x/bitbake/lib/bb/even=
t.py&quot;, line 502, in emit<br>
ERROR:&nbsp;&nbsp;&nbsp;&nbsp; fire(record, None)<br>
ERROR: <br>
ERROR:&nbsp;&nbsp; File &quot;/home/rsaxena/YoctoWork3x/bitbake/lib/bb/even=
t.py&quot;, line 143, in fire<br>
ERROR:&nbsp;&nbsp;&nbsp;&nbsp; worker_fire(event, d)<br>
ERROR: <br>
ERROR:&nbsp;&nbsp; File &quot;/home/rsaxena/YoctoWork3x/bitbake/lib/bb/even=
t.py&quot;, line 148, in worker_fire<br>
ERROR: Running idle function<br>
Traceback (most recent call last):<br>
&nbsp; File &quot;/home/rsaxena/YoctoWork3x/bitbake/lib/bb/cooker.py&quot;,=
 line 1134, in buildTargetsIdle(server=3D&lt;ProcessServer(ProcessServer-1,=
 started)&gt;, rq=3D&lt;bb.runqueue.RunQueue instance at 0x9580320&gt;, abo=
rt=3DFalse):<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; try:<br>
&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; retval =3D rq.execute_runqueue()<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; except runqueue.TaskFailure as exc:<br>
&nbsp; File &quot;/home/rsaxena/YoctoWork3x/bitbake/lib/bb/runqueue.py&quot=
;, line 971, in RunQueue.execute_runqueue():<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if=
 self.state is runQueueRunning:<br>
&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; retval =3D self.rqexe.execute()<br>
&nbsp;&nbsp;&nbsp;&nbsp; <br>
&nbsp;&nbsp;File &quot;/home/rsaxena/YoctoWork3x/bitbake/lib/bb/runqueue.py=
&quot;, line 1407, in RunQueueExecuteTasks.execute():<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fo=
r pipe in self.build_pipes:<br>
&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; self.build_pipes[pipe].read()<br>
&nbsp;&nbsp;&nbsp;&nbsp; <br>
&nbsp;&nbsp;File &quot;/home/rsaxena/YoctoWork3x/bitbake/lib/bb/runqueue.py=
&quot;, line 1808, in runQueuePipe.read():<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wh=
ile index !=3D -1:<br>
&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; bb.event.fire_from_worker(self.queue[:index&#43;8], self.d)<=
br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; self.queue =3D self.queue[index&#43;8:]<br>
&nbsp; File &quot;/home/rsaxena/YoctoWork3x/bitbake/lib/bb/event.py&quot;, =
line 155, in fire_from_worker(event=3D'&lt;event&gt;ccopy_reg\n_reconstruct=
or\np1\n(clogging\nLogRecord\np2\nc__builtin__\nobject\np3\nNtRp4\n(dp5\nS\=
'taskpid\'\np6\nI82852\nsS\'threadName\'\np7\nS\'MainThread\'\np8\nsS\'name=
\'\np9\nS\'BitBake.Util\'\np10\nsS\'thread\'\np11\nI139835935696672\nsS\'cr=
eated\'\np12\nF1348072550.6744399\nsS\'process\'\np13\nI82852\nsS\'processN=
ame\'\np14\nS\'ProcessServer-1\'\np15\nsS\'args\'\np16\n(tsS\'module\'\np17=
\nS\'utils\'\np18\nsS\'filename\'\np19\nS\'utils.py\'\np20\nsS\'levelno\'\n=
p21\nI40\nsS\'exc_text\'\np22\nNsS\'pathname\'\np23\nS\'/home/rsaxena/Yocto=
Work3x/bitbake/lib/bb/utils.py\'\np24\nsS\'lineno\'\np25\nI372\nsS\'msg\'\n=
p26\nS\'&nbsp;&nbsp;&nbsp;
 data =3D &quot;&lt;event&gt;&quot; &#43; pickle.dumps(event) &#43; &quot;&=
lt;/event&gt;', d=3D&lt;bb.data_smart.DataSmart object at 0x1e37990&gt;):<b=
r>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; re=
turn<br>
&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp; event =3D pickle.loads(event[7:-8=
])<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fire_ui_handlers(event, d)=
<br>
ValueError: insecure string pickle<br>
<br>
NOTE: package libglade-2.6.4-r3: task do_patch: Started<br>
NOTE: package rpm-5.4.0-r37: task do_unpack: Succeeded<br>
ERROR: Running idle function<br>
Traceback (most recent call last):<br>
&nbsp; File &quot;/home/rsaxena/YoctoWork3x/bitbake/lib/bb/cooker.py&quot;,=
 line 1134, in buildTargetsIdle(server=3D&lt;ProcessServer(ProcessServer-1,=
 started)&gt;, rq=3D&lt;bb.runqueue.RunQueue instance at 0x9580320&gt;, abo=
rt=3DFalse):<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; try:<br>
&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; retval =3D rq.execute_runqueue()<br>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;except runqueue.TaskFailure as exc:<br>
&nbsp; File &quot;/home/rsaxena/YoctoWork3x/bitbake/lib/bb/runqueue.py&quot=
;, line 971, in RunQueue.execute_runqueue():<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; if=
 self.state is runQueueRunning:<br>
&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; retval =3D self.rqexe.execute()<br>
&nbsp;&nbsp;&nbsp;&nbsp; <br>
&nbsp;&nbsp;File &quot;/home/rsaxena/YoctoWork3x/bitbake/lib/bb/runqueue.py=
&quot;, line 1407, in RunQueueExecuteTasks.execute():<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fo=
r pipe in self.build_pipes:<br>
&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; self.build_pipes[pipe].read()<br>
&nbsp;&nbsp;&nbsp;&nbsp; <br>
&nbsp;&nbsp;File &quot;/home/rsaxena/YoctoWork3x/bitbake/lib/bb/runqueue.py=
&quot;, line 1808, in runQueuePipe.read():<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; wh=
ile index !=3D -1:<br>
&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp; bb.event.fire_from_worker(self.queue[:index&#43;8], self.d)<=
br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp; self.queue =3D self.queue[index&#43;8:]<br>
&nbsp; File &quot;/home/rsaxena/YoctoWork3x/bitbake/lib/bb/event.py&quot;, =
line 155, in fire_from_worker(event=3D'&lt;event&gt;ccopy_reg\n_reconstruct=
or\np1\n(clogging\nLogRecord\np2\nc__builtin__\nobject\np3\nNtRp4\n(dp5\nS\=
'taskpid\'\np6\nI82852\nsS\'threadName\'\np7\nS\'MainThread\'\np8\nsS\'name=
\'\np9\nS\'BitBake.Util\'\np10\nsS\'thread\'\np11\nI139835935696672\nsS\'cr=
eated\'\np12\nF1348072550.6744399\nsS\'process\'\np13\nI82852\nsS\'processN=
ame\'\np14\nS\'ProcessServer-1\'\np15\nsS\'args\'\np16\n(tsS\'module\'\np17=
\nS\'utils\'\np18\nsS\'filename\'\np19\nS\'utils.py\'\np20\nsS\'levelno\'\n=
p21\nI40\nsS\'exc_text\'\np22\nNsS\'pathname\'\np23\nS\'/home/rsaxena/Yocto=
Work3x/bitbake/lib/bb/utils.py\'\np24\nsS\'lineno\'\np25\nI372\nsS\'msg\'\n=
p26\nS\'&nbsp;&nbsp;&nbsp;
 data =3D &quot;&lt;event&gt;&quot; &#43; pickle.dumps(event) &#43; &quot;&=
lt;/event&gt;', d=3D&lt;bb.data_smart.DataSmart object at 0x1e37990&gt;):<b=
r>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; re=
turn<br>
&nbsp;&nbsp;&nbsp; &gt;&nbsp;&nbsp;&nbsp; event =3D pickle.loads(event[7:-8=
])<br>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; fire_ui_handlers(event, d)=
<br>
ValueError: insecure string pickle<br>
</span>.<o:p></o:p></p>
<p class=3D"MsoNormal">.<o:p></o:p></p>
<p class=3D"MsoNormal">.<o:p></o:p></p>
<p class=3D"MsoNormal">.<o:p></o:p></p>
</div>
</body>
</html>

--_000_63ECFF2A2302B44093D7CE9E9962C49003CCC541ORSMSX107amrcor_--
