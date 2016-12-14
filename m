Return-Path: <jeremy.thien@adtecdigital.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E48BDE00D5A; Wed, 14 Dec 2016 06:16:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, HTML_OBFUSCATE_05_10,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.52 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f52.google.com (mail-vk0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 89F95E00B93
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2016 06:16:41 -0800 (PST)
Received: by mail-vk0-f52.google.com with SMTP id 137so29569380vkl.0
	for <yocto@yoctoproject.org>; Wed, 14 Dec 2016 06:16:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=adtecdigital-net.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=0rqS8cYfhWnL/YyWA2TdJwjAswR8IywfGUXi8RNhvW0=;
	b=ZMoX3BqEJXGmd6MegFRM++YhMEOEwBMgcksYzQGWja1cQdTd7FxodBgqAU2yaJY9D3
	moMi3XOk7x5WusEKVbGLRMBloQNZWPxAaorl2PoE2c/OMfPy2UlCfl+iIyX+V7OnZFTp
	lPT8xHuhbha00SxH89iBE6XT4b/G/YWx3TdzCOlSrDhd4WAtuUepAlTQGu/ssUHdlKWh
	OvLbtxa3se0v/45ZykNfkA+3VCnCtgU/pzWs93WDnQk2qAzbxZHIPLFa+XYZDXYe7TPs
	dkYa5VjslJeCMIudZ5F64fD2orDpD1iX9bHEKrvRx0LxUbKFsIXq1Irur1/CRiY+8sY7
	aVog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=0rqS8cYfhWnL/YyWA2TdJwjAswR8IywfGUXi8RNhvW0=;
	b=OSqyusNsSH6DMlrTxihV7u9WCE+j7WVniecUg8yM/oWX/RKFI+RYMckuL36T48sLyd
	yvbt9HrBGaNk4Pf75BzWyRGIa4k0iZhFr7VZXu6fjEKKVwm/a/bMQn6AR/hu22vaWtUa
	6IXRonuU7W29d8bMPMoj5rh4dp7VY7clqKcEhUIfaQPhFCX+GnVZTcr0wdoj4EY86F2n
	P7w8taPxE7MesRqBTpOhfiNKmWAwpfQcs2XdGXkGQ+HBMoL5pO2BVuUGN6BZYvDViOvd
	CgeHa4IAaeXxBaTMAV90qgcyqbvyRKrMbxngwLzbgTWr0JmPH+i6T5Cy6/SO3a2JFUdE
	wi3Q==
X-Gm-Message-State: AKaTC01e+DN0egehJNpZcq1aONkynkZk1Rejosvpak9dG7X+2JjS32yfmKx2w2Gtdq2LtzfWi2odjUlVbOx+xw==
X-Received: by 10.176.67.132 with SMTP id l4mr74839220ual.164.1481725000514;
	Wed, 14 Dec 2016 06:16:40 -0800 (PST)
MIME-Version: 1.0
From: Jeremy Thien <jeremy.thien@adtecdigital.net>
Date: Wed, 14 Dec 2016 14:16:30 +0000
Message-ID: <CALzCvPTtRo8D1dD+T0-fy0Hk=BqDy9sVKpVXppbAzDWjU6Rydg@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: oe-publish-sdk fails for remote publishing
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
X-List-Received-Date: Wed, 14 Dec 2016 14:16:47 -0000
Content-Type: multipart/alternative; boundary=001a114e616c4fb1fd05439efcd9

--001a114e616c4fb1fd05439efcd9
Content-Type: text/plain; charset=UTF-8

I am running Ubuntu 16.04 and poky (?) v2.2. I am working my way through
eSDK setup. When I use oe-publish-sdk I get this error. My default shell is
dash.

ubuntu@myhost:fsl-community-bsp/build$ oe-publish-sdk tmp/deploy/sdk/
poky-glibc-x86_64-core-image-minimal-cortexa7hf-neon-toolchain-ext-2.2.sh
${ESDK_HOST}:/sdkdata/
INFO: Copying the SDK to destination
poky-glibc-x86_64-core-image-minimal-cortexa7hf-neon-toolchain-ext-2.2.sh

    100%  305MB 152.4MB/s   00:02
INFO: Unpacking SDK
Poky (Yocto Project Reference Distro) Extensible SDK installer version 2.2
==========================================================================
The directory "/sdkdata" already contains a SDK for this architecture.
If you continue, existing files will be overwritten! Proceed[y/N]? Y
Extracting SDK.................done
Setting it up...
Extracting buildtools...
done
SDK has been successfully set up and is ready to be used.
Each time you wish to use the SDK in a new shell session, you need to
source the environment setup script e.g.
 $ . /sdkdata/environment-setup-cortexa7hf-neon-poky-linux-gnueabi
INFO: Successfully unpacked /sdkdata/
poky-glibc-x86_64-core-image-minimal-cortexa7hf-neon-toolchain-ext-2.2.sh to
/sdkdata/
bash: -c: line 1: syntax error: unexpected end of file
/bin/sh: 2: *.pyo > .gitignore; fi; git add -A .; git config user.email
oe@oe.oe && git config user.name OE && git commit -q -m "init repo" ||
true; git update-server-info: not found
ERROR: Failed to set up layer git repo

This diff is my correction. I modified "pyc\n" to "pyc\\\n".

diff --git a/scripts/oe-publish-sdk b/scripts/oe-publish-sdk
index 4fe8974..c6b83be 100755
--- a/scripts/oe-publish-sdk
+++ b/scripts/oe-publish-sdk
@@ -116,7 +116,7 @@ def publish(args):
     if not is_remote:
         cmd = 'set -e; mkdir -p %s/layers; cd %s/layers; if [ ! -e .git ];
then git init .; mv .git/hooks/post-update.sample .git/hooks/post-update;
echo "*.pyc\n*.pyo" > .gitignore; fi; git add -A .; git config user.email
"oe@oe.oe" && git config user.name "OE" && git commit -q -m "init repo" ||
true; git update-server-info' % (destination, destination)
     else:
-        cmd = "ssh %s 'set -e; mkdir -p %s/layers; cd %s/layers; if [ ! -e
.git ]; then git init .; mv .git/hooks/post-update.sample
.git/hooks/post-update; echo '*.pyc\n*.pyo' > .gitignore; fi; git add -A .;
git config user.email 'oe@oe.oe' && git config user.name 'OE' && git commit
-q -m \"init repo\" || true; git update-server-info'" % (host, destdir,
destdir)
+        cmd = "ssh %s 'set -e; mkdir -p %s/layers; cd %s/layers; if [ ! -e
.git ]; then git init .; mv .git/hooks/post-update.sample
.git/hooks/post-update; echo '*.pyc\\\n*.pyo' > .gitignore; fi; git add -A
.; git config user.email 'oe@oe.oe' && git config user.name 'OE' && git
commit -q -m \"init repo\" || true; git update-server-info'" % (host,
destdir, destdir)
     ret = subprocess.call(cmd, shell=True)
     if ret == 0:
         logger.info('SDK published successfully')

