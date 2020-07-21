Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.20560.1595342941016712720
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jul 2020 07:49:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=P52EaHH4;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: sjolley.yp.pm@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BD9DE01E50; Tue, 21 Jul 2020 07:49:00 -0700 (PDT)
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
	*      [209.85.210.172 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f172.google.com (mail-pf1-f172.google.com [209.85.210.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F08CCE01E08
	for <yocto@yoctoproject.org>; Tue, 21 Jul 2020 07:48:57 -0700 (PDT)
Received: by mail-pf1-f172.google.com with SMTP id u5so10841656pfn.7
        for <yocto@yoctoproject.org>; Tue, 21 Jul 2020 07:48:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version:content-language
         :thread-index;
        bh=6KzoaLg9Ewk59apNUCqzB82Cw5Zzo6ZBFNuToPDuvkw=;
        b=P52EaHH4jdCl+Z70CSDr7bFyXQyLY1Y7I1t+3dQfTOSLIK+dFVhnjYqTapy/mPjLxU
         osp8lKS3ov7p+WPm4m71YfzjAzz2snYAZy6N5gGxk+TYBSrsr7pI/Mvvei1dXYp2GsEi
         ZKNujCRPDHcpWpwTck0VRx4mdVRSycwMGOl9Xk0leudgb+oKdhc8ZpTlnzEmKlINAS5F
         zCWcduRhbAuOzhbt7tMPA4b2QelUAVLkps1Gu7ipHrBZdfvgZ90gczIXQYCuKu2gGDrF
         21S/NVJgInydy8ByEmz4G9iz4dK8rvSWkzaN/1+WaDMsi9ipratAc8KuQmChmvnqjSbW
         f0Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-language:thread-index;
        bh=6KzoaLg9Ewk59apNUCqzB82Cw5Zzo6ZBFNuToPDuvkw=;
        b=OczLQrs8VLRSylrf8O+At/FRbVp+JedbSBRtfMEIDqzMSDU8AG2tKycKV2r1aZm44J
         YBRkw+voE/EaQ1iCeOhoEmJRBqog5rctawuhof86f0NxHfkBQ13NfLhvkbgaqeOZSPr9
         r/LtoeZQQGmoYks/GmPFtG7M/OdX/6G2Fec3csnLnAMVPqEoAxGCR+wEMhYe+tULjFp1
         8XdNIHXrJBvzYEzEat6AC1fgmynreJCd42H0vXGYoRx614HdjFSdY+tN1gu0C1IfHVC0
         /1KnOHaMYKpgjyAFT9qSTYMSkOYdqGSIBAoV3s5ePFTTl8MMOTphjVF1os83Q24x/CPJ
         GCGw==
X-Gm-Message-State: AOAM531mbr+bEbDL5BIbql+Zk4aF4q3QGdbZonk0ojjfpnbF1jF2mH8g
	pwkEF/EdDhFoLKEtDwIb9M4=
X-Google-Smtp-Source: ABdhPJx65BadSmBv3oKgbCv3+CovB8nvrkZb7MR70AoCkrOlA+RR5a0VGmZMvGKHnji+JthaA8zl3w==
X-Received: by 2002:a65:640c:: with SMTP id a12mr22938813pgv.88.1595342936869;
        Tue, 21 Jul 2020 07:48:56 -0700 (PDT)
Received: from skjolley (c-71-59-136-149.hsd1.or.comcast.net. [71.59.136.149])
        by smtp.gmail.com with ESMTPSA id d18sm3625588pjv.25.2020.07.21.07.48.55
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Jul 2020 07:48:56 -0700 (PDT)
From: "Stephen Jolley" <sjolley.yp.pm@gmail.com>
To: <yocto@yoctoproject.org>,
	<openembedded-core@lists.openembedded.org>
Subject: Yocto Project Status WW29'20
Date: Tue, 21 Jul 2020 07:48:56 -0700
Message-ID: <119801d65f6e$1010dc30$30329490$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdZfbcPEr5n2wQzwS8OqHzZeuwj6Ag==
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_1199_01D65F33.63B38AD0"
Content-Language: en-us

------=_NextPart_000_1199_01D65F33.63B38AD0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Current Dev Position: YP 3.2 M2

Next Deadline: YP 3.2 M2 build date 2020/7/27

 

Next Team Meetings:

*	Bug Triage meeting Thursday July 23th at 7:30am PDT (
<https://zoom.us/j/454367603> https://zoom.us/j/454367603)
*	Monthly Project Meeting Tuesday Aug. 4th at 8am PDT (
<https://zoom.us/j/990892712> https://zoom.us/j/990892712)
*	Weekly Engineering Sync Tuesday July 21st  at 8am PDT (
<https://zoom.us/j/990892712> https://zoom.us/j/990892712)
*	Twitch -  See https://www.twitch.tv/theyoctojester

 

Key Status/Updates:

*	The number of intermittent race issues is reduced however we are
still seeing some recurring issues and some new issues too. You can see the
list of failures we're continuing to see by searching for the "AB-INT" tag
in bugzilla:
<https://bugzilla.yoctoproject.org/buglist.cgi?quicksearch=AB-INT>
https://bugzilla.yoctoproject.org/buglist.cgi?quicksearch=AB-INT

Help with any of these would be much appreciated.

*	We are planning to do a build of 3.1.2 this week as the project
appears to be in reasonable shape after the recent race fixes that were
backported.
*	We are struggling with maintainers for some key components of the
system/infrastructure such as devtool, wic, buildhistory and
patchwork/patchtest. If anyone can help in these areas please contact
Richard.
*	Another way to help the project is to help us with bugs that are
currently unassigned but ideally needed during 3.2. See:
<https://wiki.yoctoproject.org/wiki/Bug_Triage#Medium.2B_3.2_Unassigned_Enha
ncements.2FBugs>
https://wiki.yoctoproject.org/wiki/Bug_Triage#Medium.2B_3.2_Unassigned_Enhan
cements.2FBugs
*	Help with any of the recent failed AUH recipe upgrades would also be
appreciated.

 

YP 3.2 Milestone Dates:

*	YP 3.2 M2 build date 2020/7/27
*	YP 3.2 M2 Release date 2020/8/7
*	YP 3.2 M3 build date 2020/8/31
*	YP 3.2 M3 Release date 2020/9/11
*	YP 3.2 M4 build date 2020/10/5
*	YP 3.2 M4 Release date 2020/10/30

 

Planned upcoming dot releases:

*	YP 3.0.4 build date 2020/8/10
*	YP 3.0.4 release date 2020/8/21
*	YP 3.1.2 build date 2020/7/20
*	YP 3.1.2 release date 2020/7/31
*	YP 3.1.3 build date 2020/9/14
*	YP 3.1.3 release date 2020/9/25

 

Tracking Metrics:

*	WDD 2450 (last week 2465) (
<https://wiki.yoctoproject.org/charts/combo.html>
https://wiki.yoctoproject.org/charts/combo.html)
*	Poky Patch Metrics  

*	Total patches found: 1275 (last week 1269)
*	Patches in the Pending State: 498 (39%) [last week 498 (39%)]

 

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

 


------=_NextPart_000_1199_01D65F33.63B38AD0
Content-Type: text/html;
	boundary="----=_NextPart_000_059E_01D659B2.161C6A20";
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
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"MS Sans Serif";}
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
	{mso-list-id:109588720;
	mso-list-template-ids:1421525122;}
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
	{mso-list-id:113868024;
	mso-list-template-ids:102012574;}
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
	{mso-list-id:165900976;
	mso-list-template-ids:441892032;}
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
	{mso-list-id:349338358;
	mso-list-template-ids:-196830756;}
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
	{mso-list-id:777989076;
	mso-list-template-ids:777162112;}
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
	{mso-list-id:834297932;
	mso-list-template-ids:-46127972;}
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
	{mso-list-id:1346899638;
	mso-list-template-ids:921370254;}
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
	{mso-list-id:1431966565;
	mso-list-template-ids:1902268594;}
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
	{mso-list-id:1817335066;
	mso-list-template-ids:415527200;}
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
	{mso-list-id:1957910931;
	mso-list-template-ids:1739213610;}
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
	{mso-list-id:1978028799;
	mso-list-template-ids:-1875061904;}
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
Position: YP 3.2 M2</span><o:p></o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Next Deadline: YP =
3.2 M2 build date 2020/7/27</span><o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Next Team =
Meetings:</span><o:p></o:p></p><ul style=3D'margin-top:0in' =
type=3Ddisc><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l10 level1 lfo6;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>Bug Triage meeting Thursday =
July 23th at 7:30am PDT (<a href=3D"https://zoom.us/j/454367603"><span =
style=3D'font-size:10.0pt;color:#1155CC'>https://zoom.us/j/454367603</spa=
n></a>)<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l10 level1 lfo6;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>Monthly Project Meeting Tuesday =
Aug. 4th at 8am PDT (<a href=3D"https://zoom.us/j/990892712"><span =
style=3D'color:#1155CC'>https://zoom.us/j/990892712)</span></a><o:p></o:p=
></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l10 level1 lfo6;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>Weekly Engineering Sync Tuesday =
July 21st&nbsp; at 8am PDT (<a =
href=3D"https://zoom.us/j/990892712"><span =
style=3D'color:#1155CC'>https://zoom.us/j/990892712)</span></a><o:p></o:p=
></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l10 level1 lfo6;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>Twitch -&nbsp; See =
https://www.twitch.tv/theyoctojester<o:p></o:p></span></li></ul><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Key =
Status/Updates:</span><o:p></o:p></p><ul style=3D'margin-top:0in' =
type=3Ddisc><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l1 level1 lfo7;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>The number of intermittent race =
issues is reduced however we are still seeing some recurring issues and =
some new issues too. You can see the list of failures we&#8217;re =
continuing to see by searching for the &#8220;AB-INT&#8221; tag in =
bugzilla: <a =
href=3D"https://bugzilla.yoctoproject.org/buglist.cgi?quicksearch=3DAB-IN=
T"><span =
style=3D'color:#1155CC'>https://bugzilla.yoctoproject.org/buglist.cgi?qui=
cksearch=3DAB-INT</span></a><o:p></o:p></span></li></ul><p =
style=3D'mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margin=
-left:.5in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Help with any of =
these would be much appreciated.</span><o:p></o:p></p><ul =
style=3D'margin-top:0in' type=3Ddisc><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l6 level1 lfo8;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>We are planning to do a build =
of 3.1.2 this week as the project appears to be in reasonable shape =
after the recent race fixes that were =
backported.<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l6 level1 lfo8;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>We are struggling with =
maintainers for some key components of the system/infrastructure such as =
devtool, wic, buildhistory and patchwork/patchtest. If anyone can help =
in these areas please contact Richard.<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l6 level1 lfo8;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>Another way to help the project =
is to help us with bugs that are currently unassigned but ideally needed =
during 3.2. See: <a =
href=3D"https://wiki.yoctoproject.org/wiki/Bug_Triage#Medium.2B_3.2_Unass=
igned_Enhancements.2FBugs"><span =
style=3D'color:#1155CC'>https://wiki.yoctoproject.org/wiki/Bug_Triage#Med=
ium.2B_3.2_Unassigned_Enhancements.2FBugs</span></a><o:p></o:p></span></l=
i><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l6 level1 lfo8;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>Help with any of the recent =
failed AUH recipe upgrades would also be =
appreciated.<o:p></o:p></span></li></ul><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>YP 3.2 Milestone =
Dates:</span><o:p></o:p></p><ul style=3D'margin-top:0in' type=3Ddisc><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l2 level1 lfo9;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.2 M2 build date =
2020/7/27<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l2 level1 lfo9;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.2 M2 Release date =
2020/8/7<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l2 level1 lfo9;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.2 M3 build date =
2020/8/31<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l2 level1 lfo9;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.2 M3 Release date =
2020/9/11<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l2 level1 lfo9;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.2 M4 build date =
2020/10/5<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l2 level1 lfo9;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.2 M4 Release date =
2020/10/30<o:p></o:p></span></li></ul><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Planned upcoming =
dot releases:</span><o:p></o:p></p><ul style=3D'margin-top:0in' =
type=3Ddisc><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l7 level1 lfo10;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.0.4 build date =
2020/8/10<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l7 level1 lfo10;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.0.4 release date =
2020/8/21<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l7 level1 lfo10;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.1.2 build date =
2020/7/20<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l7 level1 lfo10;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.1.2 release date =
2020/7/31<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l7 level1 lfo10;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.1.3 build date =
2020/9/14<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l7 level1 lfo10;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.1.3 release date =
2020/9/25<o:p></o:p></span></li></ul><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
style=3D'margin:0in;margin-bottom:.0001pt'><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Tracking =
Metrics:</span><o:p></o:p></p><ul style=3D'margin-top:0in' =
type=3Ddisc><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l3 level1 lfo11;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>WDD 2450 (last week =
2465)</span><span style=3D'font-family:Consolas'> (</span><span =
style=3D'font-family:"Arial",sans-serif'><a =
href=3D"https://wiki.yoctoproject.org/charts/combo.html"><span =
style=3D'color:#1155CC'>https://wiki.yoctoproject.org/charts/combo.html</=
span></a></span><span style=3D'font-family:Consolas'>)</span><span =
style=3D'font-family:"Arial",sans-serif'><o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l3 level1 lfo11;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>Poky Patch =
Metrics&nbsp;&nbsp;</span><span =
style=3D'font-family:Consolas'><o:p></o:p></span></li><ul =
style=3D'margin-top:0in' type=3Dcircle><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l3 level2 lfo11;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>Total patches found: 1275 (last =
week 1269)<o:p></o:p></span></li><li =
style=3D'color:black;margin-top:0in;margin-bottom:0in;margin-bottom:.0001=
pt;mso-list:l3 level2 lfo11;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>Patches in the Pending State: =
498 (39%) [last week 498 (39%)]</span><span =
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

------=_NextPart_000_1199_01D65F33.63B38AD0--
