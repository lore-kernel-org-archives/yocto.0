Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ea0-f173.google.com (mail-ea0-f173.google.com
	[209.85.215.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CF51E0144E
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 09:34:19 -0700 (PDT)
Received: by mail-ea0-f173.google.com with SMTP id g10so3068486eak.4
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 09:34:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=6eXSNOmJJkKxd5h3oIw+UgIOoSNPhhx3JiPT4YNBWY0=;
	b=XBvmuXn8EnCf5ZdMYXirgSt2wMgKRrTe10em6uW/Icq0hFgNt62T1JOgaHOf00P+So
	N8WBYEypx5kzQqWyiqgPDXuGgrJLgbl50joe99lm7TjeTSLgAwQL3xST6nSuWdbgDIPJ
	bF7C4HfNhhB+1HNKYKU6xYue41eOXRct95tUo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=6eXSNOmJJkKxd5h3oIw+UgIOoSNPhhx3JiPT4YNBWY0=;
	b=AShPUiaeLrdaYS8+NfaCI7U2CZ1cnmHBWPK5Ef7y6D9fpaxPtAzUh2OXWkJb870bGr
	SmXPqmhaX5pV/xwu9DjqIM9B8kr0FwfrFRSH/SKNPR0ZgITsAk6hFsScpfWwIgcgvmZk
	ym/WF5wKItWOcrW/EuGLppAsNeglO1cBZUdXb4OTIW0dsYk1MS90sSswnXBHnffA4Hnt
	droOpLxQDsi6LvfEgdHXZG7cbhLNQtDvs0xYMImBqleujMIazAsyEDg5E/4uTtUea8BH
	HLMlJPexbZt4rRaimSSLfVowvHybwcsPMjmv8Up9W6+wB1JMBi2m3LE6/tlLpq08sQgu
	Usyw==
X-Gm-Message-State: ALoCoQnv7Oon4K4P23dJIlSQresa9RWqtbD8OKS+Z8Nzmur+Glc6XEk5L/VSz5ecJEXQZZZK/ePq
MIME-Version: 1.0
X-Received: by 10.15.73.134 with SMTP id h6mr3466009eey.76.1377707658253; Wed,
	28 Aug 2013 09:34:18 -0700 (PDT)
Received: by 10.223.3.66 with HTTP; Wed, 28 Aug 2013 09:34:18 -0700 (PDT)
Date: Wed, 28 Aug 2013 09:34:18 -0700
Message-ID: <CA+gsK-ogYkoRW0RFgGveiB6oHM-FKhF_KLg7L5JEM-k7r0omUA@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: [meta-freescale] [meta-fsl-ppc] MPC8572 Machine with Dylan
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
X-List-Received-Date: Wed, 28 Aug 2013 16:34:20 -0000
Content-Type: multipart/alternative; boundary=001a11c29acc93514e04e5048f79

--001a11c29acc93514e04e5048f79
Content-Type: text/plain; charset=ISO-8859-1

I am looking to build for MPC8572 with Dylan and checked out the
meta-fsl-ppc BSP layer. Seems like support for that machine was removed in
May [1]. The reason given was " *u-boot code base can not support mpc85xx
for sdk 1.3.2". Howerver, that was contested in a follow-up e-mail.
Interestingly, the QorIQ-SDK-V1.3.2-20130325-yocto does contain
meta-fsl-ppc with support for that machine.

I grepped through the git log but could not even find the commit that
removed it.

Could someone please comment on the status? Is the BSP layer contained in
QorIQ-SDK-V1.3.2-20130325-yocto compatible with Dylan?


Thanks,
Rudi


[1]
https://lists.yoctoproject.org/pipermail/meta-freescale/2013-May/002679.html

--001a11c29acc93514e04e5048f79
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><font face=3D"garamond, serif"><span style=3D"border-=
collapse:collapse;color:rgb(102,102,102);font-family:arial,sans-serif;font-=
size:13px">I am looking to build for MPC8572 with Dylan and checked out the=
 meta-fsl-ppc BSP layer. Seems like support for that machine was removed in=
 May [1]. The reason given was &quot;</span></font><span style=3D"color:rgb=
(0,0,0);white-space:pre-wrap"> *u-boot code base can not support mpc85xx fo=
r sdk 1.3.2&quot;. Howerver, that was contested in a follow-up e-mail. Inte=
restingly, the </span><font color=3D"#000000"><span style=3D"white-space:pr=
e-wrap">QorIQ-SDK-V1.3.2-20130325-yocto does contain meta-fsl-ppc with supp=
ort for that machine.</span></font></div>
<div><font face=3D"garamond, serif"><span style=3D"border-collapse:collapse=
;color:rgb(102,102,102);font-family:arial,sans-serif;font-size:13px"><br></=
span></font></div><div><font face=3D"garamond, serif"><span style=3D"border=
-collapse:collapse;color:rgb(102,102,102);font-family:arial,sans-serif;font=
-size:13px">I grepped through the git log but could not even find the commi=
t that removed it.</span></font></div>
<div><font face=3D"garamond, serif"><span style=3D"border-collapse:collapse=
;color:rgb(102,102,102);font-family:arial,sans-serif;font-size:13px"><br></=
span></font></div><div><font color=3D"#666666" face=3D"arial, sans-serif">C=
ould someone please comment on the status? Is the BSP layer contained in Qo=
rIQ-SDK-V1.3.2-20130325-yocto compatible with Dylan?</font></div>
<div><font color=3D"#666666" face=3D"arial, sans-serif"><br></font></div><d=
iv><font color=3D"#666666" face=3D"arial, sans-serif"><br></font></div><div=
><font color=3D"#666666" face=3D"arial, sans-serif">Thanks,</font></div><di=
v><font color=3D"#666666" face=3D"arial, sans-serif">Rudi</font></div>
<div><font face=3D"garamond, serif"><span style=3D"border-collapse:collapse=
;color:rgb(102,102,102);font-family:arial,sans-serif;font-size:13px"><br></=
span></font></div><div><font face=3D"garamond, serif"><span style=3D"border=
-collapse:collapse;color:rgb(102,102,102);font-family:arial,sans-serif;font=
-size:13px"><br>
</span></font></div><div><font face=3D"garamond, serif"><span style=3D"bord=
er-collapse:collapse;color:rgb(102,102,102);font-family:arial,sans-serif;fo=
nt-size:13px">[1]=A0</span></font><a href=3D"https://lists.yoctoproject.org=
/pipermail/meta-freescale/2013-May/002679.html">https://lists.yoctoproject.=
org/pipermail/meta-freescale/2013-May/002679.html</a></div>

</div>

--001a11c29acc93514e04e5048f79--
