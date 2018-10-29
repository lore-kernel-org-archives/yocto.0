Return-Path: <flowers.joseph@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 068A5E009AA; Sun, 28 Oct 2018 23:41:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-it1-f172.google.com (mail-it1-f172.google.com
	[209.85.166.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC794E00872
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 23:41:38 -0700 (PDT)
Received: by mail-it1-f172.google.com with SMTP id h14-v6so8154076itf.1
	for <yocto@yoctoproject.org>; Sun, 28 Oct 2018 23:41:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ClP1gsY8zgUiJjab1cjKbtJG+YHYzRlJ1T5ydiL29ys=;
	b=kEyW9scHv+ypTGmuI1ZqyXR5rR9gUmMQGfNQqWriePzLp2pA7RLm5H6bkNcmuNH1MK
	bkCQnO5NfKR25Xlh+auVAseiR1L3OUDlToHZ79jNwP3IyvnunV/YdeaZ/zhI+MU9sJVg
	ntKKg9xbulZVesBsYN2Iq6uAvYWjVuGlRjLsNSQDIAnFaBOQwcqmbF673c/OflVRUP6O
	hfNG7FOxa7HNcYi9reURtdfipxcCenaX/8KBG5V/z4UziClQZcpusbZ4Su7reJNLSLkS
	NgGawgCkFlS6X7du3X3C9w/fAclideMSuVUr2sjh1AiMN4e6zLU6IuHUioYHng4Vivrx
	NzvA==
X-Gm-Message-State: AGRZ1gK6jwhsaXKynlv8YzsIz0X5YqWYotjWJpJ5KcC+JqmfOpd647e6
	6pXJh699hKgl3QTf+5+0gDg9wd1YLCgo78s3aiWVJzg=
X-Google-Smtp-Source: AJdET5d9GRcq6wyF0FGIXqPLFOOepTnY959bgIObMd7D7S+pMpOYVvrpw2zOGBs7lakv8O8Bs50q944wq9mLgu6bN/A=
X-Received: by 2002:a24:4ad5:: with SMTP id
	k204-v6mr9578054itb.1.1540795297905; 
	Sun, 28 Oct 2018 23:41:37 -0700 (PDT)
MIME-Version: 1.0
From: Joe Flowers <joe.flowers@nofreewill.com>
Date: Mon, 29 Oct 2018 02:41:28 -0400
Message-ID: <CA+4=ZEPrnNxV5HAwZ-KA98vFLHzqYbo0MHAb+mj+aq_cr=pHig@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: "bitbake core-image-sato" yields "No package 'gdk-x11-3.0' found" build failure
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
X-List-Received-Date: Mon, 29 Oct 2018 06:41:40 -0000
Content-Type: multipart/alternative; boundary="0000000000006742aa0579585c02"

--0000000000006742aa0579585c02
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

1.
I am trying to build a core-image-sato image for a WandBoard but am getting
stuck at this error message:

"| No package 'gdk-x11-3.0' found"

See below for more details.


2.
I have grepped this list's archives and run into someone with the same
problem, but a solution was never included in the thread.

https://lists.yoctoproject.org/pipermail/yocto/2017-December/039149.html


Help please.

Joe

------------------------------

Command

MACHINE=wandboard bitbake core-image-sato

produces this error message:

...
...
| checking for pkg-config...
/opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/recipe-sysroot-native/usr/bin/pkg-config
| configure: WARNING: using cross tools not prefixed with host triplet
| checking pkg-config is at least version 0.9.0... yes
| checking for glib-2.0
|                   gmodule-export-2.0
|                   x11
|                   gdk-x11-3.0
|                   gtk+-3.0... no
| configure: error: Package requirements (glib-2.0
|                   gmodule-export-2.0
|                   x11
|                   gdk-x11-3.0
|                   gtk+-3.0) were not met:
|
| No package 'gdk-x11-3.0' found
|
| Consider adjusting the PKG_CONFIG_PATH environment variable if you
| installed software in a non-standard prefix.
|
| Alternatively, you may set the environment variables MATCHBOX_PANEL_CFLAGS
| and MATCHBOX_PANEL_LIBS to avoid the need to call pkg-config.
| See the pkg-config man page for more details.
| NOTE: The following config.log files may provide further information.
| NOTE:
/opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/build/config.log
| ERROR: configure failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at
/opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/temp/log.do_configure.40754)
ERROR: Task
(/opt/yocto/sources/poky/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:do_configure)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 3024 tasks of which 2828 didn't need to be
rerun and 1 failed.

Summary: 1 task failed:

/opt/yocto/sources/poky/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:
do_configure
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
joe@ubuntu:/opt/yocto/build$

------------------------------

--0000000000006742aa0579585c02
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div>Hello everyone,</di=
v><div><br></div><div>1.</div><div>I am trying to build a core-image-sato i=
mage for a WandBoard but am getting stuck at this error message:</div><div>=
<br></div><div>&quot;| No package &#39;gdk-x11-3.0&#39; found&quot;</div><d=
iv><br></div><div>See below for more details.</div><div><br></div><div><br>=
</div><div>2.</div><div>I have grepped this list&#39;s archives and run int=
o someone with the same problem, but a solution was never included in the t=
hread.</div><div><br></div><div><a href=3D"https://lists.yoctoproject.org/p=
ipermail/yocto/2017-December/039149.html">https://lists.yoctoproject.org/pi=
permail/yocto/2017-December/039149.html</a><br></div><div><br></div><div><b=
r></div><div>Help please.</div><div><br></div><div>Joe<br></div><div><br></=
div><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">--------------------=
----------</div><div dir=3D"ltr"><br></div><div>Command=C2=A0</div><div><br=
></div><div dir=3D"ltr">MACHINE=3Dwandboard bitbake core-image-sato=C2=A0</=
div><div dir=3D"ltr"><br></div><div>produces this error message:</div><div =
dir=3D"ltr">=C2=A0<br></div></div><div dir=3D"ltr">...</div><div dir=3D"ltr=
">...</div><div dir=3D"ltr">| checking for pkg-config... /opt/yocto/build/t=
mp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/recipe-=
sysroot-native/usr/bin/pkg-config</div><div dir=3D"ltr">| configure: WARNIN=
G: using cross tools not prefixed with host triplet</div><div dir=3D"ltr">|=
 checking pkg-config is at least version 0.9.0... yes</div><div dir=3D"ltr"=
>| checking for glib-2.0</div><div dir=3D"ltr">|=C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gmodule-export-2.0</div><div dir=
=3D"ltr">|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0x11</div><div dir=3D"ltr">|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0gdk-x11-3.0</div><div dir=3D"ltr">|=C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gtk+-3.0... no</div=
><div dir=3D"ltr">| configure: error: Package requirements (glib-2.0</div><=
div dir=3D"ltr">|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0gmodule-export-2.0</div><div dir=3D"ltr">|=C2=A0 =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0x11</div><div dir=3D"ltr">=
|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0gdk-x=
11-3.0</div><div dir=3D"ltr">|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0gtk+-3.0) were not met:</div><div dir=3D"ltr">|</di=
v><div dir=3D"ltr">| No package &#39;gdk-x11-3.0&#39; found</div><div dir=
=3D"ltr">|</div><div dir=3D"ltr">| Consider adjusting the PKG_CONFIG_PATH e=
nvironment variable if you</div><div dir=3D"ltr">| installed software in a =
non-standard prefix.</div><div dir=3D"ltr">|</div><div dir=3D"ltr">| Altern=
atively, you may set the environment variables MATCHBOX_PANEL_CFLAGS</div><=
div dir=3D"ltr">| and MATCHBOX_PANEL_LIBS to avoid the need to call pkg-con=
fig.</div><div dir=3D"ltr">| See the pkg-config man page for more details.<=
/div><div dir=3D"ltr">| NOTE: The following config.log files may provide fu=
rther information.</div><div dir=3D"ltr">| NOTE: /opt/yocto/build/tmp/work/=
cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/build/config.lo=
g</div><div dir=3D"ltr">| ERROR: configure failed</div><div dir=3D"ltr">| W=
ARNING: exit code 1 from a shell command.</div><div dir=3D"ltr">| ERROR: Fu=
nction failed: do_configure (log file is located at /opt/yocto/build/tmp/wo=
rk/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/temp/log.do_=
configure.40754)</div><div dir=3D"ltr">ERROR: Task (/opt/yocto/sources/poky=
/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:do_configure) =
failed with exit code &#39;1&#39;</div><div dir=3D"ltr">NOTE: Tasks Summary=
: Attempted 3024 tasks of which 2828 didn&#39;t need to be rerun and 1 fail=
ed.</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">Summary: 1 task failed=
:</div><div dir=3D"ltr">=C2=A0 /opt/yocto/sources/poky/meta/recipes-sato/ma=
tchbox-panel-2/matchbox-panel-2_2.11.bb:do_configure</div><div dir=3D"ltr">=
Summary: There were 2 ERROR messages shown, returning a non-zero exit code.=
</div><div dir=3D"ltr">joe@ubuntu:/opt/yocto/build$</div><div dir=3D"ltr"><=
br></div><div dir=3D"ltr">------------------------------</div><div dir=3D"l=
tr"><br></div></div></div></div></div>

--0000000000006742aa0579585c02--
