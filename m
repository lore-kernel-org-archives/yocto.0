Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 797BDC02182
	for <webhook@archiver.kernel.org>; Tue, 21 Jan 2025 11:08:32 +0000 (UTC)
Received: from fllvem-ot03.ext.ti.com (fllvem-ot03.ext.ti.com [198.47.19.245])
 by mx.groups.io with SMTP id smtpd.web11.10057.1737438946479083584
 for <yocto@lists.yoctoproject.org>;
 Mon, 20 Jan 2025 21:55:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=UNylGf4m;
 spf=pass (domain: ti.com, ip: 198.47.19.245, mailfrom: c-shilwant@ti.com)
Received: from lelv0266.itg.ti.com ([10.180.67.225])
	by fllvem-ot03.ext.ti.com (8.15.2/8.15.2) with ESMTPS id 50L5tenS752508
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Mon, 20 Jan 2025 23:55:40 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
	s=ti-com-17Q1; t=1737438940;
	bh=dVwGXtYSAVxSsSg+e4Teipfi1CgXLvEsYoQYjsy/EEY=;
	h=From:To:CC:Subject:Date:References:In-Reply-To;
	b=UNylGf4mvLbTDltIckCXGkdQnRSpEUY/JVBVCmnjNr6iRynvaNtBEqT87+BKxU50Y
	 4ECHWvkH0kRqvVvIOy0lxzVM4UBU6wGmPqqr0Bc4E1wTNfkjVUIOfTzJhEBpeNqbew
	 y43u+/SSmfoBMpC63zDXskiIsk352tGJ3i0a6RZ0=
Received: from DLEE109.ent.ti.com (dlee109.ent.ti.com [157.170.170.41])
	by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTP id 50L5texv122401;
	Mon, 20 Jan 2025 23:55:40 -0600
Received: from DLEE113.ent.ti.com (157.170.170.24) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.2507.23; Mon, 20
 Jan 2025 23:55:40 -0600
Received: from DLEE113.ent.ti.com ([fe80::a10b:711a:6ba7:e455]) by
 DLEE113.ent.ti.com ([fe80::a10b:711a:6ba7:e455%17]) with mapi id
 15.01.2507.023; Mon, 20 Jan 2025 23:55:40 -0600
From: "Chirag Shilwant" <c-shilwant@ti.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
CC: "Khasim, Syed Mohammed" <khasim@ti.com>, "Davis, Andrew" <afd@ti.com>,
        "Singh, Vishnu" <v-singh1@ti.com>,
        "Qi.Chen@windriver.com"
	<Qi.Chen@windriver.com>,
        "hongxu.jia@windriver.com"
	<hongxu.jia@windriver.com>,
        "jiahongxujia@163.com" <jiahongxujia@163.com>
Subject: Re: [meta-tensorflow] Request for creating a scarthgap branch
Thread-Topic: [meta-tensorflow] Request for creating a scarthgap branch
Thread-Index: AQHba8eNsfP6FuhmEUGlpj2WEZkBhbMguhAO
Date: Tue, 21 Jan 2025 05:55:40 +0000
Message-ID: <f7e63aa3c45e452e83b6e3f95ab20faa@ti.com>
References: <99f187fb3f1e40cc80e43852257f17f2@ti.com>
In-Reply-To: <99f187fb3f1e40cc80e43852257f17f2@ti.com>
Accept-Language: en-IN, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.24.227.238]
x-c2processedorg: 333ef613-75bf-4e12-a4b1-8e3623f5dcea
MIME-Version: 1.0
Content-Language: en-IN
Content-Type: multipart/alternative;
	boundary="_000_f7e63aa3c45e452e83b6e3f95ab20faaticom_"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Jan 2025 11:08:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64599

--_000_f7e63aa3c45e452e83b6e3f95ab20faaticom_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

+ Yocto Community

________________________________
From: Shilwant, Chirag
Sent: 21 January 2025 11:21:37
To: yocto@yoctoproject.org; Qi.Chen@windriver.com; hongxu.jia@windriver.com=
; jiahongxujia@163.com
Cc: Khasim, Syed Mohammed; Davis, Andrew; Singh, Vishnu; Shilwant, Chirag
Subject: [meta-tensorflow] Request for creating a scarthgap branch


Hi meta-tensorflow maintainers,


