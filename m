Return-Path: <Xiaofeng.Yan@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 611C74C80039
	for <yocto@yoctoproject.org>; Mon, 17 Jan 2011 20:43:53 -0600 (CST)
Received: from ALA-MAIL03.corp.ad.wrs.com (ala-mail03 [147.11.57.144])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p0I2hqBI028227;
	Mon, 17 Jan 2011 18:43:52 -0800 (PST)
Received: from ala-mail06.corp.ad.wrs.com ([147.11.57.147]) by
	ALA-MAIL03.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 17 Jan 2011 18:43:51 -0800
Received: from [128.224.163.183] ([128.224.163.183]) by
	ala-mail06.corp.ad.wrs.com with Microsoft SMTPSVC(6.0.3790.1830); 
	Mon, 17 Jan 2011 18:43:50 -0800
Message-ID: <4D34FD16.7060308@windriver.com>
Date: Tue, 18 Jan 2011 10:38:14 +0800
From: Xiaofeng Yan <xiaofeng.yan@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.1.11) Gecko/20100713 Thunderbird/3.0.6
MIME-Version: 1.0
To: "Stewart, David C" <david.c.stewart@intel.com>
References: <4D33CFB0.1030701@windriver.com>
	<B27EBC40D200ED48A3F4CC2EBEABAE0B25C0CA1368@orsmsx501.amr.corp.intel.com>
In-Reply-To: <B27EBC40D200ED48A3F4CC2EBEABAE0B25C0CA1368@orsmsx501.amr.corp.intel.com>
X-OriginalArrivalTime: 18 Jan 2011 02:43:50.0425 (UTC)
	FILETIME=[899E5090:01CBB6B9]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Status for lsb test (2011.1.10-2011.1.14)
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
X-List-Received-Date: Tue, 18 Jan 2011 02:43:53 -0000
Content-Type: multipart/alternative;
	boundary="------------000302060608020208090403"

