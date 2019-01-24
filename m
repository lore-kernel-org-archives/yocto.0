Return-Path: <dburke@mountainss.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52A38E00C3A; Fri, 25 Jan 2019 00:58:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.107.82.85 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 29005 seconds by postgrey-1.32 at yocto-www;
	Fri, 25 Jan 2019 00:58:34 PST
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-eopbgr820085.outbound.protection.outlook.com [40.107.82.85])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2887AE0049A
	for <yocto@yoctoproject.org>; Fri, 25 Jan 2019 00:58:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mountainsecuresystems.onmicrosoft.com; s=selector1-mountainss-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=zjz2HAoWpAfWIDHYanTilXhx6nxqEuph55tQONogO/8=;
	b=RZSm/xx+S2plFJFZTcE5RoDB6WhJi8pEbJxbWDwrtZUZkIBHgmD24zwexYmVCO9bKAJu7hYD9io4Ye++L6KzwM1+BhMakKXd22yQakhccgqCjSBw0RvIRkICNQqFI9ZR2GXE5CxZYxABXcl9YAqw6nzKm5lKao61nf2oXN4l4jc=
Received: from DM3PR17MB0762.namprd17.prod.outlook.com (10.166.162.10) by
	DM3PR17MB0716.namprd17.prod.outlook.com (10.166.161.150) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1558.18; Thu, 24 Jan 2019 15:40:29 +0000
Received: from DM3PR17MB0762.namprd17.prod.outlook.com
	([fe80::3557:845a:6fcd:9a15]) by
	DM3PR17MB0762.namprd17.prod.outlook.com
	([fe80::3557:845a:6fcd:9a15%4]) with mapi id 15.20.1537.032;
	Thu, 24 Jan 2019 15:40:29 +0000
From: "Burke, David" <dburke@mountainss.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: wic command, partitioned image, multiple boot loader entries
Thread-Index: AdSz+hZteoniOxGiRDa9e2hDMpgN5A==
Date: Thu, 24 Jan 2019 15:40:29 +0000
Message-ID: <DM3PR17MB076287213B898AE5AE480175B19A0@DM3PR17MB0762.namprd17.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=dburke@mountainss.com; 
x-originating-ip: [184.88.71.104]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; DM3PR17MB0716;
	6:9m1VRBVSocQ+hbJT9Rj1dAc4iCyPjsoUdgPeCfTCncEosV1hvwpYZiJgZhTQP6+fWs1hNstzm7IOKdXaJkrLu4DiW0QIEGYmqJq0YqgJDztiysxtQu5LcinhPxcQkC3sbXqiTVWVB/xqgygz036zFSDMD+SojHC6NIoYJOXMCARE3+p3yghJJfcMRcsYxvcy41MNU9rjL6qPENzYwsSuUYYgBT4akFPO5rMWXSMLDdI+tG1zeuOhMLRrfZ/UTm8y9gLzzAMgUVtjN6ktxZcSRVynpGBsjTkNMd87VHJCMkIcUVlPaYAn0gY/VD++XIn5IZFTY2lh4COKoMZrwZ0/jPlqbZG0XEd6Nvbz1IYTHXhBPeG8jIhIrF1rTe0n16S/Kot0QCOc1MHEgIeSL4KRVMILXn2TJGo36cyQS45uZ1U63NR4kTVJNZWZ/ton0ZSbErBC+WFM53TF4JCaignXRg==;
	5:FvYGddadQ7+cXUuFh9ghU+sf1J+o7U8jooDBN8LlX+O+48PgWauwqkIFxVPYpr7qBO0R84+29+tX5e4YX847/nM8hIa6pmtjDbN5HXJkLTJq7fcuSwHy/cWQjb2WxdVZUYpu9dzDcGp87vtCB9mZQGMPVi8/rgtj5QdVjf4Z4yMdNuMoSGi/lFHY4da5zJWEZX7kcfO61FSAcFxd5mhF3A==;
	7:e1uxQQOYWp67ACEKupGB9vTl3ISkBsjQkr+i64lQnNWEgh9oTH04qq6DsxEemgwklQOxNsdKNPXBDLpdq81C5DzdtZNPVx8ZYzyllgDHTu73VhfraS/1ey9Xkl8vuOc19Ppt5S3bPlIeBlQRMeERzw==
x-ms-office365-filtering-correlation-id: 8e0f4563-4bf6-48f6-254f-08d6821244dc
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(7021145)(8989299)(4534185)(7022145)(4603075)(4627221)(201702281549075)(8990200)(7048125)(7024125)(7027125)(7023125)(5600110)(711020)(4605077)(2017052603328)(7153060)(7193020);
	SRVR:DM3PR17MB0716; 