I am reaching out to request the creation of a new branch in the meta-tenso=
rflow
repository to support yocto scarthgap.

Currently, the master branch claims to support both scarthgap and styhead [=
1] which
is no longer accurate. Recent changes related to UNPACKDIR [2], which are o=
nly applicable
to styhead, were made in the meta-tensorflow layer [3]. As a result, the ma=
ster branch is now
incompatible with scarthgap.

To ensure that scarthgap users can continue to use the meta-tensorflow laye=
r, I kindly request
that a new branch be created to support the same. This will allow us to mai=
ntain a separate code-base
for scarthgap, unaffected by the styhead specific changes.

Regards,
Chirag
---

[1]: https://git.yoctoproject.org/meta-tensorflow/tree/conf/layer.conf#n14

[2]: https://git.openembedded.org/openembedded-core/commit/?id=3De022d62ba9=
17790af2121da57646271ef17c03fa

[3]: https://git.yoctoproject.org/meta-tensorflow/commit/?id=3D2f82dc838343=
6b68a22e2ee93d697167fee15ab6

--_000_f7e63aa3c45e452e83b6e3f95ab20faaticom_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p>&#43; <span>Yocto Community</span><br>
</p>
</div>
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> Shilwant, Chirag<br>
<b>Sent:</b> 21 January 2025 11:21:37<br>
<b>To:</b> yocto@yoctoproject.org; Qi.Chen@windriver.com; hongxu.jia@windri=
ver.com; jiahongxujia@163.com<br>
<b>Cc:</b> Khasim, Syed Mohammed; Davis, Andrew; Singh, Vishnu; Shilwant, C=
hirag<br>
<b>Subject:</b> [meta-tensorflow] Request for creating a scarthgap branch</=
font>
<div>&nbsp;</div>
</div>
<div>
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size: 12pt; colo=
r: rgb(0, 0, 0); font-family: Calibri, Helvetica, sans-serif, &quot;EmojiFo=
nt&quot;, &quot;Apple Color Emoji&quot;, &quot;Segoe UI Emoji&quot;, NotoCo=
lorEmoji, &quot;Segoe UI Symbol&quot;, &quot;Android Emoji&quot;, EmojiSymb=
ols;">
<p>Hi meta-tensorflow maintainers,<br>
</p>
<p><br>
</p>
<p></p>
<div>I am reaching out to request the creation of a new branch in the meta-=
tensorflow<br>
repository to support yocto scarthgap.<br>
<br>
Currently, the master branch claims to support both scarthgap and styhead [=
1] which<br>
is no longer accurate. Recent changes related to UNPACKDIR [2], which are o=
nly applicable<br>
to styhead, were made in the meta-tensorflow layer [3]. As a result, the ma=
ster branch is now<br>
incompatible with scarthgap.<br>
<br>
To ensure that scarthgap users can continue to use the meta-tensorflow laye=
r, I kindly request<br>
that a new branch be created to support the same. This will allow us to mai=
ntain a separate code-base<br>
for scarthgap, unaffected by the styhead specific changes.<br>
</div>
<br>
Regards,<br>
Chirag<br>
---<br>
<br>
<div>[1]: <a href=3D"https://git.yoctoproject.org/meta-tensorflow/tree/conf=
/layer.conf#n14" class=3D"OWAAutoLink">
https://git.yoctoproject.org/meta-tensorflow/tree/conf/layer.conf#n14</a><b=
r>
<br>
[2]: <a href=3D"https://git.openembedded.org/openembedded-core/commit/?id=
=3De022d62ba917790af2121da57646271ef17c03fa" class=3D"OWAAutoLink">
https://git.openembedded.org/openembedded-core/commit/?id=3De022d62ba917790=
af2121da57646271ef17c03fa</a><br>
<br>
[3]: <a href=3D"https://git.yoctoproject.org/meta-tensorflow/commit/?id=3D2=
f82dc8383436b68a22e2ee93d697167fee15ab6" class=3D"OWAAutoLink" id=3D"LPlnk6=
05915">
https://git.yoctoproject.org/meta-tensorflow/commit/?id=3D2f82dc8383436b68a=
22e2ee93d697167fee15ab6</a><br>
</div>
<p></p>
</div>
</div>
</body>
</html>

--_000_f7e63aa3c45e452e83b6e3f95ab20faaticom_--

