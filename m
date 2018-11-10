Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2B97E00C18; Fri,  9 Nov 2018 18:44:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.176 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pg1-f176.google.com (mail-pg1-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 958C1E00A0A
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2018 18:44:05 -0800 (PST)
Received: by mail-pg1-f176.google.com with SMTP id 80so1637092pge.4
	for <yocto@yoctoproject.org>; Fri, 09 Nov 2018 18:44:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=w1fTrSlma1+1X6oY4Xm9iua8uPGEnGOf3VMatLyu/Nc=;
	b=DxbG3awBFKj4GoaaoP76iGU8XwvFYlYI0bX92T1IbJMXjR7FMwvlfHBCKKtopXRyEm
	/0wXM+26IQKMDGqO13m2Sro9lAv1xN+6Cw3QS3zVDPKQEK6pbLx8o8uDv262jECs/49d
	0NyP8OZbE8OqW+YTqEn9piPkCNfR6WyWd6T0JAbevkLMkIW64+VHuA6Lnr5UXptRS6nJ
	3aFKluAgRdAMXsVdhz4CIOUusmLqwfb0xLPS7svhZfUTAMooNaNI1lu6X+t9X0nj/XXZ
	XH558mgssVz8V8MXwC6TPz9Fyo7VOUota91ZSRYtfrFQqfBcX7XyIyvvKJ3wwb5BqOeq
	QW+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=w1fTrSlma1+1X6oY4Xm9iua8uPGEnGOf3VMatLyu/Nc=;
	b=NLNQav+/EeLyD/ji9clmN2fFTA+4eI2/WAIcJpG9vUg4vVFAUSAyuv8EKZ2xz+nycu
	KCU8o38rTnKB5TIk51hD6E1QPlGyqa/KDLtT0aJlZmyBI8lDrT7lI2HvdM2pnAmGG6Mo
	wsHKtOTgJL4GL5w7amuaQV9eoAVA3wjLGLJPlYcFAvoslVqYHSt8tkrfbltFGAGBtrZ3
	HDqvAZJMW5/46vITqktn1j1hXna3d4P6tPOksrDgrOneCmlwR+hEJUyB3Wr7onNn2KLw
	+/JgWlvPYAQE4IUOMuuwuo3CrO+w6GwHyog5Tj4Jkw5k51m5eVNGgtcEYiwN2CnF2+1N
	9HRg==
X-Gm-Message-State: AGRZ1gIACOFUHhoD6GpkupchL9a587dr2lWGEL7f0TXa7ZOVok0XSmDU
	eegoNhQKaZSmPvBVyyQ36RA=
X-Google-Smtp-Source: AJdET5fvmSzcAQHkQIOeT2kSCK3DQgEN/TwAl3X8Zi/gQPULXCVpUoOPj7+hsX0SLfZ6PknNbbn4Fg==
X-Received: by 2002:a62:5982:: with SMTP id
	k2-v6mr11205887pfj.180.1541817844975; 
	Fri, 09 Nov 2018 18:44:04 -0800 (PST)
Received: from ?IPv6:2601:202:4180:c33:d54:e739:cec5:49dd?
	([2601:202:4180:c33:d54:e739:cec5:49dd])
	by smtp.gmail.com with ESMTPSA id
	o12-v6sm9702248pfh.20.2018.11.09.18.44.03
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 09 Nov 2018 18:44:03 -0800 (PST)
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>,
	"Jolley, Stephen K" <stephen.k.jolley@intel.com>,
	"Eggleton, Paul" <paul.eggleton@intel.com>,
	"richard.purdie@linuxfoundation.org" <richard.purdie@linuxfoundation.org>, 
	"Graydon, Tracy" <tracy.graydon@intel.com>,
	"Erway, Tracey M" <tracey.m.erway@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <015AB11D45F2C442929CB2765DAE738634CE695E@PGSMSX110.gar.corp.intel.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <9f1410e1-841a-f21c-5428-a04959934bcf@gmail.com>
Date: Fri, 9 Nov 2018 18:44:01 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <015AB11D45F2C442929CB2765DAE738634CE695E@PGSMSX110.gar.corp.intel.com>
Cc: "Kirkiris, Nectar" <nectar.kirkiris@intel.com>
Subject: Re: QA cycle report for 2.6 M4 RC1
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
X-List-Received-Date: Sat, 10 Nov 2018 02:44:06 -0000
Content-Type: multipart/alternative;
	boundary="------------9581D1196F9ED61DDB2CD30E"
Content-Language: en-US

--------------9581D1196F9ED61DDB2CD30E
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable


On 11/9/18 1:24 AM, Jain, Sangeeta wrote:
>
> =A0
>
> Hello All,
>
> =A0
>
Thank you to the Intel and Wind QA teams for performing these tasks.


Will the Build appliance failure keep it from functioning ?


- armin


> This is the full report for 2.6 M4 RC1:=A0
>
> https://wiki.yoctoproject.org/wiki/WW44_-_2018-10-30_-_Full_Test_Cycle_=
2.6_M4_RC1
>
> =A0
>
> =A0
>
> *Summary*
>
> =A0
>
> All planned tests were executed.
>
> =A0
>
> Total Test Executed =96 3339
>
> Passed Test =96 3322
>
> Failed Test =96 7
>
> Blocked Test - 4
>
> =A0
>
> There were zero high priority defect.=A0 Team had found 4 new defects.
> ptest for 1modulefailed in current release but passed in previous 2.6
> M3 rc1.=A0=A0For Openssl no test was executed in current release as wel=
l
> as previous release. Present status of bugs for respective modules is
> as =A0follows:
> =A0
> ModuleName =A0=96 =A0BugId =A0=96 =A0Present Status
> =A0
> gstreamer =A0=A0=A0=A0=A0=A0=96 12990=A0=A0=A0 =A0- New
> =A0
> Note: For busybox, pass rate is lower than previous release, but no
> test cases which passes in previous release failed in current release.
> Lower pass rate is due to new test cases added in this release. No bug
> filed.
>
> =A0
>
> *Performance test*
>
> =A0
>
> =A0rootfs performance on ubuntu1604 upgraded by =A013.04% in 2.6 M3 RC1=

> w.r.t. 2.6 M2 RC1
>
> =A0
>
> *QA-Hints=A0*
>
> *=A0*
>
> For performance test, in this release, QA team has performed analysis
> on results from =93yocto-perf=94 mailing list, rather than on results f=
rom
> Linux foundation machines.
>
> Weobserved two major difference between machines used to run
> Performance test by =93yocto-perf=94 mailing list and Linux Foundation
> machines:
>
> =A0
>
> 1) Mailing List data points was not constant, sometime more, sometime l=
ess
>
> 2) Mailing List used machine with different spec
>
> *=A0*
>
> *New Bugs*
>
> *=A0*
>
> [1] Bug=A012974 - =A0[2.6 M4 RC1] [OE-Core] Crosstap doesn't work on 2.=
6
> M4 RC1
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12974
>
> =A0
>
> =A0[2] Bug=A0129
> <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12952>79=A0-=A0[2.=
6 M4
> rc1] test_recipetool_create_cmake failed on Fedora 27
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12979
>
> *=A0*
>
> [3] Bug=A0129
> <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12946>91 - [2.6 M4=

> RC1][Build-Appliance] Bitbake build-appliance-image getting failed
> during building image due to webkitgtk package
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12991
>
> =A0
>
> [4] Bug=A0129
> <https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12954>92 - [2.6 M4=

> rc1] test_devtool_add_fetch_git failed on Fedora 27
>
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12992
>
> =A0
>
> Thanks & Regards,
>
> Sangeeta Jain
>
> =A0
>
>

