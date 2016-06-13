Return-Path: <Jeffrey.D.Boyer@jci.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27974E0059B; Mon, 13 Jun 2016 14:56:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.83 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 2071 seconds by postgrey-1.32 at yocto-www;
	Mon, 13 Jun 2016 14:56:46 PDT
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0083.outbound.protection.outlook.com [65.55.169.83])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C717E004F1
	for <yocto@yoctoproject.org>; Mon, 13 Jun 2016 14:56:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=jci.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=XJh80AzW0dP4HXov59q3fTHK1PTChOmZGeKFKGrbO9Y=;
	b=i8O3EkcqWb5Ab0bqrIO+LmWFTUX320czraXbx0i1RmKtHkDNxg2GSqCWZChyg7XGNkRSilkes8AHIEV8MO/HJzrVSvy3OPlUban0D4pBw9JUKtDShtE+m1rmlRhpbMmGPLjz+VJbcgu6GjZT58dowCIvlBTaCBLCVeo1OzMYKdY=
Received: from BY2PR03CA006.namprd03.prod.outlook.com (10.255.93.23) by
	BN1PR0301MB0625.namprd03.prod.outlook.com (10.160.170.28) with
	Microsoft SMTP
	Server (TLS) id 15.1.497.12; Mon, 13 Jun 2016 21:22:13 +0000
Received: from BL2FFO11FD032.protection.gbl (10.255.93.4) by
	BY2PR03CA006.outlook.office365.com (10.255.93.23) with Microsoft SMTP
	Server (TLS) id 15.1.492.11 via Frontend Transport;
	Mon, 13 Jun 2016 21:22:13 +0000
Authentication-Results: spf=softfail (sender IP is 23.103.243.116)
	smtp.mailfrom=jci.com; yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=fail action=none header.from=jci.com; 
Received-SPF: SoftFail (protection.outlook.com: domain of transitioning
	jci.com discourages use of 23.103.243.116 as permitted sender)
Received: from 062-smtp-out.jci.com (23.103.243.116) by
	BL2FFO11FD032.mail.protection.outlook.com (10.173.160.73) with
	Microsoft SMTP Server (TLS) id 15.1.511.7 via Frontend Transport;
	Mon, 13 Jun 2016 21:22:12 +0000
Received: from BN3PR97MB0132.062d.mgd.msft.net (141.251.173.212) by
	BN3PR97MB0131.062d.mgd.msft.net (141.251.173.211) with Microsoft SMTP
	Server (TLS) id 15.1.506.9; Mon, 13 Jun 2016 21:22:12 +0000
Received: from BN3PR97MB0132.062d.mgd.msft.net ([141.251.173.212]) by
	BN3PR97MB0132.062d.mgd.msft.net ([141.251.173.212]) with mapi id
	15.01.0506.017; Mon, 13 Jun 2016 21:22:12 +0000
From: Jeffrey D Boyer <Jeffrey.D.Boyer@jci.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Mounting USB drives on a "read-only-rootfs" based system
Thread-Index: AdHFuMNyfcoYoG6/QWuF1oCmyic8ag==
Date: Mon, 13 Jun 2016 21:22:12 +0000
Message-ID: <f732c861dc8642279465a6e9707f8b83@BN3PR97MB0132.062d.mgd.msft.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [141.251.170.4]
X-MS-Office365-Filtering-Correlation-Id: 16ad15ba-2280-4009-c63f-08d393d0c95a
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-Forefront-Antispam-Report: CIP:23.103.243.116; IPV:NLI; CTRY:; EFV:NLI;
	SFV:NSPM;
	SFS:(10009020)(6009001)(7916002)(2980300002)(189002)(199003)(68736007)(81166006)(105596002)(189998001)(6116002)(81156014)(87936001)(19625215002)(19300405004)(50986999)(230783001)(108616004)(15975445007)(8936002)(54356999)(97736004)(107886002)(106466001)(356003)(5640700001)(229853001)(84326002)(110136002)(2351001)(9326002)(2501003)(9686002)(86362001)(22756006)(3846002)(790700001)(2900100001)(1730700003)(260700001)(5004730100002)(16796002)(11100500001)(33646002)(6806005)(92566002)(16236675004)(450100001)(8676002)(102836003)(86146001)(24736003)(512954002)(5003600100002)(5008740100001)(19580395003)(66066001)(2906002)(10400500002)(586003);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BN1PR0301MB0625;
	H:062-smtp-out.jci.com; FPR:; SPF:SoftFail;
	PTR:InfoDomainNonexistent; MX:1; A:0; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BL2FFO11FD032;
	1:V6cWKE6jx3VlML2nyhvyZn8NcdSqxCV0B01PVZYcBPKlFRkmcj6loBD1YyOMUJlthbnTI95ZvN9nq/akQ4T/oKpleG9jjYtVLyKbYlWry5s1TxamQ0W90fDDNn/zfoUoiR5/MKquYbdJT7/vUMJ8RtTwwptK/QdjIUaUQShRqsF6ODOU3WEyY/GhAKgLC/rHAa2JauP+rUl+6zx9cD96cSTguhzslg/2b3oaMUTyA06Q1cfsrgQkERaaNljeYijcWvqjDwxemSHJdbIoBVAqLFm2m/tXN/MaeTplk+qNyAUf3b2frGCydb633zipfqICO4FLGR9+NCMC6PIiDOMCg+UWw0tDqXmU4NO+hrAatPtkGuFkr03Et/+t5bUaLoXE87zQMxWkmlA0AfOZBOq8JW9wqrBVPWHcMCU2G3rsA68=
