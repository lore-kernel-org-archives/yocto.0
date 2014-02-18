Return-Path: <kaweka@gazeta.pl>
Received: from mail-bk0-f50.google.com (mail-bk0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFC35E005B4
	for <yocto@yoctoproject.org>; Tue, 18 Feb 2014 12:52:21 -0800 (PST)
Received: by mail-bk0-f50.google.com with SMTP id d7so1399279bkh.37
	for <yocto@yoctoproject.org>; Tue, 18 Feb 2014 12:52:20 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:subject:content-type;
	bh=ZZMgm4GEO1TF3e+SyjzHqVC6qdqak0U3BkLTMnAuOeo=;
	b=NTX86oArTaO433qCzSIKBXFbVNkpgbUldE7aFz4h8v+i+C8IVj6G2WhecuUt4YCECV
	yCI8VLhZcZai4EC/+EkaPo/JKTuWQUAbgOcvEFm1GJF1456im1VnBTQYZ+XO63cvTys8
	dRUuKgfyj2a3TVq1wUW23RZcLgpR/V5UNrVR7SFh6tNjBFv3Ow7BXdgWC/PZLEA4BlLs
	eI26BbHtzdyNQdgUWdbgYW5amnnaFvaGRszYq4OTCzMFyTvMil4kTb5SLBZJJsPhXfgg
	8X+Dg9k8bLso2eG67mN2tfrcrip4uEUkYSfCej5NGCqi0E5cLh4RY+zO4xgvCo1a4i4r
	w3hw==
X-Gm-Message-State: ALoCoQnxX2mIHPS+Hs8Cuv9ohnJLGvAHheR7us6n7Id2/fNqbUChxVIeTTzauuZqgN9z782oY0tP
X-Received: by 10.204.102.129 with SMTP id g1mr1898929bko.39.1392756740611;
	Tue, 18 Feb 2014 12:52:20 -0800 (PST)
Received: from [127.0.0.1] (e178209020.adsl.alicedsl.de. [85.178.209.20])
	by mx.google.com with ESMTPSA id
	rf10sm15887651bkb.3.2014.02.18.12.52.19 for <yocto@yoctoproject.org>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Tue, 18 Feb 2014 12:52:20 -0800 (PST)
Message-ID: <5303C7E8.6080106@gazeta.pl>
Date: Tue, 18 Feb 2014 21:51:52 +0100
From: kaweka <kaweka@gazeta.pl>
User-Agent: Mozilla/5.0 (Windows NT 5.1;
	rv:24.0) Gecko/20100101 Thunderbird/24.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: BB/OE user - (a) generic questions, (b) one issue
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
X-List-Received-Date: Tue, 18 Feb 2014 20:52:25 -0000
Content-Type: multipart/alternative;
	boundary="------------020609090104050709050900"

--------------020609090104050709050900
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I was directed to this mailing list by guys to be met on OpenEmbedded 
irc channels.

Asking mine questions on mailing list will allow me to communicate all 
concerns and

needed details in more convenient way.

I am new to BitBake and OpenEmbedded.

The project's source directory structure show some Yocto elements,

on another hand some elements documented in Yocto manual are missing here.

Therefore, I guess the project is not based.

Manual of build system used in project provided SoC's vendor

does make a reference merely to BitBake and OpenEmbedded.

SoC's vendor name is not be met in Yocto project web.

Therefore, I guess the project is not based on Yocto.

I seems rather to be BitBake and OpenEmbedded based

and in some extend to be proprietary.

I didn't consult with the project owner the project details to be allowed

to communicate in scope of this inquiry, e.g.: the SoC name.

So please have understanding for avoiding giving such details.

If there will be a need me will check appropriate measures.

If it comes to BB / OE I am an user and a newbie.

I am also new if it comes to building/deploying/distributing the software

for linux, embedded linux.

Thus the wording used by me will frequently be incorrect or inaccurate.

I apologize that.

I encounter some issues while trying to build the applications package

according to own needs. That piece of soft is a user space application and

was implemented in scope of the project.

Me consulted the BitBake user manual in order to solve the issue.

However, further questions arise when to consult that manual.

Than the guys to be met on OE irc channels directed me

to Yocto reference manual which didn't help much.

It generates more new questions than answers the existing ones.

There are the mentioned application (user space) and some

pre-build library (at this moment unclear if kernel or user space,
actually it might be irrelevant, or not?). The application is aimed to 
use library.

At build time however the included header file cannot be found.

Thus me will have questions of two kinds:

* closing gaps in understanding regarding related BB aspects

* possible reasons of encountered probs while building and

   possible solutions

Will it be fine to ask these questions in this mailing list?


--------------020609090104050709050900
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=ISO-8859-1">
    <meta name="Generator" content="Microsoft Word 12 (filtered medium)">
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
	{margin:0cm;
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
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
  </head>
  <body bgcolor="#FFFFFF" lang="DE" link="blue" text="#000000"
    vlink="purple">
    <div class="WordSection1">
      <p class="MsoNormal"><o:p>Hi,<br>
          &nbsp;</o:p></p>
      <p class="MsoNormal"><span lang="EN-US">I was directed to this
          mailing list by guys to be met on OpenEmbedded irc channels.<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">Asking mine questions on
          mailing list will allow me to communicate all concerns and
          <o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">needed details in more
          convenient way.<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">I am new to BitBake and
          OpenEmbedded.<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">The project&#8217;s source
          directory structure show some Yocto elements,<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">on another hand some
          elements documented in Yocto manual are missing here.<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">Therefore, I guess the
          project is not based.<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">Manual of build system
          used in project provided SoC&#8217;s vendor
          <o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">does make a reference
          merely to BitBake and OpenEmbedded.<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">SoC&#8217;s vendor name is not
          be met in Yocto project web.<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">Therefore, I guess the
          project is not based on Yocto.<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">I seems rather to be
          BitBake and OpenEmbedded based<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">and in some extend to be
          proprietary.<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">I didn&#8217;t consult with the
          project owner the project details to be allowed<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">to communicate in scope of
          this inquiry, e.g.: the SoC name.<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">So please have
          understanding for avoiding giving such details.<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">If there will be a need me
          will check appropriate measures.<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">If it comes to BB / OE I
          am an user and a newbie.<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">I am also new if it comes
          to building/deploying/distributing the software<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">for linux, embedded linux.<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">Thus the wording used by
          me will frequently be incorrect or inaccurate.<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">I apologize that.<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">I encounter some issues
          while trying to build the applications package<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">according to own needs.
          That piece of soft is a user space application and
          <o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">was implemented in scope
          of the project.<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">Me consulted the BitBake
          user manual in order to solve the issue.<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">However, further questions
          arise when to consult that manual.<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">Than the guys to be met on
          OE irc channels directed me
          <o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">to Yocto reference manual
          which didn&#8217;t help much.<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">It generates more new
          questions than answers the existing ones.<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">There are the mentioned
          application (user space) and some
          <o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">pre-build library (at this
          moment unclear if kernel or user space,<br>
          actually it might be irrelevant, or not?). The application is
          aimed to use library.<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">At build time however the
          included header file cannot be found.<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">Thus me will have
          questions of two kinds:<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">* closing gaps in
          understanding regarding related BB aspects<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">* possible reasons of
          encountered probs while building and
          <o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">&nbsp;&nbsp;possible solutions<o:p></o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
      <p class="MsoNormal"><span lang="EN-US">Will it be fine to ask
          these questions in this mailing list?<o:p></o:p></span></p>
    </div>
    <font color="Maroon" face="Arial" size="2">
    </font>
  </body>
</html>

--------------020609090104050709050900--
