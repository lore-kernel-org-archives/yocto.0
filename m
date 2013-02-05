Return-Path: <eddy.lai.tw@gmail.com>
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03CFEE0146A
	for <yocto@yoctoproject.org>; Mon,  4 Feb 2013 23:47:09 -0800 (PST)
Received: by mail-ie0-f177.google.com with SMTP id 16so6982866iea.36
	for <yocto@yoctoproject.org>; Mon, 04 Feb 2013 23:47:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=x-received:message-id:date:from:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type;
	bh=uWei0cOJgLaNpb4ownlQQ90kOSLPTPUhNHxIZHKjIHQ=;
	b=0xokj0LnoKzevuPadUkLOAsrAr/h8xn+Y96Y1RTDfYEKWreX5/8e8ZJXZ4fYswFKyt
	QbVAb6oSgHrqfKdOTFrNgvGM1k2XsKJe5RsFqxh32rXW9ayqaGg6PZOOyl05iyucneZg
	KGOvm0HNeZksdo8iC0o1a1b7TIk9fIJcOQFAv+UFGkp+/n7zr/z4qa+l/pSAAUYTHu6H
	f/67TerwxnRzz10F5GYYYmRQfwUytIud/OnJ+eP4wNxMtRxZTo5IiamesQ1/PdPL+wFU
	k9ZOpQYhOp0k4q0oztgYbuo5MQ8UCnlNuzCJPX/7bg2RyNr06Nz0asYC7R16q13vNBnP
	zlTw==
X-Received: by 10.50.169.106 with SMTP id ad10mr11578626igc.88.1360050429494; 
	Mon, 04 Feb 2013 23:47:09 -0800 (PST)
Received: from [10.10.67.239] (59-124-170-50.HINET-IP.hinet.net.
	[59.124.170.50])
	by mx.google.com with ESMTPS id px5sm20637781igc.0.2013.02.04.23.47.07
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 04 Feb 2013 23:47:08 -0800 (PST)
Message-ID: <5110B8F9.5020004@gmail.com>
Date: Tue, 05 Feb 2013 15:47:05 +0800
From: Eddy Lai GMail <eddy.lai.tw@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: "Zhang, Jessica" <jessica.zhang@intel.com>
References: <CAHUNapRAcCu=82B3JX0WQweEhz0-m+5sYhdR8gtX+U3UyiKnkg@mail.gmail.com>
	<CAJTo0LZGXAgvCMDD4B+12JTSb_tjNS3xn0mrabFb5DSob8AJnw@mail.gmail.com>
	<510092A1.6050009@windriver.com>	<51013BCB.8080208@gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C57DDAE59@ORSMSX101.amr.corp.intel.com>
	<CACrgoddAs2DAbqcv3veGQo55LdBPcg=7ffFWf_b0o5ocRxoymg@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C57DDC88F@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C57DDC88F@ORSMSX101.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: install and use "bitbake -c populate_sdk"
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
X-List-Received-Date: Tue, 05 Feb 2013 07:47:10 -0000
Content-Type: multipart/alternative;
	boundary="------------000907050501050901020508"

--------------000907050501050901020508
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I have tried to copy entire 
"poky/meta-skeleton/recipes-kernel/hello-mod" folder
into my target  (poky/meta-intel/meta-jasperforest/recipes-kernel) and 
then add this line

MACHINE_EXTRA_RRECOMMENDS += "kernel-module-hello-mod"

to conf/local.conf,
but can't see hello-ko in the target binary image (core-image-basic) 
after boot USB from the target hardware,
anything else missed ? (yocto 1.3 + jasperforest BSP on x86_64 target)

