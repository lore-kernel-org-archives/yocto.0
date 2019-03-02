Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50542E00CB6; Sat,  2 Mar 2019 15:01:52 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.214.194 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com
	[209.85.214.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9830E00AC5
	for <yocto@yoctoproject.org>; Sat,  2 Mar 2019 15:01:48 -0800 (PST)
Received: by mail-pl1-f194.google.com with SMTP id q3so710703pll.4
	for <yocto@yoctoproject.org>; Sat, 02 Mar 2019 15:01:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:cc:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-language;
	bh=USzHYWykU6VNOGYyUqg26M8gFQtZRT+byc7hhbGfPXw=;
	b=IF7dE90tOGfwEA7aEKtkU55Xawcx9mR9Dztj2zkVlsT6pBmi1qr5mq5ZgIJTdwBv0V
	bT7KlHaKhCMouwF0CRaL+9k3FxUeqzIhLxsCrBVDRm2066gJPyMGrx61miim3DTQOPqr
	ymO3t5NvElKZZQ5y4ElVmSU80qO3t4Z0D/ckA468EMEmZ6gGaRGxmD0d2ZTAClsu3emY
	seD2ChlIHEGK7dAqbM5m10vaTbQlykX3zZcYSqxpKKAGHRyYDSu5Nf6887ow9s7bDJHU
	LgkZopABv2LrSmVzYIhFP75Ppo2O1ahY+w1RtzsdBJwESTnDLEC6NRw5mJh1pybi0StE
	NZeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-language;
	bh=USzHYWykU6VNOGYyUqg26M8gFQtZRT+byc7hhbGfPXw=;
	b=XyQDrHiv2ZJiMzMsaRIDdrlmjEdZNlqK0bK1MYyZMfEnn/Lv0mXErUnNPiEJXk4bCF
	3wuqcDe4JpjhwPzlJF56a4Ipvp3IyCoKSxBsgjPkQ8NUZvFF8QSXvOM1lf6V1sWdTu9H
	+M7nl1gxib/0OYSEd7ZvWGwGBqUHhrwAqgNPZ2hfsis4QgejC0CEO4dtR2PljLY6JV+a
	NjB+R1uvF/yats3/zJGvXgS9YIa7Lb7Fz/iFhhUoyThTmwVxkNUG6uqVCyTG/APmg01/
	AnNmJF+uqpNE0hX5btoGk+cZcEFVT8DRjuvkFMBW4jkLc823rmPYrApc1f1KsVmKFAB6
	xRGQ==
X-Gm-Message-State: APjAAAX5MtsV+9wcfMM2I53pALEeYASHD4SbxhuQl8I+giDEt+h3iOWD
	zU/vIzTNOuGxtEWeKiNmkznmByoJ3pw=
X-Google-Smtp-Source: APXvYqxRv/kJBnDQDhweXLPfV1wtpU+DDnqJ50GX9IhiVKZZfkwWuS2x0lICImQxkB2zb+VqBaq2Fw==
X-Received: by 2002:a17:902:2ae8:: with SMTP id
	j95mr12667909plb.292.1551567707471; 
	Sat, 02 Mar 2019 15:01:47 -0800 (PST)
Received: from ?IPv6:2601:202:4180:c33:487d:58db:471f:2b6?
	([2601:202:4180:c33:487d:58db:471f:2b6])
	by smtp.gmail.com with ESMTPSA id
	u67sm2592798pfu.51.2019.03.02.15.01.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 02 Mar 2019 15:01:46 -0800 (PST)
To: "sjolley.yp.pm@gmail.com" <sjolley.yp.pm@gmail.com>
References: <010401d4cdec$0cbb3b80$2631b280$@gmail.com>
From: akuster <akuster@mvista.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster@mvista.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <17b80928-5d68-bc7b-1add-2223c4205038@mvista.com>
Date: Sat, 2 Mar 2019 15:01:45 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.1
MIME-Version: 1.0
In-Reply-To: <010401d4cdec$0cbb3b80$2631b280$@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Yocto Project Status WW09'19
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
X-List-Received-Date: Sat, 02 Mar 2019 23:01:52 -0000
Content-Type: multipart/alternative;
	boundary="------------A26E5C66BAAE4CFAE939133A"
Content-Language: en-US

--------------A26E5C66BAAE4CFAE939133A
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable



On 2/26/19 7:58 AM, sjolley.yp.pm@gmail.com wrote:
>
> Current Dev Position: YP 2.7 M3 (New feature Freeze has begun.)
>
> Next Deadline: YP 2.7 M3 Cutoff was Feb. 25, 2019
>
> =A0
>
> SWAT Team Rotation:
>
>   * SWAT lead is currently: Ross
>   * SWAT team rotation: Ross -> Chen on Mar. 1, 2019
>   * SWAT team rotation: Chen -> Armin on Mar. 8, 2019
>
I am going to be at LS on Monday March 10th and traveling on March 13.=A0=

If this may be an issue, maybe rescheduling for a different week may be
in order.
I personal don't this there will be an issue.

>  *
>
>
>   * https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team
>
> =A0
>
> Key Status/Updates:
>
>   * We have now passed the feature freeze point for 2.7
>   * YP 2.7 M2 rc2 is out of QA and being readied for release. =A0See:
>     https://wiki.yoctoproject.org/wiki/WW07_-_2019-02-14_-_Full_Test_Cy=
cle_2.7_M2_RC2
>     and
>     https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.7_Status#Milest=
one_2_-_Target_Feb._1.2C_2019
>   * We now have resulttool, buildhistory and build-performance all
>     working with the autobuilder and will be using this as the primary
>     QA mechanism going forward. More details can be found here:
>
> http://lists.openembedded.org/pipermail/openembedded-architecture/2019-=
February/001591.html
>
>   * There were some serious usability issues found with multiconfig,
>     those have been fixed in master and thud.
>   * Various recipe upgrades made it in, thanks to all who contributed.
>     Several recipes also converted to meson including glib-2.0 and
>     gdk-pixbuf.
>   * We now need to build M3 as we=92re past feature freeze point for
>     2.7. Right now we=92re aware of the following things which ideally
>     need to be resolved first:
>       o Bug 13178 =93X server and matchbox desktop don't start up
>         properly on beaglebone=94 needs to be fixed
>
a patch was sent and=A0 is in master.
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=3D4860914b3b5b3=
8926ed6a80bb83a011d341ff2d8


- armin
>
>      o
>       o Find the framebuffer problem with qemuarmv7 and switch to that
>       o Several ptest issues would be addressed (missing openssl
>         tests, 3 timeouts)
>       o Arm build host issues identified and resolved
>   * It=92s unlikely we=92ll switch to virtgl by default for 2.7 due to
>     lack of testing from the community although the base patches for
>     this have merged.
>
> =A0
>
> Planned Releases for YP 2.7:
>
>   * YP 2.7 M2 rc2 is out of QA.
>   * YP 2.7 M2 Release Target was Feb. 1, 2019
>   * YP 2.7 M3 Cutoff is Feb. 25, 2019
>   * YP 2.7 M3 Release Target is Mar. 8, 2019
>   * YP 2.7 M4 Cutoff is Apr. 1, 2019
>   * YP 2.7 M4 Release Target is Apr. 26, 2019
>
> =A0
>
> Planned upcoming dot releases:
>
>   * YP 2.5.3 (Sumo) will be targeted after YP 2.7 M2 is done.
>   * YP 2.5.4 (Sumo) will be targeted after YP 2.7 M4 is done.
>   * YP 2.6.2 (Thud) will be targeted after YP 2.5.4 is done.
>
> =A0
>
> Tracking Metrics:
>
>   * WDD 2415 (last week
>     2392)(https://wiki.yoctoproject.org/charts/combo.html)
>   * Poky Patch Metrics =A0
>       o Total patches found: 1516 (last week 1527)
>       o Patches in the Pending State: 660 (44%) [last week 663 (43%)]
>
> =A0
>
> Key Status Links for YP:
>
> https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.7_Status
>
> https://wiki.yoctoproject.org/wiki/Yocto_2.7_Schedule
>
> https://wiki.yoctoproject.org/wiki/Yocto_2.7_Features
>
> =A0
>
> The Status reports are now stored on the wiki at:
> https://wiki.yoctoproject.org/wiki/Weekly_Status
>
> =A0
>
> [If anyone has suggestions for other information you=92d like to see on=

> this weekly status update, let us know!]
>
> =A0
>
> Thanks,
>
> =A0
>
> */Stephen K. Jolley/**//*
>
> *Yocto Project Program Manager*
>
> (=A0=A0=A0 *Cell*:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 (208) 2=
44-4460
>
> * *Email*:=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0_sjolley.yp.pm@gmai=
l.com
> <mailto:sjolley.yp.pm@gmail.com>_
>
> =A0
>
>


--------------A26E5C66BAAE4CFAE939133A
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <br>
    <div class="moz-cite-prefix">On 2/26/19 7:58 AM,
      <a class="moz-txt-link-abbreviated" href="mailto:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com</a> wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:010401d4cdec$0cbb3b80$2631b280$@gmail.com">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 15 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:Wingdings;
	panose-1:5 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"MS Sans Serif";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
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
p.msonormal0, li.msonormal0, div.msonormal0
	{mso-style-name:msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:137765128;
	mso-list-template-ids:-161211848;}
@list l0:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l0:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l0:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l0:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1
	{mso-list-id:292517884;
	mso-list-template-ids:-1864969620;}
@list l1:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l1:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l1:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l1:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2
	{mso-list-id:606542153;
	mso-list-template-ids:1407492566;}
@list l2:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l2:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l2:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l2:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3
	{mso-list-id:633408983;
	mso-list-template-ids:1248861978;}
@list l3:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l3:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l3:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l3:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l4
	{mso-list-id:1364329115;
	mso-list-template-ids:674246342;}
@list l4:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l4:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l4:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l4:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l4:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l4:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l4:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l4:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l4:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l5
	{mso-list-id:1440565146;
	mso-list-template-ids:730133928;}
@list l5:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l5:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l5:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l5:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l5:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l5:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l5:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l5:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l5:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l6
	{mso-list-id:1568346930;
	mso-list-template-ids:613966294;}
@list l6:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l6:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l6:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l6:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l6:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l6:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l6:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l6:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l6:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l7
	{mso-list-id:1705906403;
	mso-list-template-ids:793656710;}
@list l7:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l7:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l7:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l7:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l7:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l7:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l7:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l7:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l7:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l8
	{mso-list-id:1947423152;
	mso-list-template-ids:26767430;}
@list l8:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l8:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l8:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l8:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l8:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l8:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l8:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l8:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l8:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l9
	{mso-list-id:1964723923;
	mso-list-template-ids:1860184226;}
@list l9:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l9:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l9:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l9:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l9:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l9:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l9:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l9:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l9:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l10
	{mso-list-id:2063869413;
	mso-list-template-ids:-510751106;}
@list l10:level1
	{mso-level-number-format:bullet;
	mso-level-text:\F0B7;
	mso-level-tab-stop:.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Symbol;}
@list l10:level2
	{mso-level-number-format:bullet;
	mso-level-text:o;
	mso-level-tab-stop:1.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:"Courier New";
	mso-bidi-font-family:"Times New Roman";}
@list l10:level3
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:1.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l10:level4
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l10:level5
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:2.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l10:level6
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l10:level7
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:3.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l10:level8
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.0in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
@list l10:level9
	{mso-level-number-format:bullet;
	mso-level-text:\F0A7;
	mso-level-tab-stop:4.5in;
	mso-level-number-position:left;
	text-indent:-.25in;
	mso-ansi-font-size:10.0pt;
	font-family:Wingdings;}
ol
	{margin-bottom:0in;}
ul
	{margin-bottom:0in;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p style="margin:0in;margin-bottom:.0001pt"><span
            style="font-family:&quot;Arial&quot;,sans-serif;color:black">Current
            Dev Position: YP 2.7 M3 (New feature Freeze has begun.)</span><o:p></o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
            style="font-family:&quot;Arial&quot;,sans-serif;color:black">Next
            Deadline: YP 2.7 M3 Cutoff was Feb. 25, 2019</span><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
            style="font-family:&quot;Arial&quot;,sans-serif;color:black">SWAT
            Team Rotation:</span><o:p></o:p></p>
        <ul style="margin-top:0in" type="disc">
          <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l9
            level1 lfo6;vertical-align:baseline"><span
              style="font-family:&quot;Arial&quot;,sans-serif">SWAT lead
              is currently: Ross<o:p></o:p></span></li>
          <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l9
            level1 lfo6;vertical-align:baseline"><span
              style="font-family:&quot;Arial&quot;,sans-serif">SWAT team
              rotation: Ross -&gt; Chen on Mar. 1, 2019<o:p></o:p></span></li>
          <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l9
            level1 lfo6;vertical-align:baseline"><span
              style="font-family:&quot;Arial&quot;,sans-serif">SWAT team
              rotation: Chen -&gt; Armin on Mar. 8, 2019</span></li>
        </ul>
      </div>
    </blockquote>
    I am going to be at LS on Monday March 10th and traveling on March
    13.  If this may be an issue, maybe rescheduling for a different
    week may be in order.<br>
    I personal don't this there will be an issue. <br>
    <br>
    <blockquote type="cite"
      cite="mid:010401d4cdec$0cbb3b80$2631b280$@gmail.com">
      <div class="WordSection1">
        <ul style="margin-top:0in" type="disc">
          <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l9
            level1 lfo6;vertical-align:baseline"><span
              style="font-family:&quot;Arial&quot;,sans-serif"><o:p></o:p></span><br>
          </li>
          <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l9
            level1 lfo6;vertical-align:baseline"><span
              style="font-family:Consolas"><a
                href="https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team"
                moz-do-not-send="true"><span style="color:#1155CC">https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team</span></a><o:p></o:p></span></li>
        </ul>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
            style="font-family:&quot;Arial&quot;,sans-serif;color:black">Key
            Status/Updates:</span><o:p></o:p></p>
        <ul style="margin-top:0in" type="disc">
          <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l2
            level1 lfo7;vertical-align:baseline"><span
              style="font-family:&quot;Arial&quot;,sans-serif">We have
              now passed the feature freeze point for 2.7<o:p></o:p></span></li>
          <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l2
            level1 lfo7;vertical-align:baseline"><span
              style="font-family:&quot;Arial&quot;,sans-serif">YP 2.7 M2
              rc2 is out of QA and being readied for release.  See: <a
href="https://wiki.yoctoproject.org/wiki/WW07_-_2019-02-14_-_Full_Test_Cycle_2.7_M2_RC2"
                moz-do-not-send="true"><span style="color:#1155CC">https://wiki.yoctoproject.org/wiki/WW07_-_2019-02-14_-_Full_Test_Cycle_2.7_M2_RC2</span></a>
              and <a
href="https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.7_Status#Milestone_2_-_Target_Feb._1.2C_2019"
                moz-do-not-send="true"><span style="color:#1155CC">https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.7_Status#Milestone_2_-_Target_Feb._1.2C_2019</span></a><o:p></o:p></span></li>
          <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l2
            level1 lfo7;vertical-align:baseline"><span
              style="font-family:&quot;Arial&quot;,sans-serif">We now
              have resulttool, buildhistory and build-performance all
              working with the autobuilder and will be using this as the
              primary QA mechanism going forward. More details can be
              found here:<o:p></o:p></span></li>
        </ul>
        <p
style="mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margin-left:.5in;margin-bottom:.0001pt"><a
href="http://lists.openembedded.org/pipermail/openembedded-architecture/2019-February/001591.html"
            moz-do-not-send="true"><span
              style="font-family:&quot;Arial&quot;,sans-serif;color:#1155CC">http://lists.openembedded.org/pipermail/openembedded-architecture/2019-February/001591.html</span></a><o:p></o:p></p>
        <ul style="margin-top:0in" type="disc">
          <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l10
            level1 lfo8;vertical-align:baseline"><span
              style="font-family:&quot;Arial&quot;,sans-serif">There
              were some serious usability issues found with multiconfig,
              those have been fixed in master and thud.<o:p></o:p></span></li>
          <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l10
            level1 lfo8;vertical-align:baseline"><span
              style="font-family:&quot;Arial&quot;,sans-serif">Various
              recipe upgrades made it in, thanks to all who contributed.
              Several recipes also converted to meson including glib-2.0
              and gdk-pixbuf.<o:p></o:p></span></li>
          <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l10
            level1 lfo8;vertical-align:baseline"><span
              style="font-family:&quot;Arial&quot;,sans-serif">We now
              need to build M3 as we’re past feature freeze point for
              2.7. Right now we’re aware of the following things which
              ideally need to be resolved first:<o:p></o:p></span></li>
          <ul style="margin-top:0in" type="circle">
            <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l10
              level2 lfo8;vertical-align:baseline"><span
                style="font-family:&quot;Arial&quot;,sans-serif">Bug
                13178 “X server and matchbox desktop don't start up
                properly on beaglebone” needs to be fixed</span></li>
          </ul>
        </ul>
      </div>
    </blockquote>
    a patch was sent and  is in master.<br>
<a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=4860914b3b5b38926ed6a80bb83a011d341ff2d8">http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=4860914b3b5b38926ed6a80bb83a011d341ff2d8</a><br>
    <br>
    <br>
    - armin<br>
    <blockquote type="cite"
      cite="mid:010401d4cdec$0cbb3b80$2631b280$@gmail.com">
      <div class="WordSection1">
        <ul style="margin-top:0in" type="disc">
          <ul style="margin-top:0in" type="circle">
            <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l10
              level2 lfo8;vertical-align:baseline"><span
                style="font-family:&quot;Arial&quot;,sans-serif"><o:p></o:p></span></li>
            <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l10
              level2 lfo8;vertical-align:baseline"><span
                style="font-family:&quot;Arial&quot;,sans-serif">Find
                the framebuffer problem with qemuarmv7 and switch to
                that<o:p></o:p></span></li>
            <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l10
              level2 lfo8;vertical-align:baseline"><span
                style="font-family:&quot;Arial&quot;,sans-serif">Several
                ptest issues would be addressed (missing openssl tests,
                3 timeouts)<o:p></o:p></span></li>
            <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l10
              level2 lfo8;vertical-align:baseline"><span
                style="font-family:&quot;Arial&quot;,sans-serif">Arm
                build host issues identified and resolved<o:p></o:p></span></li>
          </ul>
          <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l10
            level1 lfo8;vertical-align:baseline"><span
              style="font-family:&quot;Arial&quot;,sans-serif">It’s
              unlikely we’ll switch to virtgl by default for 2.7 due to
              lack of testing from the community although the base
              patches for this have merged.<o:p></o:p></span></li>
        </ul>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
            style="font-family:&quot;Arial&quot;,sans-serif;color:black">Planned
            Releases for YP 2.7:</span><o:p></o:p></p>
        <ul style="margin-top:0in" type="disc">
          <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l1
            level1 lfo9;vertical-align:baseline"><span
              style="font-family:&quot;Arial&quot;,sans-serif">YP 2.7 M2
              rc2 is out of QA.<o:p></o:p></span></li>
          <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l1
            level1 lfo9;vertical-align:baseline"><span
              style="font-family:&quot;Arial&quot;,sans-serif">YP 2.7 M2
              Release Target was Feb. 1, 2019<o:p></o:p></span></li>
          <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l1
            level1 lfo9;vertical-align:baseline"><span
              style="font-family:&quot;Arial&quot;,sans-serif">YP 2.7 M3
              Cutoff is Feb. 25, 2019<o:p></o:p></span></li>
          <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l1
            level1 lfo9;vertical-align:baseline"><span
              style="font-family:&quot;Arial&quot;,sans-serif">YP 2.7 M3
              Release Target is Mar. 8, 2019<o:p></o:p></span></li>
          <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l1
            level1 lfo9;vertical-align:baseline"><span
              style="font-family:&quot;Arial&quot;,sans-serif">YP 2.7 M4
              Cutoff is Apr. 1, 2019<o:p></o:p></span></li>
          <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l1
            level1 lfo9;vertical-align:baseline"><span
              style="font-family:&quot;Arial&quot;,sans-serif">YP 2.7 M4
              Release Target is Apr. 26, 2019<o:p></o:p></span></li>
        </ul>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
            style="font-family:&quot;Arial&quot;,sans-serif;color:black">Planned
            upcoming dot releases:</span><o:p></o:p></p>
        <ul style="margin-top:0in" type="disc">
          <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l0
            level1 lfo10;vertical-align:baseline"><span
              style="font-family:&quot;Arial&quot;,sans-serif">YP 2.5.3
              (Sumo) will be targeted after YP 2.7 M2 is done.<o:p></o:p></span></li>
          <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l0
            level1 lfo10;vertical-align:baseline"><span
              style="font-family:&quot;Arial&quot;,sans-serif">YP 2.5.4
              (Sumo) will be targeted after YP 2.7 M4 is done.<o:p></o:p></span></li>
          <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l0
            level1 lfo10;vertical-align:baseline"><span
              style="font-family:&quot;Arial&quot;,sans-serif">YP 2.6.2
              (Thud) will be targeted after YP 2.5.4 is done.<o:p></o:p></span></li>
        </ul>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
            style="font-family:&quot;Arial&quot;,sans-serif;color:black">Tracking
            Metrics:</span><o:p></o:p></p>
        <ul style="margin-top:0in" type="disc">
          <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l3
            level1 lfo11;vertical-align:baseline"><span
              style="font-family:&quot;Arial&quot;,sans-serif">WDD 2415
              (last week 2392)</span><span style="font-family:Consolas">
              (</span><span
              style="font-family:&quot;Arial&quot;,sans-serif"><a
                href="https://wiki.yoctoproject.org/charts/combo.html"
                moz-do-not-send="true"><span style="color:#1155CC">https://wiki.yoctoproject.org/charts/combo.html</span></a></span><span
              style="font-family:Consolas">)</span><span
              style="font-family:&quot;Arial&quot;,sans-serif"><o:p></o:p></span></li>
          <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l3
            level1 lfo11;vertical-align:baseline"><span
              style="font-family:&quot;Arial&quot;,sans-serif">Poky
              Patch Metrics  </span><span style="font-family:Consolas"><o:p></o:p></span></li>
          <ul style="margin-top:0in" type="circle">
            <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l3
              level2 lfo11;vertical-align:baseline"><span
                style="font-family:&quot;Arial&quot;,sans-serif">Total
                patches found: 1516 (last week 1527)<o:p></o:p></span></li>
            <li
style="color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001pt;mso-list:l3
              level2 lfo11;vertical-align:baseline"><span
                style="font-family:&quot;Arial&quot;,sans-serif">Patches
                in the Pending State: 660 (44%) [last week 663 (43%)]</span><span
                style="font-family:Consolas"><o:p></o:p></span></li>
          </ul>
        </ul>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
            style="font-family:&quot;Arial&quot;,sans-serif;color:black">Key
            Status Links for YP:</span><o:p></o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><a
            href="https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.7_Status"
            moz-do-not-send="true"><span
              style="font-family:Consolas;color:#1155CC">https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.7_Status</span></a><o:p></o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><a
            href="https://wiki.yoctoproject.org/wiki/Yocto_2.7_Schedule"
            moz-do-not-send="true"><span
              style="font-family:Consolas;color:#1155CC">https://wiki.yoctoproject.org/wiki/Yocto_2.7_Schedule</span></a><o:p></o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><a
            href="https://wiki.yoctoproject.org/wiki/Yocto_2.7_Features"
            moz-do-not-send="true"><span
              style="font-family:Consolas;color:#1155CC">https://wiki.yoctoproject.org/wiki/Yocto_2.7_Features</span></a><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
            style="font-family:&quot;Arial&quot;,sans-serif;color:black">The
            Status reports are now stored on the wiki at: </span><a
            href="https://wiki.yoctoproject.org/wiki/Weekly_Status"
            moz-do-not-send="true"><span
              style="font-family:&quot;Arial&quot;,sans-serif;color:#1155CC">https://wiki.yoctoproject.org/wiki/Weekly_Status</span></a><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
            style="font-family:&quot;Arial&quot;,sans-serif;color:black">[If
            anyone has suggestions for other information you’d like to
            see on this weekly status update, let us know!]</span><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal">Thanks,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"
          style="page-break-after:avoid;text-autospace:none"><b><i><span
                style="font-size:16.0pt;font-family:&quot;Times New
                Roman&quot;,serif;color:purple">Stephen K. Jolley</span></i></b><b><i><span
style="font-size:16.0pt;font-family:&quot;Tahoma&quot;,sans-serif;color:purple"><o:p></o:p></span></i></b></p>
        <p class="MsoNormal"><b><span
              style="font-size:8.0pt;font-family:&quot;Courier
              New&quot;;color:blue">Yocto Project Program Manager<o:p></o:p></span></b></p>
        <p class="MsoNormal"><span
            style="font-size:9.0pt;font-family:Wingdings;color:black">(</span><span
            style="font-size:9.0pt;font-family:&quot;MS Sans
            Serif&quot;,serif;color:teal">    </span><b><span
              style="font-size:8.0pt;font-family:&quot;Comic Sans
              MS&quot;;color:teal">Cell</span></b><span
            style="font-size:9.0pt;font-family:&quot;MS Sans
            Serif&quot;,serif;color:teal">:                </span><span
            style="font-size:9.0pt;font-family:&quot;MS Sans
            Serif&quot;,serif">(208) 244-4460<span style="color:black"><o:p></o:p></span></span></p>
        <p class="MsoNormal"><span
            style="font-size:9.0pt;font-family:Wingdings">* </span><b><span
              style="font-size:8.0pt;font-family:&quot;Comic Sans
              MS&quot;;color:teal" lang="FR">Email</span></b><span
            style="font-size:9.0pt;font-family:&quot;MS Sans
            Serif&quot;,serif;color:teal" lang="FR">:</span><span
            style="font-size:9.0pt;font-family:&quot;MS Sans
            Serif&quot;,serif" lang="FR">              <u><span
                style="color:blue"><a
                  href="mailto:sjolley.yp.pm@gmail.com"
                  moz-do-not-send="true">sjolley.yp.pm@gmail.com</a></span></u></span><span
style="font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif"
            lang="FR"><o:p></o:p></span></p>
        <p class="MsoNormal"><o:p> </o:p></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
    <br>
  </body>
</html>

--------------A26E5C66BAAE4CFAE939133A--
