Return-Path: <hrsourabh011@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 40C46C6FD1C
	for <webhook@archiver.kernel.org>; Thu, 23 Mar 2023 12:41:20 +0000 (UTC)
Subject: Yocto build error | AttributeError: 'LooseVersion' object has no attribute 'version'
To: yocto@lists.yoctoproject.org
From: "Sourabh Hegde" <hrsourabh011@gmail.com>
X-Originating-Location: Munich, Bavaria, DE (95.91.248.160)
X-Originating-Platform: Windows Chrome 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 23 Mar 2023 05:41:18 -0700
Message-ID: <PLD7.1679575278288203995.bOGq@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="lAJZa43VQXChQpoCBlVW"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Mar 2023 12:41:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59502

--lAJZa43VQXChQpoCBlVW
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I am having an issue while building a simple core-image-minimal image. The =
issue is reported by bitbake. The build machine is remote server with Ubunt=
u 20.04
Logs:

File "[...]/poky/bitbake/lib/bb/event.py", line 93, in execute_handler
ret =3D handler(event)
File "[...]/build/../poky/meta/classes/sanity.bbclass", line 1048, in defau=
ltcheck_sanity_eventhandler
check_sanity(sanity_data)
File "[...]/build/../poky/meta/classes/sanity.bbclass", line 1004, in check=
_sanity
check_sanity_everybuild(status, sanity_data)
File "[...]/build/../poky/meta/classes/sanity.bbclass", line 801, in check_=
sanity_everybuild
if (LooseVersion(bb.__version__) < LooseVersion(minversion)):
File "/usr/lib/python3.8/distutils/version.py", line 52, in __lt__
c =3D self._cmp(other)
File "/usr/lib/python3.8/distutils/version.py", line 335, in _cmp
if self.version =3D=3D other.version:
AttributeError: 'LooseVersion' object has no attribute 'version'
During handling of the above exception, another exception occurred:
Traceback (most recent call last):
File "[...]/poky/bitbake/lib/bb/command.py", line 114, in runAsyncCommand
self.cooker.updateCache()
File "[...]/poky/bitbake/lib/bb/cooker.py", line 1612, in updateCache
bb.event.fire(bb.event.SanityCheck(False), self.databuilder.mcdata[mc])
File "[...]/poky/bitbake/lib/bb/event.py", line 216, in fire
fire_class_handlers(event, d)
File "[...]/poky/bitbake/lib/bb/event.py", line 123, in fire_class_handlers
execute_handler(name, handler, event, d)
File "[...]/poky/bitbake/lib/bb/event.py", line 98, in execute_handler
logger.error("Execution of event handler '%s' failed" % name,
File "/usr/lib/python3.8/logging/__init__.py", line 1475, in error
self._log(ERROR, msg, args, **kwargs)
File "/usr/lib/python3.8/logging/__init__.py", line 1589, in _log
self.handle(record)
File "/usr/lib/python3.8/logging/__init__.py", line 1599, in handle
self.callHandlers(record)
File "/usr/lib/python3.8/logging/__init__.py", line 1661, in callHandlers
hdlr.handle(record)
File "/usr/lib/python3.8/logging/__init__.py", line 954, in handle
self.emit(record)
File "[...]/poky/bitbake/lib/bb/event.py", line 752, in emit
tb =3D list(bb.exceptions.extract_traceback(tb, context=3D3))
File "[...]/poky/bitbake/lib/bb/exceptions.py", line 64, in extract_traceba=
ck
formatted_args, cls =3D _get_frame_args(frame)
File "[...]/poky/bitbake/lib/bb/exceptions.py", line 58, in _get_frame_args
formatted =3D inspect.formatargvalues(*arginfo)
File "/usr/lib/python3.8/inspect.py", line 1296, in formatargvalues
specs.append(convert(args[i]))
File "/usr/lib/python3.8/inspect.py", line 1293, in convert
return formatarg(name) + formatvalue(locals[name])
File "/usr/lib/python3.8/inspect.py", line 1284, in <lambda>
formatvalue=3Dlambda value: '=3D' + repr(value)):
File "/usr/lib/python3.8/distutils/version.py", line 328, in __repr__
return "LooseVersion ('%s')" % str(self)
File "/usr/lib/python3.8/distutils/version.py", line 324, in __str__
return self.vstring
AttributeError: 'LooseVersion' object has no attribute 'vstring'

Can anyone please let me know what is the issue here and how to resolve thi=
s?

--lAJZa43VQXChQpoCBlVW
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />I am having an issue while building a simple core-image-m=
inimal image. The issue is reported by bitbake. The build machine is remote=
 server with Ubuntu 20.04<br />Logs:<br /><br />
