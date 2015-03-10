Return-Path: <pallex@networkinstruments.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6C19BE00754; Tue, 10 Mar 2015 16:27:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [208.84.65.189 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1669 seconds by postgrey-1.32 at yocto-www;
	Tue, 10 Mar 2015 16:27:33 PDT
Received: from mx0a-00158d01.pphosted.com (mx0a-00158d01.pphosted.com
	[208.84.65.189])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E622DE006E9
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 16:27:33 -0700 (PDT)
Received: from pps.filterd (m0043267.ppops.net [127.0.0.1])
	by mx0a-00158d01.pphosted.com (8.14.5/8.14.5) with SMTP id
	t2AMto7U029402
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 15:59:44 -0700
Received: from mx1.jdsu.com ([157.234.211.50])
	by mx0a-00158d01.pphosted.com with ESMTP id 1t2073ae0p-2
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=NOT)
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 15:59:44 -0700
Received: from AMEXHTCA02.ds.jdsu.net (10.239.69.12) by mx1.jdsu.com
	(10.239.15.50) with Microsoft SMTP Server (TLS) id 14.3.210.2;
	Tue, 10 Mar 2015 15:59:39 -0700
Received: from AMEXMB02.ds.jdsu.net ([fe80::cc57:c331:881d:dfc6]) by
	AMEXHTCA02.ds.jdsu.net ([fe80::843d:552:5f95:886d%15]) with mapi id
	14.03.0210.002; Tue, 10 Mar 2015 15:59:42 -0700
From: Paul Allex <pallex@networkinstruments.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Question about doing different builds: Release, Debug, Test, etc.
Thread-Index: AdBbgw/Lwk2NZ/7sRrmBCnXeAhqepw==
Date: Tue, 10 Mar 2015 22:59:42 +0000
Message-ID: <2C8A90AD962B224C80575A6F3DDD510278CE6C18@AMEXMB02.ds.jdsu.net>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [157.234.234.5]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.13.68, 1.0.33,
	0.0.0000
	definitions=2015-03-10_08:2015-03-10, 2015-03-10,
	1970-01-01 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
	spamscore=0 suspectscore=0
	phishscore=0 adultscore=0 bulkscore=0 classifier=spam adjust=0
	reason=mlx
	scancount=1 engine=7.0.1-1402240000 definitions=main-1503100235
Subject: Question about doing different builds: Release, Debug, Test, etc.
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
X-List-Received-Date: Tue, 10 Mar 2015 23:27:36 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_2C8A90AD962B224C80575A6F3DDD510278CE6C18AMEXMB02dsjdsun_"

--_000_2C8A90AD962B224C80575A6F3DDD510278CE6C18AMEXMB02dsjdsun_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hello,

I'm trying to get up to speed on Yocto and Poky, so please forgive me if I =
don't get my terminology quite right.

My basic question is, what is the preferred way to easily manage different =
kinds of builds within the Yocto environment? In our case, we would like to=
 have a debug build and a release build. The main difference between the tw=
o being which custom preprocessor macros are enabled and which ROOTFS_POSTP=
ROCESS_COMMANDs to run.

We have played around with adding different layers and recipes, but seem to=
 keep running into different issues. For example, we tried to make a debug =
and release version of our layer and application recipe, but found issues w=
ith two recipes trying to provide the same set of files. The forums and gui=
des have very helpful, but we still can't find a really good solution.

Our goal was to have a very simple process where we can execute something l=
ike "bitbake our-image-debug" and "bitbake our-image-release".

Any help would be appreciated.

Thanks,

Paul

--_000_2C8A90AD962B224C80575A6F3DDD510278CE6C18AMEXMB02dsjdsun_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 14 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Courier New";
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
<body lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div class=3D"WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Hello,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
I'm trying to get up to speed on Yocto and Poky, so please forgive me if I =
don't get my terminology quite right.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
My basic question is, what is the preferred way to easily manage different =
kinds of builds within the Yocto environment? In our case, we would like to=
 have a debug build and a release build. The main
 difference between the two being which custom preprocessor macros are enab=
led and which ROOTFS_POSTPROCESS_COMMANDs to run.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
We have played around with adding different layers and recipes, but seem to=
 keep running into different issues. For example, we tried to make a debug =
and release version of our layer and application
 recipe, but found issues with two recipes trying to provide the same set o=
f files. The forums and guides have very helpful, but we still can't find a=
 really good solution.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Our goal was to have a very simple process where we can execute something l=
ike &quot;bitbake our-image-debug&quot; and &quot;bitbake our-image-release=
&quot;.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Any help would be appreciated.<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Thanks,<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
<o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-family:&quot;Courier New&quot;">=
Paul<o:p></o:p></span></p>
</div>
</body>
</html>

--_000_2C8A90AD962B224C80575A6F3DDD510278CE6C18AMEXMB02dsjdsun_--
