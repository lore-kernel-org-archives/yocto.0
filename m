Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28A6FE00876; Tue, 30 Sep 2014 11:30:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C411E0034C
	for <yocto@yoctoproject.org>; Tue, 30 Sep 2014 11:30:45 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by orsmga102.jf.intel.com with ESMTP; 30 Sep 2014 11:24:27 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,628,1406617200"; 
	d="scan'208,217";a="481059820"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by azsmga001.ch.intel.com with ESMTP; 30 Sep 2014 11:30:43 -0700
Received: from orsmsx156.amr.corp.intel.com (10.22.240.22) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Tue, 30 Sep 2014 11:30:43 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.56]) by
	ORSMSX156.amr.corp.intel.com ([169.254.8.137]) with mapi id
	14.03.0195.001; Tue, 30 Sep 2014 11:30:43 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: Chris Hallinan <challinan@gmail.com>, Jeff Osier-Mixon <jefro@jefro.net>
Thread-Topic: [yocto] YP documentation survey
Thread-Index: AQHP3Nty+gaH9MwPQUq78WEG9V2Ru5wZ/xGw
Date: Tue, 30 Sep 2014 18:30:42 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E3E67C@ORSMSX101.amr.corp.intel.com>
References: <CA+YB3rZasuoA8fysS3ZkbcRm9xidC7NA=Y1YAY=FYw278frkCQ@mail.gmail.com>
	<CAME0jBRVVXpK7pJBuRiONC2Uqsasz3TFnPgnp0h92H2n+_Wiqg@mail.gmail.com>
In-Reply-To: <CAME0jBRVVXpK7pJBuRiONC2Uqsasz3TFnPgnp0h92H2n+_Wiqg@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.140]
MIME-Version: 1.0
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: YP documentation survey
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
X-List-Received-Date: Tue, 30 Sep 2014 18:30:55 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_41DEA4B02DBDEF40A0F3B6D0DDB1237988E3E67CORSMSX101amrcor_"

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237988E3E67CORSMSX101amrcor_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Sounds like a make problem on the mega-manual fail.  I will look at that fi=
le and make sure that I have or at least am checking for all the various ot=
her manuals in HTML form that must exist in order for mega-manual to make. =
 Regarding the dev-manual failure I would be interested in seeing what depe=
ndencies were causing the issue.

I am glad for the "straight A"... that is good to hear Chris.

Thanks,
Scott

From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org=
] On Behalf Of Chris Hallinan
Sent: Tuesday, September 30, 2014 11:22 AM
To: Jeff Osier-Mixon
Cc: Yocto Project
Subject: Re: [yocto] YP documentation survey

You forgot the fourth question:

- Who reads the docs?  ;)

In all seriousness, the YP has some of the best docs I've ever seen come ou=
t of an open source project.

My only comment: make it easier to build the latest docs from git.  I seem =
to always hit errors, and I've seen other posts about that, too. I just did=
 a quick make DOC=3Dmega-manual on Daisy, and it failed with:
"tar: mega-manual.html: Cannot stat: No such file or directory"

make DOC=3Ddev-manual failed due to missing dependencies, and in the 30 sec=
onds I spent while writing this e-mail, I couldn't figure out what to insta=
ll on my U14.04 host to satisfy it.

I don't have much use/fondness for html docs.  Give me a searchable PDF any=
 day.

Another suggestion might be to include a setup script that makes sure the p=
roper packages are installed.

All in all, I give the docs a straight 'A' for being well written, informat=
ive, and nearly always relatively current, but then, I don't read the docs.=
.. ;)

My $0.02

Let the comments fly ;)

-Chris






On Tue, Sep 30, 2014 at 1:43 PM, Jeff Osier-Mixon <jefro@jefro.net<mailto:j=
efro@jefro.net>> wrote:
Hello - this is the first in a series of short surveys to find out how
the Yocto Project core team can continue to deliver world-class tools,
templates, and processes for creating embedded Linux operating
systems. We will try to keep the surveys short, but we strongly
encourage you to provide information and opinions on all questions.
The more information you provide, the better the Yocto Project will
be.

We appreciate all responses, either on the survey, on this thread, or
privately back to me. If you respond privately, your comments will be
kept anonymous unless otherwise specified.

We're starting with documentation.

https://www.surveymonkey.com/r/SJVQT5M

- Does the Yocto Project documentation serve your needs?

- What do you like best about the documentation?

- What do you notice that is missing?


Thanks
--
Jeff Osier-Mixon @Intel
Yocto Project Community Manager http://yoctoproject.org
--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org<mailto:yocto@yoctoproject.org>
https://lists.yoctoproject.org/listinfo/yocto



