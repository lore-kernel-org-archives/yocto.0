Return-Path: <Aditya.Tayade@kpit.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41DE3E0095C; Mon, 13 Aug 2018 05:54:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, HTTPS_HTTP_MISMATCH,
	RCVD_IN_DNSWL_NONE, SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.100.75 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  2.0 HTTPS_HTTP_MISMATCH BODY: HTTPS_HTTP_MISMATCH
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from IND01-MA1-obe.outbound.protection.outlook.com
	(mail-ma1ind01on0075.outbound.protection.outlook.com [104.47.100.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC934E006F1
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2018 05:54:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kpit.com; s=selector1; 
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
	bh=m91s1D/7UVmMLuC0MbSmsyH46nBfpblkATgD8kAt5f8=;
	b=lYbxA2oSBDjvEIHQ6hb6CYC1bgfcTkS/zf2On/AZSBsAbijqsuiH3hI3ug35c6DkxMf3opjA9T8J7H5HyZcCmcJSWB2hNA4o8yBGTButn4d+MZw3rurRbzpPk9C7Mzku76oaZq/njyHK0ckCbzQC8jpivEVWE+sHkfRrx7gBxIk=
Received: from MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM (10.164.150.144) by
	MAXPR01MB0058.INDPRD01.PROD.OUTLOOK.COM (10.164.148.146) with Microsoft
	SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
	15.20.1038.23; Mon, 13 Aug 2018 12:40:29 +0000
Received: from MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM
	([fe80::6dde:1fb8:4a3f:52a0]) by
	MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM
	([fe80::6dde:1fb8:4a3f:52a0%4]) with mapi id 15.20.1038.023;
	Mon, 13 Aug 2018 12:40:29 +0000
From: Aditya Tayade <Aditya.Tayade@kpit.com>
To: Randy MacLeod <randy.macleod@windriver.com>,
	"openembedded-issues@lists.openembedded.org"
	<openembedded-issues@lists.openembedded.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>
Thread-Topic: [oe] [meta-openembedded] Original ltrace_git.bb SRCREV commit
	used is now unavailable in git tarball from ltrace.org
Thread-Index: AQHUJeQm/4yLZzHvj0afNKZ76ZBrf6S9S6H1
Date: Mon, 13 Aug 2018 12:40:29 +0000
Message-ID: <MAXPR01MB0348964B2BE771AC0A01AE1191390@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>
References: <MA1PR01MB053655685322C5FE49975DADEE550@MA1PR01MB0536.INDPRD01.PROD.OUTLOOK.COM>
	<MAXPR01MB034862B6CB3CFEF598A3BA47912A0@MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM>,
	<98805952-f1f9-d24e-03c2-8f58fbc64d1b@windriver.com>
In-Reply-To: <98805952-f1f9-d24e-03c2-8f58fbc64d1b@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=Aditya.Tayade@kpit.com; 
x-originating-ip: [115.112.39.238]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; MAXPR01MB0058;
	6:KSj/XsX9YmTbNjvm98yZb4vEEH/yTTgMt7G0ab1ig4WiOW6FCTXMkYFeO/Nt1hb7Y3uVURFXb1BmqwTQHWw4xbsQIkSxHzFEk6oHAffmr5H/dDA8Mu8mu3xGeFVnd/itANYy8fnvNsB2xWCy96s0kMDRCzo+wniMNJIFzM0CfrA2rREY4uLIP5awBC1Ws/ZSadL4I/uL8LtTuleiRm4Nor0nhzlfdwBsHHCHuS66JkYVDmp71jaxERT6SLVTIz1AqNWrru1ogofJoJ/6oUeukxczmaUmnQ60WUsQ8QB6bJrrNkeoFs4svs4Dnza0c82Rfs5waJDLEnRpCKTzY4FruLJUGHg1ID15C0xRtqQSVQusIi00cS7yPHRKQHJmmVfynq9tg7KihiPsbCO4SrLiil4tiIyopowzxLSGby5ur+YubejmtjpkmWq/CrsjirbCeEznKZHgLGJXYHFfhUnbMw==;
	5:wiETSC/Xztzr03i6kLHzasKH5hq+ipzNn3yucwteaWR5SYlRNl4FJc2BZHB+ZIeHydoHABzi+zM1WGUw70YhD/N+nQyggRob1R479Mx4jhYfZBrYy4kAge/O5LoWonDZ3jW5mtRVcJ4M72zXhaka//TM+nM0RSUB/BNleLvsV/w=;
	7:sqEhn49uNXTP/YtqPJSy1Wb4M5eb6ex91lm7j5qUi4YtB4Py3qj3YGQn8HZ+kol4dU7OnksfP+18vtei33TYGAXQ9oWUB5rHFtWHa7TAhJNFpUosju9oN9C9cOeYIiNl2fYYB+dgP9HqX94rXZXIiUT1+2ihtaAHOhsuWSZv3xRLk7LutMiSZtYZJ1sHN2odc9sbuGaeln1rPYJHC/GMlzky11s3ZtMxyXb6EZjxKTV45yD7DTvb80et5Gj2tUme
x-ms-exchange-antispam-srfa-diagnostics: SOS;
x-ms-office365-filtering-correlation-id: efd776f3-699a-44c4-f3a9-08d60119f3ab
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
	RULEID:(7020095)(4652040)(8989117)(4534165)(7168020)(4627221)(201703031133081)(201702281549075)(8990107)(5600074)(711020)(4618075)(2017052603328)(7153060)(7193020);
	SRVR:MAXPR01MB0058; 
x-ms-traffictypediagnostic: MAXPR01MB0058:
x-microsoft-antispam-prvs: <MAXPR01MB0058D20D273D7F4BC33C343691390@MAXPR01MB0058.INDPRD01.PROD.OUTLOOK.COM>
x-exchange-antispam-report-test: UriScan:(189930954265078)(223705240517415)(264703809997249)(193864172574918);
x-ms-exchange-senderadcheck: 1
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040522)(2401047)(5005006)(8121501046)(3002001)(10201501046)(3231311)(944501410)(52105095)(93006095)(93001095)(6055026)(149027)(150027)(6041310)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(20161123562045)(20161123564045)(20161123560045)(6072148)(201708071742011)(7699016);
	SRVR:MAXPR01MB0058; BCL:0; PCL:0; RULEID:; SRVR:MAXPR01MB0058; 
x-forefront-prvs: 07630F72AD
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(376002)(396003)(136003)(346002)(39860400002)(366004)(189003)(199004)(53754006)(11346002)(53546011)(6116002)(26005)(3846002)(7736002)(966005)(14454004)(446003)(66066001)(6246003)(186003)(316002)(72206003)(106356001)(53936002)(81166006)(6606003)(256004)(478600001)(8936002)(4326008)(14444005)(74316002)(19627405001)(54906003)(606006)(107886003)(81156014)(25786009)(6506007)(110136005)(476003)(55236004)(486006)(5660300001)(102836004)(68736007)(229853002)(55016002)(45080400002)(105586002)(5250100002)(86362001)(2900100001)(2201001)(2501003)(76176011)(97736004)(236005)(2906002)(8676002)(33656002)(9686003)(99286004)(6436002)(6306002)(54896002)(7696005);
	DIR:OUT; SFP:1101; SCL:1; SRVR:MAXPR01MB0058;
	H:MAXPR01MB0348.INDPRD01.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: kpit.com does not designate
	permitted sender hosts)
