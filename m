Return-Path: <dhanush.ks@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5753DE00D5D; Wed,  5 Jun 2019 01:38:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (dhanush.ks[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.174 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f174.google.com (mail-qt1-f174.google.com
	[209.85.160.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22344E00C7D
	for <yocto@yoctoproject.org>; Wed,  5 Jun 2019 01:38:17 -0700 (PDT)
Received: by mail-qt1-f174.google.com with SMTP id m29so11802411qtu.1
	for <yocto@yoctoproject.org>; Wed, 05 Jun 2019 01:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=FuCfh6F61IdeYdW5uuzWN92mV8fCxcXo6agH/kdQ6vg=;
	b=pxBbqbER9nSjM9ecnleSPJR/8GNGO+lmEZeU4Nz57MN1ClQnWmQnC2+T1rTQmZPHG0
	JaXo/Hfs7Qp8aPft42yuFdqRPmzhJOYPdpxbo6yz33FnfOHfB0gnRzloUrOjYlSW0cGr
	NDp53rsHFH+fqxqfid+q80xlJ86fFBYSiZk6a1f2TGvgzSxaW+koXn1gO28GfEAHqRRi
	0LUA7VSNTix6FXP8YuuY9T8garQeqNb9T/2dxo7EKqVv6Yj7Astp44JtFLeXIE3kOeZY
	gTelcXH0rTzs/CuPUUjYqo+lWEor162dDZgNgGXouxrHpnzdQZ6nURj9MS+oVo2MNHlk
	GW3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=FuCfh6F61IdeYdW5uuzWN92mV8fCxcXo6agH/kdQ6vg=;
	b=hH4IhyHuDxZ8iWpmMR+GHRqs7lSpuGWX1hSgxEomXXMJuhhRkWzDizrLGzC+v0AZxT
	4ThnvEGQx71nQW5lNSm0sXiyfnKAdRiz+wEq8ckNNZng0gFs/BWwVfU7uJ6wGHBaz9sO
	+Xf51vIiakGbigFk66Q+DBXZIaysp7OlKqQ3BbQ+w18EWZ8Ejch6h6U4mYoi8h2MZfKO
	TZJlNSptIRfmDWQ9tw6lEAAz+8h1bbWkS2iUj06dGJNycQzNRHXRbhLy19Y3HAwc6IDL
	B7NsgewCMCZu7UBHpNh9bmzZC9Q5GAmSTAui33QRzmxb6tIDH25iOrfju6eypG6ETxLF
	WwKg==
X-Gm-Message-State: APjAAAV32x/TIXWOZfDMbj9EZVe8CoVd77usoirXA7h6jxDtF+M+z5De
	UQfHH9KWR5ecb2JGgxL5sTvihhilri+OzVXugNSivwdt
X-Google-Smtp-Source: APXvYqy5gObI+F+rOqjo9TfU2O2FqPszGLzJ28HtBTSa2xdPT9/Zl5qyNLMw4i5iIjuiyPdHzTXRUwbqG5aUcveh734=
X-Received: by 2002:ac8:66d8:: with SMTP id m24mr33101676qtp.355.1559723896881;
	Wed, 05 Jun 2019 01:38:16 -0700 (PDT)
MIME-Version: 1.0
From: "Dhanush K.S" <dhanush.ks@gmail.com>
Date: Wed, 5 Jun 2019 10:38:10 +0200
Message-ID: <CAKPYHZ6AZWPxOahFhQVbKX=SDxh0WCA+f_XxzahY9cgso-hV9w@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: -vfp arm tuning missing in builds and WORKDIR
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
X-List-Received-Date: Wed, 05 Jun 2019 08:38:19 -0000
Content-Type: multipart/alternative; boundary="000000000000d24668058a8f84d7"

--000000000000d24668058a8f84d7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Currently the SDK that is being built, builds successfully but does not
contain the vfp arm tuning part included. Overriding the =E2=80=9CTARGET_FP=
U=E2=80=9D
variable in the local.conf and setting it to *=E2=80=9Cvfp-neon=E2=80=9D*, =
does reflect in
the Build Configuration section, but that still has no difference in the
SDK being built. The TARGET_FPU by default is been set to *=E2=80=9Chard=E2=
=80=9D. *This
was possible in the earlier versions on Yocto though. Setting the CFLAGS in
the machine configuration to -mfpu=3Dvfp-neon also has taken no effect.


Would it have something to do with GCC itself?



In other words, the SDK currently being built is =E2=80=9C
poky-glibc-x86_64-my-meta-toolchain-cortexa8hf-neon-toolchain-2.5.sh=E2=80=
=9D but
what is desired is =E2=80=9C
poky-glibc-x86_64-my-meta-toolchain-cortexa8hf-vfp-neon-toolchain-2.5.sh=E2=
=80=9D



Below is my Build Config,

Build Configuration:

BB_VERSION           =3D "1.37.0"

BUILD_SYS            =3D "x86_64-linux"

NATIVELSBSTRING      =3D "universal-4.8"

TARGET_SYS           =3D "arm-poky-linux-gnueabi"

MACHINE              =3D "arm-cortex-a8"

DISTRO               =3D "poky"

DISTRO_VERSION       =3D "2.5"

TUNE_FEATURES        =3D "arm armv7a vfp neon callconvention-hard cortexa8"

TARGET_FPU           =3D "hard"

meta-bsp-ti

meta

meta-poky

meta-yocto-bsp

meta-my-common

meta-oe              =3D "<unknown>:<unknown>"



Did something change in the Sumo version of Yocto and Is there any other
way of achieving this?

Any leads in achieving and helping better understand is appreciated.


Thanks!


Best Regards,
Danny

--000000000000d24668058a8f84d7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:georgia,=
serif"><p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11=
pt;font-family:Calibri,sans-serif"><span lang=3D"EN-US">Currently
the SDK that is being built, builds successfully but does not contain the v=
fp
arm tuning part included. Overriding the =E2=80=9CTARGET_FPU=E2=80=9D varia=
ble in the
local.conf and setting it to <i>=E2=80=9Cvfp-neon=E2=80=9D</i>,
does reflect in the Build Configuration section, but that still has no
difference in the SDK being built. The TARGET_FPU by default is been set to=
 <i>=E2=80=9Chard=E2=80=9D. </i>This was possible in the earlier
versions on Yocto though. Setting the CFLAGS in the machine configuration t=
o
-mfpu=3Dvfp-neon also has taken no effect. </span></p><p class=3D"MsoNormal=
" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:Calibri,sans-=
serif"><span lang=3D"EN-US"><br></span></p><p class=3D"MsoNormal" style=3D"=
margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:Calibri,sans-serif"><spa=
n lang=3D"EN-US">Would it have something to do with GCC itself?</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">In other
words, the SDK currently being built is =E2=80=9C<a href=3D"http://poky-gli=
bc-x86_64-my-meta-toolchain-cortexa8hf-neon-toolchain-2.5.sh">poky-glibc-x8=
6_64-my-meta-toolchain-cortexa8hf-neon-toolchain-2.5.sh</a>=E2=80=9D
but what is desired is =E2=80=9C<a href=3D"http://poky-glibc-x86_64-my-meta=
-toolchain-cortexa8hf-vfp-neon-toolchain-2.5.sh">poky-glibc-x86_64-my-meta-=
toolchain-cortexa8hf-vfp-neon-toolchain-2.5.sh</a>=E2=80=9D</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">Below is my
Build Config,</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">Build
Configuration:</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">BB_VERSION=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;1.37.0&quot;</span>=
</p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">BUILD_SYS=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;x86_64-linux&=
quot;</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">NATIVELSBSTRING=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 =3D &quot;universal-4.8&quot;</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">TARGET_SYS=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;arm-poky-linux-gnue=
abi&quot;</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">MACHINE=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;arm-=
cortex-a8&quot;</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">DISTRO=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quo=
t;poky&quot;</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">DISTRO_VERSION=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;2.5&quot;</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">TUNE_FEATURES=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;arm armv7a vfp neon
callconvention-hard cortexa8&quot;</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">TARGET_FPU=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D &quot;hard&quot;</span></=
p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">meta-bsp-ti=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">meta=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 </span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">meta-poky=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">meta-yocto-bsp=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 </span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">meta-my-common=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 </span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">meta-oe=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D
&quot;&lt;unknown&gt;:&lt;unknown&gt;&quot;</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span lang=3D"EN-US">Did
something change in the Sumo version of Yocto and Is there any other way of
achieving this?</span></p><p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.=
0001pt;font-size:11pt;font-family:Calibri,sans-serif">Any leads in achievin=
g and helping better understand is appreciated.</p><p class=3D"MsoNormal" s=
tyle=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:Calibri,sans-ser=
if"><br></p><p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-si=
ze:11pt;font-family:Calibri,sans-serif">Thanks!</p><p class=3D"MsoNormal" s=
tyle=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font-family:Calibri,sans-ser=
if"><span lang=3D"EN-US">=C2=A0</span></p></div><div><div dir=3D"ltr" class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><d=
iv dir=3D"ltr"><div dir=3D"ltr"><font face=3D"georgia, serif" color=3D"#666=
666">Best Regards,</font><div><font face=3D"georgia, serif" color=3D"#66666=
6">D<span class=3D"gmail_default" style=3D"font-family:georgia,serif">anny<=
/span></font></div></div></div></div></div></div></div>

--000000000000d24668058a8f84d7--
