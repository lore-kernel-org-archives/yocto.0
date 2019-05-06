Return-Path: <jpewhacker@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0D552E00D36; Mon,  6 May 2019 08:06:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jpewhacker[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.181 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f181.google.com (mail-it1-f181.google.com
	[209.85.166.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 490FFE00CAA;
	Mon,  6 May 2019 08:06:50 -0700 (PDT)
Received: by mail-it1-f181.google.com with SMTP id r85so20361290itc.2;
	Mon, 06 May 2019 08:06:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:message-id:subject:to:date:in-reply-to:references:user-agent
	:mime-version; bh=/w9zWHyttCj39+UqxnaeQOM2iJ590T3KC82mYOEVjH8=;
	b=u4wUZF6nIeTrgoc+Id5zMm+S7uuVqrrhxFG4UjnGnoQR8xZmKo/9rr6aR9PEz2EcFp
	EV5wpGFPV/ehKnzyw8A07oDByrx3EI6ZL3413C2KgfCL3jnzOFZS0V9vSu8d5WYXbwr5
	n1b7SpOiyi3ood5wMUpvdm4ZdaHKLIO+XWIxEgDu6DRl6MvKLQJaGxfAhvdxfPMSwgbA
	Kb36ULOIl9E82KUOqCaFmlDAXVabkFs2EeFHQojg3xLey6qVAWtm5xZsO+HJ8gr42X0c
	20SCcT2IJybs2cnV5IynsH6q37RW6MjA97PDT9qkkNU6we6weXlNEvXefDV156zy7XTs
	WUKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:message-id:subject:to:date:in-reply-to
	:references:user-agent:mime-version;
	bh=/w9zWHyttCj39+UqxnaeQOM2iJ590T3KC82mYOEVjH8=;
	b=arWvAfDcwCR17hT8XIboMjrt2UK8/LRpWGBeGdXjJCKxmMayXCA1xnTIfn1zb72pV0
	7pA6BmwBUAlv20iOuImvAy7y/MXQupFgxeqJL+95y63ddLL0pPRCF+b9UaN8MYZSe2zj
	5WDhgRKR+sQi9zzIBRyGabebhNUi5XQZ8OcyGlQgtLVQNhBshL+LA6LuHZa6yTTxrvMX
	Opia227crKQATif9iLmBXiMuVO/y6JKrbDwfOzXzZmCImMjjerGSU5NfH2PBik6wXUVe
	BR7Nm0NsoYxfKEyURy7FXcpxXH6PXMz+0z4PUsRTQFv9aqjqh5eTfmNZf4ijhYa1/9K6
	AU/A==
X-Gm-Message-State: APjAAAX19huvfQPML2lfOludhg/+SP8Kn/0f48WmnSeHJgo2azGxSqWH
	3EfTlc0/2gYN7vOJpEA6pSFcZdx+l9g=
X-Google-Smtp-Source: APXvYqzILMJ6Q04kLGFEx3mmm5X/0tVO0zguhVTCSH9QRao9wOZ+acK6OM3xjfq2Op5t3hkH385jGg==
X-Received: by 2002:a02:3506:: with SMTP id k6mr17238761jaa.41.1557155209718; 
	Mon, 06 May 2019 08:06:49 -0700 (PDT)
Received: from ola-842mrw1.ad.garmin.com ([204.77.163.55])
	by smtp.googlemail.com with ESMTPSA id
	z14sm2028529ioh.48.2019.05.06.08.06.47
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Mon, 06 May 2019 08:06:48 -0700 (PDT)
From: Joshua Watt <jpewhacker@gmail.com>
X-Google-Original-From: Joshua Watt <JPEWhacker@gmail.com>
Message-ID: <d3d8ec8b59dcad7640cdee673405ae5c0979f11b.camel@gmail.com>
To: "Volosincu, Andreea S" <andreea.volosincu@windriver.com>, 
	"yocto-advocacy@yoctoproject.org"
	<yocto-advocacy@yoctoproject.org>, Yocto list discussion
	<yocto@yoctoproject.org>
Date: Mon, 06 May 2019 10:06:47 -0500
In-Reply-To: <A084970538D2234B96D99D06FA9D974FC378C228@ALA-MBD.corp.ad.wrs.com>
References: <A084970538D2234B96D99D06FA9D974FC378C228@ALA-MBD.corp.ad.wrs.com>
User-Agent: Evolution 3.30.5 (3.30.5-1.fc29) 
MIME-Version: 1.0
Subject: Re: Yocto Project Upcoming Conferences and Developer Days
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
X-List-Received-Date: Mon, 06 May 2019 15:06:51 -0000
Content-Type: multipart/alternative; boundary="=-MNTXSlGrQ72XlaWwjaEK"

--=-MNTXSlGrQ72XlaWwjaEK
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2019-05-03 at 18:01 +0000, Volosincu, Andreea S wrote:
> Greetings,
> 
>  
> 
> Yocto Project is pleased to announce the plans for the upcoming
> Embedded Linux Conferences in NA and Europe.
> 
>  
> 
> Here is a snapshot of our schedule:
> 
>  
> 
> ELC NA – Wednesday, August 21 - 23, 2019, Hilton San Diego Bayfront,
> San Diego, CA
> 
>                    Yocto Project is a sponsor. We’ll see you on the
> show floor
> 
>  
> 
> ELC NA Dev Day – Tuesday, August 20, 2019 - 8:00AM - 6:00PM
> 
> Set-up: 1 Meeting Room - Classroom Seating ( 60 people)
> 
> Level: Intermediate – Advanced. Participants will receive beginner
> material (videos and presentations) as pre-requisites
> 
> Includes: Morning Break, Buffet Lunch, Beer & Wine Reception with
> light appetizers

Is there any registration cost for this event, and how does one
register?
>  
> ELCE – Monday, October 28 -30, 2019, Lyon Convention Centre, Lyon,
> France
>               Yocto Project is a sponsor. We’ll see you on the show
> floor
>  
> ELCE Yocto Project Summit – Dates & Times: 
> Thursday, October 31, 2019 - 8:00AM - 6:00PM
> 
>                November 1, 2019 - 8:00 am - 6:00PM
> Set-up: 
> Day 1: 1 Meeting Room - Theater Seating for 100 for Yocto Project
> talks
> Day 2: 2 Meeting Rooms - Mixed Classroom/Theater seating for 60 &
> Classroom seating for 40 (for maintainers and users)
> Includes:
> Morning Break for 2 days
> Buffet Lunch for 2 days
> Beer & Wine Reception with light appetizers for 1 day
> 
> The goal for the second day of the summit is to build and bring the
> community together. We are interested to hear your opinions and ideas
> on how that day and those rooms should be used for. Please send your
> ideas to Andreea Volosincu and
>  Philip Balister.
>  
> We will call out an Advocacy meeting in a couple of weeks to go over
> plans and vote on the ideas for the second day of the summit.
>  
> Thanks!
> Andreea
> Yocto Project Advocacy Lead
> 
> 
> 
-- 
Joshua Watt <JPEWhacker@gmail.com>

--=-MNTXSlGrQ72XlaWwjaEK
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40" dir=3D"ltr"><head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:"Malgun Gothic";
	panose-1:2 11 5 3 2 0 0 2 0 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"\@Malgun Gothic";
	panose-1:2 11 5 3 2 0 0 2 0 4;}
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
span.EmailStyle18
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
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
<body lang=3D"EN-US" style=3D"text-align:left; direction:ltr;"><div>On Fri,=
 2019-05-03 at 18:01 +0000, Volosincu, Andreea S wrote:</div><blockquote ty=
pe=3D"cite" style=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;paddi=
ng-left:1ex">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">Greetings,<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Yocto Project is pleased to announce the plans for t=
he upcoming Embedded Linux Conferences in NA and Europe.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Here is a snapshot of our schedule:<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ELC NA =E2=80=93 Wednesday, August 21 - 23, 2019, Hi=
lton San Diego Bayfront, San Diego, CA<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; Yocto Project is a spon=
sor. We=E2=80=99ll see you on the show floor<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ELC NA Dev Day =E2=80=93 Tuesday, August 20, 2019 - =
8:00AM - 6:00PM<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">Set-up: 1 Meeting Room - =
Classroom Seating ( 60 people)<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">Level: Intermediate =E2=
=80=93 Advanced. Participants will receive beginner material (videos and pr=
esentations) as pre-requisites<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">Includes: Morning Break, =
Buffet Lunch, Beer &amp; Wine Reception with light appetizers</p></div></bl=
ockquote><div><br></div><div>Is there any registration cost for this event,=
 and how does one register?</div><div><br></div><blockquote type=3D"cite" s=
tyle=3D"margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex">=
<div class=3D"WordSection1"><p class=3D"MsoNormal" style=3D"text-indent:.5i=
n"><o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ELCE =E2=80=93 Monday, October 28 -30, 2019, Lyon Co=
nvention Centre, Lyon, France<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp; Yocto Project is a sponsor. We=E2=80=99ll see yo=
u on the show floor<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">ELCE Yocto Project Summit =E2=80=93 Dates &amp; Time=
s: <o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">Thursday, October 31, 201=
9 - 8:00AM - 6:00PM
<o:p></o:p></p>
<p class=3D"MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; November 1, 2019 - 8:00 am - 6:00PM<o:p></=
o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">Set-up: <o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">Day 1: 1 Meeting Room - T=
heater Seating for 100 for Yocto Project talks<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">Day 2: 2 Meeting Rooms - =
Mixed Classroom/Theater seating for 60 &amp; Classroom seating for 40 (for =
maintainers and users)<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">Includes:<o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">Morning Break for 2 days<=
o:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">Buffet Lunch for 2 days<o=
:p></o:p></p>
<p class=3D"MsoNormal" style=3D"text-indent:.5in">Beer &amp; Wine Reception=
 with light appetizers for 1 day<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p></o:p></p>
<p class=3D"MsoNormal">The goal for the second day of the summit is to buil=
d and bring the community together. We are interested to hear your opinions=
 and ideas on how that day and those rooms should be used for. Please send =
your ideas to Andreea Volosincu and
 Philip Balister.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">We will call out an Advocacy meeting in a couple of =
weeks to go over plans and vote on the ideas for the second day of the summ=
it.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Thanks!<o:p></o:p></p>
<p class=3D"MsoNormal">Andreea<o:p></o:p></p>
<p class=3D"MsoNormal">Yocto Project Advocacy Lead<o:p></o:p></p>
</div>


</blockquote><div><span><pre>-- <br></pre>Joshua Watt &lt;<a href=3D"mailto=
:JPEWhacker@gmail.com">JPEWhacker@gmail.com</a>&gt;</span></div></body></ht=
ml>

--=-MNTXSlGrQ72XlaWwjaEK--