Eddy
-----------------------------------
>
> Hi Eddy,
>
> I don't think build core-image-sato-sdk is the right approach.  Have 
> you looked into following the example of hello-mod under 
> meta-skeleton, to use bitbake to build your kernel module?
>
> -Jessica
>
> *From:*Lai Eddy [mailto:eddy.lai.tw@gmail.com]
> *Sent:* Wednesday, January 30, 2013 7:54 PM
> *To:* Zhang, Jessica
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] install and use "bitbake -c populate_sdk"
>
> Thanks Jessica,
>
> why I tried to use "-c populate-sdk" is because that I can find 
> "core-image-sato-sdk"  but no "core-image-basic-sdk" available, and my 
> hardware is a samll jasperforest x86_64 target with 2 serial port and 
> 1 ethernet port only, no display interface.
>
> I'm trying to find if any of following configuration suitable for my 
> kernel module driver develop/debug:
>
> 1. with the x86_64 toolchain sdk installed on my x86_64 host , build 
> my kernel module driver, then scp ".ko" binary to target for 
> insmod/debugging, but the problem I have now is the "make" always 
> pointing to /usr/src/3.2.x kernel source path (my host OS's kernel 
> version), but not the linux-yocto target kernel (3.4.x) source/header 
> path (and I don't know where's the proper 3.4.x target kernel 
> header/source files, is it inside tmp/work/...? )
>
> 2.build and run the "core-image-basic" on my target, and install the 
> sdk created with "bitbake core-image-basic -c populate-sdk", but 
> there's no "/usr/src/.." , "/lib/modules/3.4.x-yocto-stand/build" exist
>
> trying to build the "core-image-sato-sdk to see if that help for 
> target develop now...
>
> Eddy
>
> 2013/1/31 Zhang, Jessica <jessica.zhang@intel.com 
> <mailto:jessica.zhang@intel.com>>
>
> Hi Eddy,
>
> The SDK is meant to be used on development host for cross development 
> instead of target.  Sounds like you need an sdk image which contains 
> the development tools and needed development library and kernel 
> sources.  Please refer to  core-image-sato-sdk for how to customize 
> your image to allow your do development work on target.
>
> Thanks,
> Jessica
>
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org 
> <mailto:yocto-bounces@yoctoproject.org> 
> [mailto:yocto-bounces@yoctoproject.org 
> <mailto:yocto-bounces@yoctoproject.org>] On Behalf Of Eddy Lai GMail
> Sent: Thursday, January 24, 2013 5:49 AM
> To: yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> Subject: Re: [yocto] install and use "bitbake -c populate_sdk"
>
> Hi,
>
> I have build and boot the image from USB flash disk with the .hddimg 
> created by "bitbake -k core-image-basic"
> have added ssh server inside and make sure the ethernet works well, 
> then use "bitbake -c populate_sdk core-image-basic" to create the 
> "poky_eglibc_xx.sh" under "tmp/deploy/sdk" directory, my plan is to 
> install the sdk into the target system and compile my kernel module 
> there, but now the problem is:
> 1. even I have 8GB USB flash disk, the .hddimg is 420MB only, "df"
> command from target said there's 85MB available only,
>      but the sdk .sh installer image is about 300MB, how can I "extend"
> the target system to use the rest USB disk space? ( it's FAT file system)
>      or how to modify configuration to force build the .hddimg create 
> ~"8GB" file system?
> 2. after that SDK installed into my target system, can I copy (scp) my 
> own kernel module driver source code into the target system then
>      make/compile and try insmod/debug the .ko there?
>      or should I install the sdk on host system, then copy only the 
> compiled .ko into target system for test/debugging?
>
> Eddy
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
> https://lists.yoctoproject.org/listinfo/yocto
>


--------------000907050501050901020508
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">I have tried to copy entire
      "poky/meta-skeleton/recipes-kernel/hello-mod" folder<br>
      into my target&nbsp; (poky/meta-intel/meta-jasperforest/recipes-kernel)
      and then add this line<br>
      <meta http-equiv="content-type" content="text/html;
        charset=ISO-8859-1">
      <pre class="literallayout" style="overflow: auto; color: rgb(51, 51, 51); font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: start; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; background-color: rgb(255, 255, 255);">MACHINE_EXTRA_RRECOMMENDS += "kernel-module-hello-mod"</pre>
      to conf/local.conf,<br>
      but can't see hello-ko in the target binary image
      (core-image-basic) after boot USB from the target hardware,<br>
      anything else missed ? (yocto 1.3 + jasperforest BSP on x86_64
      target)<br>
      <br>
      Eddy<br>
      -----------------------------------<br>
    </div>
    <blockquote
cite="mid:C6510F6D410BB64A8C15398EDC6B847C57DDC88F@ORSMSX101.amr.corp.intel.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-1">
      <meta name="Generator" content="Microsoft Word 14 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle19
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 90.0pt 72.0pt 90.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:1728185498;
	mso-list-type:hybrid;
	mso-list-template-ids:2059301166 67698703 67698713 67698715 67698703 67698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:1808860981;
	mso-list-type:hybrid;
	mso-list-template-ids:1265421360 97150048 67698691 67698693 67698689 67698691 67698693 67698689 67698691 67698693;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:-;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Calibri","sans-serif";
	mso-fareast-font-family:SimSun;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Symbol;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:"Courier New";}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0cm;}
