Return-Path: <alexander.duda@vector.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD815C433F5
	for <webhook@archiver.kernel.org>; Wed, 18 May 2022 11:50:46 +0000 (UTC)
Received: from de-smtp-delivery-103.mimecast.com
 (de-smtp-delivery-103.mimecast.com [194.104.109.103])
 by mx.groups.io with SMTP id smtpd.web09.3986.1652874639504727120
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 May 2022 04:50:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@vector.com header.s=mimecast20200527 header.b=XmPKP94J;
 spf=pass (domain: vector.com, ip: 194.104.109.103,
 mailfrom: alexander.duda@vector.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vector.com;
	s=mimecast20200527; t=1652874636;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type;
	bh=TeYhRe5jzRKkr79+a30wp59LHoDrwxss/rX0OeFyFm4=;
	b=XmPKP94JSlqos2ftTalun0lKMykgMIJr/CHo9DgIBKBuWOJpRau3Bfxpo8yiBf7+V5ws4/
	PaBg5Cz8/YjZ2jNHH4rXkOYvLsTVpxepPErGPK42cQhTICW19D75OIoVaRwkrpujBepH/4
	880rsJP5U/NL7qoXK44Qq8rZuCsXMp8=
Received: from EUR04-HE1-obe.outbound.protection.outlook.com
 (mail-he1eur04lp2052.outbound.protection.outlook.com [104.47.13.52]) by
 relay.mimecast.com with ESMTP with STARTTLS (version=TLSv1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 de-mta-11-FKd_78TLMI-A111G1-v8gw-1; Wed, 18 May 2022 13:50:35 +0200
Received: from AM0PR01MB4370.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:6b::21) by DB8PR01MB5546.eurprd01.prod.exchangelabs.com
 (2603:10a6:10:10b::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5273.14; Wed, 18 May
 2022 11:50:33 +0000
Received: from AM0PR01MB4370.eurprd01.prod.exchangelabs.com
 ([fe80::b823:ec88:c856:a6ca]) by AM0PR01MB4370.eurprd01.prod.exchangelabs.com
 ([fe80::b823:ec88:c856:a6ca%5]) with mapi id 15.20.5250.018; Wed, 18 May 2022
 11:50:33 +0000
From: "Duda, Alexander" <Alexander.Duda@vector.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: ERROR: cp: cannot stat 'Module.symvers': No such file or directory
Thread-Topic: ERROR: cp: cannot stat 'Module.symvers': No such file or
 directory
Thread-Index: AdhqrT7pyjlUBcS3RGu69vaHY6uXXA==
Date: Wed, 18 May 2022 11:50:28 +0000
Deferred-Delivery: Wed, 18 May 2022 11:50:05 +0000
Message-ID: 
 <AM0PR01MB4370CFEECE972B01700BC592FAD19@AM0PR01MB4370.eurprd01.prod.exchangelabs.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 92abbdc6-0ee7-42bb-3a79-08da38c49dae
x-ms-traffictypediagnostic: DB8PR01MB5546:EE_
x-microsoft-antispam-prvs: 
 <DB8PR01MB5546DFC0A2D6FC57E6C72DEAFAD19@DB8PR01MB5546.eurprd01.prod.exchangelabs.com>
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0
x-microsoft-antispam-message-info: 
 TI4wyesDFWzGRPtZ2Z6cohSb0LollPXKoWI43K1x71Lxx5/eoOTOtMRFBll2Yt+VENZTfmqfPL/wnHP3V9cvGKIwuXhfx4Aw1ZFteMNTZXxj7jCynxB0KK6ZQr3c/PeRDAP4GI8U/ejphqSQKXyDBP6M98iaccxdhjKd9YZinGWFOenkutOqqjxEGkb/u/ts94I/m8bsVhKgcK0LWRsxKX9Wqzdn4sZamo7Z4CG7dmaDHnOiAUUZ6FtLPIzyfnfhAznDhRHpdCPHhoUgRC3xJwJE5/jtOiWvC7XCGbkwsLRq97G0HCKZ2qbgKyO/RajqO+6mPcWGqmdGJwApSi+313d9R5xEavJuqEVoKAG1uwymKEDpfsI+eklM64ONUaiwOKx3eKCLdAy0e86kul0e6RFOzt9gh4k4ks1Cg4DqUPDdDUsrZBJNUuul+KELfKLj/6n2vuwHSOWdRdLEfviyFsMufgUms+zKKhqmurA4PqN+3f09NCVTCnKPtz14NhRmUtkE2KfmVk/NE+u33TNbWtPyvDF+QAhT9Ed6s81idG1QpY9aui9tDwWqGUG+5lIHMcVmfaf3yeqN7UUX352iOXI1fXT4NENwdnquaXSL9QUDWnlf5Si3ojihjy5RzH+m+/rAZ2FFTOrvrCZBLhcd3e3cemF4EyFrWCd09pM9ReTZvYyUJ+9nhHXYzLZRcjCrNzRhKgLhxyfy5+8ptGhLIA==
x-forefront-antispam-report: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR01MB4370.eurprd01.prod.exchangelabs.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(366004)(86362001)(5660300002)(2906002)(8936002)(186003)(52536014)(4744005)(33656002)(122000001)(83380400001)(71200400001)(508600001)(38100700002)(55016003)(66446008)(38070700005)(66476007)(64756008)(66946007)(66556008)(76116006)(316002)(6916009)(6506007)(9686003)(6666004)(8676002)(26005)(7696005);DIR:OUT;SFP:1101
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: 
 =?us-ascii?Q?FnvuChYwgLZ/882fYYmoJkyUTsiyi35ArKAd4IkH5nqONLUC4tPkMUM+zsz1?=
 =?us-ascii?Q?IHjHG+lOlwPHevDVTPZZnX4NGff59iu/3IO8X1qjQb+/9qZ6b+89Z7Y+QYvt?=
 =?us-ascii?Q?v1rRBS62nLwjxwMTmme3dOxlrPwqjjHR1HCIQv8MwiogjFaFOlgR0d7EM3O5?=
 =?us-ascii?Q?1vjcC2Gyjb8eYmHTUxXtagqqbxcBjYLJbi81daJ7uuImZ6wp+nZojOD9LmMq?=
 =?us-ascii?Q?yQsmnUA34eNtllVQteCTZUh9nbpWVtDSFw0zohBcVH0yPNyq1EgGjSJYLTFy?=
 =?us-ascii?Q?uc7/PfuBQiG/kubMKYJDS4g6YCqGwMewdjh99VGxQkf/PPie7sU5Zc4mSSa1?=
 =?us-ascii?Q?k5iKxiQxrnbXvPYkoSRiCB248oRuHipyNYMi75gwk5SlBdZgaIn+rdBMIJI7?=
 =?us-ascii?Q?P9HvR5DTht3EAVJ0rhFqtuYAytSaevYCO8krdh5phlI93XtigehMDzpIew6w?=
 =?us-ascii?Q?FfYQUGV9yH/ICWUmrKTuQ76sZvMlt7bRzxNrNUdJNV+ZQ0IgdUlfHSZFcVYc?=
 =?us-ascii?Q?E7IrEoOo/m3fJeO1EY6e2qB0JxClU8S84bxXPCuYCnQcC0rtBfxaR7Vukvei?=
 =?us-ascii?Q?xncaqRH58zxlKM6STYA97Bb0KWOO/SsAZ9yrExpsXOMklHQvPhq0KnUPJozH?=
 =?us-ascii?Q?OzOWQcT6m4AbKcnxFuBdCYXHBRpigJpdsSQtl6ipg6RKQvT4wFQgUi2DkOHn?=
 =?us-ascii?Q?11JeDvI/2IwfbAnz/xME70DcuKFpb63Wo7f9tPaAeWf6TvPLL1iGQtOhRJN7?=
 =?us-ascii?Q?fgAz2earBLDANyPITzAmLmI1Az42tIbQH5Kxtp/g6fP8T93ojPFa0afdFrEB?=
 =?us-ascii?Q?T/X8Kwq2F0npsYBMLtXXJf9/V8fDTSsiKMKAwV0pU9e4v22q6sRf/2V8J8uc?=
 =?us-ascii?Q?vVWyypHLIEYrO0daRdVdxvRyH5iWGDho7ADO5eh0/QB/ngh/Y22r3Z0Lf+vr?=
 =?us-ascii?Q?f9kIjqRIK4+UbHNBwAuIh9OQQTAsJPNqBvgbA22OxLdYnxnFEfmSNHc6lGk0?=
 =?us-ascii?Q?BnpzZBjUkg2MWxrsOyoCefLT5LlTej7GKKrprTfATk8uIepeC/fJYLTXtwSJ?=
 =?us-ascii?Q?vmSBFZHHCXo30N1TmdqiVtKwUdzeLSy+qYQ/gstfNJ6jQnjd33W1isUGOInS?=
 =?us-ascii?Q?TrBAel7wwZaKOmBmlxekVnOc4Wj1DxYdHLenOAKgsg1DhKlf1QZuSoUA4mYF?=
 =?us-ascii?Q?xuUcPXQ1qLMNZmIpS00dmotfMva9XykS7IFnqTSdxDFZrp1R5/xi5skhgTsA?=
 =?us-ascii?Q?EfL44Eh6MzYiYLicFbqi6UgqxreKG/84ySUedPqXXVDpv9tkgOKPr1W2eZLM?=
 =?us-ascii?Q?Y4nrDGyTKsKhk1+XLenWEWjY/aQniSn2tFWopiZIhG/NOyf/46T4wDAWvCAv?=
 =?us-ascii?Q?23ii8+slbsA/hjgR9SscO1Qr3fzD7cKVG3Emrp5Tt/36XvfyHZrOvKmiKquo?=
 =?us-ascii?Q?jZ8FKRP/5XRhlE1W1KcgUiydsDgT5+OR6nK29VywI2xQWeFJo9R0Qq+FegWm?=
 =?us-ascii?Q?OzFGb2lsXrwUMBXiHHuh3y0ieSW3KtP6aHEGkwC6ScvthBa+eA0Lv8CgIam6?=
 =?us-ascii?Q?U2lboyaEh5BiBvxGRs01PKoXylFYxEL6311dsjT97vueN33fZS47dCcXqAOM?=
 =?us-ascii?Q?4et6RwkgRsNisdcjbBifOSZungPiBoCwstSrxAO8W2VN8scIN7VWQ8cwbJfb?=
 =?us-ascii?Q?9urFPLvba7wJyKM11TMKbKRULFYRiGHCkeNLn+2+f2ALA3JOCNTXhDf6Yowq?=
 =?us-ascii?Q?YuO0V4FMd48hmAoT9c8C4Qt49NhdPZo=3D?=
x-mc-unique: FKd_78TLMI-A111G1-v8gw-1
x-originatororg: vector.com
x-ms-exchange-crosstenant-authas: Internal
x-ms-exchange-crosstenant-authsource: 
 AM0PR01MB4370.eurprd01.prod.exchangelabs.com
x-ms-exchange-crosstenant-network-message-id: 
 92abbdc6-0ee7-42bb-3a79-08da38c49dae
x-ms-exchange-crosstenant-originalarrivaltime: 18 May 2022 11:50:33.6376 (UTC)
x-ms-exchange-crosstenant-fromentityheader: Hosted
x-ms-exchange-crosstenant-id: c844b2b9-7a68-473f-b386-e2e1b968279d
x-ms-exchange-crosstenant-mailboxtype: HOSTED
x-ms-exchange-crosstenant-userprincipalname: 
 g0trCbcTgyX+cJK8gwrtXb3KJk+Th+mB+16lz3Vw0j5C8KS4ajHlaiXUSzrWwkjjY/Llt8wvX/dmEypv9YUqwMoVGbvOVqAhqD38TsbuX+g=
x-ms-exchange-transport-crosstenantheadersstamped: DB8PR01MB5546
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CDE3A201 smtp.mailfrom=alexander.duda@vector.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: vector.com
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_AM0PR01MB4370CFEECE972B01700BC592FAD19AM0PR01MB4370eurp_"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 18 May 2022 11:50:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57128

--_000_AM0PR01MB4370CFEECE972B01700BC592FAD19AM0PR01MB4370eurp_
Content-Type: text/plain; charset=WINDOWS-1252
Content-Transfer-Encoding: quoted-printable

Hello yocto users,



I keep getting the following error,

Does someone have a hint where I can look to solve this issue?



ERROR: linux-fslc-5.15-r0 do_shared_workdir: Execution of '/zeus/build/tmp/=
work/ -poky-linux/linux-fslc/5.15-r0/temp/run.do_shared_workdir.58919' fail=
ed with exit code 1:

cp: cannot stat 'Module.symvers': No such file or directory

WARNING: exit code 1 from a shell command.



ERROR: Logfile of failure stored in: /zeus/build/tmp/work/ -poky-linux/linu=
x-fslc/5.15-r0/temp/log.do_shared_workdir.58919

Log data follows:

| DEBUG: Executing shell function do_shared_workdir

| cp: cannot stat 'Module.symvers': No such file or directory

| WARNING: exit code 1 from a shell command.

| ERROR: Execution of '/zeus/build/tmp/work/ -poky-linux/linux-fslc/5.15-r0=
/temp/run.do_shared_workdir.58919' failed with exit code 1:

| cp: cannot stat 'Module.symvers': No such file or directory

| WARNING: exit code 1 from a shell command.



Best regards,



Alex




--_000_AM0PR01MB4370CFEECE972B01700BC592FAD19AM0PR01MB4370eurp_
Content-Type: text/html; charset=WINDOWS-1252
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
=09{font-family:"Cambria Math";
=09panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
=09{font-family:Calibri;
=09panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
=09{margin:0cm;
=09font-size:11.0pt;
=09font-family:"Calibri",sans-serif;
=09mso-fareast-language:EN-US;}
.MsoChpDefault
=09{mso-style-type:export-only;
=09font-family:"Calibri",sans-serif;
=09mso-fareast-language:EN-US;}
@page WordSection1
=09{size:612.0pt 792.0pt;
=09margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
=09{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"DE" link=3D"#0563C1" vlink=3D"#954F72" style=3D"word-wrap:bre=
ak-word">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Hello yocto users,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">I keep getting the following er=
ror, <o:p>
</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US">Does someone have a hint where =
I can look to solve this issue?<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span lang=3D"EN-US" styl=
e=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:#333333;mso=
-fareast-language:DE">ERROR: linux-fslc-5.15-r0 do_shared_workdir: Executio=
n of '/zeus/build/tmp/work/ -poky-linux/linux-fslc/5.15-r0/temp/run.do_shar=
ed_workdir.58919'
 failed with exit code 1:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span lang=3D"EN-US" styl=
e=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:#333333;mso=
-fareast-language:DE">cp: cannot stat 'Module.symvers': No such file or dir=
ectory<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span lang=3D"EN-US" styl=
e=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:#333333;mso=
-fareast-language:DE">WARNING: exit code 1 from a shell command.<o:p></o:p>=
</span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span lang=3D"EN-US" styl=
e=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:#333333;mso=
-fareast-language:DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span lang=3D"EN-US" styl=
e=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:#333333;mso=
-fareast-language:DE">ERROR: Logfile of failure stored in: /zeus/build/tmp/=
work/ -poky-linux/linux-fslc/5.15-r0/temp/log.do_shared_workdir.58919<o:p><=
/o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span lang=3D"EN-US" styl=
e=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:#333333;mso=
-fareast-language:DE">Log data follows:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span lang=3D"EN-US" styl=
e=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:#333333;mso=
-fareast-language:DE">| DEBUG: Executing shell function do_shared_workdir<o=
:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span lang=3D"EN-US" styl=
e=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:#333333;mso=
-fareast-language:DE">| cp: cannot stat 'Module.symvers': No such file or d=
irectory<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span lang=3D"EN-US" styl=
e=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:#333333;mso=
-fareast-language:DE">| WARNING: exit code 1 from a shell command.<o:p></o:=
p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span lang=3D"EN-US" styl=
e=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:#333333;mso=
-fareast-language:DE">| ERROR: Execution of '/zeus/build/tmp/work/ -poky-li=
nux/linux-fslc/5.15-r0/temp/run.do_shared_workdir.58919'
 failed with exit code 1:<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span lang=3D"EN-US" styl=
e=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:#333333;mso=
-fareast-language:DE">| cp: cannot stat 'Module.symvers': No such file or d=
irectory<o:p></o:p></span></p>
<p class=3D"MsoNormal" style=3D"background:white"><span lang=3D"EN-US" styl=
e=3D"font-size:10.0pt;font-family:&quot;Courier New&quot;;color:#333333;mso=
-fareast-language:DE">| WARNING: exit code 1 from a shell command.<o:p></o:=
p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"color:black;background:white;mso-fare=
ast-language:DE">Best regards,</span><span style=3D"background:white;mso-fa=
reast-language:DE"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"background:white;mso-fareast-language=
:DE"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"mso-fareast-language:D=
E">Alex<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_AM0PR01MB4370CFEECE972B01700BC592FAD19AM0PR01MB4370eurp_--


