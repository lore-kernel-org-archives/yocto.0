Return-Path: <maytarb@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5778BE00CB0; Thu, 17 Jan 2019 06:49:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.167.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (maytarb[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com
	[209.85.167.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 340FDE00C91
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2019 06:49:37 -0800 (PST)
Received: by mail-oi1-f175.google.com with SMTP id a77so6321867oii.5
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2019 06:49:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=wGrB+vACcuMc7xYKbHJElW/ZQPVkDZ89KpYCR5lTPjo=;
	b=BKAk3I5OXw1IupPTF3fpvAcdgEF5Te0mfndZbHdBmZZO4sd3gvHwUiEMZOji3EYit4
	Q/QA11p+h8YPBAsA8Z3QNZ4roAitKQEoPlZx9cHMdV6hRP7OzAFay3pnOQP3ubY8c9B/
	7Oxai8CuSYZ1yeT39hlBgykRcI9wqm9jXG/yXgTTi9QjQjiKDUM5/I+gdlH5lc4vQ8qX
	DjOyTFjuTju59q0wTywLteLbyX1T28CHks2VVq571CHFAMYZE2Zdy5J/0gj35FESiNK1
	r+OxYReKBcyOuxvLKS9BWRMd+RJJll38iq+MurO0V02t/vAwHbwYOy+ciIJlX2ayXj0i
	LoWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=wGrB+vACcuMc7xYKbHJElW/ZQPVkDZ89KpYCR5lTPjo=;
	b=E+MJouI0Bal9XXYfu4i3y2aIu9dOycXjwHbMYjw8Z4s8oBJgdV5rpn1R0h+vNKIa9z
	nPIn4/6Bk0xux7u0fKDLoBxvs2twe+5hd/pbd3VVYBrfuEA47Yx2zMc/hQheyOUROqW/
	AxGmc9YQv251GozGpLKJ/s2FkJJgCUmQsaDmyGCWxRtsIJAQhj2BNO4Qp42qP/BAPREb
	K9UOk3aTCg2EXjAUQFxbxxpc1Gik0ZjwnWsF/yh3EA8aHBYlX//k/5X2OMl5rt2JbhMh
	TiHQEqN5dUYsyIrPwXLcPstHLvOShlVyuByP9+808VnpuGeWaNgLjUbyCS3wtueO+Krw
	N3uQ==
X-Gm-Message-State: AJcUukczaRnoVm5GBL0JruAtaiFoUWHOwZ0F5QIaWayjlrLJR6EBCQsI
	rNetR0Tw6+wwFtIaj64GVccyK2kyjwkPT0UpZZMkmyu2
X-Google-Smtp-Source: ALg8bN715GTlFA8MHEGQBQqij0krbHIKgS/pp7oBMtnFL/yeg1sKRukfDjqEHy0IVYHptvTGfhPK8PCg4rTxM3yChSA=
X-Received: by 2002:a05:6808:246:: with SMTP id
	m6mr2260840oie.64.1547736576225; 
	Thu, 17 Jan 2019 06:49:36 -0800 (PST)
MIME-Version: 1.0
From: Maytar Byle <maytarb@gmail.com>
Date: Thu, 17 Jan 2019 16:49:25 +0200
Message-ID: <CACDuFfU=cZM_xVcWOw2cOpBfGq4F388thUEY-5JRPLj6wX41kA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: linux/bpf.h: no such file or directory
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
X-List-Received-Date: Thu, 17 Jan 2019 14:49:38 -0000
Content-Type: multipart/alternative; boundary="000000000000d4f4b3057fa88086"

--000000000000d4f4b3057fa88086
Content-Type: text/plain; charset="UTF-8"

Hey all,

I've wrote a basic recipe to compile few C files and when i compile it, i
get the above error. I looked in 'sysroots/qemux86-64/usr/include/linux/'
and it contains bpf.h.

The recipe:
SRC_URI = "file://dir"

S = "${WORKDIR}/dir"

do_install() {
    install -d ${D}/home/user/dir

    oe_runmake DESTDIR=${D}/home/user/dir install
}

with the following Makefile:
SRC_FILES := $(wildcard *.c)
OUT_FILES := $(patsubst %.c,%.out,$(SRC_FILES))

all: $(OUT_FILES)

%.out: %.c
gcc -o $@ $^
...

The C file include lines goes as follow:
#include <asm/types.h>
#include <linux/netlink.h>
#include <linux/rtnetlink.h>
....
#include <linux/bpf.h>
#include <linux/filter.h>

When i try to build the image using `bitbake core-image-minimal` i get:
DEBUG: Executing shell function do_compile
NOTE: make -j 6
gcc -o a.out a.c
a.c:78:23: fatal error: linux/bpf.h: No such file or directory
 #include <linux/bpf.h>
                       ^
compilation terminated.
make: *** [a.out] Error 1
WARNING: exit code 1 from a shell command.
ERROR: oe_runmake failed
ERROR: Function failed: do_compile (log file is located at
/yocto/build/tmp/work/core2-64-poky-linux/example/1.0-r0/temp/log.do_compile.26127)

Could also be relevant - entries from my local.conf:
PREFERRED_PROVIDER_virtual/kernel = "linux-yocto"
GCCVERSION ?= "4.9.%"
SDKGCCVERSION ?= "4.9.%"

Also, it is weird for me that it gets to 'linux/bpf.h' before it fails
because it includes files from the linux dir before that.. Can someone shed
some light on that? Any directions i should look into?

--000000000000d4f4b3057fa88086
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"rtl"><div dir=3D"rtl"><div dir=3D"rtl"><div dir=3D"rtl"><div di=
r=3D"rtl"><div dir=3D"rtl"><div dir=3D"rtl"><div dir=3D"rtl"><div dir=3D"lt=
r">Hey all,</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">I&#39;ve wrote=
 a basic recipe to compile few C files and when i compile it, i get the abo=
ve error. I looked in &#39;sysroots/qemux86-64/usr/include/linux/&#39; and =
it contains bpf.h.</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">The rec=
ipe:</div><div dir=3D"ltr"><div dir=3D"ltr">SRC_URI =3D &quot;file://dir&qu=
ot;</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">S =3D &quot;${WORKDIR}=
/dir&quot;</div><div dir=3D"ltr"><br></div><div dir=3D"ltr">do_install() {<=
/div><div dir=3D"ltr">=C2=A0 =C2=A0 install -d ${D}/home/user/dir</div><div=
 dir=3D"ltr"><br></div><div dir=3D"ltr">=C2=A0 =C2=A0 oe_runmake DESTDIR=3D=
${D}/home/user/dir install</div><div dir=3D"ltr">}</div><div dir=3D"ltr"><b=
r></div><div dir=3D"ltr"><div>with the following Makefile:</div><div dir=3D=
"ltr">SRC_FILES :=3D $(wildcard *.c)</div><div dir=3D"ltr">OUT_FILES :=3D $=
(patsubst %.c,%.out,$(SRC_FILES))</div><div dir=3D"ltr"><br></div><div dir=
=3D"ltr">all: $(OUT_FILES)</div><div dir=3D"ltr"><br></div><div dir=3D"ltr"=
>%.out: %.c</div><div dir=3D"ltr"><span style=3D"white-space:pre">	</span>g=
cc -o $@ $^=C2=A0</div><div dir=3D"ltr">...</div><div dir=3D"ltr"><br></div=
></div><div>The C file include lines goes as follow:</div><div><div>#includ=
e &lt;asm/types.h&gt;</div><div>#include &lt;linux/netlink.h&gt;</div><div>=
#include &lt;linux/rtnetlink.h&gt;</div><div>....</div><div>#include &lt;li=
nux/bpf.h&gt;</div><div>#include &lt;linux/filter.h&gt;</div><div>=C2=A0</d=
iv></div><div>When i try to build the image using `bitbake core-image-minim=
al` i get:</div><div><div>DEBUG: Executing shell function do_compile</div><=
div>NOTE: make -j 6</div><div>gcc -o a.out a.c=C2=A0</div><div>a.c:78:23: f=
atal error: linux/bpf.h: No such file or directory</div><div>=C2=A0#include=
 &lt;linux/bpf.h&gt;</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^</div><div>compilation terminated=
.</div><div>make: *** [a.out] Error 1</div><div>WARNING: exit code 1 from a=
 shell command.</div><div>ERROR: oe_runmake failed</div><div>ERROR: Functio=
n failed: do_compile (log file is located at /yocto/build/tmp/work/core2-64=
-poky-linux/example/1.0-r0/temp/log.do_compile.26127)</div></div><div><br><=
/div><div><div>Could also be relevant - entries from my local.conf:</div><d=
iv><div>PREFERRED_PROVIDER_virtual/kernel =3D &quot;linux-yocto&quot;</div>=
<div>GCCVERSION ?=3D &quot;4.9.%&quot;</div><div>SDKGCCVERSION ?=3D &quot;4=
.9.%&quot;</div></div></div><div><br></div><div>Also, it is weird for me th=
at it gets to &#39;linux/bpf.h&#39; before it fails because it includes fil=
es from the linux dir before that.. Can someone shed some light on that? An=
y directions i should look into?</div></div></div></div></div></div></div><=
/div></div></div>

--000000000000d4f4b3057fa88086--
