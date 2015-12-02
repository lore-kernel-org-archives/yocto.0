Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F13ACE00825; Wed,  2 Dec 2015 07:41:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
Received: from mail-lf0-f42.google.com (mail-lf0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA7CCE007B1
	for <yocto@yoctoproject.org>; Wed,  2 Dec 2015 07:41:42 -0800 (PST)
Received: by lfaz4 with SMTP id z4so55937466lfa.0
	for <yocto@yoctoproject.org>; Wed, 02 Dec 2015 07:41:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=TKNHLisclE1cDdagnQvlF7x6An2G/yqVJmUHP0e8iO0=;
	b=ynfavMmsWIsEePzw0Eu3R8vk0dWR+SOG6J29g4AwW3OK13I3k+AzmlE3jPDbDzCaa/
	zYMJngnPnPuzINWwQyhCVJum6MNlLiY4aM8HRekY8f6fcfsTu3WZwn+a9JF/d0SN+Gyd
	EBEA8y/hBRvZxMnVDBC4Mwg5U0O/KxPWZpIm9c4MTt2ofTKWhD6o4g5DW0sS1/khMK6k
	sZVwaGt79PtoCQd4rP27ELEaWn+1BFxMDjWGckSQiJmcL6fbHTvaXLykZmwuaLU9hpCA
	CyWBuKhgAcBb5hifUotpoUb1UDFQUV3EyUoSsDKfNb0hsF8kUawxfHgULaN8U9SeszW4
	cc5w==
MIME-Version: 1.0
X-Received: by 10.25.7.8 with SMTP id 8mr3464727lfh.111.1449070901209; Wed, 02
	Dec 2015 07:41:41 -0800 (PST)
Received: by 10.114.11.226 with HTTP; Wed, 2 Dec 2015 07:41:41 -0800 (PST)
Date: Wed, 2 Dec 2015 09:41:41 -0600
Message-ID: <CAOsp8o8KV9PPS03KZq7jCgRrB6xWO4NZuurDpStKpVF_yRSpBA@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
To: yocto@yoctoproject.org
Subject: do_fetch hanging - any way to see debugging?
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
X-List-Received-Date: Wed, 02 Dec 2015 15:41:47 -0000
Content-Type: multipart/alternative; boundary=001a113ea93a5233280525ec1c66

--001a113ea93a5233280525ec1c66
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I'm struggling with some network proxy issues and pulling down linux-yocto.
I left my build running overnight and it simply hung at do_fetch. I tried
using -v and -DDD but it doesn't actually show any output from the do_fetch
recipe. I looked at the do_fetch logs and it doesn't have anything useful.
Here are the last lines:

DEBUG: Fetcher failure: Fetch command failed with exit code 8, output:
http://downloads.yoctoproject.org/mirror/sources/git2_git.yoctoproject.org.=
git.linux-yocto-4.1.git.tar.gz
:
2015-12-02 09:21:15 ERROR 404: Not Found.

DEBUG: Trying Upstream
DEBUG: Fetcher accessed the network with the command git -c
core.fsyncobjectfiles=3D0 clone --bare --mirror
http://git.yoctoproject.org/git/linux-yocto-4.1.git
/projects/yocto-git/build/downloads/git2/git.yoctoproject.org.git.linux-yoc=
to-4.1.git
DEBUG: Running export
PATH=3D"/projects/yocto-git/scripts:/projects/yocto-git/build/tmp/sysroots/=
x86_64-linux/usr/bin/x86_64-diags-linux:/projects/yocto-git/build/tmp/sysro=
ots/continental/usr/bin/crossscripts:/projects/yocto-git/build/tmp/sysroots=
/x86_64-linux/usr/sbin:/projects/yocto-git/build/tmp/sysroots/x86_64-linux/=
usr/bin:/projects/yocto-git/build/tmp/sysroots/x86_64-linux/sbin:/projects/=
yocto-git/build/tmp/sysroots/x86_64-linux/bin:/projects/yocto-git/scripts:/=
projects/yocto-git/bitbake/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/us=
r/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/habibim/bin";
export HOME=3D"/home/habibim"; git -c core.fsyncobjectfiles=3D0 clone --bar=
e
--mirror http://git.yoctoproject.org/git/linux-yocto-4.1.git
/projects/yocto-git/build/downloads/git2/git.yoctoproject.org.git.linux-yoc=
to-4.1.git

I looked at a log where this succeeded, and it didn't have much more
information:

DEBUG: Running export
PATH=3D"/projects/yocto-git/scripts:/projects/yocto-git/build/tmp/sysroots/=
x86_64-linux/usr/bin/x86_64-poky-linux:/projects/yocto-git/build/tmp/sysroo=
ts/genericx86-64/usr/bin/crossscripts:/projects/yocto-git/build/tmp/sysroot=
s/x86_64-linux/usr/sbin:/projects/yocto-git/build/tmp/sysroots/x86_64-linux=
/usr/bin:/projects/yocto-git/build/tmp/sysroots/x86_64-linux/sbin:/projects=
/yocto-git/build/tmp/sysroots/x86_64-linux/bin:/projects/yocto-git/scripts:=
/projects/yocto-git/bitbake/bin:/projects/my-distro/scripts:/projects/my-di=
stro/bitbake/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/b=
in:/usr/games:/usr/local/games";
export HOME=3D"/home/habibim"; git -c core.fsyncobjectfiles=3D0 branch
--contains aed902160251d69cc28d1e69a4f692e8ea8fa13b --list yocto-4.1 2>
/dev/null | wc -l
DEBUG: Python function base_do_fetch finished
DEBUG: Python function do_fetch finished

Note that I am using a bbappend file for my custom machine:

KBRANCH_continental  =3D "standard/base"
KMACHINE_continental ?=3D "common-pc-64"
COMPATIBLE_MACHINE_continental =3D "continental"

# 4.1.13 rev tag
LINUX_VERSION_continental =3D "4.1.13"
SRCREV_machine_continental ?=3D "1f2ce4a2e7aea3a2123b17aff62a80553df31e21"

# Use http protocol
SRC_URI_continental =3D "git://
git.yoctoproject.org/git/linux-yocto-4.1.git;protocol=3Dhttp;name=3Dmachine=
;branch=3D${KBRANCH}
"

If I comment out my overrides for SRCREV and SRC_URI, it simply pulls the
cache (somehow I managed to pull this down before). But if I use my
overrides (to grab a newer kernel, and to use the http protocol), it will
simply hang indefinitely. Any way I can debug what's happening?

Michael

--001a113ea93a5233280525ec1c66
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m struggling with some network proxy issues and pull=
ing down linux-yocto. I left my build running overnight and it simply hung =
at do_fetch. I tried using -v and -DDD but it doesn&#39;t actually show any=
 output from the do_fetch recipe. I looked at the do_fetch logs and it does=
n&#39;t have anything useful. Here are the last lines:<div><br></div><div><=
div>DEBUG: Fetcher failure: Fetch command failed with exit code 8, output:<=
/div><div><a href=3D"http://downloads.yoctoproject.org/mirror/sources/git2_=
git.yoctoproject.org.git.linux-yocto-4.1.git.tar.gz">http://downloads.yocto=
project.org/mirror/sources/git2_git.yoctoproject.org.git.linux-yocto-4.1.gi=
t.tar.gz</a>:</div><div>2015-12-02 09:21:15 ERROR 404: Not Found.</div><div=
><br></div><div>DEBUG: Trying Upstream</div><div>DEBUG: Fetcher accessed th=
e network with the command git -c core.fsyncobjectfiles=3D0 clone --bare --=
mirror <a href=3D"http://git.yoctoproject.org/git/linux-yocto-4.1.git">http=
://git.yoctoproject.org/git/linux-yocto-4.1.git</a> /projects/yocto-git/bui=
ld/downloads/git2/git.yoctoproject.org.git.linux-yocto-4.1.git</div><div>DE=
BUG: Running export PATH=3D&quot;/projects/yocto-git/scripts:/projects/yoct=
o-git/build/tmp/sysroots/x86_64-linux/usr/bin/x86_64-diags-linux:/projects/=
yocto-git/build/tmp/sysroots/continental/usr/bin/crossscripts:/projects/yoc=
to-git/build/tmp/sysroots/x86_64-linux/usr/sbin:/projects/yocto-git/build/t=
mp/sysroots/x86_64-linux/usr/bin:/projects/yocto-git/build/tmp/sysroots/x86=
_64-linux/sbin:/projects/yocto-git/build/tmp/sysroots/x86_64-linux/bin:/pro=
jects/yocto-git/scripts:/projects/yocto-git/bitbake/bin:/usr/local/sbin:/us=
r/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home=
/habibim/bin&quot;; export HOME=3D&quot;/home/habibim&quot;; git -c core.fs=
yncobjectfiles=3D0 clone --bare --mirror <a href=3D"http://git.yoctoproject=
.org/git/linux-yocto-4.1.git">http://git.yoctoproject.org/git/linux-yocto-4=
.1.git</a> /projects/yocto-git/build/downloads/git2/git.yoctoproject.org.gi=
t.linux-yocto-4.1.git</div><div><br></div><div>I looked at a log where this=
 succeeded, and it didn&#39;t have much more information:</div><div><br></d=
iv><div><div>DEBUG: Running export PATH=3D&quot;/projects/yocto-git/scripts=
:/projects/yocto-git/build/tmp/sysroots/x86_64-linux/usr/bin/x86_64-poky-li=
nux:/projects/yocto-git/build/tmp/sysroots/genericx86-64/usr/bin/crossscrip=
ts:/projects/yocto-git/build/tmp/sysroots/x86_64-linux/usr/sbin:/projects/y=
octo-git/build/tmp/sysroots/x86_64-linux/usr/bin:/projects/yocto-git/build/=
tmp/sysroots/x86_64-linux/sbin:/projects/yocto-git/build/tmp/sysroots/x86_6=
4-linux/bin:/projects/yocto-git/scripts:/projects/yocto-git/bitbake/bin:/pr=
ojects/my-distro/scripts:/projects/my-distro/bitbake/bin:/usr/local/sbin:/u=
sr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games&quot=
;; export HOME=3D&quot;/home/habibim&quot;; git -c core.fsyncobjectfiles=3D=
0 branch --contains aed902160251d69cc28d1e69a4f692e8ea8fa13b --list yocto-4=
.1 2&gt; /dev/null | wc -l</div><div>DEBUG: Python function base_do_fetch f=
inished</div><div>DEBUG: Python function do_fetch finished</div></div></div=
><div><br></div><div>Note that I am using a bbappend file for my custom mac=
hine:</div><div><br></div><div><div>KBRANCH_continental =C2=A0=3D &quot;sta=
ndard/base&quot;<br></div><div>KMACHINE_continental ?=3D &quot;common-pc-64=
&quot;</div><div>COMPATIBLE_MACHINE_continental =3D &quot;continental&quot;=
</div><div><br></div><div># 4.1.13 rev tag</div><div>LINUX_VERSION_continen=
tal =3D &quot;4.1.13&quot;</div><div>SRCREV_machine_continental ?=3D &quot;=
1f2ce4a2e7aea3a2123b17aff62a80553df31e21&quot;</div><div><br></div><div># U=
se http protocol</div><div>SRC_URI_continental =3D &quot;git://<a href=3D"h=
ttp://git.yoctoproject.org/git/linux-yocto-4.1.git;protocol=3Dhttp;name=3Dm=
achine;branch=3D${KBRANCH}">git.yoctoproject.org/git/linux-yocto-4.1.git;pr=
otocol=3Dhttp;name=3Dmachine;branch=3D${KBRANCH}</a>&quot;</div><div><br></=
div></div><div>If I comment out my overrides for SRCREV and SRC_URI, it sim=
ply pulls the cache (somehow I managed to pull this down before). But if I =
use my overrides (to grab a newer kernel, and to use the http protocol), it=
 will simply hang indefinitely. Any way I can debug what&#39;s happening?</=
div><div><br></div><div>Michael</div></div>

--001a113ea93a5233280525ec1c66--