X-Microsoft-Exchange-Diagnostics: 1; BN1PR0301MB0625;
	2:2qWgW4ksNzoIcy1J/J84OGk5k0/4abXnyC5ewY/r3D5oxOxgf1njjjpGjUnm557DCEOdpaCxPduo1iHbj9/drVGQeLhOnMpMUnrO8I8DE3Uww01brTPfniCwQAgJHGvPMrvhp8ApVTYh0Ff7p6eDM0fY5O+AH7EwjRqtkeh4bK3H33h8jPokPWRWn1juYEpS;
	3:orJ6I3rlPJJ/rJmb6fQHiHF2dPoVxUXQs4WBoKz7fL4z3U4PuIib2Va/scNtY1Q1QIXqZAyF5As65h/q4fYecc4P96NefqQESpDWQbDv7lXuhmdTQWGoq4co4Lw2466H2nRUwtW5b/60PpKTfGtp9rU0gXVHQExtWyzcBP77hgeOYa+BRyYKBcR4FHoasNWrUCsSzeLwfKaISb308za4DN4bcmFZ2jVgVNUmxggqISc=;
	25:DXSdyYmcM24lDyM4Q0yA+hzl5izML0NOMAfiChkbbCB8wStVMx+3EMOl+H55Wpq+4ENTxjqFOqlcfcuXQeN60JpbX25uA/Z9bJlDzSGnH5DElrGBMeg4qFvO8QOhUJghgrinhXUqKBEnmcgItnyJYMD86pqsjaiOicrHpOWfXbuPQhD5DZzeM7yV49VgBTqPZi8XC5qYqRYnnAlUgZX6NbM9FkXhtflf8UkS5BrqFDayzDukAICiY+R1X+ZA9tXK3Rq97ic6FvUvBCyoDMgt3IgbXCkaT4QWY3Mj8F4qCeHI8Wf3T9R5ibyH4G2S1DFYQyo4wbtglGIN/cO8G3R63ukbDy3iwUTD9/KDyX7QTGDRPb2g72z8qE1sdRqR4GkL8AZ+8YZlhPGEmtD8x97USS2st2agQtIh4uSOx/RknFk=
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BN1PR0301MB0625;
X-Microsoft-Exchange-Diagnostics: 1; BN1PR0301MB0625;
	20:frvfVtb/5x3ZqhmP9AmYD3d0CQus33RvV9G/z4EnwigqZBmHwV9tArtc/S+xfjqd7oeAF88sP1Ie6O1JxG7tISipLY21xZ27hd/AtVUyZ4ayl+6q3/kAoxs0GlUCv40C4zoLnvDktSw9qo9njrcAGtxlK/bwmOqBRpZCSyorT/wJt8DFak+6ekQUm1D3dSyo97ovHsGLYnSzeji9nKktAIwTPBa4wOqAQ0F9hv+ASBoQIW1QO2PJr44iiOaccnaHKQ/UTPUhptJkQAWEzO4pD5qI7/MoVYdn4j56sV/z8pgf5KomzCO+69oeuwJT+fV1I3ZzkjsCHfQpsqeycNDO+G/0f9VOQg4AmXfSAMfcMhslZ8ynhTwL/wfGWkrCJva7a17os7KrGPND21lC4BHsjMqsGbuWySVOCWYafnXtrNiL7oZmXSuYrHqSErsUm8KjjnaSuakxo+aBlnE6TZ6SrleVHqpZPHVONPiUWZY0OfT1pn6MxDhHjiuwDiFwE1lq
X-Microsoft-Antispam-PRVS: <BN1PR0301MB0625BBAB25E1721B68431796B3530@BN1PR0301MB0625.namprd03.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:(21748063052155);
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(13016025)(13018025)(5005006)(3002001)(10201501046)(6055026);
	SRVR:BN1PR0301MB0625; BCL:0; PCL:0; RULEID:;
	SRVR:BN1PR0301MB0625; 
