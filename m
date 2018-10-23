Return-Path: <dhanush.ks@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10298E00BC6; Tue, 23 Oct 2018 02:59:14 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com
	[209.85.221.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43F39E00BBF
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2018 02:59:13 -0700 (PDT)
Received: by mail-wr1-f52.google.com with SMTP id g9-v6so974337wrq.4
	for <yocto@yoctoproject.org>; Tue, 23 Oct 2018 02:59:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=6qNV1JAHEDSTauimt01hTdBEQkvln27NJTYQG0YkLSI=;
	b=QFF5IEAiN2EAfTSsi95lIE19UOxxSlNj/0rzmeidvLCxo+PDwHU2Gdi1pOZbFZHFCG
	Awyvhu9Ws1HJ9Kb6EuFZQ+h2xwX5pSmO/WhXcZYGmBZfEqCK5verqcUmH5KPo1GxZmKa
	rQn+k8mv+as5Lt9AIaA40e1pK76q7Bdm2j2TMO7WRYbRLfLv6pc3evhtGP7v2suUy31E
	XBz/8rVgfFX0+A/UCOj4NMiESK2PBJAQnSFb8vUV+x9yWCFGqoA0BapAF1xzlxgS0tXB
	Q2AjOnzKFwbzmjcnU+7kK58iDrQmZrFLLtHmb5Z2VoCG5eTX6KA5d1e/xtD5xGsMFapA
	X5yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=6qNV1JAHEDSTauimt01hTdBEQkvln27NJTYQG0YkLSI=;
	b=gAumk2zACObHeZQYZRvybNBBoyHnSrfMmaJMnED9kwOt6o1jr2wuBaHjWd/diUiN99
	J3nyLD4RJwwHRzgh3VOcESu8VVlIHZNNlq1DhDfOVxxGNjvxmRAIlf37NiYDghmqQ+bP
	aAtDQghIXHfDmQdeoguTm0jAUmM3TYRzoSTTWxGZPcFxZxODf5d8qgPiEm5R7bJxaxLD
	tlsZ1dlDzWdd8XThpB+ELzSCF3zzNQslX5vzIG4GNd6xqmFBfAImrkDX/i/CrBs7RDPV
	+HYPRM2M12ir9T2+eGES1zvBsEBbiLYOAE9f0cXsxd9n8/umyxOdfp9ZStKBHKY7+gT7
	w3ZA==
X-Gm-Message-State: ABuFfohTOH0obhcPHoNUtyVTB5ZwzkMENI5rT+yNzxxWNk40FmaCR0cZ
	TxPub2yb6ZvardzBFGUoV+drpxYgBmDhxajN5wGtePktvD0=
X-Google-Smtp-Source: ACcGV63cZaJ69Ku0MNfp93o09PAW8S52MoVrz+1xHLXyM/IuvLsAOHbE639UDJdL9ooZBG6VcHgDeeV3aZv5ihvMqqU=
X-Received: by 2002:adf:8065:: with SMTP id
	92-v6mr48618519wrk.23.1540288751718; 
	Tue, 23 Oct 2018 02:59:11 -0700 (PDT)
MIME-Version: 1.0
From: "Dhanush K.S" <dhanush.ks@gmail.com>
Date: Tue, 23 Oct 2018 11:58:59 +0200
Message-ID: <CAKPYHZ5SaK_jM+5bseW4LnqF5mSLi8-9N-e_0y+70fEQm6UQWw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Busybox_1.23.2 fails at do_compile on Poky-Sumo
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
X-List-Received-Date: Tue, 23 Oct 2018 09:59:14 -0000
Content-Type: multipart/alternative; boundary="000000000000e5d5840578e26b15"

--000000000000e5d5840578e26b15
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Yocto,

I'm currently building an image with the busybox_1.23.2.bb recipe included,
using Yocto Sumo 2.5 with the Bitbake version 1.37.0. It is running on a
CentOS host building images for the target ARM cortexa8. This busybox
recipe is placed in another custom layer. Though this recipe compiles
without errors in Poky-Fido, in Poky-Sumo I get compilation errors due to
missing header files. Please take a look at the link below for the
log.do_compile output.

https://pastebin.com/yYXJnC2e

Both limits.h and byteswap.h don't exist in Poky-Fido as well, but compiles
without problems, unlike on Sumo. Does this have to do with the wrong
Toolchains used or due to glibc (FYI: glibc_2.27 is been used)? If it has
to do with the Toolchains, which one should I be using and how do I go
about it? Could someone please point me in the right direction?

Here is the Build Config:

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
meta-networking
meta-python          =3D "master:45ee3c0e98bd3ed81419aaeae1e7324e486161a2"
meta-userbsp-ti
meta
meta-poky
meta-yocto-bsp
meta-user-common      =3D "<unknown>:<unknown>"
meta-oe              =3D "master:45ee3c0e98bd3ed81419aaeae1e7324e486161a2"
workspace            =3D "<unknown>:<unknown>"

Thanks in advance!
Regards,
Mit freundlichen Gr=C3=BC=C3=9Fen / Best Regards,
Dhanush

--000000000000e5d5840578e26b15
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div class=3D"gmail_default"><div class=
=3D"gmail_default" style=3D"font-family:georgia,serif">Hello Yocto,</div><d=
iv class=3D"gmail_default" style=3D"font-family:georgia,serif"><br></div><d=
iv class=3D"gmail_default" style=3D"font-family:georgia,serif">I&#39;m curr=
ently building an image with the=C2=A0<a href=3D"http://busybox_1.23.2.bb/"=
 target=3D"_blank">busybox_1.23.2.bb</a>=C2=A0recipe included, using Yocto =
Sumo 2.5 with the Bitbake version 1.37.0. It is running on a CentOS host bu=
ilding images for the target ARM cortexa8. This busybox recipe is placed in=
 another custom layer. Though this recipe compiles without errors in Poky-F=
ido, in Poky-Sumo I get compilation errors due to missing header files. Ple=
ase take a look at the link below for the log.do_compile output.</div><div =
class=3D"gmail_default" style=3D"font-family:georgia,serif"><br></div><div =
class=3D"gmail_default"><font face=3D"georgia, serif"><a href=3D"https://pa=
stebin.com/yYXJnC2e">https://pastebin.com/yYXJnC2e</a></font><br></div><div=
 class=3D"gmail_default"><font face=3D"georgia, serif"><br></font></div><di=
v class=3D"gmail_default" style=3D"font-family:georgia,serif"><div class=3D=
"gmail_default">Both limits.h and byteswap.h don&#39;t exist in Poky-Fido a=
s well, but compiles without problems, unlike on Sumo. Does this have to do=
 with the wrong Toolchains used or due to glibc (FYI: glibc_2.27 is been us=
ed)? If it has to do with the Toolchains, which one should I be using and h=
ow do I go about it? Could someone please point me in the right direction?=
=C2=A0</div><br class=3D"gmail-Apple-interchange-newline"></div><div class=
=3D"gmail_default" style=3D"font-family:georgia,serif">Here is the Build Co=
nfig:</div><div class=3D"gmail_default" style=3D"font-family:georgia,serif"=
><br></div><div class=3D"gmail_default" style=3D"font-family:georgia,serif"=
><div class=3D"gmail_default">Build Configuration:</div><div class=3D"gmail=
_default">BB_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;1.37=
.0&quot;</div><div class=3D"gmail_default">BUILD_SYS=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =3D &quot;x86_64-linux&quot;</div><div class=3D"gmail_=
default">NATIVELSBSTRING=C2=A0 =C2=A0 =C2=A0 =3D &quot;universal-4.8&quot;<=
/div><div class=3D"gmail_default">TARGET_SYS=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0=3D &quot;arm-poky-linux-gnueabi&quot;</div><div class=3D"gmail_d=
efault">MACHINE=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;a=
rm-cortex-a8&quot;</div><div class=3D"gmail_default">DISTRO=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;poky&quot;</div><div cla=
ss=3D"gmail_default">DISTRO_VERSION=C2=A0 =C2=A0 =C2=A0 =C2=A0=3D &quot;2.5=
&quot;</div><div class=3D"gmail_default">TUNE_FEATURES=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =3D &quot;arm armv7a vfp neon callconvention-hard cortexa8&quot;</di=
v><div class=3D"gmail_default">TARGET_FPU=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 =C2=A0=3D &quot;hard&quot;</div><div class=3D"gmail_default">meta-networki=
ng=C2=A0 =C2=A0 =C2=A0=C2=A0</div><div class=3D"gmail_default">meta-python=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;master:45ee3c0e98bd3ed81419aae=
ae1e7324e486161a2&quot;</div><div class=3D"gmail_default">meta-userbsp-ti=
=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0</div><div class=3D"gmail_default">meta=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0</div><div class=
=3D"gmail_default">meta-poky=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0=
</div><div class=3D"gmail_default">meta-yocto-bsp=C2=A0 =C2=A0 =C2=A0 =C2=
=A0</div><div class=3D"gmail_default">meta-user-common=C2=A0 =C2=A0 =C2=A0 =
=3D &quot;&lt;unknown&gt;:&lt;unknown&gt;&quot;</div><div class=3D"gmail_de=
fault">meta-oe=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;ma=
ster:45ee3c0e98bd3ed81419aaeae1e7324e486161a2&quot;</div><div class=3D"gmai=
l_default">workspace=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;&lt=
;unknown&gt;:&lt;unknown&gt;&quot;</div></div><div class=3D"gmail_default" =
style=3D"font-family:georgia,serif"><br></div><div class=3D"gmail_default" =
style=3D"font-family:georgia,serif">Thanks in advance!</div><div class=3D"g=
mail_default" style=3D"font-family:georgia,serif">Regards,</div></div><div>=
<div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div dir=3D"ltr=
"><div dir=3D"ltr"><font face=3D"georgia, serif" color=3D"#666666">Mit=C2=
=A0freundlichen=C2=A0Gr=C3=BC=C3=9Fen / Best Regards,</font><div><font face=
=3D"georgia, serif" color=3D"#666666">Dhanush<br></font></div></div></div><=
/div></div></div></div></div>

--000000000000e5d5840578e26b15--