--------------9581D1196F9ED61DDB2CD30E
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <p><br>
    </p>
    <div class="moz-cite-prefix">On 11/9/18 1:24 AM, Jain, Sangeeta
      wrote:<br>
    </div>
    <blockquote type="cite"
cite="mid:015AB11D45F2C442929CB2765DAE738634CE695E@PGSMSX110.gar.corp.intel.com">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Verdana;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Courier New";
	mso-fareast-language:EN-MY;}
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle21
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle22
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle23
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle24
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle25
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
span.EmailStyle26
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle27
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle28
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal"><a name="_____replyseparator"
            moz-do-not-send="true"></a><o:p> </o:p></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><span
            style="color:black" lang="EN-US">Hello All,<o:p></o:p></span></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><span
            style="color:black" lang="EN-US"> </span></p>
      </div>
    </blockquote>
    <p>Thank you to the Intel and Wind QA teams for performing these
      tasks.</p>
    <p><br>
    </p>
    <p>Will the Build appliance failure keep it from functioning ?</p>
    <p><br>
    </p>
    <p>- armin<br>
    </p>
    <p><br>
    </p>
    <blockquote type="cite"
cite="mid:015AB11D45F2C442929CB2765DAE738634CE695E@PGSMSX110.gar.corp.intel.com">
      <div class="WordSection1">
        <p style="margin:0cm;margin-bottom:.0001pt"><span
            style="color:black" lang="EN-US"><o:p></o:p></span></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><span
            style="color:black" lang="EN-US">This is the full report for
            2.6 M4 RC1: 
            <o:p></o:p></span></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><a
