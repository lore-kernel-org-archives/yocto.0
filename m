Return-Path: <chungyehwang@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4B0FDE0086D; Mon,  9 Mar 2015 01:36:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chungyehwang[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F257E0076B
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 01:36:09 -0700 (PDT)
Received: by igdh15 with SMTP id h15so18679480igd.4
	for <yocto@yoctoproject.org>; Mon, 09 Mar 2015 01:36:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=YOevsPLeokHpulqf7nPmbzqwGUIKDeX7ceYIa9ReTpQ=;
	b=FtXoFWzs7hVyjRdbghvK+UOfIY+8uWb5iRnSDtt0DLOzzM1Ki1PoNBGze6bFU3HiD5
	bVItPPxtOIapXu3uuUNXtRzaEf8lY0RJKeZ5O5ToevOgi5VSm8YjOr5SyKugrC7TiEkv
	1Lp7vNvWBR+71usQA+dSyWe+lzFkfroKoBKQQ8vG6CUDZHANPwK6w0Ze3lmTGc29hpxs
	miOePejAbleXLA7fQ+s0QRb+GTiAuJfQBrievtQp58Vjvg3tpnoC3HIrEMvNuwM9pyNN
	OktZNGnvSI2eO1Bp+/T3M07T1VzaBDcjlok9mpurV9cwfefuLy6hZXf/akqGpBiraYmE
	k9Jw==
MIME-Version: 1.0
X-Received: by 10.50.253.12 with SMTP id zw12mr70789702igc.24.1425890168807;
	Mon, 09 Mar 2015 01:36:08 -0700 (PDT)
Received: by 10.64.116.39 with HTTP; Mon, 9 Mar 2015 01:36:08 -0700 (PDT)
Date: Mon, 9 Mar 2015 16:36:08 +0800
Message-ID: <CANBg2hKqzN6kR4=7rpA3O+Ar=Y0rEOMWYgEYXsu78hfq1ZwbdQ@mail.gmail.com>
From: Chung-Yeh Wang <chungyehwang@gmail.com>
To: yocto@yoctoproject.org
Subject: Question: Yocto 1.7.1 kernel config defconfig will not be used?
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
X-List-Received-Date: Mon, 09 Mar 2015 08:36:12 -0000
Content-Type: multipart/alternative; boundary=001a11346e3c0025e30510d6ed86

--001a11346e3c0025e30510d6ed86
Content-Type: text/plain; charset=UTF-8

Hi List,

I am using Yocto 1.7.1 to build linux-mainline. I found defconfig will not
be used when using linux-yocto-custom.bb (maybe also happens on
linux-yocto).

I think below is the reason,

1. kernel_do_configure is run after do_kernel_configme.The last line of
do_kernel_configme is echo
"CONFIG_LOCALVERSION="\"${LINUX_VERSION_EXTENSION}\" >> ${B}/.config

2. Following are the code to use defconfig,

# Copy defconfig to .config if .config does not exist. This allows
# recipes to manage the .config themselves in do_configure_prepend().
if [ -f "${WORKDIR}/defconfig" ] && [ ! -f "${B}/.config" ]; then
cp "${WORKDIR}/defconfig" "${B}/.config"

The condition '[ ! -f "${B}/.config"]' will not be true, so
recepe-kernel/linux/linux-yocto-custom/defconfig will nerver be used.


To use defconfig is one of the method suggested in Kernel developer manual.

Thanks and Regards,
Chungyeh

--001a11346e3c0025e30510d6ed86
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"font-size:14px">Hi List,</div><div style=3D"=
font-size:14px"><br></div><div style=3D"font-size:14px">I am using Yocto 1.=
7.1 to build linux-mainline. I found defconfig will not be used when using=
=C2=A0<a href=3D"http://linux-yocto-custom.bb/" target=3D"_blank">linux-yoc=
to-custom.bb</a>=C2=A0(maybe also happens on linux-yocto).<br></div><div st=
yle=3D"font-size:14px"><br></div><div style=3D"font-size:14px">I think belo=
w is the reason,</div><div style=3D"font-size:14px"><br></div><div style=3D=
"font-size:14px">1. kernel_do_configure is run after do_kernel_configme.The=
 last line of do_kernel_configme is echo &quot;CONFIG_LOCALVERSION=3D&quot;=
\&quot;${LINUX_VERSION_EXTENSION}\&quot; &gt;&gt; ${B}/.config</div><div st=
yle=3D"font-size:14px"><br></div><div style=3D"font-size:14px">2. Following=
 are the code to use defconfig,</div><div style=3D"font-size:14px"><br></di=
v><div style=3D"font-size:14px"><div><span style=3D"white-space:pre-wrap">	=
</span># Copy defconfig to .config if .config does not exist. This allows</=
div><div><span style=3D"white-space:pre-wrap">	</span># recipes to manage t=
he .config themselves in do_configure_prepend().</div><div><span style=3D"w=
hite-space:pre-wrap">	</span>if [ -f &quot;${WORKDIR}/defconfig&quot; ] &am=
p;&amp; [ ! -f &quot;${B}/.config&quot; ]; then</div><div><span style=3D"wh=
ite-space:pre-wrap">		</span>cp &quot;${WORKDIR}/defconfig&quot; &quot;${B}=
/.config&quot;</div></div><div style=3D"font-size:14px"><br></div><div styl=
e=3D"font-size:14px">The condition &#39;[ ! -f &quot;${B}/.config&quot;]&#3=
9; will not be true, so recepe-kernel/linux/linux-yocto-custom/defconfig wi=
ll nerver be used.</div><div style=3D"font-size:14px"><br></div><div style=
=3D"font-size:14px"><br></div><div style=3D"font-size:14px">To use defconfi=
g is one of the method suggested in Kernel developer manual.</div><div styl=
e=3D"font-size:14px"><br></div><div style=3D"font-size:14px">Thanks and Reg=
ards,</div><div style=3D"font-size:14px">Chungyeh</div></div>

--001a11346e3c0025e30510d6ed86--
