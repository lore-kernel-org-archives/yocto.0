Return-Path: <nobodyless@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0777E00CC2; Mon, 21 Aug 2017 23:09:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM,WEIRD_PORT autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (nobodyless[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.174 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.174 listed in dnsbl.sorbs.net]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f174.google.com (mail-yw0-f174.google.com
	[209.85.161.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0A68E00BBC
	for <yocto@yoctoproject.org>; Mon, 21 Aug 2017 23:09:08 -0700 (PDT)
Received: by mail-yw0-f174.google.com with SMTP id y64so18085741ywf.3
	for <yocto@yoctoproject.org>; Mon, 21 Aug 2017 23:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=QO3xOpZUUxcAiqbGZL22ytGKf5Xtrfrt+/oGjC8SxEU=;
	b=OZwUflJA8iQLMfGyovAhxUmj9YEnOFsCuvmWbQGmOBzTcSsGLW5Ku1An3memlKPj5k
	MQmOh1DWjtmvdM3cm6joVeqeTUfi6UmI7b1gtN6PPoC54H6fzn8ClYGEGY8WhjNhKfbG
	kbKG22x0PPRoM0sQHmFFucWlq/y1Q0ZlCvYPqIitiyzWmHrsV0iOx9JRQ21pbQa5JvVV
	lTf2o7GUg1tT61Lknz95IIUHE59fgjgxhREInCHEDo42Zs/zB50Tnnf/0YUfckuaFcuF
	NcRSCZPXxc98qS4NJDrMjkiwq+5KekSF/EEIU9MPFfTODTgXk/hAyil6d039fjvoivsq
	xF+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=QO3xOpZUUxcAiqbGZL22ytGKf5Xtrfrt+/oGjC8SxEU=;
	b=EVPCe4tgta5sfFNjhxHmi/z366qwD8hsWcFOqcop8IEo0YtEL5X47wDMZJUOzZVhhj
	RL/q18xuV1rsUF39vl+tROJ3YCYYRPmk6RwVtKvi50fcuvc54DmIMcnXryMhA1lLtbeh
	FrTjf1zmDbp67NWYvQ9egZ5PwvZfU6wRrSGlhE3MeRdSkgWZUAo4U+b3Uulx+Ize+pZI
	8SZEBj3y0vOemFzKQdgyf+4t8a5lgMl8eZQzcgykNrjGKVYcPTCUCEFHAtbo9a+072F3
	tkKUYwSTmSC55PHUsxPqXCOSTwmR+4lGHsy0XhOVmuVPjp1y78OWbOyKYbz3nzS4BDfp
	AqQQ==
X-Gm-Message-State: AHYfb5gDfNzSFuBTx0PvuLI+TW4KeV84M6hWcag1TUdNQEWw9F44M+Yc
	2cGG5UbyaAOCLnMnfN20EkmoxVqXMBsO
X-Received: by 10.129.196.67 with SMTP id s3mr17137717ywj.6.1503382147652;
	Mon, 21 Aug 2017 23:09:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.83.213 with HTTP; Mon, 21 Aug 2017 23:09:07 -0700 (PDT)
From: _nobody_ _nobody_ <nobodyless@gmail.com>
Date: Tue, 22 Aug 2017 08:09:07 +0200
Message-ID: <CABpTzB12oTgOmND6wDn+vD2aTvUd6WmavbmHNAXGpA6_dA+Tag@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [DNF YOCTO clarifications] smart was replaced with dnf in Yocto 2.3
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 22 Aug 2017 06:09:10 -0000
Content-Type: multipart/alternative; boundary="94eb2c1a85f6df61250557516e4e"

--94eb2c1a85f6df61250557516e4e
Content-Type: text/plain; charset="UTF-8"

Hello,

I re-build YOCTO 2.2.2, trying to set smart (rpm manager for YOCTO). And I
did this successfully. It worked.

It did NOT work on Pyro, which is YOCTO release 2.3 and 2.3.1. Lurking for
the solutions, I found that smart was replaced by DNF in Pyro (2.3). I
finally run into freenode YOCTO IRC, asking on yocto channel help with DNF.

Now, since I did recompile YOCTO 2.3.1 as:

Quote:
user@localhost build]$ bitbake core-image-minimal
WARNING: Host distribution "fedora-26" has not been validated with this
version of the build system; you may possibly experience unexpected
failures. It is recommended that you use a tested distribution.
Loading cache: 100% |#################################################
################################################## ########| Time: 0:00:00
Loaded 1299 entries from dependency cache.
NOTE: Resolving any missing task queue dependencies

Build Configuration:
BB_VERSION = "1.34.0"
BUILD_SYS = "x86_64-linux"
NATIVELSBSTRING = "universal"
TARGET_SYS = "x86_64-poky-linux"
MACHINE = "qemux86-64"
DISTRO = "poky"
DISTRO_VERSION = "2.3.1"
TUNE_FEATURES = "m64 core2"
TARGET_FPU = ""
meta
meta-poky
meta-yocto-bsp = "pyro:4a39979c8d1e560fa54240e99734a651dfbaa63a "

Initialising tasks: 100% |#################################################
################################################## ###| Time: 0:00:05
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 3139 tasks of which 2212 didn't need to be
rerun and all succeeded.

Summary: There was 1 WARNING message shown.
[user@localhost build]$
And, YES, it does work for me: on the target, I can see 127 packages
installed with the command: dnf list installed | wc -l

With the command: rpm -qa | wc -l I can see that there is 124 packages
there. copy/paste does not work for me from the the target to F26 server/my
machine.

Now, I also see the repos on my bare metal Fedora 26, which plays server (I
activated on it Apache Server), and the repos are here:

Quote:
[user@localhost rpm]$ uname -a
Linux localhost.localdomain 4.12.5-300.fc26.x86_64 #1 SMP Mon Aug 7
15:27:25 UTC 2017 x86_64 x86_64 x86_64 GNU/Linux
[user@localhost rpm]$ pwd
/home/user/projects/poky-pyro_2.3.1/build/tmp/deploy/rpm
[user@localhost rpm]$ ls -al
total 376
drwxr-xr-x. 6 user user 4096 Aug 21 13:11 .
drwxr-xr-x. 5 user user 4096 Aug 21 13:10 ..



*drwxr-xr-x. 2 user user 294912 Aug 21 13:11 core2_64drwxr-xr-x. 2 user
user 4096 Aug 21 13:10 noarchdrwxr-xr-x. 2 user user 69632 Aug 21 13:10
qemux86_64drwxr-xr-x. 2 user user 4096 Aug 21 11:15 x86_64_nativesdk*
[user@localhost rpm]$
The question is: where the Hell (in which /etc files on target) I should
put these???

Links to the repos should be something like these:
http://127.0.0.1:8000/core2_64
http://127.0.0.1:8000/noarch
http://127.0.0.1:8000/qemux86_64
http://127.0.0.1:8000/x86_64_nativesdk

Any suggestions/verbal help is appreciated!

Let us go from here... There is more to come!

Thank you.
_nobody_
__________________
I am nobody, and nobody is perfect, therefore I am perfect!

--94eb2c1a85f6df61250557516e4e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div id=3D"gmail-post_message_1792915" style=3D"color:rgb(=
0,0,0);font-family:verdana,geneva,lucida,&quot;lucida grande&quot;,arial,he=
lvetica,sans-serif,sans;font-size:11px">Hello,</div><div id=3D"gmail-post_m=
essage_1792915" style=3D"color:rgb(0,0,0);font-family:verdana,geneva,lucida=
,&quot;lucida grande&quot;,arial,helvetica,sans-serif,sans;font-size:11px">=
<br></div><div id=3D"gmail-post_message_1792915" style=3D"font-family:verda=
na,geneva,lucida,&quot;lucida grande&quot;,arial,helvetica,sans-serif,sans;=
font-size:11px"><font color=3D"#000000">I re-build YOCTO 2.2.2, trying to s=
et smart (rpm manager for YOCTO). And I did this successfully. It worked.</=
font><br><br><font color=3D"#000000">It did NOT work on Pyro, which is YOCT=
O release 2.3 and 2.3.1. Lurking for the solutions, I found that smart was =
replaced by DNF in Pyro (2.3). I finally run into freenode YOCTO IRC, askin=
g on yocto channel help with DNF.</font><br><br><font color=3D"#000000">Now=
, since I did recompile YOCTO 2.3.1 as:</font><br><br><div style=3D"color:r=
gb(0,0,0);margin:5px 20px 20px"><div class=3D"gmail-smallfont" style=3D"fon=
t-stretch:normal;line-height:normal;margin-bottom:2px">Quote:</div><table c=
ellpadding=3D"6" cellspacing=3D"0" border=3D"0" width=3D"100%"><tbody><tr><=
td class=3D"gmail-alt2" style=3D"font-stretch:normal;line-height:normal;fon=
t-family:verdana,geneva,lucida,&quot;lucida grande&quot;,arial,helvetica,sa=
ns-serif,sans;background:rgb(237,239,241);border:1px inset">user@localhost =
build]$ bitbake core-image-minimal<br>WARNING: Host distribution &quot;fedo=
ra-26&quot; has not been validated with this version of the build system; y=
ou may possibly experience unexpected failures. It is recommended that you =
use a tested distribution.<br>Loading cache: 100% |########################=
######################### #################################################=
# ########| Time: 0:00:00<br>Loaded 1299 entries from dependency cache.<br>=
NOTE: Resolving any missing task queue dependencies<br><br>Build Configurat=
ion:<br>BB_VERSION =3D &quot;1.34.0&quot;<br>BUILD_SYS =3D &quot;x86_64-lin=
ux&quot;<br>NATIVELSBSTRING =3D &quot;universal&quot;<br>TARGET_SYS =3D &qu=
ot;x86_64-poky-linux&quot;<br>MACHINE =3D &quot;qemux86-64&quot;<br>DISTRO =
=3D &quot;poky&quot;<br>DISTRO_VERSION =3D &quot;2.3.1&quot;<br>TUNE_FEATUR=
ES =3D &quot;m64 core2&quot;<br>TARGET_FPU =3D &quot;&quot;<br>meta=C2=A0<b=
r>meta-poky=C2=A0<br>meta-yocto-bsp =3D &quot;pyro:4a39979c8d1e560fa54240e9=
9734a651dfbaa63a &quot;<br><br>Initialising tasks: 100% |##################=
############################### ###########################################=
####### ###| Time: 0:00:05<br>NOTE: Executing SetScene Tasks<br>NOTE: Execu=
ting RunQueue Tasks<br>NOTE: Tasks Summary: Attempted 3139 tasks of which 2=
212 didn&#39;t need to be rerun and all succeeded.<br><br>Summary: There wa=
s 1 WARNING message shown.<br>[user@localhost build]$</td></tr></tbody></ta=
ble></div><font color=3D"#000000">And, YES, it does work for me: on the tar=
get, I can see 127 packages installed with the command: dnf list installed =
| wc -l</font><br><br><font color=3D"#000000">With the command: rpm -qa | w=
c -l I can see that there is 124 packages there. copy/paste does not work f=
or me from the the target to F26 server/my machine.</font><br><br><font col=
or=3D"#000000">Now, I also see the repos on my bare metal Fedora 26, which =
plays server (I activated on it Apache Server), and the repos are here:</fo=
nt><br><br><div style=3D"color:rgb(0,0,0);margin:5px 20px 20px"><div class=
=3D"gmail-smallfont" style=3D"font-stretch:normal;line-height:normal;margin=
-bottom:2px">Quote:</div><table cellpadding=3D"6" cellspacing=3D"0" border=
=3D"0" width=3D"100%"><tbody><tr><td class=3D"gmail-alt2" style=3D"font-str=
etch:normal;line-height:normal;font-family:verdana,geneva,lucida,&quot;luci=
da grande&quot;,arial,helvetica,sans-serif,sans;background:rgb(237,239,241)=
;border:1px inset">[user@localhost rpm]$ uname -a<br>Linux localhost.locald=
omain 4.12.5-300.fc26.x86_64 #1 SMP Mon Aug 7 15:27:25 UTC 2017 x86_64 x86_=
64 x86_64 GNU/Linux<br>[user@localhost rpm]$ pwd<br>/home/user/projects/pok=
y-pyro_2.3.1/build/tmp/deploy/rpm<br>[user@localhost rpm]$ ls -al<br>total =
376<br>drwxr-xr-x. 6 user user 4096 Aug 21 13:11 .<br>drwxr-xr-x. 5 user us=
er 4096 Aug 21 13:10 ..<br><b><i><u><font color=3D"red"><font color=3D"Red"=
>drwxr-xr-x. 2 user user 294912 Aug 21 13:11 core2_64<br>drwxr-xr-x. 2 user=
 user 4096 Aug 21 13:10 noarch<br>drwxr-xr-x. 2 user user 69632 Aug 21 13:1=