I am happy to correct my environment if I am using the tool wrong or to
submit the change according to the documentation. (In that case, should I
submit to openembedded-devel? Should I create a bug first?)

Thanks!
Jeremy
-- 
Jeremy Thien
Adtec Digital
adtecdigital.com
jeremy.thien@adtecdigital.net

--001a114e616c4fb1fd05439efcd9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_msg" style=3D"color:rgb(33,33,33);font=
-size:13px">I am running Ubuntu 16.04 and poky (?) v2.2. I am working my wa=
y through eSDK setup. When I use oe-publish-sdk I get this error. My defaul=
t shell is dash.</div><div class=3D"gmail_msg" style=3D"color:rgb(33,33,33)=
;font-size:13px"><br class=3D"gmail_msg"></div><div class=3D"gmail_msg" sty=
le=3D"color:rgb(33,33,33);font-size:13px"><div class=3D"gmail_msg">ubuntu@m=
yhost:fsl-community-bsp/build$ oe-publish-sdk tmp/deploy/sdk/<a href=3D"htt=
p://poky-glibc-x86_64-core-image-minimal-cortexa7hf-neon-toolchain-ext-2.2.=
sh/" class=3D"gmail_msg" target=3D"_blank">poky-glibc-x86_64-core-image-min=
imal-cortexa7hf-neon-toolchain-ext-2.2.sh</a>${ESDK_HOST}:/sdkdata/</div><d=
iv class=3D"gmail_msg">INFO: Copying the SDK to destination</div><div class=
=3D"gmail_msg"><a href=3D"http://poky-glibc-x86_64-core-image-minimal-corte=
xa7hf-neon-toolchain-ext-2.2.sh/" class=3D"gmail_msg" target=3D"_blank">pok=
y-glibc-x86_64-core-image-minimal-cortexa7hf-neon-toolchain-ext-2.2.sh</a><=
span class=3D"inbox-inbox-Apple-converted-space">=C2=A0</span>=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 100% =C2=A0305MB 152.4=
MB/s =C2=A0 00:02 =C2=A0 =C2=A0</div><div class=3D"gmail_msg">INFO: Unpacki=
ng SDK</div><div class=3D"gmail_msg">Poky (Yocto Project Reference Distro) =
Extensible SDK installer version 2.2</div><div class=3D"gmail_msg">=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</div><di=
v class=3D"gmail_msg">The directory &quot;/sdkdata&quot; already contains a=
 SDK for this architecture.</div><div class=3D"gmail_msg">If you continue, =
