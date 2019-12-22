Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.423.1577035333668533584
 for <yocto@lists.yoctoproject.org>;
 Sun, 22 Dec 2019 09:22:13 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sbcglobal.net header.s=s2048 header.b=Y+tH5KpB;
 spf=none, err=permanent DNS error (domain: sbcglobal.net, ip: 140.211.169.56, mailfrom: develone@sbcglobal.net)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F991E01301; Sun, 22 Dec 2019 09:22:13 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [74.6.128.86 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from sonic312-24.consmr.mail.bf2.yahoo.com (sonic312-24.consmr.mail.bf2.yahoo.com [74.6.128.86])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC5CAE00E1F
	for <yocto@yoctoproject.org>; Sun, 22 Dec 2019 09:22:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048; t=1577035331; bh=ltcGa3lxfXVS7nWEUqPOqx/FjC1PblVxQ/6+hcfO1qs=; h=Date:From:To:Cc:Subject:References:From:Subject; b=Y+tH5KpBXDQoVmzCCTv/HNcoT6/+Cl3mThzBIBAF4Opawq+l0xD11N9oXScyH9qKbL4ZtDmb4rA7b6sQSAzsYmXFR+wtIgPPT81X7sX4nB/B7pbt/eWJkhsf8N8jVByZT/Ks40PTAQM14Pvkm/rsow0K0wojvuhRWCc2VXPjjkk6dZyvuq7GspM14G6t73U8RLP7Dwzw4pnJqofKz4S2d3JZTWffLDbxHn17MG7M5+SNTASQx8NJ6zkZx/gSbspcle+EkMP30Ds4q7jgGPJL3ZhGeI801UbUDjInA1fuWxc8oqOH1S4EohIC24VtJPTeYlv6IjbZQ8C+uaPFz4jm7w==
X-YMail-OSG: Nd6TT1wVM1mJxU.T_kmzKW_m6zduQGdxiVKDM2rkb3Uvvt3lljQZFYOykUsDV6q
 l988Qr5TjKxKQL.Nu2SaPWQdKpnWN6ULhB.aFSja._C2867wEluv.LR56fFduSBmObixKx5JZGsI
 okBvjIHeLSE_IiAo8Mcx2of1JohEFPA7DDfU7Akd99lmTMkaK5DiwHbbZRDqY3DFpHSJ9sWNq1kT
 _VH.UrQZUI45xJ_tw66T7ETgKkNwloNfKjmEmjMkbHqPF5xzvh4mWF0G7q5wZIMZ955ydVplYIli
 C.Ju7GeeEO3PRZDLds1J2cyr9AlSr7hMrD9dURLXml0wuLWLGIVYq.ss4vyozRJHRPIpK4RecfRh
 Y_Enu5C_SlK3pS4232vwSEFX9neWH5.12O5BlPJrB5LwQugSUXBLZGTn7NxFw4UnVKmo2qmXkXPQ
 G.zUXiEHJhPUgPSISsvkJXESRMQRJhfpzcziiKjwvJZEjo5Pz3m8MShuusgEi65kp9m56SxQv3GL
 EJk22gGA34CJbpomsUcrZuhWC5vjhprdIyR18tW4YzN30W8eUz5k50BrXu5MLon_DlpGwuJpuMIw
 W4nT_vEJafM9LX3MMkYcGUQlewf8FTcoSSiAOECYIjzlsYOkctHGf9wz_0Sbk.84O92FGfqaQar0
 y.dbPVA3pzdFEN.jzH.neDnqPQg1BeLjTl8COdRwjeRqaxdwRbHcTvzVEXQkBUIbDFk7CSPKL4zT
 c5zX0ewKB4O4ge.m8zJNs4RTbN4HFS9OYBxYDxLvEPC_pEYl9NufsGO7YHVNbXR58hV6883zneJ9
 EGnidHU66gnNSJn53Mz4B0wfOdxEDqWRsScsYic8jBJS0jg3Ra7QRubdEOt1MzdFw2iCXMvQ3HnU
 nnkS3M4Gcb27xPU8.upu3QMM39HZfW03SDwsgUiRMq44kXNbljHnqqRSZxXKOPXj7AOMBLN7.tv3
 kvwZCWxiXR7.vFJJ4r0WFNcpe_D3zo.MhIBsxR2aZ2lXDUoXXWjCt6KmtclMpraoWv5463qPkfH2
 ckiVNiNQ_ZoSrYWnEBsyWRLPq_.XXKV4yO0dC.vPFiH57uFGBRPmOV5Xa7bL9EiDMo4ylk9HL5b1
 78j77Ihld_dWUVQZd20iu.sqeXoSJDmpPVQoEDQCD40ePjovQtJm.oNwcgCEI1EY0ZEzCIvXBegU
 tfCiZFB47baqIF29Ioi9IcC1fqAljGFnMpc2cgsUlq6PDD7UJUDBGWSy_fp43det7Npw4FUfBLth
 rvBgGfrdKDt87op2_FsclMOy6Bpy6VPxxrsOAT2_p67n.gTAdRUC.20fXGxs_bWvHkr7L.4yEzxm
 3UIEWcEp0vkC3YzyhO3MVtgH4hoSRgobhtbnDdhqWxdwP
Received: from sonic.gate.mail.ne1.yahoo.com by sonic312.consmr.mail.bf2.yahoo.com with HTTP; Sun, 22 Dec 2019 17:22:11 +0000
Date: Sun, 22 Dec 2019 17:21:49 +0000 (UTC)
From: "Ed Vidal" <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Message-ID: <509597146.1609359.1577035309915@mail.yahoo.com>
Subject: Re: Raspberry pi 4 recipe and layer issues.
MIME-Version: 1.0
References: <509597146.1609359.1577035309915.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.14873 YMailNorrin Mozilla/5.0 (X11; Linux armv7l) AppleWebKit/537.36 (KHTML, like Gecko) Raspbian Chromium/74.0.3729.157 Chrome/74.0.3729.157 Safari/537.36
Content-Type: multipart/alternative; 
	boundary="----=_Part_1609358_640647777.1577035309914"

------=_Part_1609358_640647777.1577035309914
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,Testing 1 of the 4 recipes in meta-yosys-tools nextpnr_0.1.bb.I tried te=
sting on target rpi4-64 to determine,=C2=A0EXTRA_OECMAKE =3D "-DARCH=3Dice4=
0 -DBUILD_GUI=3DOFF=C2=A0 ${S} "variable.=C2=A0 In yocto this uses the buil=
d directory.=C2=A0 On the target, "cmake -DARACH=3Dice40 -DBUILD_GUI=3DOFF =
."which is the nextpnr directory.=C2=A0 It appears that yocto uses ninja, w=
hile the target uses make.=C2=A0 I have copies of both=C2=A0CMakeError.log =
files for target & yocto at the links below.
https://github.com/develone/meta-yosys-tools/blob/master/doc-recipes/target=
/CMakeFiles/CMakeError.log
&=C2=A0https://github.com/develone/meta-yosys-tools/blob/master/doc-recipes=
/yocto/CMakeFiles/CMakeError.log

The target builds and installs while yocto fails=C2=A0do_configure step.
The recipe I am testing with the cmd "bitbake -DDD nextpnr" is=C2=A0
https://github.com/develone/meta-yosys-tools/blob/master/recipes-nextpnr/ne=
xtpnr/nextpnr_0.1.bb


This recipe nextpnr_0.1.bb is dependent on a 2nd recipe in meta-yosys-tools=
 layer icestorm_0.1.bb in the same layer.=C2=A0 This recipe creates the RPM=
s, but is failing in QA step.=C2=A0 I use the "rpm -i icestorm-0.1+git0+041=
c075e4a-r0.aarch64.rpm" to test on the target.
Let me know if I can provide any additional information.=C2=A0Thanks=C2=A0
Regards

Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613

------=_Part_1609358_640647777.1577035309914
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div class=3D"ydp4faba4a7yahoo-style-wrap" style=
=3D"font-family: Helvetica Neue, Helvetica, Arial, sans-serif; font-size: 1=
3px;"><div dir=3D"ltr" data-setdir=3D"false">Hi,</div><div dir=3D"ltr" data=
-setdir=3D"false">Testing 1 of the 4 recipes in meta-yosys-tools nextpnr_0.=
1.bb.</div><div dir=3D"ltr" data-setdir=3D"false">I tried testing on target=
 rpi4-64 to determine,&nbsp;<span>EXTRA_OECMAKE =3D "-DARCH=3Dice40 -DBUILD=
_GUI=3DOFF&nbsp; ${S} "</span></div><div dir=3D"ltr" data-setdir=3D"false">=
variable.&nbsp; In yocto this uses the build directory.&nbsp; On the target=
, "<span>cmake -DARACH=3Dice40 -DBUILD_GUI=3DOFF ."</span></div><div dir=3D=
"ltr" data-setdir=3D"false"><span>which is the nextpnr directory.&nbsp; It =
appears that yocto uses ninja, while the target uses make.&nbsp; I have cop=
ies of both&nbsp;</span></div><div dir=3D"ltr" data-setdir=3D"false"><span>=
CMakeError.log files for target &amp; yocto at the links below.</span></div=
><div dir=3D"ltr" data-setdir=3D"false"><span><br></span></div><div dir=3D"=
ltr" data-setdir=3D"false"><span><span><a href=3D"https://github.com/develo=
ne/meta-yosys-tools/blob/master/doc-recipes/target/CMakeFiles/CMakeError.lo=
g" rel=3D"nofollow" target=3D"_blank" class=3D"">https://github.com/develon=
e/meta-yosys-tools/blob/master/doc-recipes/target/CMakeFiles/CMakeError.log=
</a></span><div><br></div><div dir=3D"ltr" data-setdir=3D"false">&amp;&nbsp=
;<span><a href=3D"https://github.com/develone/meta-yosys-tools/blob/master/=
doc-recipes/yocto/CMakeFiles/CMakeError.log" rel=3D"nofollow" target=3D"_bl=
ank" class=3D"">https://github.com/develone/meta-yosys-tools/blob/master/do=
c-recipes/yocto/CMakeFiles/CMakeError.log</a></span><div><br></div><div><br=
></div><div dir=3D"ltr" data-setdir=3D"false">The target builds and install=
s while yocto fails&nbsp;<span>do_configure step.</span></div><div dir=3D"l=
tr" data-setdir=3D"false"><span><br></span></div><div dir=3D"ltr" data-setd=
ir=3D"false"><span>The recipe I am testing with the cmd "bitbake -DDD nextp=
nr" is&nbsp;</span></div><div dir=3D"ltr" data-setdir=3D"false"><span><br><=
/span></div><div dir=3D"ltr" data-setdir=3D"false"><a href=3D"https://githu=
b.com/develone/meta-yosys-tools/blob/master/recipes-nextpnr/nextpnr/nextpnr=
_0.1.bb" rel=3D"nofollow" target=3D"_blank" class=3D"">https://github.com/d=
evelone/meta-yosys-tools/blob/master/recipes-nextpnr/nextpnr/nextpnr_0.1.bb=
</a><span><br></span></div><div><br></div><div><br></div><div dir=3D"ltr" d=
ata-setdir=3D"false">This recipe nextpnr_0.1.bb is dependent on a 2nd recip=
e in meta-yosys-tools layer icestorm_0.1.bb in the same layer.&nbsp; This r=
ecipe creates the RPMs, but is failing in QA step.&nbsp; I use the "<span>r=
pm -i icestorm-0.1+git0+041c075e4a-r0.aarch64.rpm" to test on the target.</=
span></div></div><div><br></div>Let me know if I can provide any additional=
 information.&nbsp;</span></div><div dir=3D"ltr" data-setdir=3D"false"><spa=
n>Thanks&nbsp;</span></div><div dir=3D"ltr" data-setdir=3D"false"><span><br=
></span></div><div dir=3D"ltr" data-setdir=3D"false">Regards</div><div dir=
=3D"ltr" data-setdir=3D"false"><br></div><div dir=3D"ltr" data-setdir=3D"fa=
lse"><span><br></span></div><div class=3D"ydp4faba4a7signature">Edward Vida=
l Jr. e-mail develone@sbcglobal.net 915-595-1613</div></div></body></html>

------=_Part_1609358_640647777.1577035309914--
