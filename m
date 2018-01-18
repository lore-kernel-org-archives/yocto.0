Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA0B2E00E83; Thu, 18 Jan 2018 12:48:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f42.google.com (mail-lf0-f42.google.com
	[209.85.215.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6601EE00D92
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 12:48:24 -0800 (PST)
Received: by mail-lf0-f42.google.com with SMTP id o89so24237664lfg.10
	for <yocto@yoctoproject.org>; Thu, 18 Jan 2018 12:48:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bdjWXeIslQIDz0E/VaPFFv+HmGJnseoPkzOrmyMtwRI=;
	b=FwoC8TXUz1OQQFupWDhCrHByV91NQDpDiAeIKaZANchDtCgUg1WQ2jXIuXFeQdSgu+
	RErrF6yykEi+iW9iYLDsfLIPXEvyDAcn3Jhf6yoeFKcWaEqkD4tHdbPpNNys45+f2TM7
	aK2XcIx5u4MLtXmYWaq7m+gM6Oy3LwVJbNjw9JLNbBhz5av7p4C0AipI+RVUS8WmblOv
	aywEuVGw19eW3kNwv3stMdZD5uFiHgO8zUQ6bWQAktLyWPVbRULc+Ggo2smKcvIQO3Bz
	nHlZ8zxe7StGWOdyyg+wia2s3QNToKLVcJVSzUbbqp9NMob2lyfrxUXhYrrQhajXRqUn
	eCew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bdjWXeIslQIDz0E/VaPFFv+HmGJnseoPkzOrmyMtwRI=;
	b=JknIJPdLgjJhf3AEKtwzP+2pK1fPwHynB9m4lGAY/RMEfq9/ETW/z5XF6fmRRUp6A2
	Ei1kyWkWDf/LGf38FzZ51/CRAWAQfeMxPMSugOf/wUekQY4ISqKQ4thbW0/zkAcG8dmK
	o4yJP0I8a7ItCI79OTalI08YhtFYVi+cNP7Hj1/qv2tlfYPVTBM+tjFuiBQ6AnjxSsk4
	7+tyvhnvfTY0CIq/bh2E295ksCYkN7SHznENHuB18jeIBhwGChyzxsbbppKRKHByqoxQ
	OP1Y4vsMu9KCG/2nRK1zGJGKUD7W8DUBbVWm3TbzeLBDj/6wUrWb26sAoWgPqDyZNs9C
	vItw==
X-Gm-Message-State: AKGB3mKSm6PWcwp/wy1thEgNpJH7gOLeJ84ri/THzhq7gPjR73RfhrGP
	76YcqG4Zh9E+u1eFhQYrcyu65nVxmvQdTlJogt0=
X-Google-Smtp-Source: ACJfBoue1CW7CFDdESrP9rND5+LeU04QKf6FBlIqMePg2E4zqek3XZU8pOmnHUDVwwyfGL7c3llV37l4EHLN5p8ifDM=
X-Received: by 10.46.22.71 with SMTP id 7mr27752389ljw.21.1516308502969; Thu,
	18 Jan 2018 12:48:22 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.83.210 with HTTP; Thu, 18 Jan 2018 12:48:21 -0800 (PST)
In-Reply-To: <CALXw4G6g+OPJPMrCZbdXYi+fU2CgV=z8ZUdGhH6z6+__hNJ9iw@mail.gmail.com>
References: <FBE5527A-743B-468F-9CEA-FC1732314AFE@googlemail.com>
	<CAC+thW1kL2F2LKxpnLMTd-YfWZV8KNzDSqpF8q2KdOBENBjt4g@mail.gmail.com>
	<CAC+thW0xBGsXZz-GJQU5f-LbVtUVWmzt5ReUwZr-SG4gvw-eVA@mail.gmail.com>
	<20d47e1b-c33b-d7f6-1b9e-f7a6f1e779a0@linux.intel.com>
	<CAHUNapTu4HeiwwdHLFcyNpQV2+F5gw2oQWZWCcSiqLy47hHuyQ@mail.gmail.com>
	<CALXw4G6g+OPJPMrCZbdXYi+fU2CgV=z8ZUdGhH6z6+__hNJ9iw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Thu, 18 Jan 2018 15:48:21 -0500
Message-ID: <CAHUNapSN3-xrYgtFfP0zbojgUSJnGbsNeg58uFYc0Gi9YZZ1Kg@mail.gmail.com>
To: Michael Gloff <mgloff@emacinc.com>
Cc: Mathias Rudnik <rudnik.mathias@googlemail.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Error do_compile libepoxy
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
X-List-Received-Date: Thu, 18 Jan 2018 20:48:26 -0000
Content-Type: multipart/alternative; boundary="f403045fb63eb083200563131509"

--f403045fb63eb083200563131509
Content-Type: text/plain; charset="UTF-8"

On Thu, Jan 18, 2018 at 10:05 AM, Michael Gloff <mgloff@emacinc.com> wrote:

> I can confirm adding #include <X11/Xlib.h> to test/egl_common.c gets past
> the original error, but then fails with:
>
>
thank you for checking :-)


>
>
> Log data follows:
> | DEBUG: Executing shell function do_compile
> | [1/2] Compiling c object 'test/glx_beginend@exe/glx_beginend.c.o'
> | [2/2] Linking target test/glx_beginend
> | FAILED: test/glx_beginend
> | arm-poky-linux-gnueabi-gcc  -o test/glx_beginend 'test/glx_beginend@exe
> /glx_beginend.c.o' '-Wl,--no-undefined' '-Wl,--as-needed' '-O2' '-pipe'
> '-g' '-feliminate-unused-debug-types' '-fdebug-prefix-map=/home/
> michael/oe/recipes/rpi-build/tmp/work/cortexa7hf-neon-
> vfpv4-poky-linux-gnueabi/libepoxy/1.4.3-r0=/usr/src/debug/libepoxy/1.4.3-r0'
> '-fdebug-prefix-map=/home/michael/oe/recipes/rpi-build/
> tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/
> libepoxy/1.4.3-r0/recipe-sysroot-native=' '-fdebug-prefix-map=/home/
> michael/oe/recipes/rpi-build/tmp/work/cortexa7hf-neon-
> vfpv4-poky-linux-gnueabi/libepoxy/1.4.3-r0/recipe-sysroot=' '-Wl,-O1'
> '-Wl,--hash-style=gnu' '-Wl,--as-needed' 'test/libglx_common.a'
> 'src/libepoxy.so.0.0.0' 'src/libepoxy.so.0.0.0' 'src/libepoxy.so.0.0.0'
> '-ldl' '-lX11' '-ldl' '-Wl,-rpath,/home/michael/oe/
> recipes/rpi-build/tmp/work/cortexa7hf-neon-vfpv4-poky-
> linux-gnueabi/libepoxy/1.4.3-r0/build/src' -march=armv7ve -marm
> -mfpu=neon-vfpv4 -mfloat-abi=hard -mcpu=cortex-a7
> --sysroot=/home/michael/oe/recipes/rpi-build/tmp/work/
> cortexa7hf-neon-vfpv4-poky-linux-gnueabi/libepoxy/1.4.3-r0/recipe-sysroot
> -Wl,-O1 -Wl,--hash-style=gnu -Wl,--as-needed
> | test/glx_beginend@exe/glx_beginend.c.o: In function
> `test_without_epoxy':
> | /usr/src/debug/libepoxy/1.4.3-r0/libepoxy-1.4.3/test/glx_beginend.c:70:
> undefined reference to `glBegin'
> | /usr/src/debug/libepoxy/1.4.3-r0/libepoxy-1.4.3/test/glx_beginend.c:85:
> undefined reference to `glEnd'
> | collect2: error: ld returned 1 exit status
> | ninja: build stopped: subcommand failed.
> | WARNING: /home/michael/oe/recipes/rpi-build/tmp/work/cortexa7hf-
> neon-vfpv4-poky-linux-gnueabi/libepoxy/1.4.3-r0/temp/run.do_compile.2610:1
> exit 1 from 'ninja -j 8'
> | ERROR: Function failed: do_compile (log file is located at
> /home/michael/oe/recipes/rpi-build/tmp/work/cortexa7hf-
> neon-vfpv4-poky-linux-gnueabi/libepoxy/1.4.3-r0/temp/log.do_compile.2610)
> ERROR: Task (/home/michael/oe/recipes/poky/meta/recipes-graphics/
> libepoxy/libepoxy_1.4.3.bb:do_compile) failed with exit code '1'
>
>
that suggests a missing #include <GL/gl.h>

--f403045fb63eb083200563131509
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Thu, Jan 18, 2018 at 10:05 AM, Michael Gloff <span dir=
=3D"ltr">&lt;<a href=3D"mailto:mgloff@emacinc.com" target=3D"_blank">mgloff=
@emacinc.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=
=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div>I can=
 confirm adding #include &lt;X11/Xlib.h&gt; to test/egl_common.c gets past =
the original error, but then fails with:<br><br></div></div></blockquote><d=
iv><br></div><div>thank you for checking :-)<br></div><div>=C2=A0</div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><br><div dir=3D"ltr"><div><br>Log data follows:<=
br>| DEBUG: Executing shell function do_compile<br>| [1/2] Compiling c obje=
ct &#39;test/glx_beginend@exe/glx_<wbr>beginend.c.o&#39;<br>| [2/2] Linking=
 target test/glx_beginend<br>| FAILED: test/glx_beginend<br>| arm-poky-linu=
x-gnueabi-gcc=C2=A0 -o test/glx_beginend &#39;test/glx_beginend@exe/glx_<wb=
r>beginend.c.o&#39; &#39;-Wl,--no-undefined&#39; &#39;-Wl,--as-needed&#39; =
&#39;-O2&#39; &#39;-pipe&#39; &#39;-g&#39; &#39;-feliminate-unused-debug-<w=
br>types&#39; &#39;-fdebug-prefix-map=3D/home/<wbr>michael/oe/recipes/rpi-b=
uild/<wbr>tmp/work/cortexa7hf-neon-<wbr>vfpv4-poky-linux-gnueabi/<wbr>libep=
oxy/1.4.3-r0=3D/usr/src/<wbr>debug/libepoxy/1.4.3-r0&#39; &#39;-fdebug-pref=
ix-map=3D/home/<wbr>michael/oe/recipes/rpi-build/<wbr>tmp/work/cortexa7hf-n=
eon-<wbr>vfpv4-poky-linux-gnueabi/<wbr>libepoxy/1.4.3-r0/recipe-<wbr>sysroo=
t-native=3D&#39; &#39;-fdebug-prefix-map=3D/home/<wbr>michael/oe/recipes/rp=
i-build/<wbr>tmp/work/cortexa7hf-neon-<wbr>vfpv4-poky-linux-gnueabi/<wbr>li=
bepoxy/1.4.3-r0/recipe-<wbr>sysroot=3D&#39; &#39;-Wl,-O1&#39; &#39;-Wl,--ha=
sh-style=3Dgnu&#39; &#39;-Wl,--as-needed&#39; &#39;test/libglx_common.a&#39=
; &#39;src/libepoxy.so.0.0.0&#39; &#39;src/libepoxy.so.0.0.0&#39; &#39;src/=
libepoxy.so.0.0.0&#39; &#39;-ldl&#39; &#39;-lX11&#39; &#39;-ldl&#39; &#39;-=
Wl,-rpath,/home/michael/oe/<wbr>recipes/rpi-build/tmp/work/<wbr>cortexa7hf-=
neon-vfpv4-poky-<wbr>linux-gnueabi/libepoxy/1.4.3-<wbr>r0/build/src&#39; -m=
arch=3Darmv7ve -marm -mfpu=3Dneon-vfpv4 -mfloat-abi=3Dhard -mcpu=3Dcortex-a=
7 --sysroot=3D/home/michael/oe/<wbr>recipes/rpi-build/tmp/work/<wbr>cortexa=
7hf-neon-vfpv4-poky-<wbr>linux-gnueabi/libepoxy/1.4.3-<wbr>r0/recipe-sysroo=
t -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed<br>| test/glx_beginend@exe=
/glx_<wbr>beginend.c.o: In function `test_without_epoxy&#39;:<br>| /usr/src=
/debug/libepoxy/1.4.3-<wbr>r0/libepoxy-1.4.3/test/glx_<wbr>beginend.c:70: u=
ndefined reference to `glBegin&#39;<br>| /usr/src/debug/libepoxy/1.4.3-<wbr=
>r0/libepoxy-1.4.3/test/glx_<wbr>beginend.c:85: undefined reference to `glE=
nd&#39;<br>| collect2: error: ld returned 1 exit status<br>| ninja: build s=
topped: subcommand failed.<br>| WARNING: /home/michael/oe/recipes/rpi-<wbr>=
build/tmp/work/cortexa7hf-<wbr>neon-vfpv4-poky-linux-gnueabi/<wbr>libepoxy/=
1.4.3-r0/temp/run.do_<wbr>compile.2610:1 exit 1 from &#39;ninja -j 8&#39;<b=
r>| ERROR: Function failed: do_compile (log file is located at /home/michae=
l/oe/recipes/rpi-<wbr>build/tmp/work/cortexa7hf-<wbr>neon-vfpv4-poky-linux-=
gnueabi/<wbr>libepoxy/1.4.3-r0/temp/log.do_<wbr>compile.2610)<br>ERROR: Tas=
k (/home/michael/oe/recipes/<wbr>poky/meta/recipes-graphics/<wbr>libepoxy/l=
ibepoxy_1.4.3.bb:do_<wbr>compile) failed with exit code &#39;1&#39;<span cl=
ass=3D"HOEnZb"><font color=3D"#888888"><br><br></font></span></div></div></=
blockquote><div><br></div><div>that suggests a missing #include &lt;GL/gl.h=
&gt; <br></div></div></div></div>

--f403045fb63eb083200563131509--
