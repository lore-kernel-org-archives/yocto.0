Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B03E5E00707; Sat,  8 Aug 2015 11:32:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.138.91.144 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm14-vm3.bullet.mail.ne1.yahoo.com
	(nm14-vm3.bullet.mail.ne1.yahoo.com [98.138.91.144])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 501E0E00343
	for <yocto@yoctoproject.org>; Sat,  8 Aug 2015 11:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1439058723; bh=K/E6RFQq+YuIdlgBEEqFzAkQV8fA19lcky5k4TXg8D8=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=hNwswiL1fcysq3zxSxLaAjeNs5X7eWdprorUq7mYdZb6Kbf07wyJc8HVZxMEnt7+TFbV8DwA7uc5GBPu90n769Qe223yhKAVG5dnYUlh2OiosBfxPe+xdu2VUWmd8HzyHFD0GNt5Oxx9v6aic+bW7V4v+0XLibpgIB8XQhzajJ/spLVlTMUsNiNZFgauqlFvkEOod6aB/uoYCxWBlg+ueG0/Kh+Ilq/JyVTJ5F/3Vd6p+zrfJRY7EgXej1AaWBsqx0Q3ZXrumOsonVnwc32f2AFIQSEfc13xseEDtv1ccgEmKdwwQ6dpEBsXieGx5kw85XvKylvEFbUQ75GDxqhtIw==
Received: from [98.138.100.112] by nm14.bullet.mail.ne1.yahoo.com with NNFMP;
	08 Aug 2015 18:32:03 -0000
Received: from [98.138.89.160] by tm103.bullet.mail.ne1.yahoo.com with NNFMP;
	08 Aug 2015 18:32:03 -0000
Received: from [127.0.0.1] by omp1016.mail.ne1.yahoo.com with NNFMP;
	08 Aug 2015 18:32:03 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 519093.85123.bm@omp1016.mail.ne1.yahoo.com
X-YMail-OSG: YHmRLIwVM1mxojd4VkczrA2TiUbBBZmcznd6802CKCUz5Qqj0a97h1xT3qohTy8
	QX4lN0fZoyKGdY70HCW.biHj1vAT.kyH6DK3x2XyJj.sdddam9tO9yvvBKRlVzK_UF0FV1vkdQSK
	5dQzxtfS3GT2baIMmQzHFw8KpA6zSrup3RR3MUt1UMQ1C0jLcHPOJxLfia5G2Gy540rnQtUGNVCa
	CQIJBqlB4UH9dDy2V8RxpSg..XzvHjnTuEO3SIKz.g_zKrqc7WQIlecBcRNR7eoILpYIQLHgkW0W
	83McNF_UcYYToe2u8IJcYWKSlSKaDhmro_ODW6mMKWIp_1Iv2NMUyxohnOoIORq1EIL3mY35770A
	DYZtE3ZmuVpTynEzVarLyPUAoHrSHRehgmaHXeNxEAJdBsk4uh2qMFTiIabFu1Mq2AzEKaHv854d
	5ktVzGsKCr.em1KIyr3W0.z2eUTMOe0sVm1Ic6KMjlhPaXPD3SHObsxauPNgharP43JMmerKPSu1
	gjRfnW9TNmvmsIg2122kQkNcoZ.qtPSR5yljSV8seUAMqhYfizYGZdwY9cDj_lOw-
Received: by 98.138.105.247; Sat, 08 Aug 2015 18:32:03 +0000 
Date: Sat, 8 Aug 2015 18:28:52 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1882196486.1351102.1439058532899.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: python-matplotlib core-image-sato.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 08 Aug 2015 18:32:07 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_1351101_1391213773.1439058532895"

------=_Part_1351101_1391213773.1439058532895
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello All,I added meta-python from meta-openembedded to my poky tree.python=
-matplotlib was fetched and installed on my core-image-sato.Build Configura=
tion:
BB_VERSION=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "1.27.1"
BUILD_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "x86_64-linux=
"
NATIVELSBSTRING=C2=A0=C2=A0 =3D "Ubuntu-12.04"
TARGET_SYS=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "arm-poky-linux-gn=
ueabi"
MACHINE=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "ra=
spberrypi2"
DISTRO=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =
=3D "poky"
DISTRO_VERSION=C2=A0=C2=A0=C2=A0 =3D "1.8+snapshot-20150808"
TUNE_FEATURES=C2=A0=C2=A0=C2=A0=C2=A0 =3D "arm armv7a vfp thumb neon callco=
nvention-hard vfpv4 cortexa7"
TARGET_FPU=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "vfp-vfpv4-neon"
meta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=20
meta-yocto=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=20
meta-yocto-bsp=C2=A0=C2=A0=C2=A0 =3D "fido:0f8d89ce66cfffccc9911d6c61470a58=
5173b79d"
meta-raspberrypi=C2=A0 =3D "fido:7457bf182c8fd550ec877ecd786a3edd16e65495"
meta-oe=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=20
meta-python=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =3D "fido:0f8d89ce66cfffccc=
9911d6c61470a585173b79d"

