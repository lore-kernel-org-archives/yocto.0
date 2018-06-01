Return-Path: <jon.szymaniak@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0051FE00CD5; Thu, 31 May 2018 23:00:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jon.szymaniak[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4601BE00C72
	for <yocto@yoctoproject.org>; Thu, 31 May 2018 23:00:49 -0700 (PDT)
Received: by mail-oi0-f45.google.com with SMTP id t22-v6so18133803oih.6
	for <yocto@yoctoproject.org>; Thu, 31 May 2018 23:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=j38usQTne4kqXHHR/9GwZCBhxDhRQIb6+c0O0HcYKt8=;
	b=e60SoYyt8PaPTcgUCR0D1kpEwn+AK29u4lnupzdb9zRVxDUD5jAHOCrBwopeWGg+UH
	KyqxQ7/+NDRW/5mezDlB5xF7446JRqzeiZoIJHHzvKcbnGlHvzjJ+NT1yXC0EhAiwD7r
	DVOMmYBImGpEVDe31aK1JZ/5hkV8Y36GQZNSFEB/I6Pnq+uilrw5j/pjchKcGJKd2DXd
	2ykSp12eLhakx5yIxmlbCPxCpO+D6iNUs4oLGhApwrjjnzimF+KIgt9X0fmBpR7I5zWo
	NtGI7vy9HO7dNB6rjE3YvamRSNDeM7R4nBHg0VRq0JM21c0QF0F+akFZSbLUIeny0aPz
	+fIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=j38usQTne4kqXHHR/9GwZCBhxDhRQIb6+c0O0HcYKt8=;
	b=n1DwxsweI4eE/BDSolcP/revDZlKtXz8Q0bL0emQntNgavOvsIZcelVGnViTfDp6hl
	34TZzphYckUZLSdbmxdzVTQrhP4FxODoJ3l3/adsLNwk6ZHM34ecqm3yHnMUnvWiuwUg
	Sie3qm5LXgOnALeWlIIPQTNBhdwRHCmdRQYFhr7D3pVmTg2XdG5u3zUwYufNeeRla8CD
	pae1/jjuOFBdcB5yYmErs7fa4Z6z+fjZMYWeoWfvtq0gWbhyEZDkiwd2ZdWCymv3uUMd
	Fpam/XYsB64inMFT+/uD0kLWuHWHsiuBGGHCNAEcNcIxYnhaxu7SENzIdbUDI/i3Js5B
	EsGA==
X-Gm-Message-State: APt69E0F8wbBnKs+e6JKHyQiu7Ve9aVh4f33jkMcjwA0UHbq3NsbW2KH
	OmMsk7AGJPPkzHM+iw6xt/ktTOsVV1gKW9PB9zrZzQ==
X-Google-Smtp-Source: ADUXVKInxORPimLInuLwY6M6COAzqC/ebyAd3A1uW8/Xk8mUcXe3IIHvzcRUoyjDmkr1feAWH6zkdypAAYp/Iv4Yqak=
X-Received: by 2002:aca:4957:: with SMTP id
	w84-v6mr2880860oia.293.1527832848431; 
	Thu, 31 May 2018 23:00:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:ed1:0:0:0:0:0 with HTTP;
	Thu, 31 May 2018 23:00:28 -0700 (PDT)
From: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Fri, 1 Jun 2018 01:00:28 -0500
Message-ID: <CANge7vWW35a41fOJhFis1aw2vu2qw9TvtodTSKmyuJ5NvCuL7g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: qemu-native build fails on sumo due to missing capstone.h
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
X-List-Received-Date: Fri, 01 Jun 2018 06:00:50 -0000
Content-Type: multipart/alternative; boundary="00000000000034fdda056d8e4e78"

--00000000000034fdda056d8e4e78
Content-Type: text/plain; charset="UTF-8"

When attempting to build core-image-minimal on sumo (@b369e61) with a
largely default local.conf, I'm experiencing qemu-native build failures due
to what appear to be an include path issue.

Below is one of the failures -- those not listed here also pertain to a
missing capstone.h.

|   CC      aarch64-softmmu/monitor.o
| In file included from /snip/build/yocto/sumo/rpi/tmp
/work/x86_64-linux/qemu-native/2.11.1-r0/qemu-2.11.1/disas.c:9:0:

| /snip/build/yocto/sumo/rpi/tmp/work/x86_64-linux/qemu-native
/2.11.1-r0/qemu-2.11.1/include/disas/capstone.h:6:10: fatal error:
capstone.h: No such file or directory
|  #include <capstone.h>
|           ^~~~~~~~~~~~
| compilation terminated.

In the qemu-native build directory, the config.log shows an "
 -I/usr/include/capstone" parameter being used during compilation, despite
other -I parameters using ${prefix} correctly.

capstone is pulled into the qemu source tree as a git submodule, and has a
CMake-based build -- so I'm guessing this is the result of not providing
prefix information to the CMake build? However, I'm honestly not sure why
there's a dependency on the capstone disassembler at this point, and
whether the Yocto use-case warrants even enabling support for it.

Adding --disable-capstone to the qemu.inc EXTRA_OECONF definition seemed to
address the build failure, but I haven't tried any QEMU targets yet.

I still need to dig into this a bit further, but just wanted to check in
before I go too far down the rabbit hole... this strikes me as something
that would have broken the nightly builds and therefore might just be an
issue on my end somehow.

Thanks,
Jon Szymaniak

--00000000000034fdda056d8e4e78
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">When attempting to build core-image-minimal on sumo (@b369=
e61) with a largely default local.conf, I&#39;m experiencing <span style=3D=
"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-styl=
e:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-weight=
:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transform:=
none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,255);=
text-decoration-style:initial;text-decoration-color:initial;float:none;disp=
lay:inline">qemu-native=C2=A0</span>build failures due to what appear to be=
 an include path issue.=C2=A0<div><br></div><div>Below is one of the failur=
