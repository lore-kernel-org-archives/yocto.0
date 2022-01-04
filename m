Return-Path: <steven.monsees@baesystems.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4837C433EF
	for <webhook@archiver.kernel.org>; Tue,  4 Jan 2022 12:22:48 +0000 (UTC)
Received: from dmzms99801.na.baesystems.com (dmzms99801.na.baesystems.com
 [149.32.232.65])
 by mx.groups.io with SMTP id smtpd.web11.5780.1641298967536699467
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jan 2022 04:22:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baesystems.com header.s=trusted01 header.b=B4pEDvqL;
 spf=pass (domain: baesystems.com, ip: 149.32.232.65,
 mailfrom: steven.monsees@baesystems.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=baesystems.com; i=@baesystems.com; q=dns/txt;
  s=trusted01; t=1641298967; x=1798978967;
  h=from:to:subject:date:mime-version;
  bh=CWDaL+sPb+aL9+2qiWTVIIMPd+J2n25DAYsSkNGgJe8=;
  b=B4pEDvqLy72b5XOBDhttpz56t0VNWpDWFZh3g42iaTlb+kRwJUyG4Lrh
   EuW7Sepap0+0kkyMPhfcta2fl7Q+L98sAPUsyQ8z4ccxQh7KFUqjBdgHZ
   itx2Ris0IbFEtHx1BNB+EX1J5c8ixnj4CpdXvvPpLP04eSmEragYja9/0
   0=;
IronPort-SDR: 
 sIIcurdy0xnZhd2GW3YiX9xBiAY6DEncvFaLMhvRSRZYmXN2renG+382nQQM5FWkL8I4ougVxN
 ElGfOpL8/dEQ==
IronPort-PHdr: =?us-ascii?q?A9a23=3A7oP0Ih1wLZtSy5ytsmDOKwQyDhhOgF0UFjAc5?=
 =?us-ascii?q?pdvsb9SaKPrp82kYBaGo6w21xSSAs3y0LFts6LuqafuWGgNs96qkUspV9hyb?=
 =?us-ascii?q?SIDktgchAc6AcSIWgXRJf/uaDEmTowZDAc2t360PlJIF8ngelbcvmO97SIIG?=
 =?us-ascii?q?hX4KAF5Ovn5FpTdgsipyuy+4YDfbgtGiTayb75/Lgi9oBnMuMURnYZsMLs6x?=
 =?us-ascii?q?AHTontPdeRWxGdoKkyWkh3h+Mq+/4Nt/jpJtf45+MFOTav1f6IjTbxFFzsmK?=
 =?us-ascii?q?Hw65NfqtRbYUwSC4GYXX3gMnRpJBwjF6wz6Xov0vyDnuOdxxDWWMMvrRr0yR?=
 =?us-ascii?q?D+s7bpkSAXwhSkHKTA37X3XhMJzgqJavB2uqAdyzJTIbIGXLvdyYr/Rcc0cS?=
 =?us-ascii?q?GFcXshRTStBAoakYocBCOQBOuBYr5LjqFQQthuyHRSnCv7zyjBWmH/5w6s62?=
 =?us-ascii?q?Pk/HArb2AAvEc8AvHHaoN7oM6oSSvy1w7fWzTrdafNawzL96I/OchA6v/6DQ?=
 =?us-ascii?q?6lwfNHKxkY1CQzFlVWRqZf5PzyL0+QNqHKX4PZnVeKqkmMqrRx6rTezyMk2k?=
 =?us-ascii?q?IbJmp4VxU7e9SV/2Is7K9O1RVJ6bNOmEZZcqTyWOpV1T84iR2xltyk3xqAIt?=
 =?us-ascii?q?5O7cyYG1ZAqyhzfZvGIcoWE/wzuWeKSLDp7mX9pZb2xihCv+kaj0u3xTtS43?=
 =?us-ascii?q?EpQoidLkNTArG4B2wLT58SdS/Zw/1+t1SuT2wzJ5exJLlo4mKXBJ5I8wrM9k?=
 =?us-ascii?q?IcYv17ZES/sgkr2ibebdkAj+ue19evqeq7mppqAN49sjQH+L7gultS/AesmN?=
 =?us-ascii?q?ggOWHCW9vim27344UL5Ra5Kg/kyn6TarJzWO94XpqijDANPyYks8QiwDyym0?=
 =?us-ascii?q?dQDgXkIMldFeAmdg4f1PFHOJej0Dfa5g1uyjDdm3+3KMqH7DpjDLHXPiqntc?=
 =?us-ascii?q?ah95kJGyQc+zMhT55dOBbEAJPLzVFXxtNvdDhIhKAy03/joCMtj2YMYQ26PB?=
 =?us-ascii?q?6iZMKXJsVCW+O0vOPKBa5QPtznjMPgk5+XujWMnll8YZqmlx4cYaHe9Hvh+O?=
 =?us-ascii?q?UWWfWLsgssdEWcNpgc/TOvqh0GeUT5UfHuyW6M85ionCIK9F4vCRoetj6Cd3?=
 =?us-ascii?q?Ce8Bp1WfGdGClKSHnj0a4WIQfAMaDidIpwprjtRH6mmQJMm/RWvrxPhjatgJ?=
 =?us-ascii?q?fbT4jcft5/oyJ5y/eKZ3UUj8jdoCOyZ0nqRVCdlmWgUQCcs26JyqlA7zU2Mh?=
 =?us-ascii?q?/tWmftdQJZ24PVSXwohcdbn0+FkBta6cUqBQ+zIAh7yWcmrHzw3CNc2xcQDb?=
 =?us-ascii?q?l1VEdyvlQHYwyevGPkekLndV898yb7Vw3Wkf5U18H3BzqR01zEb?=
IronPort-Data: =?us-ascii?q?A9a23=3AlVZoPaJHqD3cef0dFE+R+5clxSXFcZb7ZxGr2?=
 =?us-ascii?q?PjKsXjdYENS1TwOz2BMWmmDaPyONjb1KYx1OYmz9B9Qu5PRytFgGgUd+CA2R?=
 =?us-ascii?q?RqmiyZl6fd1jKvI0qj7wvTrFCqL1O1DLImQRCwIZiWE/E31a+C99SMUOZygH?=
 =?us-ascii?q?9IQNsaVYkideic5EE/NuTo78wIIqtYAbeqRWmthivuuyyHrA2JJ7hYvWo4iB?=
 =?us-ascii?q?wNvnzs01Bj6kGtwUlXT/pmntneG/5UeJMp3ya1csxLFrodo8u6SH44vzZmy9?=
 =?us-ascii?q?3jS+gx8W4P9yPD9ewsAS7PJLBOSh39NHaOlh3CupARriuBga7xGMxoR1Wvhc?=
 =?us-ascii?q?9NZkb2hsbSrVQo3M6uKneMbSBRVCAl0NKBd6aTbLH2k98eUyiUqdlOwn602U?=
 =?us-ascii?q?xtoZtxwFuFfRDsmGeYjACEKZQyEr+a3266gDPhrjdgkNNPsPo4Upjdn1z6xM?=
 =?us-ascii?q?BqMafgvWI2TvZkDg3Fq3J0IQ6i2WibQUhI3BDyoXvGFEg5/5EoCodqV?=
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AxDtDUqzuDS71s2JEwywgKrPwAr1zdoMgy1?=
 =?us-ascii?q?knxilNodU8SL3+qynIpoV+6faUskd1ZJhOo7q90cW7LE801KQU3WBzB9aftW?=
 =?us-ascii?q?vd1ldARbsKheDfKlXbakvDH4VmuZuIHZIQNPTASXZfyfz36hWiE8sxqeP3iJ?=
 =?us-ascii?q?xA/d2urUuFNjsaCJ2Jq2xCe3+mLnE=3D?=
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2AFBQDTOtRh/0LhJQpagQkJgnGCBYF?=
 =?us-ascii?q?NrCKHeAsBAQEBAQEBAQEIAUEEAQGIRSY4EwECBAEBARIBAQYBAQEBAQYEAYE?=
 =?us-ascii?q?bhWkMgjUig34hXgEVayYBBBuCd4IOrn+BMxoCZYRqhRCBOoFmhUSCfoYXQ48?=
 =?us-ascii?q?/BJEZgQsbgUKHJop7jRWgQAcDg0KfMjAVljYDkS4ihUKFcIpiIKE0hFMCBAI?=
 =?us-ascii?q?EBQIWgXiBfXCCbAEBAUtQFwJqnBWBLAIGCwEBAwmODoEQAQE?=
X-IPAS-Result: =?us-ascii?q?A2AFBQDTOtRh/0LhJQpagQkJgnGCBYFNrCKHeAsBAQEBA?=
 =?us-ascii?q?QEBAQEIAUEEAQGIRSY4EwECBAEBARIBAQYBAQEBAQYEAYEbhWkMgjUig34hX?=
 =?us-ascii?q?gEVayYBBBuCd4IOrn+BMxoCZYRqhRCBOoFmhUSCfoYXQ48/BJEZgQsbgUKHJ?=
 =?us-ascii?q?op7jRWgQAcDg0KfMjAVljYDkS4ihUKFcIpiIKE0hFMCBAIEBQIWgXiBfXCCb?=
 =?us-ascii?q?AEBAUtQFwJqnBWBLAIGCwEBAwmODoEQAQE?=
X-IronPort-AV: E=Sophos;i="5.88,261,1635206400";
   d="scan'208,217";a="440072639"
IronPort-SDR: 
 jebSfq36sS/M+qoRnmcasqEatXtDWooaBgIwQgSS154bEHG6ZzSpNWFDqkC9alfVKMxlQ9QAyn
 N6oXfYRVBaJA==
X-IronPort-AV: E=Sophos;i="5.88,261,1635206400";
   d="scan'208,217";a="21090425"
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: BBLAYERS
Thread-Topic: BBLAYERS
Thread-Index: AdgBYsLFEEBNlMFQRG27gM5V2hTVSg==
Date: Tue, 4 Jan 2022 12:21:44 +0000
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.44.4.15]
Content-Type: multipart/alternative;
	boundary="_000_cc1d2a3485a347ada97c7431ace8f510baesystemscom_"
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jan 2022 12:22:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55719
Message-Id: <20220104122248.B4837C433EF@smtp.lore.kernel.org>