x-microsoft-antispam-message-info: sPNJGOCeOod2zyECJPZcVL8nQBUArnxk0R72WZl9gZ+hMTfnrvJFKIEOwX37gTQCeNc+EAaF4tcOvpqJDVXn729bMR7GlPw0FxEo8jonGsBwV+DVtt53EkveIy3cQLEUS9K0dqqxEAcVkVeaTRSvBMtv5mEAXI2o7M/IEUe+jIxzUdNjfLUL+BD0WW4srj/pspz1jG0chb6e2Cykmt3yj+HgaiHYr5qO7AGbbHF9knJ3R0yc0ZwmGMQDOZ3REf2YTxq+tD0veNDtvnmjjN5XPVlTrC42qAIlee1E4p1/tBPoyekKGuQxP6WCH+JIAN8hMyy3LVCYaP4q1ADxCzp4pyGrrUdjd82t3SrHXmKwSu4=
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: kpit.com
X-MS-Exchange-CrossTenant-Network-Message-Id: efd776f3-699a-44c4-f3a9-08d60119f3ab
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Aug 2018 12:40:29.1625 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3539451e-b46e-4a26-a242-ff61502855c7
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MAXPR01MB0058
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [oe] [meta-openembedded] Original ltrace_git.bb SRCREV commit used is now unavailable in git tarball from ltrace.org
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
X-List-Received-Date: Mon, 13 Aug 2018 12:54:56 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MAXPR01MB0348964B2BE771AC0A01AE1191390MAXPR01MB0348INDP_"