es -- those not listed here also pertain to a missing capstone.h.<div><br><=
/div><div><div>|=C2=A0 =C2=A0CC=C2=A0 =C2=A0 =C2=A0 aarch64-softmmu/monitor=
.o=C2=A0 =C2=A0</div><div>| In file included from /snip/build/yocto/sumo/rp=
i/tmp<wbr>/work/x86_64-linux/qemu-native<wbr>/2.11.1-r0/qemu-2.11.1/disas.<=
wbr>c:9:0:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0=C2=A0</div><div>| /snip/build/yocto/sumo/rpi/tmp<wbr>/work/x86_6=
4-linux/qemu-native<wbr>/2.11.1-r0/qemu-2.11.1/include<wbr>/disas/capstone.=
h:6:10: fatal error: capstone.h: No such file or directory</div><div>|=C2=
=A0 #include &lt;capstone.h&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0=C2=A0</div><div>|=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0^~~=
~~~~~~~~~=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div=
><div>| compilation terminated.=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0=C2=A0</div><div><br></div></div><div>In the qemu-native b=
uild directory, the config.log shows an &quot;<span style=3D"color:rgb(34,3=
4,34);font-family:arial,sans-serif;font-size:small;font-style:normal;font-v=
ariant-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spa=
cing:normal;text-align:start;text-indent:0px;text-transform:none;white-spac=
e:normal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration=
-style:initial;text-decoration-color:initial;float:none;display:inline">=C2=
=A0-I/usr/include/capstone&quot;</span>=C2=A0<wbr>parameter being used duri=
ng compilation, despite other -I parameters using ${prefix} correctly.</div=
><div><br></div><div>capstone is pulled into the qemu source tree as a git =
submodule, and has a CMake-based build -- so I&#39;m guessing this is the r=
esult of not providing prefix information to the CMake build? However, I&#3=
9;m honestly not sure why there&#39;s a dependency on the capstone disassem=
bler at this point, and whether the Yocto use-case warrants even enabling s=
upport for it.=C2=A0<br></div><div><br></div><div>Adding --disable-capstone=
 to the qemu.inc EXTRA_OECONF definition seemed to address the build failur=
e, but I haven&#39;t tried any QEMU targets yet.</div><div><br></div><div><=
span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:sm=
all;font-style:normal;font-variant-ligatures:normal;font-variant-caps:norma=
l;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0px;te=
xt-transform:none;white-space:normal;word-spacing:0px;background-color:rgb(=
255,255,255);text-decoration-style:initial;text-decoration-color:initial;fl=
oat:none;display:inline">I still need to dig into this a bit further, but j=
ust wanted to check in before I go too far down the rabbit hole... this str=
ikes me as something that would have broken the nightly builds and therefor=
e might just be an issue on my end somehow.</span><br></div><div><br></div>=
<div>Thanks,</div><div>Jon Szymaniak</div></div></div>

--00000000000034fdda056d8e4e78--