--_000_cc1d2a3485a347ada97c7431ace8f510baesystemscom_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


Under my Yocto build, I have basically 2 build directories (one for Arm and=
 one for Intel platforms)... each build directory has its own bblayer.conf.

Under each of these directories I build multiple images for each platform..=
.

If say, on the Intel side, I can build for 3 MACHINES creating 3 unique ker=
nel images A, B, and C (they all share a common bblayer.conf) and I then wa=
nt to modify one kernel to include meta-virtualization...

How would I manage the bblayer.conf to add this layer to only B's build so =
as not to impact the building of "A"  or "C" ?

If I just add it to the common bblayer.conf, "A" and "C" are impacted by th=
e addition and show:

WARNING: You have included the meta-virtualization layer, but 'virtualizati=
on' has not been enabled in your DISTRO_FEATURES. Some bbappend files may n=
ot take effect. See the meta-virtualization README for details on enabling =
virtualization support.

Thanks,
Steve

--_000_cc1d2a3485a347ada97c7431ace8f510baesystemscom_
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
	font-family:"Calibri",sans-serif;
	color:windowtext;}
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
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Under my Yocto build, I have basically 2 build direc=
tories (one for Arm and one for Intel platforms)&#8230; each build director=
y has its own bblayer.conf.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Under each of these directories I build multiple ima=
ges for each platform&#8230;
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If say, on the Intel side, I can build for 3 MACHINE=
S creating 3 unique kernel images A, B, and C (they all share a common bbla=
yer.conf) and I then want to modify one kernel to include meta-virtualizati=
on&#8230;
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><b>How would I manage the bblayer.conf to add this l=
ayer to only B&#8217;s build so as not to impact the building of &#8220;A&#=
8221;&nbsp; or &#8220;C&#8221; ?<o:p></o:p></b></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If I just add it to the common bblayer.conf, &#8220;=
A&#8221; and &#8220;C&#8221; are impacted by the addition and show:<o:p></o=
:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">WARNING: You have included the meta-virtualization l=
ayer, but 'virtualization' has not been enabled in your DISTRO_FEATURES. So=
me bbappend files may not take effect. See the meta-virtualization README f=
or details on enabling virtualization
 support.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal">Steve<o:p></o:p></p>
</div>
</body>
</html>

--_000_cc1d2a3485a347ada97c7431ace8f510baesystemscom_--

