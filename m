Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.3243.1576189207060685790
 for <yocto@lists.yoctoproject.org>;
 Thu, 12 Dec 2019 14:20:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sbcglobal.net header.s=s2048 header.b=OlPrYtiQ;
 spf=none, err=permanent DNS error (domain: sbcglobal.net, ip: 140.211.169.56, mailfrom: develone@sbcglobal.net)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AEB9E01227; Thu, 12 Dec 2019 14:20:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,MANY_SPAN_IN_TEXT,RCVD_IN_DNSWL_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [74.6.129.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  1.0 MANY_SPAN_IN_TEXT Many <SPAN> tags embedded within text
Received: from sonic301-6.consmr.mail.bf2.yahoo.com (sonic301-6.consmr.mail.bf2.yahoo.com [74.6.129.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF9FCE010FC
	for <yocto@yoctoproject.org>; Thu, 12 Dec 2019 14:20:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048; t=1576189203; bh=5t/wuelkxaJiULjUD0Ggs7oG7qRLBbHeUNMhZm2BZwM=; h=Date:From:To:Subject:References:From:Subject; b=OlPrYtiQVNj4CrZfB71OubOLkcCp0XxFdfuHyFV16GomuajHctVg6nkTQP6qSXimzd1EWQHq3cOXB3Wjnpru9/ZqkT80CWSl436wT8dS8b8tA+Qw5pBm07St7mNK26BZ3Q1z+XZCIO2HxDsAZ0FohBsK+bU8h1ppRPWHzah+fEOErxCaEshGTHemdHLrjHyDX6vI8LR7w2gkNFyzivntYSIwRgS8gHvZDv++lWgDPcl6KEyCYAZuKrmO9HH1Vlz70xJvGuSkFE+AhfCY32gtw1S8oNZARnaIRMdsT/REJHVsOPij9P8GCUdansPiFvg4Iz14s7ezlv2hF4Ac/muFng==
X-YMail-OSG: J_lylNAVM1nZVDHRPJqaAVHfqD0Iu2GqQVszddt9rc0OmQkp6NsuMGUDZ_qnFZj
 ckRhJlXDhTVTaL5pqKqahL4JAHW6w3XSbAPNLDtzeRLjbDhCw8pkqW0N558z00lUcY1W3Ezpd2va
 r0YC7rMQYPc8k1qXSn.fupoHAqMOLcpr90wqftP5.vAxxOAFnJWoS9oXn.JU5pt.t60e3HXJkEcK
 Unxcs_vNzBYarFTQfMPQeRKxP36Txbu6FaW4n9eg2txLdD.4lXUN5t3erDr6lWuimeTPNEYDTymE
 OECud2oTHopEirS4xLZSkErGRdWdhVMkwid0E8FvjMeyZ_r8B6roIvWkgW4eAW7BZEJX7yXZDFzL
 RyFkobUD_EgrjIkkXs5Ndr4LNxEDiTCZyAu4znB1U7v2d1At.XKaPXbrDatLwi4AQTb.jOiii2E4
 U8YztAABKye77HOeX4C.r9P4rSIAexQxvNIchexfnFzXStIW5ha_JGB2EgvKGlsDwGEYGCsX2YkK
 uZS26Ymwo4PFlhJM4b8mR3DNFUZ_qWKBWm5rH1A3QGPVyNeSeRvfax5d2Lnn7nuc84tbTWYgSlYN
 G1EXivj4Dzu7UwfY4.m8YJMyITO2PxDZ7i0hugubUFnQqsN_dWHyvC6qkeaGlNZA_XFX.S6dgKnl
 7zXSXaRlQdCXkADsaYZltKkadacVYPynC7OmYRIQzAOFTaPYvyNF0ZTMa3HxtZpMDkiE9nJ_88gm
 2ywjVT7.eztdOPpcv8Qj0gW9XH38XRYWfouKyPvNvGQ71hB2VEJq_tKAWtgeuoV1e06rR5.Cygp4
 54ESBcsL549yGT.yO7d76ttp.TitmJdj7VuG9xX5.LqyEnYcgrUhgGODr6bnpZNggeY1gJ7LD40G
 jq0HNkTcMxC7OjQz6Dh8_6lWZ.ckYlwVqdPjRZiGliF0TLQ76228WnusWrnv8FMi.yZUp.vtct.E
 AReFhyzOrCEzEXCrxCo5okF4QAKtxzRSu47ww.yEYzu3fct1bTnT4R9NKnLI5RQLZtemHqzU0fm3
 I6EqtlM6hU2yst_XAvIUJQyZL6TBbiJZigDZ4wK84hPPwFuDHGjMubFLPVVJlMrVJlRdkAUaDjo_
 ozKjikyiOQlaoRxWifcu24W.Q355McymNTJltKDerYyI6BM7QFEJhUHWzepWfuLLovmOlONRCe7P
 HJ6._Zh467O6iVo.9VXuyaLBlnZDQPyqPnDtNK2JXn2FBSuqcUA9YSV0N.o4MxtHrDTsn6AklUDC
 47UkT7Q_mMJAcQ03Z5NHeOvNjSRDaUEdcNRLwpc0o.7gK_V2NK85y8GKgFAySeuvv43viPyu7229
 KG2QE3DIW7Wc5Y8dT1kNIzw--
Received: from sonic.gate.mail.ne1.yahoo.com by sonic301.consmr.mail.bf2.yahoo.com with HTTP; Thu, 12 Dec 2019 22:20:03 +0000
Date: Thu, 12 Dec 2019 22:20:03 +0000 (UTC)
From: "Ed Vidal" <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1425959048.4595077.1576189203518@mail.yahoo.com>
Subject: Raspberry pi 4 recipe and layer issues.
MIME-Version: 1.0
References: <1425959048.4595077.1576189203518.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14728 YMailNorrin Mozilla/5.0 (X11; Linux armv7l) AppleWebKit/537.36 (KHTML, like Gecko) Raspbian Chromium/74.0.3729.157 Chrome/74.0.3729.157 Safari/537.36
Content-Type: multipart/alternative; 
	boundary="----=_Part_4595076_1659908856.1576189203516"

------=_Part_4595076_1659908856.1576189203516
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi AllAny and all help is appreciated.=C2=A0 Thanks in advance.
I want to install 6 software packages needed for FPGA Development.These are=
 icestorm, arachne-pnr, yosys, nextpnr, verilator, and zipcpu.I have create=
d 4 of the recipes (icestorm_0.1.bb, arachne-pnr_0.1.bb, yosys_0.1.bb, and =
nextpnr_0.1.bb)using the recipetool & bitbake-layers, and I added these to =
a meta-yosys-tools layer.
https://github.com/develone/meta-yosys-tools.git
I can now execute "bitbake icestorm" which is a python and C++ Makefile pro=
ject.The first time the recipe goes thru the python build and gets an error=
 existing the shell.If I rerun "bitbake icestorm" I get=C2=A0
| iceprog.c:27:10: fatal error: ftdi.h: No such file or directory|=C2=A0 =
=C2=A0 27 | #include <ftdi.h>|=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 ^~~~~~~~Which is the 2nd C++ program in the Makfile.On th=
e rpi4-64 all that is needed are the following steps to build icestorm git =
clone https://github.com/cliffordwolf/icestorm.git cd icestorm=C2=A0 make r=
eal 33m4.774s user 32m39.073s sys 0m19.247s I first tried using the cross c=
ompiler with little sucess.=C2=A0 This is why I trying to generate=C2=A0the=
 recipes to build using bitbake instead. These are the location of the head=
er files, needed to be added to the cross compiler sdkwhich I installed for=
 rpi4 using the following commands. "bitbake meta-toolchain" "bitbake core-=
image-sato -c populate_sdk_ext" "./poky-glibc-x86_64-meta-toolchain-aarch64=
-raspberrypi4-64-toolchain-3.0.1.sh"
=C2=A0=C2=A0/usr/include/libftdi1/ftdi.h/usr/include/pcap/usb.h
As root make install which install to /usr/local/bin & /usr/local/share.Cre=
ates /usr/local/bin & /usr/local/sharels /usr/local/bin/icebox.py icebox_di=
ff icebox_maps=C2=A0 icebram=C2=A0 =C2=A0iceprogicebox_asc2hlc icebox_expla=
in icebox_stat=C2=A0 icemulti=C2=A0 icetimeicebox_chipdb icebox_hlc2asc ice=
box_vlog=C2=A0 icepack=C2=A0 =C2=A0iceunpackicebox_colbuf icebox_html icebo=
xdb.py=C2=A0 icepll
ls /usr/local/share/icebox/chipdb-1k.txt chipdb-lm4k.txt=C2=A0 =C2=A0timing=
s_lp1k.txt=C2=A0 =C2=A0timings_up5k.txtchipdb-384.txt chipdb-u4k.txt =C2=A0=
 timings_lp384.txtchipdb-5k.txt timings_hx1k.txt=C2=A0 timings_lp8k.txtchip=
db-8k.txt timings_hx8k.txt=C2=A0 timings_u4k.txt
When I executed "bitbake nextpnr", I noticed the boost was built first.=C2=
=A0 Since then=C2=A0I have added boost to rpi4-core-image-sato which added =
quite a bit to the image2420113408 without boost and 2839543808 with boost.
Let me know if I can provide additional information.
Best Regards

Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613

------=_Part_4595076_1659908856.1576189203516
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydpf9b4c7a5yahoo-style-wrap" style=
=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 1=
3px;"><div><div dir=3D"ltr" data-setdir=3D"false"><div><div>Hi All</div><di=
v>Any and all help is appreciated.&nbsp; Thanks in advance.</div><div><br><=
/div><div>I want to install 6 software packages needed for FPGA Development=
.</div><div>These are icestorm, arachne-pnr, yosys, nextpnr, verilator, and=
 zipcpu.</div><div>I have created 4 of the recipes (icestorm_0.1.bb, arachn=
e-pnr_0.1.bb, yosys_0.1.bb, and nextpnr_0.1.bb)</div><div>using the recipet=
ool &amp; bitbake-layers, and I added these to a meta-yosys-tools layer.</d=
iv><div><br></div><div>https://github.com/develone/meta-yosys-tools.git</di=
v><div><br></div><div>I can now execute "bitbake icestorm" which is a pytho=
n and C++ Makefile project.</div><div>The first time the recipe goes thru t=
he python build and gets an error existing the shell.</div><div>If I rerun =
"bitbake icestorm" I get&nbsp;</div><div><br></div><div>| iceprog.c:27:10: =
fatal error: ftdi.h: No such file or directory</div><div>|&nbsp; &nbsp; 27 =
| #include &lt;ftdi.h&gt;</div><div>|&nbsp; &nbsp; &nbsp; &nbsp;|&nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; ^~~~~~~~</div><div>Which is the 2nd C++ program in=
 the Makfile.</div><div>On the rpi4-64 all that is needed are the following=
 steps to build icestorm</div><div><span style=3D"white-space: pre-wrap;">=
=09</span>git clone https://github.com/cliffordwolf/icestorm.git</div><div>=
<span style=3D"white-space: pre-wrap;">=09</span>cd icestorm&nbsp;</div><di=
v><span style=3D"white-space: pre-wrap;">=09</span>make</div><div><span sty=
le=3D"white-space: pre-wrap;">=09</span>real<span style=3D"white-space: pre=
-wrap;">=09</span>33m4.774s</div><div><span style=3D"white-space: pre-wrap;=
">=09</span>user<span style=3D"white-space: pre-wrap;">=09</span>32m39.073s=
</div><div><span style=3D"white-space: pre-wrap;">=09</span>sys<span style=
=3D"white-space: pre-wrap;">=09</span>0m19.247s</div><div><span style=3D"wh=
ite-space: pre-wrap;">=09</span></div><div>I first tried using the cross co=
mpiler with little sucess.&nbsp; This is why I trying to generate&nbsp;</di=
v><div>the recipes to build using bitbake instead.</div><div><span style=3D=
"white-space: pre-wrap;">=09</span></div><div>These are the location of the=
 header files, needed to be added to the cross compiler sdk</div><div>which=
 I installed for rpi4 using the following commands.</div><div><span style=
=3D"white-space: pre-wrap;">=09</span>"bitbake meta-toolchain"</div><div><s=
pan style=3D"white-space: pre-wrap;">=09</span>"bitbake core-image-sato -c =
populate_sdk_ext"</div><div><span style=3D"white-space: pre-wrap;">=09</spa=
n>"./poky-glibc-x86_64-meta-toolchain-aarch64-raspberrypi4-64-toolchain-3.0=
.1.sh"</div><div><br></div><div>&nbsp;&nbsp;</div><div>/usr/include/libftdi=
1/ftdi.h</div><div>/usr/include/pcap/usb.h</div><div><br></div><div>As root=
 make install which install to /usr/local/bin &amp; /usr/local/share.</div>=
<div>Creates /usr/local/bin &amp; /usr/local/share</div><div>ls /usr/local/=
bin/</div><div>icebox.py<span style=3D"white-space: pre-wrap;">=09</span>ic=
ebox_diff<span style=3D"white-space: pre-wrap;">=09</span>icebox_maps&nbsp;=
 icebram&nbsp; &nbsp;iceprog</div><div>icebox_asc2hlc<span style=3D"white-s=
pace: pre-wrap;">=09</span>icebox_explain<span style=3D"white-space: pre-wr=
ap;">=09</span>icebox_stat&nbsp; icemulti&nbsp; icetime</div><div>icebox_ch=
ipdb<span style=3D"white-space: pre-wrap;">=09</span>icebox_hlc2asc<span st=
yle=3D"white-space: pre-wrap;">=09</span>icebox_vlog&nbsp; icepack&nbsp; &n=
bsp;iceunpack</div><div>icebox_colbuf<span style=3D"white-space: pre-wrap;"=
>=09</span>icebox_html<span style=3D"white-space: pre-wrap;">=09</span>iceb=
oxdb.py&nbsp; icepll</div><div><br></div><div>ls /usr/local/share/icebox/</=
div><div>chipdb-1k.txt<span style=3D"white-space: pre-wrap;">=09</span>chip=
db-lm4k.txt&nbsp; &nbsp;timings_lp1k.txt&nbsp; &nbsp;timings_up5k.txt</div>=
<div>chipdb-384.txt<span style=3D"white-space: pre-wrap;">=09</span>chipdb-=
u4k.txt<span style=3D"white-space: pre-wrap;">=09</span>&nbsp; timings_lp38=
4.txt</div><div>chipdb-5k.txt<span style=3D"white-space: pre-wrap;">=09</sp=
an>timings_hx1k.txt&nbsp; timings_lp8k.txt</div><div>chipdb-8k.txt<span sty=
le=3D"white-space: pre-wrap;">=09</span>timings_hx8k.txt&nbsp; timings_u4k.=
txt</div><div><br></div><div>When I executed "bitbake nextpnr", I noticed t=
he boost was built first.&nbsp; Since then&nbsp;</div><div>I have added boo=
st to rpi4-core-image-sato which added quite a bit to the image</div><div>2=
420113408 without boost and 2839543808 with boost.</div><div><br></div><div=
>Let me know if I can provide additional information.</div><div><br></div><=
div>Best Regards</div></div><br></div><div><br></div><div class=3D"ydpf9b4c=
7a5signature">Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613</=
div></div></div></body></html>

------=_Part_4595076_1659908856.1576189203516--
