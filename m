Return-Path: <Vignesh.Rajendran@in.bosch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65BBEE00D82; Thu, 19 Sep 2019 23:22:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_MED,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [139.15.180.216 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 558 seconds by postgrey-1.32 at yocto-www;
	Thu, 19 Sep 2019 23:22:03 PDT
Received: from de-deferred1.bosch-org.com (de-deferred1.bosch-org.com
	[139.15.180.216])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C270EE00D54
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2019 23:22:03 -0700 (PDT)
Received: from de-out1.bosch-org.com (unknown [139.15.180.215])
	by si0vms0224.rbdmz01.com (Postfix) with ESMTPS id 46ZNg03z4mz5H9
	for <yocto@yoctoproject.org>; Fri, 20 Sep 2019 08:12:44 +0200 (CEST)
Received: from si0vm1948.rbesz01.com (unknown [139.15.230.188])
	by fe0vms0187.rbdmz01.com (Postfix) with ESMTPS id 46ZNfz0CS9z1XLDR4
	for <yocto@yoctoproject.org>; Fri, 20 Sep 2019 08:12:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=in.bosch.com;
	s=key1-intmail; t=1568959963;
	bh=YGxKmqefPlJUq5vwY58xdp05tR9k7LUxWxVe/xiqc28=; l=10;
	h=From:Subject:From:Reply-To:Sender;
	b=KynPmty47CPt9USvVPMI9ZaaL0I1oFJGwROJPPDs4E1VdZvHAO7Op/x4d7jf7mHNw
	OpLFgcr4BsbdeA7R1tzN1PxlHpUtkN8IqAi+7zamOfpVqSXAv39x2BNaqU93GcGvy8
	7D0fSsg8PpIMkQEsP3Tz4oWi8DA4r6/YA9YIAZnQ=
Received: from fe0vm7918.rbesz01.com (unknown [10.58.172.176])
	by si0vm1948.rbesz01.com (Postfix) with ESMTPS id 46ZNfy6z4sz1VS
	for <yocto@yoctoproject.org>; Fri, 20 Sep 2019 08:12:42 +0200 (CEST)
X-AuditID: 0a3aad10-021ff700000005df-99-5d846dda2e19
Received: from si0vm1949.rbesz01.com ( [10.58.173.29])
	(using TLS with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by fe0vm7918.rbesz01.com (SMG Outbound) with SMTP id
	79.29.01503.ADD648D5; Fri, 20 Sep 2019 08:12:42 +0200 (CEST)
Received: from FE-MBX2026.de.bosch.com (fe-mbx2026.de.bosch.com [10.3.231.36])
	by si0vm1949.rbesz01.com (Postfix) with ESMTPS id 46ZNfy4FKvz6Cjw3G
	for <yocto@yoctoproject.org>; Fri, 20 Sep 2019 08:12:42 +0200 (CEST)
Received: from SGPMBX2020.APAC.bosch.com (10.187.83.43) by
	FE-MBX2026.de.bosch.com (10.3.231.36) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.1.1713.5; Fri, 20 Sep 2019 08:12:41 +0200
Received: from SGPMBX2020.APAC.bosch.com (10.187.83.43) by
	SGPMBX2020.APAC.bosch.com (10.187.83.43) with Microsoft SMTP Server
	(version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.1.1713.5; Fri, 20 Sep 2019 14:12:38 +0800
Received: from SGPMBX2020.APAC.bosch.com ([fe80::b526:b737:7eb9:3a96]) by
	SGPMBX2020.APAC.bosch.com ([fe80::b526:b737:7eb9:3a96%6]) with mapi id
	15.01.1713.009; Fri, 20 Sep 2019 14:12:38 +0800
From: "Vignesh Rajendran (RBEI/ECF3)" <Vignesh.Rajendran@in.bosch.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Auto-remove empty package from rootfs
Thread-Index: AdVvd2Nsory9TtEtRrOg3UbMWzb+3w==
Date: Fri, 20 Sep 2019 06:12:38 +0000
Message-ID: <95510d56aa07485880b99348ab9a9f89@in.bosch.com>
Accept-Language: en-US, en-SG
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.187.56.206]
MIME-Version: 1.0
X-Brightmail-Tracker: H4sIAAAAAAAAA21Te0xTdxTmd+9tvTTc7XqhclbHMq/oEocdDMnYmB17ZD424x7/qFuDxV7a
	sj7YvcUoiUlhiFjEKHFOu1FY1wqCIwbGAmEu2MmihQ2fizymRh6RytQhgiPKdssttn/sn5Pv
	fOec7zx+95I4c5xUkSarneOtOjMrVxCK175PWtlvKdWmTnakZFaNnZBno7V7zu6Xf4C2KF7X
	c2bTdo5/SbNVYWwYCGAFdct2fFE8gjlQyxIniiWBXgWumcMyJ1KQDH0Eg+6KakJyBhBU/uUN
	R+4huN3VF47cRzD+uCvsnEFwt6SRCInJ6Xeh8VAJFsIJdAbc+nVSHsI4vQUa2+7IQjieVsPF
	KZ9cykmH+kArLmE1fHXy+hwm6GXw26XAnA5FZ4Fn/6M5fUQngaevipA0E6F/uAaTlqDB+1Mv
	LmEljA3NyiS8BNy+o7iUnwvnb+4lJM2FcO7oMHEAKV1RUq6oNFdUmsSnQG3HhFzCL8Kxb2/j
	87incwiL5mvRggakzONSt1teeTUtU83nckJRapp6m83SjKQXo9tQeyDPjzAS+VEGibFK6h1N
	qZZ5Ktem32nUCcYcvtDMCayKak3K1DLxT2ihMNdiEgSTzepHQOJsAvVNRomWofS6nUUcb5PK
	/GgxSbCJlIHc+ClDG3R27jOOK+D4+WgWSbJA0Wax4UKeM3A78kxm+3yYTaJQTEwMsyg6Et0W
	I2P9KJ2ME3snhiQooUBnEUyGcPkzUjkzz0ZKA+gT8sBYtQcnT3e5Rft3g1e003O2pdrnwRnC
	arNyqkTqWr6oS4cUjIXWJ5OpnqVm8WIto4wKRNSDqA+RiI2n4kNDxYm/SGQmoNbc2youGyYj
	RS/7xBq6iQD3/SsIfrkqfvPlN0/LoKnsogx+vHx1AdyabI6DB4d7EyBYMw1w7VjNYuivrXgO
	HtZWPy8mTywFt6ssGR75upOh3jGaDPvGZpfD7gfHU6Dt0KVUaLnTlQH+0aEscHt734D2u7PZ
	MOVvfgsGfh9ZD4Pn/9gI+yqdm+HISG9OyM2By1+f3Qb/njqjhx+CPXpo++dUflA8OCYeXLOp
	OHRwu87+PwcPs5HtVA5U/uWbBqe1vOf9YUfdjbez13Y+5kGe/p3DPViw6UP6RvDKXmdeXf3o
	Bb7oIwfVUfznOs3Eqs6R91pzrr+g9/4ciNkwM9r+MO6CfPXB1R+vmdrtajhZlb1nPLhLU1Va
	xi6fXFnZVPF5/vjmc7ZFJwYPbiiJdT7tWefYFTtT020tmlavMLGEYNSlrcB5QfcfG/JnVLwE
	AAA=
Cc: "Jeevarathinam Kaliyaperumal \(RBEI/ECF3\)"
	<Kaliyaperumal.Jeevarathinam@in.bosch.com>
Subject: Auto-remove empty package from rootfs
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
X-List-Received-Date: Fri, 20 Sep 2019 06:22:05 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_95510d56aa07485880b99348ab9a9f89inboschcom_"

--_000_95510d56aa07485880b99348ab9a9f89inboschcom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello All,

I have a feeling that the empty packages are really not useful inside rootf=
s/sysroot either dependency with other packages, isn't it?

Is there already a way in Yocto to remove/avoid empty packages from rootfs?

PACKAGE_EXCLUDE would do that, but looking for a better option which can au=
tomatically exclude the empty packages without harming package dependency.

Appreciate your answer.

Best regards,

Rajendran Vignesh
RBEI/ECF3

Tel. +91 422 676-5103 | Threema Work<threemawork://add/?id=3D+914226765103>=
: +914226765103


--_000_95510d56aa07485880b99348ab9a9f89inboschcom_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Arial",sans-serif;
	color:windowtext;
	font-weight:normal;
	font-style:normal;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Hello All,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">I have a feeling that the empty packages are really n=
ot useful inside rootfs/sysroot either dependency with other packages, isn&=
#8217;t it?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Is there already a way in Yocto to remove/avoid empty=
 packages from rootfs?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">PACKAGE_EXCLUDE would do that, but looking for a bett=
er option which can automatically exclude the empty packages without harmin=
g package dependency.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif">Appreciate your answer.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.0pt;font-family:&quot;Ar=
ial&quot;,sans-serif;color:black">Best regards,
<br>
<br>
<b>Rajendran Vignesh<br>
RBEI/ECF3<br>
</b><br>
Tel. &#43;91 422 676-5103 | <a href=3D"threemawork://add/?id=3D&#43;9142267=
65103"><span style=3D"color:blue">Threema Work</span></a>: &#43;91422676510=
3
</span><span style=3D"font-size:8.0pt;font-family:&quot;Arial&quot;,sans-se=
rif;color:black"><br>
<br>
</span><o:p></o:p></p>
</div>
</body>
</html>

--_000_95510d56aa07485880b99348ab9a9f89inboschcom_--