href="https://wiki.yoctoproject.org/wiki/WW44_-_2018-10-30_-_Full_Test_Cycle_2.6_M4_RC1"
            moz-do-not-send="true"><span lang="EN-US">https://wiki.yoctoproject.org/wiki/WW44_-_2018-10-30_-_Full_Test_Cycle_2.6_M4_RC1</span></a><span
            style="color:black" lang="EN-US"><o:p></o:p></span></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><span
            style="color:black" lang="EN-US"><o:p> </o:p></span></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><span
            style="color:black" lang="EN-US"> <o:p></o:p></span></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><b><span
              style="color:black" lang="EN-US">Summary<o:p></o:p></span></b></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><span
            style="color:black" lang="EN-US"> <o:p></o:p></span></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><span
            style="color:black" lang="EN-US">All planned tests were
            executed.<o:p></o:p></span></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><span
            style="color:black" lang="EN-US"><o:p> </o:p></span></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><span
            style="color:black" lang="EN-US">Total Test Executed – 3339<o:p></o:p></span></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><span
            style="color:black" lang="EN-US">Passed Test – 3322<o:p></o:p></span></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><span
            style="color:black" lang="EN-US">Failed Test – 7<o:p></o:p></span></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><span
            style="color:black" lang="EN-US">Blocked Test - 4<o:p></o:p></span></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><span
            style="color:black" lang="EN-US"> <o:p></o:p></span></p>
        <pre style="background:white"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;color:black" lang="EN-US">There were zero high priority defect.  Team had found 4 new defects. <o:p></o:p></span></pre>
        <pre style="background:white"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;color:black" lang="EN-US">ptest for 1</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif"> module</span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;color:black" lang="EN-US"> failed in current release but passed in previous 2.6 M3 rc1.  For Openssl no test was executed in current release as well as previous release. </span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif" lang="EN-US">Present status of bugs for respective modules is as <span style="color:black"> </span>follows:<o:p></o:p></span></pre>
        <pre style="background:white"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif" lang="EN-US"><o:p> </o:p></span></pre>
      </div>
    </blockquote>
    <blockquote type="cite"
cite="mid:015AB11D45F2C442929CB2765DAE738634CE695E@PGSMSX110.gar.corp.intel.com">
      <div class="WordSection1">
        <pre style="background:white"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif" lang="EN-US">ModuleName  –  BugId  –  Present Status<o:p></o:p></span></pre>
        <pre style="background:white"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif" lang="EN-US"><o:p> </o:p></span></pre>
        <pre style="background:white"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif;color:black">gstreamer     </span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif"> <span style="color:black">  – 12990     - New</span></span><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif" lang="EN-US"><o:p></o:p></span></pre>
        <pre style="background:white"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif" lang="EN-US"><o:p> </o:p></span></pre>
        <pre style="background:white"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif" lang="EN-US">Note: For busybox, pass rate is lower than previous release, but no test cases which passes in previous release failed in current release. Lower pass rate is due to new test cases added in this release. No bug filed.</span></pre>
      </div>
    </blockquote>
    <blockquote type="cite"
cite="mid:015AB11D45F2C442929CB2765DAE738634CE695E@PGSMSX110.gar.corp.intel.com">
      <div class="WordSection1">
        <pre style="background:white"><span style="font-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif" lang="EN-US"><o:p>
</o:p></span></pre>
        <p style="margin:0cm;margin-bottom:.0001pt"><span lang="EN-US"><o:p> </o:p></span></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><b><span
              lang="EN-US">Performance test</span></b><span lang="EN-US">
            <o:p></o:p></span></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><span lang="EN-US"><o:p> </o:p></span></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><span lang="EN-US"> rootfs
            performance on ubuntu1604 upgraded by  13.04% in 2.6 M3 RC1
            w.r.t. 2.6 M2 RC1<o:p></o:p></span></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><span lang="EN-US"><o:p> </o:p></span></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><b><span
              style="color:black" lang="EN-US">QA-Hints <o:p></o:p></span></b></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><b><span
              style="color:black" lang="EN-US"><o:p> </o:p></span></b></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><span
            style="color:black" lang="EN-US">For performance test, in
            this release, QA team has performed analysis on results from
            “yocto-perf” mailing list, rather than on results from Linux
            foundation machines.<o:p></o:p></span></p>
        <p class="MsoNormal"