existing files will be overwritten! Proceed[y/N]? Y</div><div class=3D"gmai=
l_msg">Extracting SDK.................done</div><div class=3D"gmail_msg">Se=
tting it up...</div><div class=3D"gmail_msg">Extracting buildtools...</div>=
<div class=3D"gmail_msg">done</div><div class=3D"gmail_msg">SDK has been su=
ccessfully set up and is ready to be used.</div><div class=3D"gmail_msg">Ea=
ch time you wish to use the SDK in a new shell session, you need to source =
the environment setup script e.g.</div><div class=3D"gmail_msg">=C2=A0$ . /=
sdkdata/environment-setup-cortexa7hf-neon-poky-linux-gnueabi</div><div clas=
s=3D"gmail_msg">INFO: Successfully unpacked /sdkdata/<a href=3D"http://poky=
-glibc-x86_64-core-image-minimal-cortexa7hf-neon-toolchain-ext-2.2.sh/" cla=
ss=3D"gmail_msg" target=3D"_blank">poky-glibc-x86_64-core-image-minimal-cor=
texa7hf-neon-toolchain-ext-2.2.sh</a><span class=3D"inbox-inbox-Apple-conve=
rted-space">=C2=A0</span>to /sdkdata/</div><div class=3D"gmail_msg">bash: -=
c: line 1: syntax error: unexpected end of file</div><div class=3D"gmail_ms=
g">/bin/sh: 2: *.pyo &gt; .gitignore; fi; git add -A .; git config user.ema=
il oe@oe.oe &amp;&amp; git config<span class=3D"inbox-inbox-Apple-converted=
-space">=C2=A0</span><a href=3D"http://user.name/" class=3D"gmail_msg" targ=
et=3D"_blank">user.name</a><span class=3D"inbox-inbox-Apple-converted-space=
">=C2=A0</span>OE &amp;&amp; git commit -q -m &quot;init repo&quot; || true=
; git update-server-info: not found</div><div class=3D"gmail_msg">ERROR: Fa=
iled to set up layer git repo</div></div><div class=3D"gmail_msg" style=3D"=
color:rgb(33,33,33);font-size:13px"><br class=3D"gmail_msg"></div><div clas=
s=3D"gmail_msg" style=3D"color:rgb(33,33,33);font-size:13px">This diff is m=
y correction. I modified &quot;pyc\n&quot; to &quot;pyc\\\n&quot;.</div><di=
v class=3D"gmail_msg" style=3D"color:rgb(33,33,33);font-size:13px"><br clas=
s=3D"gmail_msg"></div><div class=3D"gmail_msg" style=3D"color:rgb(33,33,33)=
;font-size:13px">diff --git a/scripts/oe-publish-sdk b/scripts/oe-publish-s=
dk<br class=3D"gmail_msg"></div><div class=3D"gmail_msg" style=3D"color:rgb=
(33,33,33);font-size:13px">index 4fe8974..c6b83be 100755</div><div class=3D=
"gmail_msg" style=3D"color:rgb(33,33,33);font-size:13px">--- a/scripts/oe-p=
ublish-sdk</div><div class=3D"gmail_msg" style=3D"color:rgb(33,33,33);font-=
size:13px">+++ b/scripts/oe-publish-sdk</div><div class=3D"gmail_msg" style=
=3D"color:rgb(33,33,33);font-size:13px">@@ -116,7 +116,7 @@ def publish(arg=
s):</div><div class=3D"gmail_msg" style=3D"color:rgb(33,33,33);font-size:13=
px">=C2=A0 =C2=A0 =C2=A0if not is_remote:</div><div class=3D"gmail_msg" sty=
le=3D"color:rgb(33,33,33);font-size:13px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0cmd =3D &#39;set -e; mkdir -p %s/layers; cd %s/layers; if [ ! -e .git ];=
 then git init .; mv .git/hooks/post-update.sample .git/hooks/post-update; =
echo &quot;*.pyc\n*.pyo&quot; &gt; .gitignore; fi; git add -A .; git config=
 user.email &quot;oe@oe.oe&quot; &amp;&amp; git config<span class=3D"inbox-=