--_000_MAXPR01MB0348964B2BE771AC0A01AE1191390MAXPR01MB0348INDP_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Randy,


Sent patch for this with below subject line:

[meta-oe][PATCH] ltrace: added alternate source


Thanks & Regards,

Aditya Tayade


________________________________
From: Randy MacLeod <randy.macleod@windriver.com>
Sent: Saturday, July 28, 2018 1:27 AM
To: Aditya Tayade; openembedded-issues@lists.openembedded.org; openembedded=
-devel@lists.openembedded.org
Cc: yocto@yoctoproject.org; Nisha Parrakat
Subject: Re: [oe] [meta-openembedded] Original ltrace_git.bb SRCREV commit =
used is now unavailable in git tarball from ltrace.org

On 07/27/2018 06:34 AM, Aditya Tayade wrote:
> Hi,
>
>
> Me too facing same issue. Any advice on this.

Archived versions to fix previous releases may be here:
    https://apac01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fal=
ioth-archive.debian.org%2Fgit%2Fcollab-maint%2F&amp;data=3D02%7C01%7CAditya=
.Tayade%40kpit.com%7Ce77886ee683842dd047d08d5f3fb451f%7C3539451eb46e4a26a24=
2ff61502855c7%7C0%7C0%7C636683182900149535&amp;sdata=3DUB%2F4VAlY8JydqNvYws=
y4%2BDQd5Yfbz%2FPnMmzL9xp8GrY%3D&amp;reserved=3D0

for master, a commit to pull from ltrace.org makes sense
to me but someone who follows debian development might
be able to help locate the git repo. All I found was:
    https://apac01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fal=
ioth-archive.debian.org%2Fgit%2Fcollab-maint%2F&amp;data=3D02%7C01%7CAditya=
.Tayade%40kpit.com%7Ce77886ee683842dd047d08d5f3fb451f%7C3539451eb46e4a26a24=
2ff61502855c7%7C0%7C0%7C636683182900149535&amp;sdata=3DUB%2F4VAlY8JydqNvYws=
y4%2BDQd5Yfbz%2FPnMmzL9xp8GrY%3D&amp;reserved=3D0
and a maze of twisty little hyperlinks.

Aditya, Nisha,

Will you send a patch? See:
    https://apac01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fww=
w.openembedded.org%2Fwiki%2FHow_to_submit_a_patch_to_OpenEmbedded&amp;data=
=3D02%7C01%7CAditya.Tayade%40kpit.com%7Ce77886ee683842dd047d08d5f3fb451f%7C=
3539451eb46e4a26a242ff61502855c7%7C0%7C0%7C636683182900149535&amp;sdata=3Dg=
sSW5cWRMpdL%2F7TLEVcj5K1kYfDbWZstw22RiSSGA%2BY%3D&amp;reserved=3D0

../Randy