style="mso-margin-top-alt:2.0pt;margin-right:0cm;margin-bottom:2.0pt;margin-left:0cm;text-autospace:none"><span
            style="color:black" lang="EN-US">We</span><span
            style="color:black"> observed two major difference between
            machines used to run Performance test by
          </span><span style="color:black" lang="EN-US">“yocto-perf”
            mailing list and </span>
          <span style="color:black">Linux Foundation machines:<o:p></o:p></span></p>
        <p class="MsoNormal"
style="mso-margin-top-alt:2.0pt;margin-right:0cm;margin-bottom:2.0pt;margin-left:0cm;text-autospace:none"><span
            style="color:black"><o:p> </o:p></span></p>
        <p class="MsoNormal"
style="mso-margin-top-alt:2.0pt;margin-right:0cm;margin-bottom:2.0pt;margin-left:0cm;text-autospace:none"><span
            style="color:black">1) Mailing List data points was not
            constant, sometime more, sometime less</span><span
            lang="EN-US"><o:p></o:p></span></p>
        <p class="MsoNormal"
style="mso-margin-top-alt:2.0pt;margin-right:0cm;margin-bottom:2.0pt;margin-left:0cm;text-autospace:none"><span
            style="color:black">2) Mailing List used machine with
            different spec</span></p>
      </div>
    </blockquote>
    <blockquote type="cite"
cite="mid:015AB11D45F2C442929CB2765DAE738634CE695E@PGSMSX110.gar.corp.intel.com">
      <div class="WordSection1">
        <p class="MsoNormal"
style="mso-margin-top-alt:2.0pt;margin-right:0cm;margin-bottom:2.0pt;margin-left:0cm;text-autospace:none"><span
            lang="EN-US"><o:p></o:p></span></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><b><span
              style="color:black" lang="EN-US"><o:p> </o:p></span></b></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><b><span
              style="color:black" lang="EN-US">New Bugs<o:p></o:p></span></b></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><b><span
              style="color:black" lang="EN-US"><o:p> </o:p></span></b></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><span
            style="color:black" lang="EN-US">[1]
          </span>Bug 12974 - <span style="color:black"> [2.6 M4 RC1]
            [OE-Core] Crosstap doesn't work on 2.6 M4 RC1</span><span
            style="color:black" lang="EN-US"><o:p></o:p></span></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><a
            href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=12974"
            moz-do-not-send="true"><span lang="EN-US">https://bugzilla.yoctoproject.org/show_bug.cgi?id=12974</span></a><span
            lang="EN-US"><o:p></o:p></span></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><span
            style="color:black" lang="EN-US"><o:p> </o:p></span></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><span
            style="color:black" lang="EN-US"> [2]
          </span><a
            href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=12952"
            moz-do-not-send="true"><span
              style="color:black;text-decoration:none" lang="EN-US">Bug 129</span></a>79<span
            style="color:black" lang="EN-US"> - [2.6 M4 rc1]
            test_recipetool_create_cmake failed on Fedora 27<o:p></o:p></span></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><a
            href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=12979"
            moz-do-not-send="true"><span lang="EN-US">https://bugzilla.yoctoproject.org/show_bug.cgi?id=12979</span></a><span
            lang="EN-US"><o:p></o:p></span></p>
        <p style="margin:0cm;margin-bottom:.0001pt"><b><span
              style="font-family:&quot;Verdana&quot;,sans-serif;color:black"
              lang="EN-US"><o:p> </o:p></span></b></p>
        <p class="MsoNormal">[3<span style="color:black" lang="EN-US">]
          </span><a
            href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=12946"
            moz-do-not-send="true"><span
              style="color:black;text-decoration:none" lang="EN-US">Bug 129</span></a>91
          - [2.6 M4 RC1][Build-Appliance] Bitbake build-appliance-image
          getting failed during building image due to webkitgtk package<span
            style="color:black" lang="EN-US"><o:p></o:p></span></p>
        <p class="MsoNormal"><a
            href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=12991"
            moz-do-not-send="true">https://bugzilla.yoctoproject.org/show_bug.cgi?id=12991</a><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">[4] <a
            href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=12954"
            moz-do-not-send="true">
            <span style="color:windowtext;text-decoration:none">Bug 129</span></a>92
          - [2.6 M4 rc1] test_devtool_add_fetch_git failed on Fedora 27<o:p></o:p></p>
        <p class="MsoNormal"><a
            href="https://bugzilla.yoctoproject.org/show_bug.cgi?id=12992"
            moz-do-not-send="true">https://bugzilla.yoctoproject.org/show_bug.cgi?id=12992</a><o:p></o:p></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">Thanks &amp; Regards,<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">Sangeeta Jain<o:p></o:p></span></p>
        <p class="MsoNormal"><o:p> </o:p></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
  </body>
</html>

--------------9581D1196F9ED61DDB2CD30E--
