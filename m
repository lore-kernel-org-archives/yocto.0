Return-Path: <machuu.oovah@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66C08E00857; Wed, 24 Sep 2014 14:14:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (machuu.oovah[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-la0-f66.google.com (mail-la0-f66.google.com
	[209.85.215.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAAFBE00848
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 14:14:05 -0700 (PDT)
Received: by mail-la0-f66.google.com with SMTP id s18so3509835lam.5
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 14:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ni0gVo3cFlZSLIrSIVEL6fvTvv5+N+Uc26DIuynLSGE=;
	b=IyjWNzt7OF21r+NXY2uPU/JpuV7cxhwHLB60RWJB4uGwo6FiakTCu0KrDk1UbXuhHZ
	Mg7sqkGr4KH+EukKh2uexmRMf7fdkHQqh05OKtqnFX/4tJmLhMev8VXiuO8mAtIdSQpQ
	p+iMKTMnBB2DnIAub8hvqhbSuiNkkEb1n09f2t2U4DKPJNeAPMSAVcLOqdwfrFp2KNJ7
	vDJnHCnyLi7YxYtQoPcS6BkdF2YNowPrMW0OUEHPDBc6362HgT+XzMP3NIRMmbPAR85C
	6Wsykj27DUEeHSqVo8Yls9+3sIcI7/jncs8iS58IITifeJ2LzMKqYXyLeNtGn5y/1Szw
	hOsg==
MIME-Version: 1.0
X-Received: by 10.112.164.203 with SMTP id ys11mr8380964lbb.83.1411593244528; 
	Wed, 24 Sep 2014 14:14:04 -0700 (PDT)
Received: by 10.112.60.103 with HTTP; Wed, 24 Sep 2014 14:14:04 -0700 (PDT)
Date: Wed, 24 Sep 2014 17:14:04 -0400
Message-ID: <CAA3b0-7UmLr7idO9bdB8H4D0GrfoyFOJ9D6TfUHWe7P0-jFHFA@mail.gmail.com>
From: machuu oovah <machuu.oovah@gmail.com>
To: yocto@yoctoproject.org
Subject: Configure Issue
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
X-List-Received-Date: Wed, 24 Sep 2014 21:14:08 -0000
Content-Type: multipart/alternative; boundary=001a1133be8ae8549c0503d629d0

--001a1133be8ae8549c0503d629d0
Content-Type: text/plain; charset=UTF-8

I'm tyring to make an updated version of the postgresql recipe, and I'm
getting a pretty stubborn error.
The build machine is running Ubuntu 12.04, and I'm using the scripts from
https://git.congatec.com/yocto/bsp-scripts.git

I have altered the postgresql_9.2.4.bb recipe to postgresql_9.3.5.bb. I
updated the remove.autoconf.version.check.patch, so I don't get the
autoconf version warning anymore.

Now do_configure is failing with a perl related error

autoreconf: running: gnu-configize
Perl lib version (5.14.3) doesn't match executable
'/home/yocto-user/yocto/bsp-scripts/build-qmx6/tmp/sysroots/x86_64-linux/usr/bin/autom4te'
version (v5.14.2) at
/home/yocto-user/yocto/bsp-scripts/build-qmx6/tmp/sysroots/x86_64-linux/usr/lib/perl-native/perl/5.14.3/Config.pm
line 60.
Compilation failed in require at
/home/yocto-user/yocto/bsp-scripts/build-qmx6/tmp/sysroots/x86_64-linux/usr/lib/perl-native/perl/5.14.3/File/Copy.pm
line 14.
BEGIN failed--compilation aborted at
/home/yocto-user/yocto/bsp-scripts/build-qmx6/tmp/sysroots/x86_64-linux/usr/lib/perl-native/perl/5.14.3/File/Copy.pm
line 14.
Compilation failed in require at
/home/yocto-user/yocto/bsp-scripts/build-qmx6/tmp/sysroots/x86_64-linux/usr/share/autoconf/Autom4te/FileUtils.pm
line 167.
BEGIN failed--compilation aborted at
/home/yocto-user/yocto/bsp-scripts/build-qmx6/tmp/sysroots/x86_64-linux/usr/share/autoconf/Autom4te/FileUtils.pm
line 167.
Compilation failed in require at
/home/yocto-user/yocto/bsp-scripts/build-qmx6/tmp/sysroots/x86_64-linux/usr/bin/autom4te
line 40.
BEGIN failed--compilation aborted at
/home/yocto-user/yocto/bsp-scripts/build-qmx6/tmp/sysroots/x86_64-linux/usr/bin/autom4te
line 40.
autoreconf: Leaving directory `.'

Further down, this stands out

| perl_embed_ldflags='
-L/home/yocto-user/yocto/bsp-scripts/build-qmx6/tmp/sysroots/x86_64-linux/usr/lib
-L/home/yocto-user/yocto/bsp-scripts/build-qmx6/tmp/sysroots/x86_64-linux/lib
-Wl,-rpath-link,/home/yocto-user/yocto/bsp-scripts/build-qmx6/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath-link,/home/yocto-user/yocto/bsp-scripts/build-qmx6/tmp/sysroots/x86_64-linux/lib
-Wl,-rpath,/home/yocto-user/yocto/bsp-scripts/build-qmx6/tmp/sysroots/x86_64-linux/usr/lib
-Wl,-rpath,/home/yocto-user/yocto/bsp-scripts/build-qmx6/tmp/sysroots/x86_64-linux/lib
-Wl,-O1 -fstack-protector
-L/home/yocto-user/yocto/bsp-scripts/build-qmx6/tmp/sysroots/x86_64-linux/usr/lib/perl-native/perl/5.14.3/CORE
-lperl -lnsl -ldl -lm -lcrypt -lutil -lpthread -lc'

because it contains -L/usr/local/lib
I've been trying to figure out how to stop the local system directories
from being included, but I'm not sure where to start.

Any help is appreciated, thanks in advance.

--001a1133be8ae8549c0503d629d0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I&#39;m tyring to make an updated version of the=
 postgresql recipe, and I&#39;m getting a pretty stubborn error. <br>The bu=
ild machine is running Ubuntu 12.04, and I&#39;m using the scripts from <co=
de class=3D"">https:</code><code class=3D"">//<a href=3D"http://git.congate=
c.com/yocto/bsp-scripts.git">git.congatec.com/yocto/bsp-scripts.git</a></co=
de></div><div><br>I have altered the <a href=3D"http://postgresql_9.2.4.bb"=
>postgresql_9.2.4.bb</a> recipe to <a href=3D"http://postgresql_9.3.5.bb">p=
ostgresql_9.3.5.bb</a>. I updated the remove.autoconf.version.check.patch, =
so I don&#39;t get the autoconf version warning anymore.<br></div><div><br>=
</div>Now do_configure is failing with a perl related error<br><br>autoreco=
nf: running: gnu-configize<br>Perl lib version (5.14.3) doesn&#39;t match e=
xecutable &#39;/home/yocto-user/yocto/bsp-scripts/build-qmx6/tmp/sysroots/x=
86_64-linux/usr/bin/autom4te&#39; version (v5.14.2) at /home/yocto-user/yoc=
to/bsp-scripts/build-qmx6/tmp/sysroots/x86_64-linux/usr/lib/perl-native/per=
l/5.14.3/Config.pm line 60.<br>Compilation failed in require at /home/yocto=
-user/yocto/bsp-scripts/build-qmx6/tmp/sysroots/x86_64-linux/usr/lib/perl-n=
ative/perl/5.14.3/File/Copy.pm line 14.<br>BEGIN failed--compilation aborte=
d at /home/yocto-user/yocto/bsp-scripts/build-qmx6/tmp/sysroots/x86_64-linu=
x/usr/lib/perl-native/perl/5.14.3/File/Copy.pm line 14.<br>Compilation fail=
ed in require at /home/yocto-user/yocto/bsp-scripts/build-qmx6/tmp/sysroots=
/x86_64-linux/usr/share/autoconf/Autom4te/FileUtils.pm line 167.<br>BEGIN f=
ailed--compilation aborted at /home/yocto-user/yocto/bsp-scripts/build-qmx6=
/tmp/sysroots/x86_64-linux/usr/share/autoconf/Autom4te/FileUtils.pm line 16=
7.<br>Compilation failed in require at /home/yocto-user/yocto/bsp-scripts/b=
uild-qmx6/tmp/sysroots/x86_64-linux/usr/bin/autom4te line 40.<br>BEGIN fail=
ed--compilation aborted at /home/yocto-user/yocto/bsp-scripts/build-qmx6/tm=
p/sysroots/x86_64-linux/usr/bin/autom4te line 40.<br>autoreconf: Leaving di=
rectory `.&#39;<br><br></div><div>Further down, this stands out<br><br>| pe=
rl_embed_ldflags=3D&#39; -L/home/yocto-user/yocto/bsp-scripts/build-qmx6/tm=
p/sysroots/x86_64-linux/usr/lib -L/home/yocto-user/yocto/bsp-scripts/build-=
qmx6/tmp/sysroots/x86_64-linux/lib -Wl,-rpath-link,/home/yocto-user/yocto/b=
sp-scripts/build-qmx6/tmp/sysroots/x86_64-linux/usr/lib -Wl,-rpath-link,/ho=
me/yocto-user/yocto/bsp-scripts/build-qmx6/tmp/sysroots/x86_64-linux/lib -W=
l,-rpath,/home/yocto-user/yocto/bsp-scripts/build-qmx6/tmp/sysroots/x86_64-=
linux/usr/lib -Wl,-rpath,/home/yocto-user/yocto/bsp-scripts/build-qmx6/tmp/=
sysroots/x86_64-linux/lib -Wl,-O1 -fstack-protector=C2=A0=C2=A0 -L/home/yoc=
to-user/yocto/bsp-scripts/build-qmx6/tmp/sysroots/x86_64-linux/usr/lib/perl=
-native/perl/5.14.3/CORE -lperl -lnsl -ldl -lm -lcrypt -lutil -lpthread -lc=
&#39;<br><br></div><div>because it contains -L/usr/local/lib<br></div><div>=
I&#39;ve been trying to figure out how to stop the local system directories=
 from being included, but I&#39;m not sure where to start.<br></div><div><b=
r></div><div>Any help is appreciated, thanks in advance.<br></div></div>

--001a1133be8ae8549c0503d629d0--