X-Microsoft-Exchange-Diagnostics: 1; BN1PR0301MB0625;
	4:Jd0/4smB0lsAy9X28J3ybO/6CuhTV7HsGDfAyNQI2wLMgx1CN7euLEdtzAavWq3Bh6jQf96Qli6q4dVekyIzPsohajKI1vmRf2syxVDZ7ayZztlnr5Ecg+z6THNzvADX1dRR6zyAJiISmKgervZerxrrThuoWC9/uEntmkTescE44Ejupzs5Ttgk74ouBjYzHismCTNDpzYg89w8JkxwFG8OtrQ8W9ccuy82NYD1vPRjbvVmAbbRozjjVLKrpilegGS7hlhdfFDWtALnV+hbKxNZRVHTmvSJzKeq88opotZxnOJANB5zdJcJcbQ7Dn/qbPRRDHvuj1eVT+PA/dUNr6bwRQ7mEDSUrlyXJRHee0zZWb8xjAFDqh87S0TI8ijRi6vIoKSJB+IX9rpA3JlGE6BRfnhNQ0Du1e4ylrjwsigRB3GAzzewFqS3vkI8Bsi5AARoTFX4n2n5qjohbUDt8A==
X-Forefront-PRVS: 0972DEC1D9
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; BN1PR0301MB0625;
	23:KAumFEZwFtF3SfTrfO2YcQUcLSTHFprDaMusMHi?=
	=?us-ascii?Q?MHPPWhgmGg57B26dIoeDdo78ohrtDnKY9Mr+Cl0xCg6DMOPKZKZHiuHjyWw9?=
	=?us-ascii?Q?i9g0Vy32w9lLDfhbnyA/adOAYi0M6wx6MzhzKlD0po744Pan02WNV1VELaQU?=
	=?us-ascii?Q?JsQ88x17wPUlwtQnJHVTxOKw4hjrCgSPVfsz3pK06IYqE3t0llqif80Oqdzw?=
	=?us-ascii?Q?/kbky7KXzUK1fh4i+WO6sviOdbkJWBrjBXawMvawI/F8p6K2AXw/AKxElFSt?=
	=?us-ascii?Q?U++IlMscD9Lx61B2z3R9JLp5xNsSeMATDfSVzzpb9jbQXIz4qUsKAxzlbxyS?=
	=?us-ascii?Q?M6ERar+3MyonC2kNJ4jFTg2HkEoaAyPxTwtXPVZ0VJHjGbIle52A0yhPS0fR?=
	=?us-ascii?Q?4pu2tkhGPpTcwFYJAvNGsW3WubCRVZaYLC+KMBbCbfe9zdD4b4dzqrS8FiJc?=
	=?us-ascii?Q?37RsEEQquPsCmSCSauVQhok0RJEJLAu/Kgc3WJhagxpIMW+MzG4qIve3Ejv8?=
	=?us-ascii?Q?ugl+se2SCERkLVOtcBmcmmUjvGVPxFNwP6xJpuC3+mx5ix9yTeEG7fGP6apK?=
	=?us-ascii?Q?a6llInNg9/KiP9D1WE2ywBrRPxFJYjaFYcbyAub7GhOufztdEziJL22lV6wy?=
	=?us-ascii?Q?CRqrdqmQfp49ePWwJ6nEPbGURpD/XAdxmJgr5K9n5Mx9tBtnW71ptcc/x7Uk?=
	=?us-ascii?Q?oN7MFQhYLpxR7103fCTomtCEP7UZz2cYUhiqIJ6FRGkr75MAppWhgdYYf786?=
	=?us-ascii?Q?lJzKFIu3lsa6qeWyDDbxU6GKkdWfdIyrcpzRB99Ila0CZOLtLh/dVtQf9pHI?=
	=?us-ascii?Q?R3lxznXWVHSyEAAhAlwLDGa+WdZHtcyJgrVgRRYMZ1Wp6gLWSF13hP4K5dWK?=
	=?us-ascii?Q?qB4atS+WODjJvYlDFPzk44wWtYcVHdOzi0OR2toiivTxEg2SD8fAQ8U1PULt?=
	=?us-ascii?Q?goQpZPpiIIwqg7tXE3nQM20TBl59MmVALVZ72QxV4k9rVeZ5NPmyN+4lqXH6?=
	=?us-ascii?Q?VNrOL7PhreHsMdBTROi6sQA6uupfwDjSpaZ1l1tjRRMryXoAqpYoNANizb4T?=
	=?us-ascii?Q?Qyj9tGmcvTEln0ZS6pbcLUSogMpSBZgN8AnUMDMiTc1io72bnifuqG76pk+a?=
	=?us-ascii?Q?idqVcKRt7t6g8Rto5NLo4IQyOdOAytC/W3McLT+czn16GL2fhLCHoHeAsOda?=
	=?us-ascii?Q?cv0zzf9ZsryUJhPzHPgqzKi+IKld/3m2RmNqDxJ19u9C5idRqo+d7Yf98mkJ?=
	=?us-ascii?Q?Ciy/5nJ9jobSQ8uoDGTyXTTJ5VMQa49ALt6yDIMSjrVQ3IrQX3lKGCq6m1e/?=
	=?us-ascii?Q?rIR7N0ogqoO9flvJQ5ARkuKGpXNG+c3qELzrZSbg+nnLL+N0gh49GuoQvsAJ?=
	=?us-ascii?Q?gnlDcBpjnCuvq8MY2ma7eLqfhFyc0KiK00G/qNnIBAxF1jdrGJhAxrlTMmTv?=
	=?us-ascii?Q?W8eYv/jrK6QvK0W4z++HE0NYtIVuDbax7wZhFFvEh4x/fY80DawMTvz9c238?=
	=?us-ascii?Q?+PkUihPXPZnRy8A=3D=3D?=