0 qemux86_64<br>drwxr-xr-x. 2 user user 4096 Aug 21 11:15 x86_64_nativesdk<=
/font></font></u></i></b><br>[user@localhost rpm]$</td></tr></tbody></table=
></div><font color=3D"#000000">The question is: where the Hell (in which /e=
tc files on target) I should put these???=C2=A0<img src=3D"https://forums.f=
edoraforum.org/forum/images/smilies/crazy.gif" border=3D"0" alt=3D"" title=
=3D"Crazy" class=3D"gmail-inlineimg" style=3D"vertical-align: middle;"></fo=
nt><br><br><font color=3D"#000000">Links to the repos should be something l=
ike these:</font><br><font color=3D"#000000"><a href=3D"http://127.0.0.1:80=
00/core2_64">http://127.0.0.1:8000/core2_64</a></font><br><font color=3D"#0=
00000"><a href=3D"http://127.0.0.1:8000/noarch">http://127.0.0.1:8000/noarc=
h</a></font><br><font color=3D"#000000"><a href=3D"http://127.0.0.1:8000/">=
http://127.0.0.1:8000/</a></font><font><font color=3D"#000000">qemux86_64</=
font></font><br><font color=3D"#000000"><a href=3D"http://127.0.0.1:8000/x8=
6_64_nativesdk">http://127.0.0.1:8000/x86_64_nativesdk</a></font></div><div=
 id=3D"gmail-post_message_1792915" style=3D"color:rgb(0,0,0);font-family:ve=
