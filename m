Subject: #bitbake Can't use 'bitbake -g <image-name> -u taskdep
To: yocto@lists.yoctoproject.org
From: "keydi" <krzysztof.dudziak@thalesgroup.com>
X-Originating-Location: Frankfurt am Main, Hesse, DE (217.239.180.122)
X-Originating-Platform: Windows Chrome 89
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 16 Apr 2021 04:27:43 -0700
Message-ID: <lyWP.1618572463388507627.YhB7@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="7gfbVzonXvbzwr6yGJ76"

--7gfbVzonXvbzwr6yGJ76
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,
Myself had to ask web search engine for usage of Task Dependency Explorer =
taskexp as I didn't succeed on search in Yocto materials.
Hence, the way I try to use taskexp might be not right.

In the fashion as I try to start Task Dependency Explorer it does not work=
.
Invocation completes with error in __init__.py=C2=A0 -> require_version fi=
gures out lack of Gtk namespace.
Which is build-area Gtk is missed? Image, distribution, yet another?
Which way of fixing should I aim to resolve error?

File "/mnt/..../meta/poky/bitbake/lib/bb/ui/taskexp.py", line 22, in <modu=
le>
gi.require_version('Gtk', '3.0')
File "/usr/lib/python3/dist-packages/gi/__init__.py", line 130, in require=
_version
raise ValueError('Namespace %s not available' % namespace)
ValueError: Namespace Gtk not available

Best Regards
keydi

--7gfbVzonXvbzwr6yGJ76
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br />Myself had to ask web search engine for usage of Task Dependency E=
xplorer taskexp as I didn't succeed on search in Yocto materials.<br />Henc=
e, the way I try to use taskexp might be not right.<br /><br />In the fashi=
on as I try to start Task Dependency Explorer it does not work.<br />Invoca=
tion completes with error in __init__.py&nbsp; -&gt; require_version figure=
s out lack of Gtk namespace.<br />Which is build-area Gtk is missed? Image,=
 distribution, yet another?&nbsp;<br />Which way of fixing should I aim to =
resolve error?<br /><br />
<div>&nbsp; File "/mnt/..../meta/poky/bitbake/lib/bb/ui/taskexp.py", line =
22, in &lt;module&gt;</div>
<div>&nbsp; &nbsp; gi.require_version('Gtk', '3.0')</div>
<div>&nbsp; File "/usr/lib/python3/dist-packages/gi/__init__.py", line 130=
, in require_version</div>
<div>&nbsp; &nbsp; raise ValueError('Namespace %s not available' % namespa=
ce)</div>
<div>ValueError: Namespace Gtk not available<br /><br />Best Regards<br />=
keydi</div>
<div>&nbsp;</div>

--7gfbVzonXvbzwr6yGJ76--