--------------000302060608020208090403
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011?01?18? 00:21, Stewart, David C wrote:
>
> Thanks for sending.
>
> I am surprised that QT3 is included in LSB. We're at QT4 now I believe.
>
> For those who care about LSB: Are we OK with that failure?
>
> Dave
>
Thank you for your attention to LSB fixing.
Yes, LSB test suite include QT3 but we don't test it because QT3 
couldn't be necessary due to QT4 is more stronger then QT3 which is in 
suspended while we wait for suggestion from "Saul" and "Mark Hatle" . If 
you have better ideas, we will adopt it with great willingness. So If it 
is necessary , we will fix bugs from QT3 for the future.
>
> *From:* yocto-bounces@yoctoproject.org 
> [mailto:yocto-bounces@yoctoproject.org] *On Behalf Of *Xiaofeng Yan
> *Sent:* Sunday, January 16, 2011 9:12 PM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] Status for lsb test (2011.1.10-2011.1.14)
>
> Hi all,
> The next table is for the latest lsb test result.
>
> *LSB Test Suite*
>
> 	
>
> *Version*
>
> 	
>
> *Result*
>
> 	
>
> *Left work*
>
> 	
>
> *May/Days*
>
> 	
>
> *Start Date*
>
> 	
>
> *Finish Date*
>
> 	
>
> *Status*
>
> 	
>
> *Completed Percentage*
>
> 	
>
> *Defects filed*
>
> 	
>
> *Developer*
>
> 	
>
> *Risk/Issue*
>
> Cpp-T2C Tests
>
> 	
>
> 4.0.2-1
>
> 	
>
> Passed
>
> 	
>
> submit
>
> 	
>
> 2
>
> 	
>
> 2010-12-20
>
> 	
>
> 2010-12-21
>
> 	
>
> In Progress
>
> 	
>
> 90%
>
> 	
> 	
>
> Jingdong Lu
>
> 	
>
> Libstdc++ Tests
>
> 	
>
> 4.1.0-7
>
> 	
>
> Passed
>
> 	
>
> submit
>
> 	
>
> 3
>
> 	
>
> 2010-12-22
>
> 	
>
> 2010-12-24
>
> 	
>
> In Progress
>
> 	
>
> 90%
>
> 	
> 	
>
> Jingdong Lu
>
> 	
>
> Perl Tests
>
> 	
>
> 4.0.7-1
>
> 	
>
> Passed
>
> 	
>
> None
>
> 	
>
> 2
>
> 	
>
> 2010-12-27
>
> 	
>
> 2010-12-28
>
> 	
>
> Done
>
> 	
>
> 100%
>
> 	
> 	
>
> Jingdong Lu
>
> 	
>
> Python Runtime Tests
>
> 	
>
> 4.0.2-1
>
> 	
>
> Passed
>
> 	
>
> submit
>
> 	
>
> 3
>
> 	
>
> 2010-12-29
>
> 	
>
> 2010-12-31
>
> 	
>
> In Progress
>
> 	
>
> 90%
>
> 	
>
> Bug 614(Open)
>
> 	
>
> Jingdong Lu
>
> 	
>
> Python Tests
>
> 	
>
> 2.4.5-2
>
> 	
>
> Passed
>
> 	
>
> submit
>
> 	
>
> 0
>
> 	
> 	
> 	
>
> In Progress
>
> 	
>
> 90%
>
> 	
> 	
>
> Jingdong Lu
>
> 	
>
> OLVER Core Tests
>
> 	
> 	
>
> Passed
>
> 	
>
> submit
>
> 	
>
> 6
>
> 	
>
> 2011-1-4
>
> 	
>
> 2011-1-11
>
> 	
>
> In Progress
>
> 	
>
> 90%
>
> 	
> 	
>
> Jingdong Lu
>
> 	
>
> Command Check
>
> 	
>
> 4.0.0-2
>
> 	
>
> Passed
>
> 	
>
> Lsb
>
> 	
>
> 3
>
> 	
>
> 2011-1-12
>
> 	
>
> 2011-1-14
>
> 	
>
> In Progress
>
> 	
>
> 90%
>
> 	
>
> BUG 520(Open)
>
> 	
>
> Jingdong Lu
>
> 	
>
> Tcl Tests
>
> 	
>
> 8.5.7-6
>
> 	
>
> Passed
>
> 	
>
> None
>
> 	
>
> 5
>
> 	
>
> 2011-1-17
>
> 	
>
> 2011-1-21
>
> 	
>
> Done
>
> 	
>
> 100%
>
> 	
> 	
>
> Jingdong Lu
>
> 	
>
> Library Check
>
> 	
>
> 4.0.2-1
>
> 	
>
> Failures: 2
>
> 	
>
> qt3
>
> 	
>
> 5
>
> 	
>
> 2011-1-12
>
> 	
>
> 2011-1-18
>
> 	
>
> In Progress
>
> 	
>
> 80%
>
> 	
> 	
>
> Jingdong Lu
>
> 	
>
> Query if we need to handle any QT3 issues
>
>
> 	
> 	
> 	
> 	
> 	
> 	
> 	
> 	
> 	
> 	
> 	
>
> Desktop Tests
>
> 	
> 	
>
> Passed
>
> 	
>
> submit
>
> 	
>
> 4
>
> 	
>
> 2010-12-20
>
> 	
>
> 2010-12-29
>
> 	
>
> Delay
>
> 	
>
> 90%
>
> 	
>
> BUG 567(Closed)
> BUG 569(Closed)
> BUG 570(Closed)
>
> 	
>
> Xiaofeng Yan
>
> 	
>
> Desktop-T2C Tests
>
> 	
>
> 4.0.2-1
>
> 	
>
> Failures: 1
>
> 	
>
> fix failures
>
> 	
>
> 4
>
> 	
>
> 2010-12-20
>
> 	
>
> 2010-12-29
>
> 	
>
> Delay
>
> 	
>
> 70%
>
> 	
>
> BUG 571(Accepted)
>
> 	
>
> Xiaofeng Yan
>
> 	
>
> Qt4-Azov Tests
>
> 	
>
> 4.0.2-1
>
> 	
>
> Failures:3
>
> 	
>
> fix failures
>
> 	
>
> 4
>
> 	
>
> 2010-12-30
>
> 	
>
> 2011-1-5
>
> 	
>
> Delay
>
> 	
>
> 50%
>
> 	
> 	
>
> Xiaofeng Yan
>
> 	
>
> Xts5 Tests
>
> 	
>
> 5.1.5-19
>
> 	
>
> Passed
>
> 	
>
> submit
>
> 	
>
> 5
>
> 	
>
> 2011-1-6
>
> 	
>
> 2010-1-12
>
> 	
>
> In Progress
>
> 	
>
> 90%
>
> 	
> 	
>
> Xiaofeng Yan
>
> 	
>
> Core Tests
>
> 	
>
> 4.0.5-1
>
> 	
>
> Failures: N/A
>
> 	
>
> fix failures
>
> 	
>
> 7 (?)
>
> 	
>
> 2011-1-21
>
> 	
>
> 2011-1-31
>
> 	
>
> Not started Yet
>
> 	
> 	
> 	
>
> Xiaofeng Yan
>
> 	
>
> Blocked by POSIX rename test case
>
> LSB Test Suite
>
> 	
> 	
> 	
>
> creat-lsb-image
> LSB_Setup.sh
>
> 	
>
> 0
>
> 	
> 	
> 	
>
> Done
>
> 	
>
> 100%
>
> 	
> 	
>
> Xiaofeng Yan
>
> 	
>


