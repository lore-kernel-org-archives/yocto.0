Return-Path: <david.c.stewart@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2CFBE006B1
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 15:28:13 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 03 Jul 2012 15:28:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; 
	d="scan'208,217";a="188147217"
Received: from orsmsx604.amr.corp.intel.com ([10.22.226.87])
	by fmsmga002.fm.intel.com with ESMTP; 03 Jul 2012 15:28:13 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	orsmsx604.amr.corp.intel.com (10.22.226.87) with Microsoft SMTP Server
	(TLS) id 8.2.255.0; Tue, 3 Jul 2012 15:28:12 -0700
Received: from orsmsx105.amr.corp.intel.com ([169.254.4.133]) by
	ORSMSX153.amr.corp.intel.com ([169.254.13.35]) with mapi id
	14.01.0355.002; Tue, 3 Jul 2012 15:28:12 -0700
From: "Stewart, David C" <david.c.stewart@intel.com>
To: yocto <yocto@yoctoproject.org>
Thread-Topic: Web Hob's design - missing developer workflow?
Thread-Index: Ac1Zax96IhXOiQXTSNCyxJm/YH/19A==
Date: Tue, 3 Jul 2012 22:28:12 +0000
Message-ID: <CDED78A957032E45B3239CDDA7642D151C894004@ORSMSX105.amr.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Web Hob's design - missing developer workflow?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 03 Jul 2012 22:28:14 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_CDED78A957032E45B3239CDDA7642D151C894004ORSMSX105amrcor_"

--_000_CDED78A957032E45B3239CDDA7642D151C894004ORSMSX105amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Gang - I was talking with Jessica today about the WebHob design and how we =
want to prioritize some of the feature development. (And I want to say here=
, I really appreciate the clarity and thought process Jessica is bringing t=
o the discussion!)

It dawned on me as we were talking that we may have something really fundam=
ental missing in the design in the area of workflow. I don't know that we h=
ave yet thought through the story of how someone uses this thing to get the=
ir job done.  Let me give you a couple of examples:

I'm developing an embedded device which is headless, based on a particular =
board. It's similar enough to Baryon that I can start there.  So in Web Hob=
, I pick my machine type and build profile, I add in the BSP layer and Bary=
on layer and do a build. It succeeds, so I can now boot up my board and it =
works.

Now I want to do something like change the default root password. OK, I don=
't know where that file is located so how do I edit it? (Remember, there ar=
e no local files to do a find | grep to locate "passwd" anyplace.) So how d=
o I change this?

In fact, if I want to edit any of the static files we provide in YP, I don'=
t know how to do this.

Next I want to add my own application, which consists of .c files, .h files=
 and a makefile. (Because I am really old school). So I create a .bb file f=
or this and then... what? How do I get this collection of files into my pro=
ject in WebHob to build it?

For that last one, I guess I could treat it as a layer, since I see a way t=
o provide an external layer to WebHob. OK, it means I need to create a conf=
/layer.conf file, right? Do I have any clues on how to do this or am I on m=
y own?

Oh, and when I tried to make my new layer build, I had a compile error, whi=
ch I just fixed in a .c file. How do I get that file onto the WebHob server=
? Do I need to reload the whole layer?

If you have followed me so far on this journey, you can see that we have cr=
eated a system which can build a custom linux and add/remove packages. But =
when it comes to the steps of actually doing real development, I think ther=
e is still something missing.

I would challenge the team to think through the bigger developer's story li=
ne and make sure we have the support we need in WebHob.  Thanks...

Dave

--_000_CDED78A957032E45B3239CDDA7642D151C894004ORSMSX105amrcor_
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
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
<p class=3D"MsoNormal">Gang &#8211; I was talking with Jessica today about =
the WebHob design and how we want to prioritize some of the feature develop=
ment. (And I want to say here, I really appreciate the clarity and thought =
process Jessica is bringing to the discussion!)<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">It dawned on me as we were talking that we may have =
something really fundamental missing in the design in the area of workflow.=
 I don&#8217;t know that we have yet thought through the story of how someo=
ne uses this thing to get their job done.&nbsp;
 Let me give you a couple of examples:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I&#8217;m developing an embedded device which is hea=
dless, based on a particular board. It&#8217;s similar enough to Baryon tha=
t I can start there.&nbsp; So in Web Hob, I pick my machine type and build =
profile, I add in the BSP layer and Baryon layer and
 do a build. It succeeds, so I can now boot up my board and it works.<o:p><=
/o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Now I want to do something like change the default r=
oot password. OK, I don&#8217;t know where that file is located so how do I=
 edit it? (Remember, there are no local files to do a find | grep to locate=
 &#8220;passwd&#8221; anyplace.) So how do I change
 this?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">In fact, if I want to edit any of the static files w=
e provide in YP, I don&#8217;t know how to do this.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Next I want to add my own application, which consist=
s of .c files, .h files and a makefile. (Because I am really old school). S=
o I create a .bb file for this and then&#8230; what? How do I get this coll=
ection of files into my project in WebHob
 to build it?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">For that last one, I guess I could treat it as a lay=
er, since I see a way to provide an external layer to WebHob. OK, it means =
I need to create a conf/layer.conf file, right? Do I have any clues on how =
to do this or am I on my own?<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Oh, and when I tried to make my new layer build, I h=
ad a compile error, which I just fixed in a .c file. How do I get that file=
 onto the WebHob server? Do I need to reload the whole layer?<o:p></o:p></p=
>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">If you have followed me so far on this journey, you =
can see that we have created a system which can build a custom linux and ad=
d/remove packages. But when it comes to the steps of actually doing real de=
velopment, I think there is still
 something missing.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">I would challenge the team to think through the bigg=
er developer&#8217;s story line and make sure we have the support we need i=
n WebHob.&nbsp; Thanks&#8230;<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Dave<o:p></o:p></p>
</div>
</body>
</html>

--_000_CDED78A957032E45B3239CDDA7642D151C894004ORSMSX105amrcor_--
