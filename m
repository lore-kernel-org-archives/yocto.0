Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF836E0086D; Fri, 13 Mar 2015 04:39:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [198.152.71.100 listed in list.dnswl.org]
Received: from de307622-de-outbound.net.avaya.com
	(de307622-de-outbound.net.avaya.com [198.152.71.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37B3AE00858
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 04:39:06 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: AqsGAHHLAlWHCzIm/2dsb2JhbABagkMhIlJewS2IJwKBLkwBAQEBAQF9hBEBAQMSG14BFRVWJgEEGxqIDQGjR4R/pXwMAR+PV4NPgRYFkCSQbIxyI4ICHIFQgjN/AQEB
X-IronPort-AV: E=Sophos;i="5.11,394,1422939600"; d="scan'208,217";a="94673436"
Received: from unknown (HELO p-us1-erheast-smtpauth.us1.avaya.com)
	([135.11.50.38]) by de307622-de-outbound.net.avaya.com with ESMTP;
	13 Mar 2015 07:39:04 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC02.global.avaya.com) ([135.64.58.12])
	by p-us1-erheast-out.us1.avaya.com with ESMTP/TLS/AES128-SHA;
	13 Mar 2015 07:39:02 -0400
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC02.global.avaya.com ([135.64.58.12]) with mapi id
	14.03.0174.001; Fri, 13 Mar 2015 12:39:01 +0100
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Post install script in a recipe
Thread-Index: AdBdgkqZvOBWileSTfWCqNogmB6Uag==
Date: Fri, 13 Mar 2015 11:39:00 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3A36B9BC@AZ-FFEXMB01.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [135.64.58.48]
MIME-Version: 1.0
Subject: Post install script in a recipe
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
X-List-Received-Date: Fri, 13 Mar 2015 11:39:12 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_F38A866CD026F746A3BF0928A84397BE3A36B9BCAZFFEXMB01globa_"

--_000_F38A866CD026F746A3BF0928A84397BE3A36B9BCAZFFEXMB01globa_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,


I was trying to perform a post install activity as part of the recipe using=
 pkg_postinst_PACKAGENAME() but seems it's not working. Below is the sample=
 function we have written as part of the recipe



pkg_postinst_test (){

    #!/bin/sh -xe

    echo " we are calling post install for test"

    mkdir -p /test/logs/1

    touch /test/test1/test2/test3/sample.txt



}



testX directory exists as they are created as part of the install activity.=
 When we verify the post install we did find the file being created as belo=
w is the output



ls /test/test1/test2/test3/*.txt

ls: cannot access /test/test1/test2/test3/*.txt: No such file or directory



So any thoughts how to fix this issue as we need to perform some post insta=
ll activity as part of the package installation.



Regards,

Abhinav



--_000_F38A866CD026F746A3BF0928A84397BE3A36B9BCAZFFEXMB01globa_
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
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
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
<p class=3D"MsoNormal">Hi All,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">I was trying to perform a post install activity as part o=
f the recipe using pkg_postinst_PACKAGENAME() but seems it&#8217;s not work=
ing. Below is the sample function we have written as part of the recipe<o:p=
></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">pkg_postinst_test (){<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">&nbsp;&nbsp;&nbsp; #!/bin/sh -xe<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">&nbsp;&nbsp;&nbsp; echo &quot; we are calling post instal=
l for test&quot;<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">&nbsp;&nbsp;&nbsp; mkdir -p /test/logs/1<o:p></o:p></span=
></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">&nbsp;&nbsp;&nbsp; touch /test/test1/test2/test3/sample.t=
xt<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">}<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">testX directory exists as they are created as part of the=
 install activity. When we verify the post install we did find the file bei=
ng created as below is the output<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">ls /test/test1/test2/test3/*.txt<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">ls: cannot access /test/test1/test2/test3/*.txt: No such =
file or directory<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">So any thoughts how to fix this issue as we need to perfo=
rm some post install activity as part of the package installation.<o:p></o:=
p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;"><o:p>&nbsp;</o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">Regards,<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;">Abhinav<o:p></o:p></span></pre>
<pre><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;=
sans-serif&quot;"><o:p>&nbsp;</o:p></span></pre>
</div>
</body>
</html>

--_000_F38A866CD026F746A3BF0928A84397BE3A36B9BCAZFFEXMB01globa_--