--------------000302060608020208090403
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <meta content="text/html; charset=ISO-8859-1"
 http-equiv="Content-Type">
</head>
<body text="#000000" bgcolor="#ffffff">
On 2011&#24180;01&#26376;18&#26085; 00:21, Stewart, David C wrote:
<blockquote
 cite="mid:B27EBC40D200ED48A3F4CC2EBEABAE0B25C0CA1368@orsmsx501.amr.corp.intel.com"
 type="cite">
  <meta http-equiv="Content-Type"
 content="text/html; charset=ISO-8859-1">
  <meta name="Generator" content="Microsoft Word 12 (filtered medium)">
  <style><!--
/* Font Definitions */
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
	{font-family:"DejaVu Sans";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
@font-face
	{font-family:"Lucida Sans";
	panose-1:2 11 6 2 3 5 4 2 2 4;}
@font-face
	{font-family:FreeSerif;
	panose-1:0 0 0 0 0 0 0 0 0 0;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman","serif";
	color:black;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:blue;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:purple;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:10.0pt;
	font-family:"DejaVu Sans","serif";
	color:black;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
  <div class="WordSection1">
  <p class="MsoNormal"><span
 style="font-size: 11pt; font-family: &quot;Calibri&quot;,&quot;sans-serif&quot;; color: rgb(31, 73, 125);">Thanks
for sending.<o:p></o:p></span></p>
  <p class="MsoNormal"><span
 style="font-size: 11pt; font-family: &quot;Calibri&quot;,&quot;sans-serif&quot;; color: rgb(31, 73, 125);"><o:p>&nbsp;</o:p></span></p>
  <p class="MsoNormal"><span
 style="font-size: 11pt; font-family: &quot;Calibri&quot;,&quot;sans-serif&quot;; color: rgb(31, 73, 125);">I
am surprised that QT3 is included in LSB. We're at QT4 now I believe.<o:p></o:p></span></p>
  <p class="MsoNormal"><span
 style="font-size: 11pt; font-family: &quot;Calibri&quot;,&quot;sans-serif&quot;; color: rgb(31, 73, 125);"><o:p>&nbsp;</o:p></span></p>
  <p class="MsoNormal"><span
 style="font-size: 11pt; font-family: &quot;Calibri&quot;,&quot;sans-serif&quot;; color: rgb(31, 73, 125);">For
those who care about LSB: Are we OK with that failure?<o:p></o:p></span></p>
  <p class="MsoNormal"><span
 style="font-size: 11pt; font-family: &quot;Calibri&quot;,&quot;sans-serif&quot;; color: rgb(31, 73, 125);"><o:p>&nbsp;</o:p></span></p>
  <p class="MsoNormal"><span
 style="font-size: 11pt; font-family: &quot;Calibri&quot;,&quot;sans-serif&quot;; color: rgb(31, 73, 125);">Dave<o:p></o:p></span></p>
  <p class="MsoNormal"><span
 style="font-size: 11pt; font-family: &quot;Calibri&quot;,&quot;sans-serif&quot;; color: rgb(31, 73, 125);"><o:p>&nbsp;</o:p></span></p>
  </div>
</blockquote>
Thank you for your attention to LSB fixing.<br>
Yes, LSB test suite include QT3 but we don't test it because QT3
couldn't be necessary due to QT4 is more stronger then QT3 which is in
suspended while we wait for suggestion from "Saul" and "Mark Hatle" .
If you have better ideas, we will adopt it with great willingness. So
If it is necessary , we will fix bugs from QT3 for the future. <br>
<blockquote
 cite="mid:B27EBC40D200ED48A3F4CC2EBEABAE0B25C0CA1368@orsmsx501.amr.corp.intel.com"
 type="cite">
  <div class="WordSection1">
  <div
 style="border-style: none none none solid; border-color: -moz-use-text-color -moz-use-text-color -moz-use-text-color blue; border-width: medium medium medium 1.5pt; padding: 0in 0in 0in 4pt;">
  <div>
  <div
 style="border-style: solid none none; border-color: rgb(181, 196, 223) -moz-use-text-color -moz-use-text-color; border-width: 1pt medium medium; padding: 3pt 0in 0in;">
  <p class="MsoNormal"><b><span
 style="font-size: 10pt; font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: windowtext;">From:</span></b><span
 style="font-size: 10pt; font-family: &quot;Tahoma&quot;,&quot;sans-serif&quot;; color: windowtext;">
<a class="moz-txt-link-abbreviated" href="mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a> [<a class="moz-txt-link-freetext" href="mailto:yocto-bounces@yoctoproject.org">mailto:yocto-bounces@yoctoproject.org</a>] <b>On
Behalf Of </b>Xiaofeng Yan<br>
  <b>Sent:</b> Sunday, January 16, 2011 9:12 PM<br>
  <b>To:</b> <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
  <b>Subject:</b> [yocto] Status for lsb test (2011.1.10-2011.1.14)<o:p></o:p></span></p>
  </div>
  </div>
  <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
  <p class="MsoNormal" style="margin-bottom: 12pt;">Hi all,<br>
The next table is for the latest lsb test result.<o:p></o:p></p>
  <table class="MsoNormalTable" border="0" cellpadding="0"
 cellspacing="0">
    <tbody>
      <tr style="height: 30pt;">
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: silver none repeat scroll 0% 0%; width: 121.5pt; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 30pt;"
 valign="top" width="162">
        <p class="MsoNormal" style="text-align: center;" align="center"><b><span
 style="font-family: &quot;Lucida Sans&quot;,&quot;sans-serif&quot;;">LSB Test Suite</span></b><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: silver none repeat scroll 0% 0%; width: 58.5pt; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 30pt;"
 valign="top" width="78">
        <p class="MsoNormal" style="text-align: center;" align="center"><b><span
 style="font-family: &quot;Lucida Sans&quot;,&quot;sans-serif&quot;;">Version</span></b><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: silver none repeat scroll 0% 0%; width: 81.75pt; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 30pt;"
 valign="top" width="109">
        <p class="MsoNormal" style="text-align: center;" align="center"><b><span
 style="font-family: &quot;Lucida Sans&quot;,&quot;sans-serif&quot;;">Result</span></b><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: silver none repeat scroll 0% 0%; width: 111pt; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 30pt;"
 valign="top" width="148">
        <p class="MsoNormal" style="text-align: center;" align="center"><b><span
 style="font-family: &quot;Lucida Sans&quot;,&quot;sans-serif&quot;;">Left work</span></b><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: silver none repeat scroll 0% 0%; width: 71.25pt; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 30pt;"
 valign="top" width="95">
        <p class="MsoNormal" style="text-align: center;" align="center"><b><span
 style="font-family: &quot;Lucida Sans&quot;,&quot;sans-serif&quot;;">May/Days</span></b><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: silver none repeat scroll 0% 0%; width: 81.75pt; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 30pt;"
 valign="top" width="109">
        <p class="MsoNormal" style="text-align: center;" align="center"><b><span
 style="font-family: &quot;Lucida Sans&quot;,&quot;sans-serif&quot;;">Start Date</span></b><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: silver none repeat scroll 0% 0%; width: 87.75pt; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 30pt;"
 valign="top" width="117">
        <p class="MsoNormal" style="text-align: center;" align="center"><b><span
 style="font-family: &quot;Lucida Sans&quot;,&quot;sans-serif&quot;;">Finish Date</span></b><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: silver none repeat scroll 0% 0%; width: 66pt; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 30pt;"
 valign="top" width="88">
        <p class="MsoNormal" style="text-align: center;" align="center"><b><span
 style="font-family: &quot;Lucida Sans&quot;,&quot;sans-serif&quot;;">Status</span></b><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: silver none repeat scroll 0% 0%; width: 154.5pt; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 30pt;"
 valign="top" width="206">
        <p class="MsoNormal" style="text-align: center;" align="center"><b><span
 style="font-family: &quot;Lucida Sans&quot;,&quot;sans-serif&quot;;">Completed Percentage</span></b><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: silver none repeat scroll 0% 0%; width: 133.5pt; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 30pt;"
 valign="top" width="178">
        <p class="MsoNormal" style="text-align: center;" align="center"><b><span
 style="font-family: &quot;Lucida Sans&quot;,&quot;sans-serif&quot;;">Defects filed</span></b><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: silver none repeat scroll 0% 0%; width: 76.5pt; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 30pt;"
 valign="top" width="102">
        <p class="MsoNormal" style="text-align: center;" align="center"><b><span
 style="font-family: &quot;Lucida Sans&quot;,&quot;sans-serif&quot;;">Developer</span></b><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: silver none repeat scroll 0% 0%; width: 132pt; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 30pt;"
 valign="top" width="176">
        <p class="MsoNormal" style="text-align: center;" align="center"><b><span
 style="font-family: &quot;Lucida Sans&quot;,&quot;sans-serif&quot;;">Risk/Issue</span></b><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
      </tr>
      <tr style="height: 15.75pt;">
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;"
 valign="top">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Cpp-T2C Tests</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;"
 valign="top">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">4.0.2-1</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid solid solid none; border-color: rgb(26, 26, 26) rgb(26, 26, 26) rgb(26, 26, 26) -moz-use-text-color; border-width: 1pt 1pt 1pt medium; padding: 0.75pt; background: rgb(51, 153, 102) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Passed</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">submit</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2010-12-20</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2010-12-21</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid none solid solid; border-color: rgb(26, 26, 26) -moz-use-text-color rgb(26, 26, 26) rgb(26, 26, 26); border-width: 1pt medium 1pt 1pt; padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">In Progress</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: rgb(51, 102, 255) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">90%</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid none solid solid; border-color: rgb(26, 26, 26) -moz-use-text-color rgb(26, 26, 26) rgb(26, 26, 26); border-width: 1pt medium 1pt 1pt; padding: 0.75pt; height: 15.75pt;"><br>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Jingdong Lu</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;"><br>
        </td>
      </tr>
      <tr style="height: 15.75pt;">
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;"
 valign="top">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Libstdc++ Tests</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;"
 valign="top">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">4.1.0-7</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid solid solid none; border-color: rgb(26, 26, 26) rgb(26, 26, 26) rgb(26, 26, 26) -moz-use-text-color; border-width: 1pt 1pt 1pt medium; padding: 0.75pt; background: rgb(51, 153, 102) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Passed</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">submit</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">3</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2010-12-22</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2010-12-24</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid none solid solid; border-color: rgb(26, 26, 26) -moz-use-text-color rgb(26, 26, 26) rgb(26, 26, 26); border-width: 1pt medium 1pt 1pt; padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">In Progress</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: rgb(51, 102, 255) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">90%</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid none solid solid; border-color: rgb(26, 26, 26) -moz-use-text-color rgb(26, 26, 26) rgb(26, 26, 26); border-width: 1pt medium 1pt 1pt; padding: 0.75pt; height: 15.75pt;"><br>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Jingdong Lu</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;"><br>
        </td>
      </tr>
      <tr style="height: 15.75pt;">
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;"
 valign="top">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Perl Tests</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;"
 valign="top">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">4.0.7-1</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid solid solid none; border-color: rgb(26, 26, 26) rgb(26, 26, 26) rgb(26, 26, 26) -moz-use-text-color; border-width: 1pt 1pt 1pt medium; padding: 0.75pt; background: rgb(51, 153, 102) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Passed</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">None</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2010-12-27</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2010-12-28</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Done</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: rgb(153, 204, 0) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">100%</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid none solid solid; border-color: rgb(26, 26, 26) -moz-use-text-color rgb(26, 26, 26) rgb(26, 26, 26); border-width: 1pt medium 1pt 1pt; padding: 0.75pt; height: 15.75pt;"><br>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Jingdong Lu</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;"><br>
        </td>
      </tr>
      <tr style="height: 15.75pt;">
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;"
 valign="top">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Python Runtime Tests</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;"
 valign="top">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">4.0.2-1</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid solid solid none; border-color: rgb(26, 26, 26) rgb(26, 26, 26) rgb(26, 26, 26) -moz-use-text-color; border-width: 1pt 1pt 1pt medium; padding: 0.75pt; background: rgb(51, 153, 102) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Passed</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">submit</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">3</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2010-12-29</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2010-12-31</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">In Progress</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: rgb(51, 102, 255) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">90%</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid none solid solid; border-color: rgb(26, 26, 26) -moz-use-text-color rgb(26, 26, 26) rgb(26, 26, 26); border-width: 1pt medium 1pt 1pt; padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Bug 614(Open)</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Jingdong Lu</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;"><br>
        </td>
      </tr>
      <tr style="height: 15.75pt;">
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;"
 valign="top">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Python Tests</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;"
 valign="top">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2.4.5-2</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid solid solid none; border-color: rgb(26, 26, 26) rgb(26, 26, 26) rgb(26, 26, 26) -moz-use-text-color; border-width: 1pt 1pt 1pt medium; padding: 0.75pt; background: rgb(51, 153, 102) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Passed</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">submit</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">0</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;"><br>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;"><br>
        </td>
        <td
 style="border-style: solid none solid solid; border-color: rgb(26, 26, 26) -moz-use-text-color rgb(26, 26, 26) rgb(26, 26, 26); border-width: 1pt medium 1pt 1pt; padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">In Progress</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: rgb(51, 102, 255) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">90%</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid none solid solid; border-color: rgb(26, 26, 26) -moz-use-text-color rgb(26, 26, 26) rgb(26, 26, 26); border-width: 1pt medium 1pt 1pt; padding: 0.75pt; height: 15.75pt;"><br>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Jingdong Lu</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;"><br>
        </td>
      </tr>
      <tr style="height: 15.75pt;">
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;"
 valign="top">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">OLVER Core Tests</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;"
 valign="top"><br>
        </td>
        <td
 style="border-style: solid solid solid none; border-color: rgb(26, 26, 26) rgb(26, 26, 26) rgb(26, 26, 26) -moz-use-text-color; border-width: 1pt 1pt 1pt medium; padding: 0.75pt; background: rgb(51, 153, 102) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Passed</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">submit</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">6</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2011-1-4</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2011-1-11</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid none solid solid; border-color: rgb(26, 26, 26) -moz-use-text-color rgb(26, 26, 26) rgb(26, 26, 26); border-width: 1pt medium 1pt 1pt; padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">In Progress</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: rgb(51, 102, 255) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">90%</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid none solid solid; border-color: rgb(26, 26, 26) -moz-use-text-color rgb(26, 26, 26) rgb(26, 26, 26); border-width: 1pt medium 1pt 1pt; padding: 0.75pt; height: 15.75pt;"><br>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Jingdong Lu</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;"><br>
        </td>
      </tr>
      <tr style="height: 29.25pt;">
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 29.25pt;"
 valign="top">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Command Check</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 29.25pt;"
 valign="top">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">4.0.0-2</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid solid solid none; border-color: rgb(26, 26, 26) rgb(26, 26, 26) rgb(26, 26, 26) -moz-use-text-color; border-width: 1pt 1pt 1pt medium; padding: 0.75pt; background: rgb(51, 153, 102) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 29.25pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Passed</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 29.25pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Lsb</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 29.25pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">3</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 29.25pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2011-1-12</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 29.25pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2011-1-14</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid none solid solid; border-color: rgb(26, 26, 26) -moz-use-text-color rgb(26, 26, 26) rgb(26, 26, 26); border-width: 1pt medium 1pt 1pt; padding: 0.75pt; height: 29.25pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">In Progress</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: rgb(51, 102, 255) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 29.25pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">90%</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid none solid solid; border-color: rgb(26, 26, 26) -moz-use-text-color rgb(26, 26, 26) rgb(26, 26, 26); border-width: 1pt medium 1pt 1pt; padding: 0.75pt; height: 29.25pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">BUG 520(Open)</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 29.25pt;">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Jingdong Lu</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 29.25pt;"><br>
        </td>
      </tr>
      <tr style="height: 15.75pt;">
        <td
 style="border-style: solid solid none; border-color: rgb(26, 26, 26) rgb(26, 26, 26) -moz-use-text-color; border-width: 1pt 1pt medium; padding: 0.75pt; height: 15.75pt;"
 valign="top">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Tcl Tests</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid solid none; border-color: rgb(26, 26, 26) rgb(26, 26, 26) -moz-use-text-color; border-width: 1pt 1pt medium; padding: 0.75pt; height: 15.75pt;"
 valign="top">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">8.5.7-6</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid solid solid none; border-color: rgb(26, 26, 26) rgb(26, 26, 26) rgb(26, 26, 26) -moz-use-text-color; border-width: 1pt 1pt 1pt medium; padding: 0.75pt; background: rgb(51, 153, 102) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Passed</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">None</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">5</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2011-1-17</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2011-1-21</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid none solid solid; border-color: rgb(26, 26, 26) -moz-use-text-color rgb(26, 26, 26) rgb(26, 26, 26); border-width: 1pt medium 1pt 1pt; padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Done</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: rgb(153, 204, 0) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 15.75pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">100%</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid none solid solid; border-color: rgb(26, 26, 26) -moz-use-text-color rgb(26, 26, 26) rgb(26, 26, 26); border-width: 1pt medium 1pt 1pt; padding: 0.75pt; height: 15.75pt;"><br>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Jingdong Lu</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15.75pt;"><br>
        </td>
      </tr>
      <tr style="height: 27pt;">
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 27pt;"
 valign="top">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Library Check</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 27pt;"
 valign="top">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">4.0.2-1</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: rgb(255, 96, 96) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 27pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Failures: 2</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 27pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">qt3</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 27pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">5</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 27pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2011-1-12</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 27pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2011-1-18</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid none solid solid; border-color: rgb(26, 26, 26) -moz-use-text-color rgb(26, 26, 26) rgb(26, 26, 26); border-width: 1pt medium 1pt 1pt; padding: 0.75pt; height: 27pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">In Progress</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: rgb(51, 102, 255) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 27pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">80%</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid none solid solid; border-color: rgb(26, 26, 26) -moz-use-text-color rgb(26, 26, 26) rgb(26, 26, 26); border-width: 1pt medium 1pt 1pt; padding: 0.75pt; height: 27pt;"><br>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 27pt;">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Jingdong Lu</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 27pt;">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Query if we need to handle
any QT3 issues</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
      </tr>
      <tr style="height: 15pt;">
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15pt;"
 valign="top"><br>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15pt;"
 valign="top"><br>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15pt;"
 valign="top"><br>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15pt;"><br>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15pt;"><br>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15pt;"><br>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15pt;"><br>
        </td>
        <td
 style="border-style: solid none solid solid; border-color: rgb(26, 26, 26) -moz-use-text-color rgb(26, 26, 26) rgb(26, 26, 26); border-width: 1pt medium 1pt 1pt; padding: 0.75pt; height: 15pt;"><br>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15pt;"><br>
        </td>
        <td
 style="border-style: solid none solid solid; border-color: rgb(26, 26, 26) -moz-use-text-color rgb(26, 26, 26) rgb(26, 26, 26); border-width: 1pt medium 1pt 1pt; padding: 0.75pt; height: 15pt;"><br>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15pt;"><br>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 15pt;"><br>
        </td>
      </tr>
      <tr style="height: 38.25pt;">
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 38.25pt;"
 valign="top">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Desktop Tests</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 38.25pt;"
 valign="top"><br>
        </td>
        <td
 style="border-style: solid solid solid none; border-color: rgb(26, 26, 26) rgb(26, 26, 26) rgb(26, 26, 26) -moz-use-text-color; border-width: 1pt 1pt 1pt medium; padding: 0.75pt; background: rgb(51, 153, 102) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 38.25pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Passed</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 38.25pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">submit</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 38.25pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">4</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 38.25pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2010-12-20</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 38.25pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2010-12-29</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid none solid solid; border-color: rgb(26, 26, 26) -moz-use-text-color rgb(26, 26, 26) rgb(26, 26, 26); border-width: 1pt medium 1pt 1pt; padding: 0.75pt; height: 38.25pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Delay</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: rgb(255, 204, 153) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 38.25pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">90%</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 38.25pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">BUG 567(Closed)<br>
BUG 569(Closed)<br>
BUG 570(Closed)</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 38.25pt;">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Xiaofeng Yan</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 38.25pt;"><br>
        </td>
      </tr>
      <tr style="height: 30pt;">
        <td
 style="border-style: none solid solid; border-color: -moz-use-text-color rgb(26, 26, 26) rgb(26, 26, 26); border-width: medium 1pt 1pt; padding: 0.75pt; height: 30pt;"
 valign="top">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Desktop-T2C Tests</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: none solid solid; border-color: -moz-use-text-color rgb(26, 26, 26) rgb(26, 26, 26); border-width: medium 1pt 1pt; padding: 0.75pt; height: 30pt;"
 valign="top">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">4.0.2-1</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: rgb(255, 96, 96) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Failures: 1</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">fix failures</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">4</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2010-12-20</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2010-12-29</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid none solid solid; border-color: rgb(26, 26, 26) -moz-use-text-color rgb(26, 26, 26) rgb(26, 26, 26); border-width: 1pt medium 1pt 1pt; padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Delay</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: rgb(255, 204, 153) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">70%</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">BUG 571(Accepted)</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Xiaofeng Yan</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;"><br>
        </td>
      </tr>
      <tr style="height: 30pt;">
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;"
 valign="top">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Qt4-Azov Tests</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;"
 valign="top">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">4.0.2-1</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: rgb(255, 96, 96) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Failures:3</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">fix failures</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">4</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2010-12-30</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2011-1-5</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid none solid solid; border-color: rgb(26, 26, 26) -moz-use-text-color rgb(26, 26, 26) rgb(26, 26, 26); border-width: 1pt medium 1pt 1pt; padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Delay</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: rgb(255, 204, 153) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">50%</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid none solid solid; border-color: rgb(26, 26, 26) -moz-use-text-color rgb(26, 26, 26) rgb(26, 26, 26); border-width: 1pt medium 1pt 1pt; padding: 0.75pt; height: 30pt;"><br>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Xiaofeng Yan</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;"><br>
        </td>
      </tr>
      <tr style="height: 30pt;">
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;"
 valign="top">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Xts5 Tests</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;"
 valign="top">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">5.1.5-19</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid solid solid none; border-color: rgb(26, 26, 26) rgb(26, 26, 26) rgb(26, 26, 26) -moz-use-text-color; border-width: 1pt 1pt 1pt medium; padding: 0.75pt; background: rgb(51, 153, 102) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Passed</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">submit</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">5</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2011-1-6</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2010-1-12</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid none solid solid; border-color: rgb(26, 26, 26) -moz-use-text-color rgb(26, 26, 26) rgb(26, 26, 26); border-width: 1pt medium 1pt 1pt; padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">In Progress</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: rgb(51, 102, 255) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">90%</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid none solid solid; border-color: rgb(26, 26, 26) -moz-use-text-color rgb(26, 26, 26) rgb(26, 26, 26); border-width: 1pt medium 1pt 1pt; padding: 0.75pt; height: 30pt;"><br>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Xiaofeng Yan</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;"><br>
        </td>
      </tr>
      <tr style="height: 30pt;">
        <td
 style="border-style: solid solid none; border-color: rgb(26, 26, 26) rgb(26, 26, 26) -moz-use-text-color; border-width: 1pt 1pt medium; padding: 0.75pt; height: 30pt;"
 valign="top">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Core Tests</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid solid none; border-color: rgb(26, 26, 26) rgb(26, 26, 26) -moz-use-text-color; border-width: 1pt 1pt medium; padding: 0.75pt; height: 30pt;"
 valign="top">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">4.0.5-1</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: rgb(255, 96, 96) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Failures: N/A</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">fix failures</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid solid none; border-color: rgb(26, 26, 26) rgb(26, 26, 26) -moz-use-text-color; border-width: 1pt 1pt medium; padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">7 (?)</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid solid none; border-color: rgb(26, 26, 26) rgb(26, 26, 26) -moz-use-text-color; border-width: 1pt 1pt medium; padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2011-1-21</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid solid none; border-color: rgb(26, 26, 26) rgb(26, 26, 26) -moz-use-text-color; border-width: 1pt 1pt medium; padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">2011-1-31</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid none none solid; border-color: rgb(26, 26, 26) -moz-use-text-color -moz-use-text-color rgb(26, 26, 26); border-width: 1pt medium medium 1pt; padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Not started Yet</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;"><br>
        </td>
        <td
 style="border-style: solid none none solid; border-color: rgb(26, 26, 26) -moz-use-text-color -moz-use-text-color rgb(26, 26, 26); border-width: 1pt medium medium 1pt; padding: 0.75pt; height: 30pt;"><br>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Xiaofeng Yan</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Blocked by POSIX rename test
case</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
      </tr>
      <tr style="height: 30pt;">
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;"
 valign="top">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">LSB Test Suite</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;"
 valign="top"><br>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;"
 valign="top"><br>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">creat-lsb-image <br>
LSB_Setup.sh</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">0</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;"><br>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;"><br>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Done</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; background: rgb(148, 189, 94) none repeat scroll 0% 0%; -moz-background-clip: border; -moz-background-origin: padding; -moz-background-inline-policy: continuous; height: 30pt;">
        <p class="MsoNormal" style="text-align: center;" align="center"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">100%</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border-style: solid none solid solid; border-color: rgb(26, 26, 26) -moz-use-text-color rgb(26, 26, 26) rgb(26, 26, 26); border-width: 1pt medium 1pt 1pt; padding: 0.75pt; height: 30pt;"><br>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;">
        <p class="MsoNormal"><span
 style="font-family: &quot;FreeSerif&quot;,&quot;serif&quot;;">Xiaofeng Yan</span><span
 style="font-size: 10pt; font-family: &quot;DejaVu Sans&quot;,&quot;serif&quot;;"><o:p></o:p></span></p>
        </td>
        <td
 style="border: 1pt solid rgb(26, 26, 26); padding: 0.75pt; height: 30pt;"><br>
        </td>
      </tr>
    </tbody>
  </table>
  <p class="MsoNormal" style="margin-bottom: 12pt;"><o:p>&nbsp;</o:p></p>
  </div>
  </div>
</blockquote>
<br>
</body>
</html>

--------------000302060608020208090403--