>
>
>
> Regards,
>
> Aditya Tayade
>
> ________________________________
> From: Nisha Parrakat
> Sent: Tuesday, July 24, 2018 4:08:12 PM
> To: openembedded-issues@lists.openembedded.org; openembedded-devel@lists.=
openembedded.org
> Cc: yocto@yoctoproject.org
> Subject: [meta-openembedded] Original ltrace_git.bb SRCREV commit used is=
 now unavailable in git tarball from ltrace.org
>
>
> Hi all,
>
>
> ltrace recipe is pointing to a fetch url (git://anonscm.debian.org/collab=
-maint/ltrace.git;branch=3Dmaster) that is discontinued now.
>
> No ltrace found in alternate salsa.debian.org.
>
> Tarball for ltrace is present in ltrace.org but the SRCREV in the mention=
ed in the original recipe is not found any more but we do see the same comm=
it with another sha but a different git history.
>
>
> Please advice if we should modify the SRCREV to reflect the new git sourc=
e from ltrace.org?
>
>
> original SRCREV in recipe c22d3594...
>
> corresponding SRCREV coming from the git tarball is ea8928da...
>
>
> Please advice .
>
>
>
>
> Regards,
> Ms Nisha Parrakat
> KPIT Technologies Ltd, Pune, INDIA
>
>
> This message contains information that may be privileged or confidential =
and is the property of the KPIT Technologies Ltd. It is intended only for t=
he person to whom it is addressed. If you are not the intended recipient, y=
ou are not authorized to read, print, retain copy, disseminate, distribute,=
 or use this message or any part thereof. If you receive this message in er=
ror, please notify the sender immediately and delete all copies of this mes=
sage. KPIT Technologies Ltd. does not accept any liability for virus infect=
ed mails.
>


--
# Randy MacLeod
# Wind River Linux
This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print, retain copy, disseminate, distribute, o=
r use this message or any part thereof. If you receive this message in erro=
r, please notify the sender immediately and delete all copies of this messa=
ge. KPIT Technologies Ltd. does not accept any liability for virus infected=
 mails.

--_000_MAXPR01MB0348964B2BE771AC0A01AE1191390MAXPR01MB0348INDP_
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
<div id=3D"divtagdefaultwrapper" dir=3D"ltr" style=3D"font-size:12pt; color=
:rgb(0,0,0); font-family:Calibri,Helvetica,sans-serif,EmojiFont,&quot;Apple=
 Color Emoji&quot;,&quot;Segoe UI Emoji&quot;,NotoColorEmoji,&quot;Segoe UI=
 Symbol&quot;,&quot;Android Emoji&quot;,EmojiSymbols">
