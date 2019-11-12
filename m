Return-Path: <sjolley.yp.pm@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 363EBE00D4F; Tue, 12 Nov 2019 07:47:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (sjolley.yp.pm[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.181 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com
	[209.85.210.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCDCBE0083D
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 07:47:13 -0800 (PST)
Received: by mail-pf1-f181.google.com with SMTP id p24so13641679pfn.4
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 07:47:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:subject:date:message-id:mime-version:content-language
	:thread-index; bh=becPhoQMkKfQB011+zSC575aSpoE5JqPhHsBgGaAQbA=;
	b=tisUF6S9mRowzRmDZtWADxeebHMwHpqkQhYN1cy3ljg8o9jmVrhawVlG7oUpUgD0R/
	bPEHYYXQvIJKJITRGHTr8YTTOYW9PNjkvuOFnMjp20uFD4JtX5LeIVgTp5852X5evb3l
	5txlLqDEyiBpOB2VIexi9Zqmw9F5RH9vEcmIV4H63xHuadgc2sij0g4PIqtbaNsIDq0O
	ZL/RK9iNzi/ICmc/LNiIBfe+xCpfngGCMkH07JhrMibAJnmcKOc8a/tpkMwHZwnpS/6D
	kaJbCTDaCiDU67FBueTsAZGUkqedp10oZMik5skw1TxbFr/YUVWuegmTZwHyKgV6wHMU
	eoXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:subject:date:message-id:mime-version
	:content-language:thread-index;
	bh=becPhoQMkKfQB011+zSC575aSpoE5JqPhHsBgGaAQbA=;
	b=G+fDYLTD4VNcKkDpCIkygy8njNqlhorBt8ZFpFDwsBleVWJhirMzlS7bxHa0kKeFvC
	Jjd+c0JfXTbh7X9n33Vxnhu4Ap8Q2wOw3i2TIuZnPPMQ65IIHkJKA3324xnhpsXIg91S
	ovAVcfG9cKA49bwZ8VG3jMtCfdhYy+k8Vgvi070dX8soMTHGBmYzQXLnZUJshQ85T0nK
	og4QIOWCN85p3MR0AO1j1eYqXSukW2L2RIsqiuwlzbfJmUWYpRGhK9TMEmylNOP/JFRy
	x+kLGg2lG4W1fDQWhTXeq71cRlnqd/sUJdN67rCx4J6j5T+RRrafolgkdACdCCkUW0y0
	KtjA==
X-Gm-Message-State: APjAAAXt6pnUqUqXdObT4Rt/dn056IsmnvH0kOOHdscPXxpVwt4wJuOZ
	ovOCaMI2q5wpT3QvayLK3Vo=
X-Google-Smtp-Source: APXvYqyh4t7JbPM2n02VRj4SP1MMS+VV2eBg5QkZtoAOSw7oDfHTD6sE6dTRoYTJjjVS6rmWLk0QMA==
X-Received: by 2002:a63:950c:: with SMTP id p12mr37470465pgd.238.1573573632851;
	Tue, 12 Nov 2019 07:47:12 -0800 (PST)
Received: from sjolley (c-71-59-136-149.hsd1.or.comcast.net. [71.59.136.149])
	by smtp.gmail.com with ESMTPSA id
	13sm18671245pgq.72.2019.11.12.07.47.11
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 12 Nov 2019 07:47:12 -0800 (PST)
From: <sjolley.yp.pm@gmail.com>
To: <yocto@yoctoproject.org>,
	<openembedded-core@lists.openembedded.org>
Date: Tue, 12 Nov 2019 07:47:13 -0800
Message-ID: <014c01d59970$73f28c40$5bd7a4c0$@gmail.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdWZcFItj5CoS1SSTqaCekWCN2mFsg==
Subject: Yocto Project Status WW46'19
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
X-List-Received-Date: Tue, 12 Nov 2019 15:47:16 -0000
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_014D_01D5992D.65D0ABD0"
Content-Language: en-us

------=_NextPart_000_014D_01D5992D.65D0ABD0
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Current Dev Position: YP 3.1 M1 

Next Deadline: YP 3.1 M1 build Dec. 2, 2019

 

SWAT Team Rotation:

*	SWAT lead is currently: Anuj 
*	SWAT team rotation: Anuj -> Chen on Nov. 15, 2019
*	SWAT team rotation: Chen > Paul on Nov. 22, 2019
*	 <https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team>
https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team

 

Next Team Meetings:

*	Bug Triage meeting Thursday Nov. 14th at 7:30am PDT (
<https://zoom.us/j/454367603> https://zoom.us/j/454367603)
*	Monthly Project Meeting Tuesday Dec. 3rd at 8am PDT (
<https://zoom.us/j/990892712> https://zoom.us/j/990892712)
*	Weekly Engineering Sync Tuesday Nov. 12th at 8am PDT (
<https://zoom.us/j/990892712> https://zoom.us/j/990892712)
*	Twitch - Next event is Tuesday Nov. 12th at 8am PDT (
<https://www.twitch.tv/yocto_project> https://www.twitch.tv/yocto_project)

 

Key Status/Updates:

*	YP 2.7.2 is still undergoing QA
*	There were some key fixes for pseudo related issues which mean it
continues to work with modern distros like Fedora 31.
*	Patches have continued to merge and master is staying roughly
current with the pending patch queue but there continue to be recurring
build failures that are not being addressed.
*	The YP TSC worked on and shared a proposal on how an LTS release
could work which is available at:
<https://docs.google.com/document/d/1AwAFDf52f_FoXksbHEVUMlu4hpcI0JMGVG-Kj_s
Ukyc/>
https://docs.google.com/document/d/1AwAFDf52f_FoXksbHEVUMlu4hpcI0JMGVG-Kj_sU
kyc/ . There has been much discussion about this, patience would be
appreciated as the TSC and governing board work through this to come up with
plans on how we proceed.
*	We are continuing to collect ideas for YP 3.1 in this document:
<https://docs.google.com/document/d/1UKZIGe88-eq3-pOPtkAvFAegbQDzhy_f4ye64yj
nABc/edit?usp=sharing>
https://docs.google.com/document/d/1UKZIGe88-eq3-pOPtkAvFAegbQDzhy_f4ye64yjn
ABc/edit?usp=sharing
*	If anyone has any status items for the project they'd like to add to
the weekly reports, please email Richard and Stephen.

 

Proposed YP 3.1 Milestone Dates:

*	YP 3.1 M1 Proposed build date 12/2/2019
*	YP 3.1 M1 Proposed release date 12/13/2019
*	YP 3.1 M2 Proposed build date 1/20/2020
*	YP 3.1 M2 Proposed release date 1/31/2020
*	YP 3.1 M3 Proposed build date 2/24/2020
*	YP 3.1 M3 Proposed release date 3/6/2020
*	YP 3.1 M4 Proposed build date  3/30/2020
*	YP 3.1 M4 Proposed release date  4/24/2020

 

Planned upcoming dot releases:

*	YP 3.0.1 has patches being queued in poky-contrib
*	YP 2.7.2 (Warrior) is in QA.

 

Tracking Metrics:

*	WDD 2508 (last week 2518) (
<https://wiki.yoctoproject.org/charts/combo.html>
https://wiki.yoctoproject.org/charts/combo.html)
*	Poky Patch Metrics  

*	Total patches found: 1445 (last week 1446)
*	Patches in the Pending State: 579 (40%) [last week 579 (40%)]

 

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

Yocto Project Project Manager

*    Cell:                (208) 244-4460

* Email:               <mailto:sjolley.yp.pm@gmail.com>
sjolley.yp.pm@gmail.com

 


------=_NextPart_000_014D_01D5992D.65D0ABD0
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" =
xmlns:o=3D"urn:schemas-microsoft-com:office:office" =
xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:x=3D"urn:schemas-microsoft-com:office:excel" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" =
xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META =
HTTP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; =
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:465591455;
	mso-list-template-ids:-251655038;}
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
	{mso-list-id:610742564;
	mso-list-template-ids:-668318924;}
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
	{mso-list-id:957760518;
	mso-list-template-ids:-1207167602;}
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
	{mso-list-id:1246377514;
	mso-list-template-ids:1726491756;}
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
	{mso-list-id:1308585288;
	mso-list-template-ids:1270131472;}
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
	{mso-list-id:1925142584;
	mso-list-template-ids:1341916044;}
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
class=3DMsoNormal><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Current Dev =
Position: YP 3.1 M1&nbsp;</span><o:p></o:p></p><p =
class=3DMsoNormal><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Next Deadline: YP =
3.1 M1 build Dec. 2, 2019</span><o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
style=3D'font-family:"Arial",sans-serif;color:black'>SWAT Team =
Rotation:</span><o:p></o:p></p><ul style=3D'margin-top:0in' =
type=3Ddisc><li class=3DMsoNormal style=3D'color:black;mso-list:l5 =
level1 lfo1;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>SWAT lead is currently: =
Anuj&nbsp;<o:p></o:p></span></li><li class=3DMsoNormal =
style=3D'color:black;mso-list:l5 level1 =
lfo1;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>SWAT team rotation: Anuj -&gt; =
Chen on Nov. 15, 2019<o:p></o:p></span></li><li class=3DMsoNormal =
style=3D'color:black;mso-list:l5 level1 =
lfo1;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>SWAT team rotation: Chen &gt; =
Paul on Nov. 22, 2019<o:p></o:p></span></li><li class=3DMsoNormal =
style=3D'color:black;mso-list:l5 level1 =
lfo1;vertical-align:baseline'><span style=3D'font-family:Consolas'><a =
href=3D"https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team"=
><span =
style=3D'color:#1155CC'>https://wiki.yoctoproject.org/wiki/Yocto_Build_Fa=
ilure_Swat_Team</span></a><o:p></o:p></span></li></ul><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Next Team =
Meetings:</span><o:p></o:p></p><ul style=3D'margin-top:0in' =
type=3Ddisc><li class=3DMsoNormal style=3D'color:black;mso-list:l2 =
level1 lfo2;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>Bug Triage meeting Thursday =
Nov. 14th at 7:30am PDT (<a href=3D"https://zoom.us/j/454367603"><span =
style=3D'font-size:10.0pt;color:#1155CC'>https://zoom.us/j/454367603</spa=
n></a>)<o:p></o:p></span></li><li class=3DMsoNormal =
style=3D'color:black;mso-list:l2 level1 =
lfo2;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>Monthly Project Meeting Tuesday =
Dec. 3rd at 8am PDT (<a href=3D"https://zoom.us/j/990892712"><span =
style=3D'color:#1155CC'>https://zoom.us/j/990892712)</span></a><o:p></o:p=
></span></li><li class=3DMsoNormal style=3D'color:black;mso-list:l2 =
level1 lfo2;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>Weekly Engineering Sync Tuesday =
Nov. 12th at 8am PDT (<a href=3D"https://zoom.us/j/990892712"><span =
style=3D'color:#1155CC'>https://zoom.us/j/990892712)</span></a><o:p></o:p=
></span></li><li class=3DMsoNormal style=3D'color:black;mso-list:l2 =
level1 lfo2;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>Twitch - Next event is Tuesday =
Nov. 12th at 8am PDT (<a =
href=3D"https://www.twitch.tv/yocto_project"><span =
style=3D'color:#1155CC'>https://www.twitch.tv/yocto_project</span></a>)<o=
:p></o:p></span></li></ul><p class=3DMsoNormal><o:p>&nbsp;</o:p></p><p =
class=3DMsoNormal><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Key =
Status/Updates:</span><o:p></o:p></p><ul style=3D'margin-top:0in' =
type=3Ddisc><li class=3DMsoNormal style=3D'color:black;mso-list:l1 =
level1 lfo3;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 2.7.2 is still undergoing =
QA<o:p></o:p></span></li><li class=3DMsoNormal =
style=3D'color:black;mso-list:l1 level1 =
lfo3;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>There were some key fixes for =
pseudo related issues which mean it continues to work with modern =
distros like Fedora 31.<o:p></o:p></span></li><li class=3DMsoNormal =
style=3D'color:black;mso-list:l1 level1 =
lfo3;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>Patches have continued to merge =
and master is staying roughly current with the pending patch queue but =
there continue to be recurring build failures that are not being =
addressed.<o:p></o:p></span></li><li class=3DMsoNormal =
style=3D'color:black;mso-list:l1 level1 =
lfo3;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>The YP TSC worked on and shared =
a proposal on how an LTS release could work which is available at: <a =
href=3D"https://docs.google.com/document/d/1AwAFDf52f_FoXksbHEVUMlu4hpcI0=
JMGVG-Kj_sUkyc/"><span =
style=3D'color:#1155CC'>https://docs.google.com/document/d/1AwAFDf52f_FoX=
ksbHEVUMlu4hpcI0JMGVG-Kj_sUkyc/</span></a> . There has been much =
discussion about this, patience would be appreciated as the TSC and =
governing board work through this to come up with plans on how we =
proceed.<o:p></o:p></span></li><li class=3DMsoNormal =
style=3D'color:black;mso-list:l1 level1 =
lfo3;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>We are continuing to collect =
ideas for YP 3.1 in this document: <a =
href=3D"https://docs.google.com/document/d/1UKZIGe88-eq3-pOPtkAvFAegbQDzh=
y_f4ye64yjnABc/edit?usp=3Dsharing"><span =
style=3D'color:#1155CC'>https://docs.google.com/document/d/1UKZIGe88-eq3-=
pOPtkAvFAegbQDzhy_f4ye64yjnABc/edit?usp=3Dsharing</span></a><o:p></o:p></=
span></li><li class=3DMsoNormal style=3D'color:black;mso-list:l1 level1 =
lfo3;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>If anyone has any status items =
for the project they&#8217;d like to add to the weekly reports, please =
email Richard and Stephen.<o:p></o:p></span></li></ul><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Proposed YP 3.1 =
Milestone Dates:</span><o:p></o:p></p><ul style=3D'margin-top:0in' =
type=3Ddisc><li class=3DMsoNormal style=3D'color:black;mso-list:l3 =
level1 lfo4;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.1 M1 Proposed build date =
12/2/2019<o:p></o:p></span></li><li class=3DMsoNormal =
style=3D'color:black;mso-list:l3 level1 =
lfo4;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.1 M1 Proposed release date =
12/13/2019<o:p></o:p></span></li><li class=3DMsoNormal =
style=3D'color:black;mso-list:l3 level1 =
lfo4;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.1 M2 Proposed build date =
1/20/2020<o:p></o:p></span></li><li class=3DMsoNormal =
style=3D'color:black;mso-list:l3 level1 =
lfo4;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.1 M2 Proposed release date =
1/31/2020<o:p></o:p></span></li><li class=3DMsoNormal =
style=3D'color:black;mso-list:l3 level1 =
lfo4;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.1 M3 Proposed build date =
2/24/2020<o:p></o:p></span></li><li class=3DMsoNormal =
style=3D'color:black;mso-list:l3 level1 =
lfo4;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.1 M3 Proposed release date =
3/6/2020<o:p></o:p></span></li><li class=3DMsoNormal =
style=3D'color:black;mso-list:l3 level1 =
lfo4;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.1 M4 Proposed build =
date&nbsp; 3/30/2020<o:p></o:p></span></li><li class=3DMsoNormal =
style=3D'color:black;mso-list:l3 level1 =
lfo4;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.1 M4 Proposed release =
date&nbsp; 4/24/2020<o:p></o:p></span></li></ul><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Planned upcoming =
dot releases:</span><o:p></o:p></p><ul style=3D'margin-top:0in' =
type=3Ddisc><li class=3DMsoNormal style=3D'color:black;mso-list:l4 =
level1 lfo5;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 3.0.1 has patches being =
queued in poky-contrib<o:p></o:p></span></li><li class=3DMsoNormal =
style=3D'color:black;mso-list:l4 level1 =
lfo5;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>YP 2.7.2 (Warrior) is in =
QA.<o:p></o:p></span></li></ul><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
style=3D'font-family:"Arial",sans-serif;color:black'>Tracking =
Metrics:</span><o:p></o:p></p><ul style=3D'margin-top:0in' =
type=3Ddisc><li class=3DMsoNormal style=3D'color:black;mso-list:l0 =
level1 lfo6;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>WDD 2508 (last week =
2518)</span><span style=3D'font-family:Consolas'> (</span><span =
style=3D'font-family:"Arial",sans-serif'><a =
href=3D"https://wiki.yoctoproject.org/charts/combo.html"><span =
style=3D'color:#1155CC'>https://wiki.yoctoproject.org/charts/combo.html</=
span></a></span><span style=3D'font-family:Consolas'>)</span><span =
style=3D'font-family:"Arial",sans-serif'><o:p></o:p></span></li><li =
class=3DMsoNormal style=3D'color:black;mso-list:l0 level1 =
lfo6;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>Poky Patch =
Metrics&nbsp;&nbsp;</span><span =
style=3D'font-family:Consolas'><o:p></o:p></span></li><ul =
style=3D'margin-top:0in' type=3Dcircle><li class=3DMsoNormal =
style=3D'color:black;mso-list:l0 level2 =
lfo6;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>Total patches found: 1445 (last =
week 1446)<o:p></o:p></span></li><li class=3DMsoNormal =
style=3D'color:black;mso-list:l0 level2 =
lfo6;vertical-align:baseline'><span =
style=3D'font-family:"Arial",sans-serif'>Patches in the Pending State: =
579 (40%) [last week 579 (40%)]</span><span =
style=3D'font-family:Consolas'><o:p></o:p></span></li></ul></ul><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
style=3D'font-family:"Arial",sans-serif;color:black'>The Yocto =
Project&#8217;s technical governance is through its Technical Steering =
Committee, more information is available at:</span><o:p></o:p></p><p =
class=3DMsoNormal><a =
href=3D"https://wiki.yoctoproject.org/wiki/TSC"><span =
style=3D'font-family:"Arial",sans-serif;color:#1155CC'>https://wiki.yocto=
project.org/wiki/TSC</span></a><o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
style=3D'font-family:"Arial",sans-serif;color:black'>The Status reports =
are now stored on the wiki at: </span><a =
href=3D"https://wiki.yoctoproject.org/wiki/Weekly_Status"><span =
style=3D'font-family:"Arial",sans-serif;color:#1155CC'>https://wiki.yocto=
project.org/wiki/Weekly_Status</span></a><o:p></o:p></p><p =
class=3DMsoNormal><o:p>&nbsp;</o:p></p><p class=3DMsoNormal><span =
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
Project Project Manager<o:p></o:p></span></b></p><p =
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
244-4460</span><span style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif";color:black'><o:p></o:p></span></p><p class=3DMsoNormal><span =
style=3D'font-size:9.0pt;font-family:Wingdings'>* </span><b><span =
lang=3DFR style=3D'font-size:8.0pt;font-family:"Comic Sans =
MS";color:teal'>Email</span></b><span lang=3DFR =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif";color:teal'>:</span><span lang=3DFR =
style=3D'font-size:9.0pt;font-family:"MS Sans =
Serif"'>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;<u><span style=3D'color:blue'><a =
href=3D"mailto:sjolley.yp.pm@gmail.com"><span =
style=3D'color:#0563C1'>sjolley.yp.pm@gmail.com</span></a></span></u></sp=
an><span lang=3DFR =
style=3D'font-size:12.0pt;font-family:"Arial",sans-serif'><o:p></o:p></sp=
an></p><p class=3DMsoNormal><o:p>&nbsp;</o:p></p></div></body></html>

------=_NextPart_000_014D_01D5992D.65D0ABD0--