inbox-Apple-converted-space">=C2=A0</span><a href=3D"http://user.name/" cla=
ss=3D"gmail_msg" target=3D"_blank">user.name</a><span class=3D"inbox-inbox-=
Apple-converted-space">=C2=A0</span>&quot;OE&quot; &amp;&amp; git commit -q=
 -m &quot;init repo&quot; || true; git update-server-info&#39; % (destinati=
on, destination)</div><div class=3D"gmail_msg" style=3D"color:rgb(33,33,33)=
;font-size:13px">=C2=A0 =C2=A0 =C2=A0else:</div><div class=3D"gmail_msg" st=
yle=3D"color:rgb(33,33,33);font-size:13px">- =C2=A0 =C2=A0 =C2=A0 =C2=A0cmd=
 =3D &quot;ssh %s &#39;set -e; mkdir -p %s/layers; cd %s/layers; if [ ! -e =
.git ]; then git init .; mv .git/hooks/post-update.sample .git/hooks/post-u=
pdate; echo &#39;*.pyc\n*.pyo&#39; &gt; .gitignore; fi; git add -A .; git c=
onfig user.email &#39;oe@oe.oe&#39; &amp;&amp; git config<span class=3D"inb=
ox-inbox-Apple-converted-space">=C2=A0</span><a href=3D"http://user.name/" =
class=3D"gmail_msg" target=3D"_blank">user.name</a><span class=3D"inbox-inb=
ox-Apple-converted-space">=C2=A0</span>&#39;OE&#39; &amp;&amp; git commit -=
q -m \&quot;init repo\&quot; || true; git update-server-info&#39;&quot; % (=
host, destdir, destdir)</div><div class=3D"gmail_msg" style=3D"color:rgb(33=
,33,33);font-size:13px">+ =C2=A0 =C2=A0 =C2=A0 =C2=A0cmd =3D &quot;ssh %s &=
#39;set -e; mkdir -p %s/layers; cd %s/layers; if [ ! -e .git ]; then git in=
it .; mv .git/hooks/post-update.sample .git/hooks/post-update; echo &#39;*.=
pyc\\\n*.pyo&#39; &gt; .gitignore; fi; git add -A .; git config user.email =
&#39;oe@oe.oe&#39; &amp;&amp; git config<span class=3D"inbox-inbox-Apple-co=
nverted-space">=C2=A0</span><a href=3D"http://user.name/" class=3D"gmail_ms=
g" target=3D"_blank">user.name</a><span class=3D"inbox-inbox-Apple-converte=
d-space">=C2=A0</span>&#39;OE&#39; &amp;&amp; git commit -q -m \&quot;init =
repo\&quot; || true; git update-server-info&#39;&quot; % (host, destdir, de=
stdir)</div><div class=3D"gmail_msg" style=3D"color:rgb(33,33,33);font-size=
:13px">=C2=A0 =C2=A0 =C2=A0ret =3D subprocess.call(cmd, shell=3DTrue)</div>=
<div class=3D"gmail_msg" style=3D"color:rgb(33,33,33);font-size:13px">=C2=
=A0 =C2=A0 =C2=A0if ret =3D=3D 0:</div><div class=3D"gmail_msg" style=3D"co=
lor:rgb(33,33,33);font-size:13px">=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=
=3D"http://logger.info/" class=3D"gmail_msg" target=3D"_blank">logger.info<=
/a>(&#39;SDK published successfully&#39;)</div><div class=3D"gmail_msg" sty=
le=3D"color:rgb(33,33,33);font-size:13px"><br class=3D"gmail_msg"></div><di=
v class=3D"gmail_msg" style=3D"color:rgb(33,33,33);font-size:13px"><div cla=
ss=3D"gmail_msg">I am happy to correct my environment if I am using the too=
l wrong or to submit the change according to the documentation. (In that ca=
se, should I submit to openembedded-devel? Should I create a bug first?)</d=
iv><div class=3D"gmail_msg"><br class=3D"gmail_msg"></div><div class=3D"gma=
il_msg">Thanks!</div><div class=3D"gmail_msg">Jeremy</div></div></div><div =
dir=3D"ltr">-- <br></div><div data-smartmail=3D"gmail_signature"><div dir=
=3D"ltr">Jeremy Thien<div>Adtec Digital</div><div><a href=3D"http://adtecdi=
gital.com">adtecdigital.com</a></div><div><a href=3D"mailto:jeremy.thien@ad=
tecdigital.net">jeremy.thien@adtecdigital.net</a></div></div></div>

--001a114e616c4fb1fd05439efcd9--