<p style=3D"margin-top:0; margin-bottom:0">Hi Randy,</p>
<p style=3D"margin-top:0; margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0">Sent patch for this with below s=
ubject line:</p>
<p style=3D"margin-top:0; margin-bottom:0"><span style=3D"color: rgb(51, 51=
, 51); font-size: 21px;">[meta-oe][PATCH] ltrace: added alternate source</s=
pan><br>
</p>
<p style=3D"margin-top:0; margin-bottom:0"><span style=3D"color: rgb(51, 51=
, 51); font-size: 21px;"><br>
</span></p>
<p style=3D"margin-top:0; margin-bottom:0">Thanks &amp;&nbsp;Regards,</p>
<p style=3D"margin-top:0; margin-bottom:0">Aditya Tayade</p>
<br>
<br>
<div style=3D"color:rgb(0,0,0)">
<hr tabindex=3D"-1" style=3D"display:inline-block; width:98%">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" co=
lor=3D"#000000" style=3D"font-size:11pt"><b>From:</b> Randy MacLeod &lt;ran=
dy.macleod@windriver.com&gt;<br>
<b>Sent:</b> Saturday, July 28, 2018 1:27 AM<br>
<b>To:</b> Aditya Tayade; openembedded-issues@lists.openembedded.org; opene=
mbedded-devel@lists.openembedded.org<br>
<b>Cc:</b> yocto@yoctoproject.org; Nisha Parrakat<br>
<b>Subject:</b> Re: [oe] [meta-openembedded] Original ltrace_git.bb SRCREV =
commit used is now unavailable in git tarball from ltrace.org</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt"=
>
<div class=3D"PlainText">On 07/27/2018 06:34 AM, Aditya Tayade wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; <br>
&gt; Me too facing same issue. Any advice on this.<br>
<br>
Archived versions to fix previous releases may be here:<br>
&nbsp;&nbsp;&nbsp; <a href=3D"https://apac01.safelinks.protection.outlook.c=
om/?url=3Dhttps%3A%2F%2Falioth-archive.debian.org%2Fgit%2Fcollab-maint%2F&a=
mp;amp;data=3D02%7C01%7CAditya.Tayade%40kpit.com%7Ce77886ee683842dd047d08d5=
f3fb451f%7C3539451eb46e4a26a242ff61502855c7%7C0%7C0%7C636683182900149535&am=
p;amp;sdata=3DUB%2F4VAlY8JydqNvYwsy4%2BDQd5Yfbz%2FPnMmzL9xp8GrY%3D&amp;amp;=
reserved=3D0" id=3D"LPlnk32022" class=3D"OWAAutoLink" previewremoved=3D"tru=
e">
https://apac01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Falioth=
-archive.debian.org%2Fgit%2Fcollab-maint%2F&amp;amp;data=3D02%7C01%7CAditya=
.Tayade%40kpit.com%7Ce77886ee683842dd047d08d5f3fb451f%7C3539451eb46e4a26a24=
2ff61502855c7%7C0%7C0%7C636683182900149535&amp;amp;sdata=3DUB%2F4VAlY8JydqN=
vYwsy4%2BDQd5Yfbz%2FPnMmzL9xp8GrY%3D&amp;amp;reserved=3D0</a><br>
<br>
for master, a commit to pull from ltrace.org makes sense<br>
to me but someone who follows debian development might<br>
be able to help locate the git repo. All I found was:<br>
&nbsp;&nbsp;&nbsp; <a href=3D"https://apac01.safelinks.protection.outlook.c=
om/?url=3Dhttps%3A%2F%2Falioth-archive.debian.org%2Fgit%2Fcollab-maint%2F&a=
mp;amp;data=3D02%7C01%7CAditya.Tayade%40kpit.com%7Ce77886ee683842dd047d08d5=
f3fb451f%7C3539451eb46e4a26a242ff61502855c7%7C0%7C0%7C636683182900149535&am=
p;amp;sdata=3DUB%2F4VAlY8JydqNvYwsy4%2BDQd5Yfbz%2FPnMmzL9xp8GrY%3D&amp;amp;=
reserved=3D0" id=3D"LPlnk568703" class=3D"OWAAutoLink" previewremoved=3D"tr=
ue">
https://apac01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Falioth=
-archive.debian.org%2Fgit%2Fcollab-maint%2F&amp;amp;data=3D02%7C01%7CAditya=
.Tayade%40kpit.com%7Ce77886ee683842dd047d08d5f3fb451f%7C3539451eb46e4a26a24=
2ff61502855c7%7C0%7C0%7C636683182900149535&amp;amp;sdata=3DUB%2F4VAlY8JydqN=
vYwsy4%2BDQd5Yfbz%2FPnMmzL9xp8GrY%3D&amp;amp;reserved=3D0</a><br>
and a maze of twisty little hyperlinks.<br>
<br>
Aditya, Nisha,<br>
<br>
Will you send a patch? See:<br>
&nbsp;&nbsp;&nbsp; <a href=3D"https://apac01.safelinks.protection.outlook.c=
om/?url=3Dhttps%3A%2F%2Fwww.openembedded.org%2Fwiki%2FHow_to_submit_a_patch=
_to_OpenEmbedded&amp;amp;data=3D02%7C01%7CAditya.Tayade%40kpit.com%7Ce77886=
ee683842dd047d08d5f3fb451f%7C3539451eb46e4a26a242ff61502855c7%7C0%7C0%7C636=
683182900149535&amp;amp;sdata=3DgsSW5cWRMpdL%2F7TLEVcj5K1kYfDbWZstw22RiSSGA=
%2BY%3D&amp;amp;reserved=3D0" id=3D"LPlnk295547" class=3D"OWAAutoLink" prev=
iewremoved=3D"true">
https://apac01.safelinks.protection.outlook.com/?url=3Dhttps%3A%2F%2Fwww.op=
enembedded.org%2Fwiki%2FHow_to_submit_a_patch_to_OpenEmbedded&amp;amp;data=
=3D02%7C01%7CAditya.Tayade%40kpit.com%7Ce77886ee683842dd047d08d5f3fb451f%7C=
3539451eb46e4a26a242ff61502855c7%7C0%7C0%7C636683182900149535&amp;amp;sdata=
=3DgsSW5cWRMpdL%2F7TLEVcj5K1kYfDbWZstw22RiSSGA%2BY%3D&amp;amp;reserved=3D0<=
/a><br>
<br>
../Randy<br>
<br>
<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; Regards,<br>
&gt; <br>
&gt; Aditya Tayade<br>
&gt; <br>
&gt; ________________________________<br>
&gt; From: Nisha Parrakat<br>
&gt; Sent: Tuesday, July 24, 2018 4:08:12 PM<br>
&gt; To: openembedded-issues@lists.openembedded.org; openembedded-devel@lis=
ts.openembedded.org<br>
&gt; Cc: yocto@yoctoproject.org<br>
&gt; Subject: [meta-openembedded] Original ltrace_git.bb SRCREV commit used=
 is now unavailable in git tarball from ltrace.org<br>