rdana,geneva,lucida,&quot;lucida grande&quot;,arial,helvetica,sans-serif,sa=
ns;font-size:11px"><br>Any suggestions/verbal help is appreciated!=C2=A0<im=
g src=3D"https://forums.fedoraforum.org/forum/images/smilies/doh.gif" borde=
r=3D"0" alt=3D"" title=3D"Doh" class=3D"gmail-inlineimg" style=3D"vertical-=
align: middle;"></div><div id=3D"gmail-post_message_1792915" style=3D"color=
:rgb(0,0,0);font-family:verdana,geneva,lucida,&quot;lucida grande&quot;,ari=
al,helvetica,sans-serif,sans;font-size:11px"><br></div><div id=3D"gmail-pos=
t_message_1792915" style=3D"color:rgb(0,0,0);font-family:verdana,geneva,luc=
ida,&quot;lucida grande&quot;,arial,helvetica,sans-serif,sans;font-size:11p=
x">Let us go from here... There is more to come!<br><br>Thank you.<br>_nobo=
dy_</div><div style=3D"color:rgb(0,0,0);font-family:verdana,geneva,lucida,&=
quot;lucida grande&quot;,arial,helvetica,sans-serif,sans;font-size:11px">__=
________________<br>I am nobody, and nobody is perfect, therefore I am perf=
ect!</div></div>

--94eb2c1a85f6df61250557516e4e--