NOTE: Preparing RunQueue
NOTE: Executing SetScene Tasks
NOTE: Executing RunQueue Tasks
NOTE: Tasks Summary: Attempted 6470 tasks of which 6432 didn't need to be r=
erun and all succeeded.
After booting I added some examples that I had from raspbian build git@gith=
ub.com:develone/raspberrypi2_yocto.git=C2=A0 When I execute I do not get an=
y errors but no plot appears.=C2=A0=C2=A0 Has anyone been able to get pytho=
n-matplotlib working?Thanks in advance.=C2=A0Edward Vidal Jr.
e-mail develone@sbcglobal.net
915-595-1613

------=_Part_1351101_1391213773.1439058532895
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div id=3D"yui_3_16_0_1_1439042989042_47297"><span>Hello All,=
</span></div><div dir=3D"ltr" id=3D"yui_3_16_0_1_1439042989042_47570"><span=
>I added meta-python from meta-openembedded to my poky tree.</span></div><d=
iv dir=3D"ltr"><span>python-matplotlib was fetched and installed on my core=
-image-sato.</span></div><div id=3D"yui_3_16_0_1_1439042989042_48008" dir=
=3D"ltr"><span>Build Configuration:<br class=3D"">BB_VERSION&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "1.27.1"<br class=3D"">BUILD_SYS&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "x86_64-linux"<br class=3D"">NATI=
VELSBSTRING&nbsp;&nbsp; =3D "Ubuntu-12.04"<br class=3D"">TARGET_SYS&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "arm-poky-linux-gnueabi"<br class=3D=
"">MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D =
"raspberrypi2"<br class=3D"">DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; =3D "poky"<br class=3D"">DISTRO_VERSION&nbsp;&nb=
sp;&nbsp; =3D "1.8+snapshot-20150808"<br class=3D"">TUNE_FEATURES&nbsp;&nbs=
p;&nbsp;&nbsp; =3D "arm armv7a vfp thumb neon callconvention-hard vfpv4 cor=
texa7"<br class=3D"">TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
=3D "vfp-vfpv4-neon"<br class=3D"">meta&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br class=3D"">meta-yocto&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br class=3D"">meta-yocto-bsp&nbsp;&nbs=
p;&nbsp; =3D "fido:0f8d89ce66cfffccc9911d6c61470a585173b79d"<br class=3D"">=
meta-raspberrypi&nbsp; =3D "fido:7457bf182c8fd550ec877ecd786a3edd16e65495"<=
br class=3D"">meta-oe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp; <br class=3D"">meta-python&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =3D "=
fido:0f8d89ce66cfffccc9911d6c61470a585173b79d"<br class=3D""><br class=3D""=
>NOTE: Preparing RunQueue<br class=3D"">NOTE: Executing SetScene Tasks<br c=
lass=3D"">NOTE: Executing RunQueue Tasks<br class=3D"">NOTE: Tasks Summary:=
 Attempted 6470 tasks of which 6432 didn't need to be rerun and all succeed=
ed.</span></div><div dir=3D"ltr"><br><span></span></div><div id=3D"yui_3_16=
_0_1_1439042989042_48409" dir=3D"ltr"><span>After booting I added some exam=
ples that I had from raspbian build git@github.com:develone/raspberrypi2_yo=
cto.git&nbsp; When I execute I do not get any errors but no plot appears.&n=
bsp;&nbsp; Has anyone been able to get python-matplotlib working?</span></d=
iv><div dir=3D"ltr"><span>Thanks in advance.</span></div><div dir=3D"ltr"><=
span></span></div><div>&nbsp;</div><div><div>Edward Vidal Jr.<br>e-mail dev=
elone@sbcglobal.net<br>915-595-1613</div></div></div></body></html>

------=_Part_1351101_1391213773.1439058532895--