&gt; <br>
&gt; <br>
&gt; Hi all,<br>
&gt; <br>
&gt; <br>
&gt; ltrace recipe is pointing to a fetch url (git://anonscm.debian.org/col=
lab-maint/ltrace.git;branch=3Dmaster) that is discontinued now.<br>
&gt; <br>
&gt; No ltrace found in alternate salsa.debian.org.<br>
&gt; <br>
&gt; Tarball for ltrace is present in ltrace.org but the SRCREV in the ment=
ioned in the original recipe is not found any more but we do see the same c=
ommit with another sha but a different git history.<br>
&gt; <br>
&gt; <br>
&gt; Please advice if we should modify the SRCREV to reflect the new git so=
urce from ltrace.org?<br>
&gt; <br>
&gt; <br>
&gt; original SRCREV in recipe c22d3594...<br>
&gt; <br>
&gt; corresponding SRCREV coming from the git tarball is ea8928da...<br>
&gt; <br>
&gt; <br>
&gt; Please advice .<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; Regards,<br>
&gt; Ms Nisha Parrakat<br>
&gt; KPIT Technologies Ltd, Pune, INDIA<br>
&gt; <br>
&gt; <br>
&gt; This message contains information that may be privileged or confidenti=
al and is the property of the KPIT Technologies Ltd. It is intended only fo=
r the person to whom it is addressed. If you are not the intended recipient=
, you are not authorized to read, print,
 retain copy, disseminate, distribute, or use this message or any part ther=
eof. If you receive this message in error, please notify the sender immedia=
tely and delete all copies of this message. KPIT Technologies Ltd. does not=
 accept any liability for virus
 infected mails.<br>
&gt; <br>
<br>
<br>
-- <br>
# Randy MacLeod<br>
# Wind River Linux<br>
</div>
</span></font></div>
</div>
</div>
This message contains information that may be privileged or confidential an=
d is the property of the KPIT Technologies Ltd. It is intended only for the=
 person to whom it is addressed. If you are not the intended recipient, you=
 are not authorized to read, print,
 retain copy, disseminate, distribute, or use this message or any part ther=
eof. If you receive this message in error, please notify the sender immedia=
tely and delete all copies of this message. KPIT Technologies Ltd. does not=
 accept any liability for virus
 infected mails.
</body>
</html>

--_000_MAXPR01MB0348964B2BE771AC0A01AE1191390MAXPR01MB0348INDP_--