X-MS-TrafficTypeDiagnostic: DM3PR17MB0716:|DM3PR17MB0716:|DM3PR17MB0716:
x-microsoft-antispam-prvs: <DM3PR17MB071621C8E60B891723064BD9B19A0@DM3PR17MB0716.namprd17.prod.outlook.com>
x-forefront-prvs: 0927AA37C7
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(39830400003)(366004)(396003)(136003)(376002)(346002)(199004)(189003)(186003)(81166006)(1730700003)(81156014)(68736007)(7736002)(55016002)(6306002)(54896002)(476003)(97736004)(486006)(256004)(2906002)(14454004)(508600001)(5640700003)(1240700005)(53936002)(6916009)(25786009)(6116002)(790700001)(86362001)(3846002)(4744005)(6436002)(66066001)(99286004)(8936002)(33656002)(7696005)(71200400001)(71190400001)(2501003)(6506007)(105586002)(9686003)(106356001)(316002)(2351001)(74316002)(26005)(8676002)(102836004);
	DIR:OUT; SFP:1101; SCL:1; SRVR:DM3PR17MB0716;
	H:DM3PR17MB0762.namprd17.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: mountainss.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: VkAf862JxsRd/lRo6xCztHWx3hcpk+9CVD2THT5ANVGUGDpvkL+bLua8eV8gmkGTspFDgJOPUYnVYPwd/n4AcBXrir4+OvdsMUZrnFiqxIZt3JCD9r7mEIOYG0wRwfHd42NNq4lx65Y8JFD0KhGkiqjoS+XGyGV+Fs6WR8mRReb8b0DZ1YCVJh7F60ikwgHOuCWmGRtD03EQNXkyMWH2457qetHLwIPkdXiew/RfnpOngaWyjhKxEEAwoYNjt9gLi9VPfv8i+mXnugXcZPetQOdfNIiotpwzDvdCfzu7lJ4UeiUYoUeSqoHnkyU5h0qUo5OugtFhzSZX47Q+8LlEeVKJ+jfailR1QiXfnM5utNKKIP325IRXSUibQLrwWtjcTajUtGt4qLfCOpn+y9bavoPJE4TV/pxNpD7lVxuW0qg=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 8e0f4563-4bf6-48f6-254f-08d6821244dc
X-MS-Exchange-CrossTenant-originalarrivaltime: 24 Jan 2019 15:40:29.5179 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: daa06c07-9a83-4d89-8cdb-7aff15c73b31
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM3PR17MB0716
X-Microsoft-Exchange-Diagnostics: 1; DM3PR17MB0716;
	23:Bhadb1Pwo8r535hqt5IWUyAyKME7O8sUbWdUFIZX044LNvrHoJVG9+Cm9dqSrle6uvtJqfdpKPoD9vbvOae1RKtLCND+GCqdVmcQ7/0pVyWyQOAduxgqUMm/fXjYd+WG8B96nPRaT9tLtk1Wr/4O+Q==;
	23:Pvnd/lFvdVHCUIbTk7HiU7RXl5RbWM1z5i/8B0KWUyCxwqKTcO7pslZ9QVzZKic/t93MJpElT/O94B5lBZJhsGcMRP1fylRKrpNP5+aE94FgAtvX63y/5vsXVAzO9Gcjtcwrf6CjxHHHrkKHVhO3yg==
X-OriginatorOrg: mountainss.com
Subject: wic command, partitioned image, multiple boot loader entries
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
X-List-Received-Date: Fri, 25 Jan 2019 08:58:36 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DM3PR17MB076287213B898AE5AE480175B19A0DM3PR17MB0762namp_"

--_000_DM3PR17MB076287213B898AE5AE480175B19A0DM3PR17MB0762namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm using wic to create an EFI bootable "multi rootfs" image.  This image h=
as two different Linux OS configurations, each in their own partition of co=
urse.  I have been able to successfully create and boot the final wic image=
.  The question I have is how to I create more than one .conf file in the /=
loader/entries folder of the boot partition.  By default wic is only  creat=
ing only one entry (boot.conf) but I need to have two unique .conf files, o=
ne for each Linux OS partition that I want to boot from.  Unless someone kn=
ows another way.





--_000_DM3PR17MB076287213B898AE5AE480175B19A0DM3PR17MB0762namp_
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
	font-family:"Calibri",sans-serif;}
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
<p class=3D"MsoNormal">I&#8217;m using wic to create an EFI bootable &#8220=
;multi rootfs&#8221; image.&nbsp; This image has two different Linux OS con=
figurations, each in their own partition of course.&nbsp; I have been able =
to successfully create and boot the final wic image.&nbsp; The question
 I have is how to I create more than one .conf file in the /loader/entries =
folder of the boot partition.&nbsp; By default wic is only &nbsp;creating o=
nly one entry (boot.conf) but I need to have two unique .conf files, one fo=
r each Linux OS partition that I want to boot
 from.&nbsp; Unless someone knows another way.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DM3PR17MB076287213B898AE5AE480175B19A0DM3PR17MB0762namp_--