--
Life is like Linux - it never stands still.

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237988E3E67CORSMSX101amrcor_
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
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
span.hoenzb
	{mso-style-name:hoenzb;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
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
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Sounds like a make proble=
m on the mega-manual fail.&nbsp; I will look at that file and make sure tha=
t I have or at least am checking for all the various other manuals
 in HTML form that must exist in order for mega-manual to make.&nbsp; Regar=
ding the dev-manual failure I would be interested in seeing what dependenci=
es were causing the issue. &nbsp;&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">I am glad for the &#8220;=
straight A&#8221;&#8230; that is good to hear Chris.
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Thanks,
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D">Scott<o:p></o:p></span></=
p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span><=
/p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt">
<div>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;font-family:&quot=
;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span style=3D"font-s=
ize:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"> yocto-bo=
unces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
<b>On Behalf Of </b>Chris Hallinan<br>
<b>Sent:</b> Tuesday, September 30, 2014 11:22 AM<br>
<b>To:</b> Jeff Osier-Mixon<br>
<b>Cc:</b> Yocto Project<br>
<b>Subject:</b> Re: [yocto] YP documentation survey<o:p></o:p></span></p>
</div>
</div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">You forgot the fourth question:<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">- Who reads the docs? &nbsp;;)<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">In all seriousness, the YP has some of the best docs=
 I've ever seen come out of an open source project. &nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">My only comment: make it easier to build the latest =
docs from git.&nbsp; I seem to always hit errors, and I've seen other posts=
 about that, too. I just did a quick make DOC=3Dmega-manual on Daisy, and i=
t failed with:<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal">&quot;tar: mega-manual.html: Cannot stat: No such fi=
le or directory&quot; &nbsp;<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">make DOC=3Ddev-manual failed due to missing dependen=
cies, and in the 30 seconds I spent while writing this e-mail, I couldn't f=
igure out what to install on my U14.04 host to satisfy it.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">I don't have much use/fondness for html docs.&nbsp; =
Give me a searchable PDF any day.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Another suggestion might be to include a setup scrip=
t that makes sure the proper packages are installed.<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">All in all, I give the docs a straight 'A' for being=
 well written, informative, and nearly always relatively current, but then,=
 I don't read the docs... ;)<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">My $0.02<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">Let the comments fly ;)<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal">-Chris<o:p></o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</div>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<div>
<p class=3D"MsoNormal">On Tue, Sep 30, 2014 at 1:43 PM, Jeff Osier-Mixon &l=
t;<a href=3D"mailto:jefro@jefro.net" target=3D"_blank">jefro@jefro.net</a>&=
gt; wrote:<o:p></o:p></p>
<p class=3D"MsoNormal">Hello - this is the first in a series of short surve=
ys to find out how<br>
the Yocto Project core team can continue to deliver world-class tools,<br>
templates, and processes for creating embedded Linux operating<br>
systems. We will try to keep the surveys short, but we strongly<br>
encourage you to provide information and opinions on all questions.<br>
The more information you provide, the better the Yocto Project will<br>
be.<br>
<br>
We appreciate all responses, either on the survey, on this thread, or<br>
privately back to me. If you respond privately, your comments will be<br>
kept anonymous unless otherwise specified.<br>
<br>
We're starting with documentation.<br>
<br>
<a href=3D"https://www.surveymonkey.com/r/SJVQT5M" target=3D"_blank">https:=
//www.surveymonkey.com/r/SJVQT5M</a><br>
<br>
- Does the Yocto Project documentation serve your needs?<br>
<br>
- What do you like best about the documentation?<br>
<br>
- What do you notice that is missing?<br>
<br>
<br>
Thanks<br>
<span class=3D"hoenzb"><span style=3D"color:#888888">--</span></span><span =
style=3D"color:#888888"><br>
<span class=3D"hoenzb">Jeff Osier-Mixon @Intel</span><br>
<span class=3D"hoenzb">Yocto Project Community Manager <a href=3D"http://yo=
ctoproject.org" target=3D"_blank">
http://yoctoproject.org</a></span><br>
<span class=3D"hoenzb">--</span><br>
<span class=3D"hoenzb">_______________________________________________</spa=
n><br>
<span class=3D"hoenzb">yocto mailing list</span><br>
<span class=3D"hoenzb"><a href=3D"mailto:yocto@yoctoproject.org">yocto@yoct=
oproject.org</a></span><br>
<span class=3D"hoenzb"><a href=3D"https://lists.yoctoproject.org/listinfo/y=
octo" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a></=
span></span><o:p></o:p></p>
</div>
<p class=3D"MsoNormal"><br>
<br clear=3D"all">
<o:p></o:p></p>
<div>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
<p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">-- <br>
Life is like Linux - it never stands still.<o:p></o:p></p>
</div>
</div>
</div>
</body>
</html>

--_000_41DEA4B02DBDEF40A0F3B6D0DDB1237988E3E67CORSMSX101amrcor_--