X-Microsoft-Exchange-Diagnostics: 1; BN1PR0301MB0625;
	5:FV6ASahITMsSziyA8KofZZKqCgdYIWyBsgnEUdkWQ34rT+RqPgLt2tIVt+PViTEaco+tLoob5455LId30AX4UqnUcnq9zIDPkSWSYEkxesu5VptYooyBVY2hn0o8dl/uq6gaF4xEw/LQVXz2m3wC9g==;
	24:DdSQx1JZbjFp8Q2re0XBYvTJ2ycDi/IvoolUB7KJG3smvDrdlkvXLAj9cuPKIhkMzznji6na62y8qv1zBrHfyYU9h+Adfxj/taaRWVamR2A=;
	7:ckaMXgZoHp62dSpJdtAQ8zv1DbVdthvFVJp+0brLwJEm9p4MueU3UuY209jt6a/cdrFBPz9QH1iOj2P4H4pU1p579s3r5hN0s6diUrETWfdd54tEQG27NqDT85wl1oX4/sgKdUaaJqdyZkWbTJJlNdIRsluRz+bA0uxSGxjjWZQu1ZfQZYhXmdWODD0WEkh9XtWNSBpCROcJ04zjj5z2p1bhe+BF92KEclRFm3dwWS4=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: jci.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Jun 2016 21:22:12.9709 (UTC)
X-MS-Exchange-CrossTenant-Id: a1f1e214-7ded-45b6-81a1-9e8ae3459641
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=a1f1e214-7ded-45b6-81a1-9e8ae3459641;
	Ip=[23.103.243.116]; Helo=[062-smtp-out.jci.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN1PR0301MB0625
Subject: Mounting USB drives on a "read-only-rootfs" based system
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
X-List-Received-Date: Mon, 13 Jun 2016 21:56:50 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_f732c861dc8642279465a6e9707f8b83BN3PR97MB0132062dmgdmsf_"

--_000_f732c861dc8642279465a6e9707f8b83BN3PR97MB0132062dmgdmsf_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

New to the list here, so I'm sorry if this question has been asked before, =
but I couldn't find a direct answer to it.

I have a yocto image that was built using the following bb script line: IMA=
GE_FEATURES +=3D " read-only-rootfs".

As this image eventually resides on a static flash device, it must be read-=
only.  However, the system hardware supports removable media (SD card and U=
SB drives), and I'd like to be able to mount and write to those removable d=
rives / partitions for data logging purposes.  What needs to be done in ord=
er to make the /media directory auto-mountable when a "read-only" image is =
specified by the build script?

Thanks.


--_000_f732c861dc8642279465a6e9707f8b83BN3PR97MB0132062dmgdmsf_
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
<p class=3D"MsoNormal">Hello,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">New to the list here, so I&#8217;m sorry if this que=
stion has been asked before, but I couldn&#8217;t find a direct answer to i=
t.&nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I have a yocto image that was built using the follow=
ing bb script line: IMAGE_FEATURES &#43;=3D &quot; read-only-rootfs&quot;.&=
nbsp;
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">As this image eventually resides on a static flash d=
evice, it must be read-only.&nbsp; However, the system hardware supports re=
movable media (SD card and USB drives), and I&#8217;d like to be able to mo=
unt and write to those removable drives / partitions
 for data logging purposes.&nbsp; What needs to be done in order to make th=
e /media directory auto-mountable when a &#8220;read-only&#8221; image is s=
pecified by the build script?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_f732c861dc8642279465a6e9707f8b83BN3PR97MB0132062dmgdmsf_--