<div>File "[...]/poky/bitbake/lib/bb/event.py", line 93, in execute_handler=
</div>
<div>&nbsp; &nbsp; ret =3D handler(event)</div>
<div>&nbsp; File "[...]/build/../poky/meta/classes/sanity.bbclass", line 10=
48, in defaultcheck_sanity_eventhandler</div>
<div>&nbsp; &nbsp; check_sanity(sanity_data)</div>
<div>&nbsp; File "[...]/build/../poky/meta/classes/sanity.bbclass", line 10=
04, in check_sanity</div>
<div>&nbsp; &nbsp; check_sanity_everybuild(status, sanity_data)</div>
<div>&nbsp; File "[...]/build/../poky/meta/classes/sanity.bbclass", line 80=
1, in check_sanity_everybuild</div>
<div>&nbsp; &nbsp; if (LooseVersion(bb.__version__) &lt; LooseVersion(minve=
rsion)):</div>
<div>&nbsp; File "/usr/lib/python3.8/distutils/version.py", line 52, in __l=
t__</div>
<div>&nbsp; &nbsp; c =3D self._cmp(other)</div>
<div>&nbsp; File "/usr/lib/python3.8/distutils/version.py", line 335, in _c=
mp</div>
<div>&nbsp; &nbsp; if self.version =3D=3D other.version:</div>
<div>AttributeError: 'LooseVersion' object has no attribute 'version'</div>
<div>During handling of the above exception, another exception occurred:</d=
iv>
<div>Traceback (most recent call last):</div>
<div>&nbsp; File "[...]/poky/bitbake/lib/bb/command.py", line 114, in runAs=
yncCommand</div>
<div>&nbsp; &nbsp; self.cooker.updateCache()</div>
<div>&nbsp; File "[...]/poky/bitbake/lib/bb/cooker.py", line 1612, in updat=
eCache</div>
<div>&nbsp; &nbsp; bb.event.fire(bb.event.SanityCheck(False), self.databuil=
der.mcdata[mc])</div>
<div>&nbsp; File "[...]/poky/bitbake/lib/bb/event.py", line 216, in fire</d=
iv>
<div>&nbsp; &nbsp; fire_class_handlers(event, d)</div>
<div>&nbsp; File "[...]/poky/bitbake/lib/bb/event.py", line 123, in fire_cl=
ass_handlers</div>
<div>&nbsp; &nbsp; execute_handler(name, handler, event, d)</div>
<div>&nbsp; File "[...]/poky/bitbake/lib/bb/event.py", line 98, in execute_=
handler</div>
<div>&nbsp; &nbsp; logger.error("Execution of event handler '%s' failed" % =
name,</div>
<div>&nbsp; File "/usr/lib/python3.8/logging/__init__.py", line 1475, in er=
ror</div>
<div>&nbsp; &nbsp; self._log(ERROR, msg, args, **kwargs)</div>
<div>&nbsp; File "/usr/lib/python3.8/logging/__init__.py", line 1589, in _l=
og</div>
<div>&nbsp; &nbsp; self.handle(record)</div>
<div>&nbsp; File "/usr/lib/python3.8/logging/__init__.py", line 1599, in ha=
ndle</div>
<div>&nbsp; &nbsp; self.callHandlers(record)</div>
<div>&nbsp; File "/usr/lib/python3.8/logging/__init__.py", line 1661, in ca=
llHandlers</div>
<div>&nbsp; &nbsp; hdlr.handle(record)</div>
<div>&nbsp; File "/usr/lib/python3.8/logging/__init__.py", line 954, in han=
dle</div>
<div>&nbsp; &nbsp; self.emit(record)</div>
<div>&nbsp; File "[...]/poky/bitbake/lib/bb/event.py", line 752, in emit</d=
iv>
<div>&nbsp; &nbsp; tb =3D list(bb.exceptions.extract_traceback(tb, context=
=3D3))</div>
<div>&nbsp; File "[...]/poky/bitbake/lib/bb/exceptions.py", line 64, in ext=
ract_traceback</div>
<div>&nbsp; &nbsp; formatted_args, cls =3D _get_frame_args(frame)</div>
<div>&nbsp; File "[...]/poky/bitbake/lib/bb/exceptions.py", line 58, in _ge=
t_frame_args</div>
<div>&nbsp; &nbsp; formatted =3D inspect.formatargvalues(*arginfo)</div>
<div>&nbsp; File "/usr/lib/python3.8/inspect.py", line 1296, in formatargva=
lues</div>
<div>&nbsp; &nbsp; specs.append(convert(args[i]))</div>
<div>&nbsp; File "/usr/lib/python3.8/inspect.py", line 1293, in convert</di=
v>
<div>&nbsp; &nbsp; return formatarg(name) + formatvalue(locals[name])</div>
<div>&nbsp; File "/usr/lib/python3.8/inspect.py", line 1284, in &lt;lambda&=
gt;</div>
<div>&nbsp; &nbsp; formatvalue=3Dlambda value: '=3D' + repr(value)):</div>
<div>&nbsp; File "/usr/lib/python3.8/distutils/version.py", line 328, in __=
repr__</div>
<div>&nbsp; &nbsp; return "LooseVersion ('%s')" % str(self)</div>
<div>&nbsp; File "/usr/lib/python3.8/distutils/version.py", line 324, in __=
str__</div>
<div>&nbsp; &nbsp; return self.vstring</div>
<div>AttributeError: 'LooseVersion' object has no attribute 'vstring'<br />=
<br />Can anyone please let me know what is the issue here and how to resol=
ve this?</div>

--lAJZa43VQXChQpoCBlVW--