ul
	{margin-bottom:0cm;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Hi
            Eddy,<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">I
            don&#8217;t think build core-image-sato-sdk is the right
            approach.&nbsp; Have you looked into following the example of
            hello-mod under meta-skeleton, to use bitbake to build your
            kernel module?<o:p></o:p></span></p>
        <p class="MsoNormal"><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoListParagraph"
          style="text-indent:-18.0pt;mso-list:l1 level1 lfo2"><!--[if !supportLists]--><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D"><span
              style="mso-list:Ignore">-<span style="font:7.0pt
                &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </span></span></span><!--[endif]--><span
style="font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1F497D">Jessica<o:p></o:p></span></p>
        <p class="MsoNormal"><b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
            Lai Eddy [<a class="moz-txt-link-freetext" href="mailto:eddy.lai.tw@gmail.com">mailto:eddy.lai.tw@gmail.com</a>]
            <br>
            <b>Sent:</b> Wednesday, January 30, 2013 7:54 PM<br>
            <b>To:</b> Zhang, Jessica<br>
            <b>Cc:</b> <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
            <b>Subject:</b> Re: [yocto] install and use "bitbake -c
            populate_sdk"<o:p></o:p></span></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">Thanks Jessica,<o:p></o:p></p>
        <div>
          <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        </div>
        <div>
          <p class="MsoNormal">why I tried to use "-c populate-sdk" is
            because that I can find "core-image-sato-sdk" &nbsp;but no
            "core-image-basic-sdk" available, and my hardware is a samll
            jasperforest x86_64 target with 2 serial port and 1 ethernet
            port only, no display interface.<o:p></o:p></p>
        </div>
        <div>
          <p class="MsoNormal">I'm trying to find if any of following
            configuration suitable for my kernel module driver
            develop/debug:<o:p></o:p></p>
        </div>
        <div>
          <p class="MsoNormal">1. with the x86_64 toolchain sdk
            installed on my x86_64 host , build my kernel module driver,
            then scp ".ko" binary to target for insmod/debugging, but
            the problem I have now is the "make" always pointing to
            /usr/src/3.2.x kernel source path (my host OS's kernel
            version), but not the linux-yocto target kernel (3.4.x)
            source/header path (and I don't know where's the proper
            3.4.x target kernel header/source files, is it inside
            tmp/work/...? )<o:p></o:p></p>
        </div>
        <div>
          <p class="MsoNormal">2.build and run the "core-image-basic" on
            my target, and install the sdk created with "bitbake
            core-image-basic -c populate-sdk", but there's no
            "/usr/src/.." , "/lib/modules/3.4.x-yocto-stand/build" exist<o:p></o:p></p>
        </div>
        <div>
          <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        </div>
        <div>
          <p class="MsoNormal">trying to build the "core-image-sato-sdk
            to see if that help for target develop now...<o:p></o:p></p>
        </div>
        <div>
          <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        </div>
        <div>
          <p class="MsoNormal">Eddy<o:p></o:p></p>
        </div>
        <div>
          <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
          <div>
            <p class="MsoNormal">2013/1/31 Zhang, Jessica &lt;<a
                moz-do-not-send="true"
                href="mailto:jessica.zhang@intel.com" target="_blank">jessica.zhang@intel.com</a>&gt;<o:p></o:p></p>
            <p class="MsoNormal">Hi Eddy,<br>
              <br>
              The SDK is meant to be used on development host for cross
              development instead of target. &nbsp;Sounds like you need an
              sdk image which contains the development tools and needed
              development library and kernel sources. &nbsp;Please refer to
              &nbsp;core-image-sato-sdk for how to customize your image to
              allow your do development work on target.<br>
              <br>
              Thanks,<br>
              Jessica<o:p></o:p></p>
            <div>
              <div>
                <p class="MsoNormal"><br>
                  -----Original Message-----<br>
                  From: <a moz-do-not-send="true"
                    href="mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a>
                  [mailto:<a moz-do-not-send="true"
                    href="mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a>]
                  On Behalf Of Eddy Lai GMail<br>
                  Sent: Thursday, January 24, 2013 5:49 AM<br>
                  To: <a moz-do-not-send="true"
                    href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
                  Subject: Re: [yocto] install and use "bitbake -c
                  populate_sdk"<br>
                  <br>
                  Hi,<br>
                  <br>
                  I have build and boot the image from USB flash disk
                  with the .hddimg created by "bitbake -k
                  core-image-basic"<br>
                  have added ssh server inside and make sure the
                  ethernet works well, then use "bitbake -c populate_sdk
                  core-image-basic" to create the "poky_eglibc_xx.sh"
                  under "tmp/deploy/sdk" directory, my plan is to
                  install the sdk into the target system and compile my
                  kernel module there, but now the problem is:<br>
                  1. even I have 8GB USB flash disk, the .hddimg is
                  420MB only, "df"<br>
                  command from target said there's 85MB available only,<br>
                  &nbsp; &nbsp; &nbsp;but the sdk .sh installer image is about 300MB,
                  how can I "extend"<br>
                  the target system to use the rest USB disk space? (
                  it's FAT file system)<br>
                  &nbsp; &nbsp; &nbsp;or how to modify configuration to force build the
                  .hddimg create ~"8GB" file system?<br>
                  2. after that SDK installed into my target system, can
                  I copy (scp) my own kernel module driver source code
                  into the target system then<br>
                  &nbsp; &nbsp; &nbsp;make/compile and try insmod/debug the .ko there?<br>
                  &nbsp; &nbsp; &nbsp;or should I install the sdk on host system, then
                  copy only the compiled .ko into target system for
                  test/debugging?<br>
                  <br>
                  Eddy<o:p></o:p></p>
              </div>
            </div>
            <p class="MsoNormal">_______________________________________________<br>
              yocto mailing list<br>
              <a moz-do-not-send="true"
                href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
              <a moz-do-not-send="true"
                href="https://lists.yoctoproject.org/listinfo/yocto"
                target="_blank">https://lists.yoctoproject.org/listinfo/yocto</a><o:p></o:p></p>
          </div>
          <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        </div>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------000907050501050901020508--
