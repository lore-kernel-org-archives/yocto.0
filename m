Return-Path: <akash12bhardwaj@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96E9FE010AE; Thu,  5 Jul 2018 16:34:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akash12bhardwaj[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.51 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f51.google.com (mail-oi0-f51.google.com
	[209.85.218.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7514DE00BAA
	for <yocto@yoctoproject.org>; Thu,  5 Jul 2018 16:34:57 -0700 (PDT)
Received: by mail-oi0-f51.google.com with SMTP id i12-v6so20116115oik.2
	for <yocto@yoctoproject.org>; Thu, 05 Jul 2018 16:34:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=bW/Bc2fr5/N7omqRUEgJsN01OfzuuMTfSQZXKmXruj0=;
	b=C9KP4wXGrx/XYDJthwMtrqy2P3SIHErrzvRtdA8UdNvDu4+u4r3EZBSzX1DYhshkt0
	vRnmy2laJWIVtZlsp+ENUZvs25eYVfyorNLEcPFh2KTFWRAEMxOBLu90ozPxYsA7M0Tu
	jETHFKtY/oCCAfbwxqjEr6wxkxaudpk89cP4rXwPXtq298b6WJdHjDykD1eHJiA82yGr
	G6BmA0nEUs3IeFdrkhgcy3aha/l04NRN21qI2e2up/3cLDQo7eR6oVs7x7IoW3ZOumPD
	yaIZ4IuFKTDRhFaxHq4HcB6MUWE0Bvtl098dB3d9L8S1PTsYNlufDm7XmgvrSXqUB7dy
	z+BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=bW/Bc2fr5/N7omqRUEgJsN01OfzuuMTfSQZXKmXruj0=;
	b=T2ptWNT5WkgGEx0FzqScBpy6BjCT2Itku+0YpYx8zurw4mTLNZvciFcIxP/cO4jf+x
	PGz7OeXU/NWTOmOcPJszyzFxkgbj4dgenRYU6SDd2A+yZm/mkumOyczhGYnfI4ny80Jv
	IiGJIQkDNJTob2aGnXfwbvkVdwwF4wo9CiepEksB1ATcwhsN2+2LewB686XgagQI+U/Z
	f/zQf3FOUxXSvPnWZmzfxhzrqyvDKOPuakKS4oV3CUNh7XXL2qcrlMlLlUleUHaoqXcq
	yrA7X110Pfayy5Fw+VtTDvDO+vDrbduODklf9j/JYZ6TNus/yNfToGedvwbUZjJ1RAnu
	d8pg==
X-Gm-Message-State: APt69E0NVNHKsXIXQFztZNYzQ00ACsjLgUhip4fsu57ak50WTGiAmBR4
	mq9hlPHs5PuxjfGcvxjY3uwE0XrkNOJuVpNh0UQ+2w==
X-Google-Smtp-Source: AAOMgpeACjK3nIHeoNbFe3kC9TjtIzEc91iDH5Ig7GqsOWAGc2PFxmD2ViylVTC+y8LtBbC02qEikDjuPSFhFeJ7yVQ=
X-Received: by 2002:aca:d48c:: with SMTP id
	l134-v6mr9738278oig.15.1530833696659; 
	Thu, 05 Jul 2018 16:34:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:ed6:0:0:0:0:0 with HTTP;
	Thu, 5 Jul 2018 16:34:56 -0700 (PDT)
From: AKASH BHARDWAJ <akash12bhardwaj@gmail.com>
Date: Fri, 6 Jul 2018 05:04:56 +0530
Message-ID: <CALYZMnmacdoPmPD9Lf4sMSk6xqtyyxqiF7TpH9h-LDCA9xdhBA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Problem on building sdk on Docker container
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
X-List-Received-Date: Thu, 05 Jul 2018 23:34:58 -0000
Content-Type: multipart/alternative; boundary="000000000000b31de5057048fed4"

--000000000000b31de5057048fed4
Content-Type: text/plain; charset="UTF-8"

Actually I was facing the following issue while building my Yocto SDK on
Docker container

[04:25] <ak4721269> Removing intermediate container 4f3743321874  --->
674e007553da Step 4/5 : RUN chmod +x /tmp/$META_TOOLCHAIN  ---> Running in
ababb0649ea1 Removing intermediate container ababb0649ea1  --->
5f558946851e Step 5/5 : RUN /tmp/$META_TOOLCHAIN  ---> Running in
929c7ea6af59 Poky (Yocto Project Reference Distro) SDK installer version
2.4.3 ================================================================= You
are about to install the SDK to "/home/akash/rpil/rpi-build/tmp"
  Extracting SDK.............done Setting it up...ls: cannot access
'/home/akash/rpil/rpi-build/tmp/environment-setup-cortexa7hf-neon-vfpv4-poky-linux-gnueabi':
No such file or directory SDK relocate failed, could not get executalbe
files The command '/bin/sh -c /tmp/$META_TOOLCHAIN' returned a non-zero
code: 1

I was facing this issue even if when
environment-setup-cortexa7hf-neon-vfpv4-poky-linux-gnueabi  is present in
my tmp directory.
My sysroots directory is empty .I am assuming that ,that may be the reason
for SDK.I have tried including the target directory in my toolchain(
poky-glibc-x86_64-meta-toolchain-cortexa7hf-neon-vfpv4-toolchain-2.4.3.sh)
to /home/akash/rpil/rpi-build/tmp but it is still not working out.

--000000000000b31de5057048fed4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail-linestyle1 gmail-colourline"><span>Act=
ually I was facing the following issue while building my Yocto SDK on Docke=
r container </span></div><div class=3D"gmail-linestyle2 gmail-colourline"><=
span class=3D"gmail-timestamp"><br></span></div><div class=3D"gmail-linesty=
le2 gmail-colourline"><span class=3D"gmail-timestamp">[04:25] </span><span>=
&lt;</span><span class=3D"gmail-Xu"><span class=3D"gmail-hyperlink-whois">a=
k4721269</span></span><span>&gt; Removing intermediate container 4f37433218=
74<span>=C2=A0=C2=A0</span>---&gt; 674e007553da Step 4/5 : RUN chmod +x /tm=
p/$META_TOOLCHAIN<span>=C2=A0=C2=A0</span>---&gt; Running in ababb0649ea1 R=
emoving intermediate container ababb0649ea1<span>=C2=A0=C2=A0</span>---&gt;=
 5f558946851e Step 5/5 : RUN /tmp/$META_TOOLCHAIN<span>=C2=A0=C2=A0</span>-=
--&gt;
 Running in 929c7ea6af59 Poky (Yocto Project Reference Distro) SDK=20
installer version 2.4.3=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D You=20
are about to install the SDK to &quot;/home/akash/rpil/rpi-build/tmp&quot;<=
/span></div><div class=3D"gmail-linestyle1 gmail-colourline"><span class=3D=
"gmail-timestamp"></span><span></span><span class=3D"gmail-Xu"><span class=
=3D"gmail-hyperlink-whois"></span></span><span><span>=C2=A0 </span>Extracti=
ng
 SDK.............done Setting it up...ls: cannot access=20
&#39;/home/akash/rpil/rpi-build/tmp/environment-setup-cortexa7hf-neon-vfpv4=
-poky-linux-gnueabi&#39;:
 No such file or directory SDK relocate failed, could not get executalbe
 files The command &#39;/bin/sh -c /tmp/$META_TOOLCHAIN&#39; returned a non=
-zero
 code: 1</span></div><div class=3D"gmail-linestyle2 gmail-colourline"><span=
 class=3D"gmail-timestamp"></span><span class=3D"gmail-Xc4"></span><span><s=
pan class=3D"gmail-hyperlink-whois"></span><br></span></div><div class=3D"g=
mail-linestyle2 gmail-colourline"><span class=3D"gmail-timestamp"></span><s=
pan></span><span class=3D"gmail-Xu"><span class=3D"gmail-hyperlink-whois"><=
/span></span><span> I was facing this issue even if when environment-setup-=
cortexa7hf-neon-vfpv4-poky-linux-gnueabi=C2=A0 is present in my tmp directo=
ry.</span></div><div class=3D"gmail-linestyle2 gmail-colourline"><span>My s=
ysroots directory is empty .I am assuming that ,that may be the reason for =
SDK.I have tried including the target directory in my toolchain(<a href=3D"=
http://poky-glibc-x86_64-meta-toolchain-cortexa7hf-neon-vfpv4-toolchain-2.4=
.3.sh">poky-glibc-x86_64-meta-toolchain-cortexa7hf-neon-vfpv4-toolchain-2.4=
.3.sh</a>) to /home/akash/rpil/rpi-build/tmp but it is still not working ou=
t.<br></span></div></div>

--000000000000b31de5057048fed4--
