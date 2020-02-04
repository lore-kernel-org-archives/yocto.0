Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.8091.1580831899259689064
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Feb 2020 07:58:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=J4iKLhtb;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: sjolley.yp.pm@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A56C4E01404; Tue,  4 Feb 2020 07:58:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (sjolley.yp.pm[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.210.182 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79C15E006EC
	for <yocto@yoctoproject.org>; Tue,  4 Feb 2020 07:58:16 -0800 (PST)
Received: by mail-pf1-f182.google.com with SMTP id k29so9650467pfp.13
        for <yocto@yoctoproject.org>; Tue, 04 Feb 2020 07:58:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version:content-language
         :thread-index;
        bh=Nm3LGhX7HTYPg3zPHVTCudJ0YJmaxjweFt8pvKaxNzk=;
        b=J4iKLhtbvK/5LVvHhgemGHK+theGgJIKJFZ3usM3qP/5/k6iH/l7BtYhcU5jTChyzk
         zKVFr9tnFN7R/lmat/lwRnqrhbevPuV61fKEKK3jywUyUwTV8r+K3qc6lJ8doryBakLA
         JX4nZN+8J5kmmRECtgaNxw7GKU6R2yw2J9zQ6uN6zzB1z38ml7LHSWfbVoNzGWtz7VI3
         A3GvLAIIO6phBwCLD/VMIht0MlsTsFKvy8ZP2JHXi8HYVjp2OZGkp+WH44skJAa4CNrN
         04AkGUumWguPIy+iQMnnPlTogFZxP00RkIJ2P5HAnhytS7++fHvEGGip7uU9WLNB+iPw
         Z2qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-language:thread-index;
        bh=Nm3LGhX7HTYPg3zPHVTCudJ0YJmaxjweFt8pvKaxNzk=;
        b=glOyFqwiy081NvLIFZKSHF230VmFevT9ATd4N39kOOws4zyF6qvEpvifzBqzDINMh2
         OLwzDLGvtziurXJBbgXiqvHMllI0Izkf52vUNrvXm2N8NoRIgS1yhPSp7slgsVTm8WFn
         WjD0ovdxazAG22R18fFzU1EyZbz/eC6sdEBDrCoWwJfcT3D9pfvyw/w+xMiS9jkTe+23
         ImYG3Mq4ux5mrO+fk6TCSLq9OA8d9PewaYkei61HoE4LF9pq7GG9gSAP093e8IZ+8DyY
         dH/prcarYSDaNKv+wUKPAJBgS3Q74d4w/ToH6+PcbY9wFYxOS6UC/KUslMCspZy6dAUH
         7iJg==
X-Gm-Message-State: APjAAAWL41Ms/A8TakugRf326GtXTt+5mnsQmh/q2fwLoXIxEljuXHbJ
	jJZjNNFmZ3Hf2tU43Y40OoU=
X-Google-Smtp-Source: APXvYqx+F4rh2UI1BYqrhaP83Tq3bj3NDx8mPbz9xCYGNL+3B65/vN2gdEhMK57d3JBHrUH2Uct5zw==
X-Received: by 2002:a63:8dc4:: with SMTP id z187mr16248482pgd.68.1580831895928;
        Tue, 04 Feb 2020 07:58:15 -0800 (PST)
Received: from skjolley (c-71-59-136-149.hsd1.or.comcast.net. [71.59.136.149])
        by smtp.gmail.com with ESMTPSA id a16sm24021166pgb.5.2020.02.04.07.58.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Feb 2020 07:58:15 -0800 (PST)
From: "Stephen Jolley" <sjolley.yp.pm@gmail.com>
To: <yocto@yoctoproject.org>,
	<openembedded-core@lists.openembedded.org>
Subject: Yocto Project Status WW05'20
Date: Tue, 4 Feb 2020 07:58:15 -0800
Message-ID: <095001d5db73$e911af70$bb350e50$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdXbc7xamVizIVteTh+3l6EuS6VXMw==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0951_01D5DB30.DAF1A3C0"
Content-Language: en-us

------=_NextPart_000_0951_01D5DB30.DAF1A3C0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Current Dev Position: YP 3.1 M3

Next Deadline: YP 3.1 M3 build date 2/24/2020

 

Next Team Meetings:

*	Bug Triage meeting Thursday Feb. 6th  at 7:30am PDT (
<https://zoom.us/j/454367603> https://zoom.us/j/454367603)
*	Monthly Project Meeting Tuesday Feb. 4th  at 8am PDT (
<https://zoom.us/j/990892712> https://zoom.us/j/990892712)
*	Weekly Engineering Sync Tuesday Feb. 11th at 8am PDT (
<https://zoom.us/j/990892712> https://zoom.us/j/990892712)
*	Twitch - Next event is Tuesday Feb. 11th at 8am PDT (
<https://www.twitch.tv/yocto_project> https://www.twitch.tv/yocto_project)

 

Key Status/Updates:

*	YP 3.1 M2 is due to be released with reservations.
*	There are significant concerns with M2 due to the build
reproducibility failures which continue to cause major problems with master
too. These will have to block the M3 build/release.
*	The NPM fetcher rework patches have now merged, we'd like to thank
Jean-Marie Lemetayer for his patience whilst they were made into good shape
with regression tests, thanks, its a good end result.
*	The host dependencies on makeinfo and pod2man have now been dropped
to simplify build dependencies and improve reproducibility.
*	The mpc8315e-rdb machine/BSP has been dropped from meta-yocto-bsp.
*	Build reproducibility issues have been tracked down to a number of
causes but many more remain, some with open bugs, some with bugs yet to be
filed. Any assistance with reproducibility issues is appreciated as is the
major factor blocking patch merging at present.
*	Reproducibility failure debugging has been improved with better
integration into the autobuilder to assist with this. Saved problematic
output is now saved at:  <https://autobuilder.yocto.io/pub/repro-fail/>
https://autobuilder.yocto.io/pub/repro-fail/
*	Ongoing kernel issues still prevent kernel upgrades merging at
present but work on debugging the issues is moving forward (thanks
Victor/Cisco in particular)
*	We're collecting a list of companies, products and projects which
use the Yocto Project on the wiki:
<https://wiki.yoctoproject.org/wiki/Project_Users>
https://wiki.yoctoproject.org/wiki/Project_Users Please add any you know are
missing (or email Richard/Stephen who can add).
*	We have created a "documentation" list and a "licensing" list on the
yocto project mailing list infrastructure. We believe these topics would
benefit from dedicated discussions, the people involved usually aren't
interested in bulk email as would be found on other lists. The new lists can
be found at:  <https://lists.yoctoproject.org/g/licensing/join>
https://lists.yoctoproject.org/g/licensing/join and
<https://lists.yoctoproject.org/g/docs/join>
https://lists.yoctoproject.org/g/docs/join 
*	The triage team is worried about attendance at triage meetings and
the project is finding it hard to find people to help fix bugs. If anyone is
willing to work on bugs, assistance would be greatly appreciated.

 

YP 3.1 Milestone Dates:

*	YP 3.1 M2 should release shortly
*	YP 3.1 M3 build date 2/24/2020
*	YP 3.1 M3 release date 3/6/2020
*	YP 3.1 M4 build date  3/30/2020
*	YP 3.1 M4 release date  4/24/2020

 

Planned upcoming dot releases:

*	YP 2.7.3 build date  2/10/2020
*	YP 2.7.3 release date 2/21/2020
*	YP 3.0.2 build date  2/3/2020
*	YP 3.0.2 release date 2/14/2020

 

Tracking Metrics:

*	WDD 2767 (last week 2765) (
<https://wiki.yoctoproject.org/charts/combo.html>
https://wiki.yoctoproject.org/charts/combo.html)
*	Poky Patch Metrics  

*	Total patches found: 1368 (last week 1368)
*	Patches in the Pending State: 544 (40%) [last week 545 (39%)]

 

The Yocto Project's technical governance is through its Technical Steering
Committee, more information is available at:

 <https://wiki.yoctoproject.org/wiki/TSC>
https://wiki.yoctoproject.org/wiki/TSC

 

The Status reports are now stored on the wiki at:
<https://wiki.yoctoproject.org/wiki/Weekly_Status>
https://wiki.yoctoproject.org/wiki/Weekly_Status

 

[If anyone has suggestions for other information you'd like to see on this
weekly status update, let us know!]

 

Thanks,

 

Stephen K. Jolley

Yocto Project Program Manager

*    Cell:                (208) 244-4460

* Email:              sjolley.yp.pm@gmail.com
<mailto:sjolley.yp.pm@gmail.com> 

 


------=_NextPart_000_0951_01D5DB30.DAF1A3C0
Content-Type: text/html;
	boundary="----=_NextPart_000_0863_01D5D5B1.225AC780";
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><meta =
http-equiv=3DContent-Type content=3D"text/html; =
charset=3Dus-ascii"><meta name=3DGenerator content=3D"Microsoft Word 15 =
(filtered medium)"><style><!--
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
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
@font-face
	{font-family:"MS Sans Serif";}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
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
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
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
	{mso-list-id:5593987;
	mso-list-template-ids:-298521218;}
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
	{mso-list-id:122504414;
	mso-list-template-ids:1864403826;}
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
	{mso-list-id:253637986;
	mso-list-template-ids:1885753894;}
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
	{mso-list-id:415052601;
	mso-list-template-ids:-1815158208;}
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
	{mso-list-id:415369576;
	mso-list-template-ids:594452484;}
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
	{mso-list-id:487596839;
	mso-list-template-ids:1866729890;}
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
	{mso-list-id:969823821;
	mso-list-template-ids:1123981156;}
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
	{mso-list-id:1117990555;
	mso-list-template-ids:2118409618;}
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
	{mso-list-id:1265530001;
	mso-list-template-ids:1843056774;}
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
	{mso-list-id:1701516774;
	mso-list-template-ids:-1870365624;}
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
	{mso-list-id:1828861198;
	mso-list-template-ids:757498660;}
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
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]--></head><body lang=3DEN-US =
link=3D"#0563C1" vlink=3D"#954F72"><div class=3DWordSection1><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Current Dev =
Position: YP 3.1 M3</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Next Deadline: YP =
3.1 M3 build date 2/24/2020</span><o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Next Team =
Meetings:</span><o:p></o:p></p><ul style=3D'margin-top:0in' =
type=3Ddisc><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l2 level1 lfo7;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>Bug Triage meeting Thursday =
Feb. 6th&nbsp; at 7:30am PDT (<a =
href=3D"https://zoom.us/j/454367603"><span =
style=3D'font-size:10.0pt;color:#1155CC'>https://zoom.us/j/454367603</spa=
n></a>)<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l2 level1 lfo7;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>Monthly Project Meeting Tuesday =
Feb. 4th&nbsp; at 8am PDT (<a href=3D"https://zoom.us/j/990892712"><span =
style=3D'color:#1155CC'>https://zoom.us/j/990892712)</span></a><o:p></o:p=
></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l2 level1 lfo7;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>Weekly Engineering Sync Tuesday =
Feb. 11th at 8am PDT (<a href=3D"https://zoom.us/j/990892712"><span =
style=3D'color:#1155CC'>https://zoom.us/j/990892712)</span></a><o:p></o:p=
></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l2 level1 lfo7;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>Twitch - Next event is Tuesday =
Feb. 11th at 8am PDT (<a =
href=3D"https://www.twitch.tv/yocto_project"><span =
style=3D'color:#1155CC'>https://www.twitch.tv/yocto_project</span></a>)<o=
:p></o:p></span></li></ul><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Key =
Status/Updates:</span><o:p></o:p></p><ul style=3D'margin-top:0in' =
type=3Ddisc><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l9 level1 lfo8;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.1 M2 is due to be released =
with reservations.<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l9 level1 lfo8;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>There are significant concerns =
with M2 due to the build reproducibility failures which continue to =
cause major problems with master too. These will have to block the M3 =
build/release.<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l9 level1 lfo8;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>The NPM fetcher rework patches =
have now merged, we&#8217;d like to thank Jean-Marie Lemetayer for his =
patience whilst they were made into good shape with regression tests, =
thanks, its a good end result.<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l9 level1 lfo8;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>The host dependencies on =
makeinfo and pod2man have now been dropped to simplify build =
dependencies and improve reproducibility.<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l9 level1 lfo8;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>The mpc8315e-rdb machine/BSP =
has been dropped from meta-yocto-bsp.<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l9 level1 lfo8;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>Build reproducibility issues =
have been tracked down to a number of causes but many more remain, some =
with open bugs, some with bugs yet to be filed. Any assistance with =
reproducibility issues is appreciated as is the major factor blocking =
patch merging at present.<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l9 level1 lfo8;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>Reproducibility failure =
debugging has been improved with better integration into the autobuilder =
to assist with this. Saved problematic output is now saved at: <a =
href=3D"https://autobuilder.yocto.io/pub/repro-fail/"><span =
style=3D'color:#1155CC'>https://autobuilder.yocto.io/pub/repro-fail/</spa=
n></a><o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l9 level1 lfo8;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>Ongoing kernel issues still =
prevent kernel upgrades merging at present but work on debugging the =
issues is moving forward (thanks Victor/Cisco in =
particular)<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l9 level1 lfo8;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>We&#8217;re collecting a list =
of companies, products and projects which use the Yocto Project on the =
wiki: <a href=3D"https://wiki.yoctoproject.org/wiki/Project_Users"><span =
style=3D'color:#1155CC'>https://wiki.yoctoproject.org/wiki/Project_Users<=
/span></a> Please add any you know are missing (or email Richard/Stephen =
who can add).<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l9 level1 lfo8;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>We have created a =
&#8220;documentation&#8221; list and a &#8220;licensing&#8221; list on =
the yocto project mailing list infrastructure. We believe these topics =
would benefit from dedicated discussions, the people involved usually =
aren&#8217;t interested in bulk email as would be found on other lists. =
The new lists can be found at: <a =
href=3D"https://lists.yoctoproject.org/g/licensing/join"><span =
style=3D'color:#1155CC'>https://lists.yoctoproject.org/g/licensing/join</=
span></a> and <a =
href=3D"https://lists.yoctoproject.org/g/docs/join"><span =
style=3D'color:#1155CC'>https://lists.yoctoproject.org/g/docs/join</span>=
</a>&nbsp;<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l9 level1 lfo8;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>The triage team is worried =
about attendance at triage meetings and the project is finding it hard =
to find people to help fix bugs. If anyone is willing to work on bugs, =
assistance would be greatly appreciated.<o:p></o:p></span></li></ul><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>YP 3.1 Milestone =
Dates:</span><o:p></o:p></p><ul style=3D'margin-top:0in' type=3Ddisc><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l4 level1 lfo9;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.1 M2 should release =
shortly<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l4 level1 lfo9;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.1 M3 build date =
2/24/2020<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l4 level1 lfo9;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.1 M3 release date =
3/6/2020<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l4 level1 lfo9;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.1 M4 build date&nbsp; =
3/30/2020<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l4 level1 lfo9;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.1 M4 release date&nbsp; =
4/24/2020<o:p></o:p></span></li></ul><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Planned upcoming =
dot releases:</span><o:p></o:p></p><ul style=3D'margin-top:0in' =
type=3Ddisc><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l5 level1 lfo10;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 2.7.3 build date&nbsp; =
2/10/2020<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l5 level1 lfo10;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 2.7.3 release date =
2/21/2020<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l5 level1 lfo10;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.0.2 build date&nbsp; =
2/3/2020<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l5 level1 lfo10;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.0.2 release date =
2/14/2020<o:p></o:p></span></li></ul><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Tracking =
Metrics:</span><o:p></o:p></p><ul style=3D'margin-top:0in' =
type=3Ddisc><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l1 level1 lfo11;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>WDD 2767 (last week =
2765)</span><span style=3D'font-family:Consolas'> (</span><span =
style=3D'font-family:"Arial",sans-serif'><a =
href=3D"https://wiki.yoctoproject.org/charts/combo.html"><span =
style=3D'color:#1155CC'>https://wiki.yoctoproject.org/charts/combo.html</=
span></a></span><span style=3D'font-family:Consolas'>)</span><span =
style=3D'font-family:"Arial",sans-serif'><o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l1 level1 lfo11;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>Poky Patch =
Metrics&nbsp;&nbsp;</span><span =
style=3D'font-family:Consolas'><o:p></o:p></span></li><ul =
style=3D'margin-top:0in' type=3Dcircle><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l1 level2 lfo11;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>Total patches found: 1368 (last =
week 1368)<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l1 level2 lfo11;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>Patches in the Pending State: =
544 (40%) [last week 545 (39%)]</span><span =
style=3D'font-family:Consolas'><o:p></o:p></span></li></ul></ul><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>The Yocto =
Project&#8217;s technical governance is through its Technical Steering =
Committee, more information is available at:</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><a =
href=3D"https://wiki.yoctoproject.org/wiki/TSC"><span =
style=3D'font-family:"Arial",sans-serif;color:#1155CC'>https://wiki.yocto=
project.org/wiki/TSC</span></a><o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>The Status reports =
are now stored on the wiki at: </span><a =
href=3D"https://wiki.yoctoproject.org/wiki/Weekly_Status"><span =
style=3D'font-family:"Arial",sans-serif;color:#1155CC'>https://wiki.yocto=
project.org/wiki/Weekly_Status</span></a><o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>[If anyone has =
suggestions for other information you&#8217;d like to see on this weekly =
status update, let us know!]</span><o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal>Thanks,<o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal =
style=3D'page-break-after:avoid;text-autospace:none'><b><i><span =
style=3D'font-size:16.0pt;font-family:"Times New =
Roman",serif;color:purple'>Stephen K. Jolley</span></i></b><b><i><span =
style=3D'font-size:16.0pt;font-family:"Tahoma",sans-serif;color:purple'><=
o:p></o:p></span></i></b></p><p class=3DMsoNormal><b><span =
style=3D'font-size:8.0pt;font-family:"Courier New";color:blue'>Yocto =
Project Program Manager<o:p></o:p></span></b></p><p =
class=3DMsoNormal><span =
style=3D'font-size:9.0pt;font-family:Wingdings;color:black'>(</span><span=
 style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif";color:teal'>&nbsp;&nbsp;&nbsp; </span><b><span =
style=3D'font-size:8.0pt;font-family:"Comic Sans =
MS";color:teal'>Cell</span></b><span =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif";color:teal'>:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span><span =
style=3D'font-size:9.0pt;font-family:"MS Sans Serif"'>(208) =
244-4460<span style=3D'color:black'><o:p></o:p></span></span></p><p =
class=3DMsoNormal><span =
style=3D'font-size:9.0pt;font-family:Wingdings'>* </span><b><span =
lang=3DFR style=3D'font-size:8.0pt;font-family:"Comic Sans =
MS";color:teal'>Email</span></b><span lang=3DFR =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif";color:teal'>:</span><span lang=3DFR =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;<u><span style=3D'color:blue'><a =
href=3D"mailto:sjolley.yp.pm@gmail.com">sjolley.yp.pm@gmail.com</a></span=
></u></span><span lang=3DFR =
style=3D'font-size:12.0pt;font-family:"Arial",sans-serif'><o:p></o:p></sp=
an></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_0951_01D5DB30.DAF1A3C0--
