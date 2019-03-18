Return-Path: <KSloat@aampglobal.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45A2AE00CE5; Tue, 19 Mar 2019 08:24:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [40.107.78.118 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 43133 seconds by postgrey-1.32 at yocto-www;
	Tue, 19 Mar 2019 08:24:22 PDT
Received: from NAM03-BY2-obe.outbound.protection.outlook.com
	(mail-eopbgr780118.outbound.protection.outlook.com [40.107.78.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF7C1E00C1E
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2019 08:24:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=aampusa.onmicrosoft.com; s=selector1-aampglobal-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=iXbdr4/HoS96lYf9uTzeawAF1A81zHBhlM8lQa+5CDI=;
	b=ARl+CKfiPemeLfWKlYSSxn1su4vjDe2Ea00zmyijXvzqfGpXrnDlPe42CAPBG4QcbryW5GPmBPcueFBS8v+Yq9cq9I/x3tN9VrEwiDO9FYiplADvKt8cUfyiQXec7ttznQZROax/9NMmPRi4pCtR9NlklyTo67wVUuQPVgxHfTQ=
Received: from BL0PR07MB4115.namprd07.prod.outlook.com (52.132.10.149) by
	BL0PR07MB5779.namprd07.prod.outlook.com (20.177.240.32) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1709.14; Mon, 18 Mar 2019 19:52:49 +0000
Received: from BL0PR07MB4115.namprd07.prod.outlook.com
	([fe80::e4fd:8f53:2484:46eb]) by
	BL0PR07MB4115.namprd07.prod.outlook.com
	([fe80::e4fd:8f53:2484:46eb%5]) with mapi id 15.20.1709.015;
	Mon, 18 Mar 2019 19:52:49 +0000
From: Ken Sloat <KSloat@aampglobal.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Auto-clean deployed images/output files generated in a class
Thread-Index: AdTdw/ZtT4RQT51cTeu++YJwAdiJ2A==
Date: Mon, 18 Mar 2019 19:52:49 +0000
Message-ID: <BL0PR07MB4115240BF395276102164CCAAD470@BL0PR07MB4115.namprd07.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=KSloat@aampglobal.com; 
x-originating-ip: [96.59.174.230]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2a819479-8f29-441b-7d2b-08d6abdb4cca
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600127)(711020)(4605104)(2017052603328)(7153060)(7193020);
	SRVR:BL0PR07MB5779; 
x-ms-traffictypediagnostic: BL0PR07MB5779:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BL0PR07MB5779E42D52A15F5549C092D3AD470@BL0PR07MB5779.namprd07.prod.outlook.com>
x-forefront-prvs: 098076C36C
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(376002)(136003)(39850400004)(366004)(346002)(396003)(199004)(189003)(71190400001)(71200400001)(6506007)(81156014)(81166006)(99286004)(186003)(102836004)(316002)(1730700003)(8676002)(7696005)(7736002)(236005)(74316002)(2501003)(9326002)(26005)(5660300002)(52536014)(3846002)(790700001)(6116002)(6436002)(25786009)(14444005)(256004)(86362001)(966005)(606006)(66066001)(53936002)(68736007)(14454004)(6916009)(5640700003)(80792005)(105586002)(97736004)(8936002)(2906002)(476003)(486006)(106356001)(2351001)(55016002)(33656002)(72206003)(478600001)(9686003)(6306002)(54896002)(554374003);
	DIR:OUT; SFP:1102; SCL:1; SRVR:BL0PR07MB5779;
	H:BL0PR07MB4115.namprd07.prod.outlook.com; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: aampglobal.com does not designate
	permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: 1Ni4W+aQIg2KMwmWPjP4tQWjJ7zA2wWZxskSOj85plCzqR5308p1Ld+4rNK8ueUN8w9EAw0seb7IgUNr2vinQWtcaQ9XFh6pm5HNz9qKfK6jyDYkYcp4CHziBB2qKTX4eZO/usqY9zJK3enVUembf/Q7IRO046Xm7HM96CJS17L9LP99x/3RsgXaU0Yky9UMNQQXR5buw0EyZ+PA0ZdgX+K4ue1MvY6GsISDMCPQORmyOwM8ElGWUTLZ5Ed2m6oB4HEVZxYbOZqu3UrRn1kq7quP8on+KqP56VbJD77HApY4LmPoJ+Ygl2PLNFR5I42ssdaLg4wL0SgEu1lNe0SRrRsLoyMdZHu0cGtQhZdOeu5bkO7w2Vx0PmYGFSl0TJyhFrCaqfkgfxJ1w8cgSQd5FzI5w8tcM85OJpmgcvg4KV4=
MIME-Version: 1.0
X-OriginatorOrg: aampglobal.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a819479-8f29-441b-7d2b-08d6abdb4cca
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Mar 2019 19:52:49.1738 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: e20e3a66-8b9e-46e9-b859-cb654c1ec6ea
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL0PR07MB5779
X-MS-Exchange-CrossPremises-AuthAs: Internal
X-MS-Exchange-CrossPremises-AuthMechanism: 04
X-MS-Exchange-CrossPremises-AuthSource: BL0PR07MB4115.namprd07.prod.outlook.com
X-MS-Exchange-CrossPremises-TransportTrafficType: Email
X-MS-Exchange-CrossPremises-TransportTrafficSubType: 
X-MS-Exchange-CrossPremises-SCL: 1
X-MS-Exchange-CrossPremises-messagesource: StoreDriver
X-MS-Exchange-CrossPremises-BCC: 
X-MS-Exchange-CrossPremises-originalclientipaddress: 96.59.174.230
X-MS-Exchange-CrossPremises-transporttraffictype: Email
X-MS-Exchange-CrossPremises-transporttrafficsubtype: 
X-MS-Exchange-CrossPremises-antispam-scancontext: DIR:Originating; SFV:NSPM;
	SKIP:0; 
X-MS-Exchange-CrossPremises-processed-by-journaling: Journal Agent
X-OrganizationHeadersPreserved: BL0PR07MB5779.namprd07.prod.outlook.com
Subject: Auto-clean deployed images/output files generated in a class
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
X-List-Received-Date: Tue, 19 Mar 2019 15:24:25 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_BL0PR07MB4115240BF395276102164CCAAD470BL0PR07MB4115namp_"

--_000_BL0PR07MB4115240BF395276102164CCAAD470BL0PR07MB4115namp_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I am writing a custom bitbake class in order to generate a custom compound =
image for my project. This class gets inherited by my normal image recipe f=
or my project. I am running Sumo. In my class, I simply write a task in pyt=
hon and add the task via the normal "addtask" method.  My task runs ok, it =
generates the image I need and puts it in the deploy directory .

What I want to happen, is for the image (or any files I create in the deplo=
y directory for that matter) to be deleted whenever I run the clean command=
 for the image that inherits this class. I know I could probably define a c=
lean_append function or something, but it seems that there is some way to s=
et this up to happen automatically.

I am following this class as an example:
https://github.com/sbabic/meta-swupdate/blob/sumo/classes/swupdate.bbclass

and going through the code there, I don't really understand what statements=
 cause the generated image file to be deleted, however, if I inherit that c=
lass, and build my image, it generates a custom image, and upon cleaning, i=
t does indeed delete the generated image. If I could understand what makes =
this happen, then I would be able to do this in my image as well.

Thanks,
Ken Sloat

--_000_BL0PR07MB4115240BF395276102164CCAAD470BL0PR07MB4115namp_
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
	{mso-style-type:export-only;}
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
<p class=3D"MsoNormal">I am writing a custom bitbake class in order to gene=
rate a custom compound image for my project. This class gets inherited by m=
y normal image recipe for my project. I am running Sumo. In my class, I sim=
ply write a task in python and add
 the task via the normal &#8220;addtask&#8221; method. &nbsp;My task runs o=
k, it generates the image I need and puts it in the deploy directory .<o:p>=
</o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">What I want to happen, is for the image (or any file=
s I create in the deploy directory for that matter) to be deleted whenever =
I run the clean command for the image that inherits this class. I know I co=
uld probably define a clean_append
 function or something, but it seems that there is some way to set this up =
to happen automatically.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I am following this class as an example:<o:p></o:p><=
/p>
<p class=3D"MsoNormal"><a href=3D"https://github.com/sbabic/meta-swupdate/b=
lob/sumo/classes/swupdate.bbclass">https://github.com/sbabic/meta-swupdate/=
blob/sumo/classes/swupdate.bbclass</a><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">and going through the code there, I don&#8217;t real=
ly understand what statements cause the generated image file to be deleted,=
 however, if I inherit that class, and build my image, it generates a custo=
m image, and upon cleaning, it does indeed
 delete the generated image. If I could understand what makes this happen, =
then I would be able to do this in my image as well.
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks,<o:p></o:p></p>
<p class=3D"MsoNormal"><span style=3D"color:#212121">Ken Sloat<o:p></o:p></=
span></p>
</div>
</body>
</html>

--_000_BL0PR07MB4115240BF395276102164CCAAD470BL0PR07MB4115namp_--
