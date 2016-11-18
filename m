Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 814F5E0093B; Fri, 18 Nov 2016 10:54:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f49.google.com (mail-pg0-f49.google.com [74.125.83.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43DD9E0080D
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2016 10:54:47 -0800 (PST)
Received: by mail-pg0-f49.google.com with SMTP id x23so102856676pgx.1
	for <yocto@yoctoproject.org>; Fri, 18 Nov 2016 10:54:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=j8EGhpRs6pvgaDe6D0EWCt9orqfzT7wk/C+HAPl7M6E=;
	b=AtDsAGghx3Jr3zjPsFMvsX6+p04sAgpyBk+4N1tzJz3DnfzutpZTqq5GxjVvGEwWyo
	Mb4bBaDan5j+p1tyUgE4pB8qee/2DGfqOj0ma2pEoBW0XjT7hL+LhA4TKI+VHoeLB7xa
	DU7fbM+h//K6X94kv65EaQy6L6glKxsCFpUhHQt/Uh916oSDOePUiHbW7HC+kvUEPaHu
	X5jCScMMZ5iWkfAdIdDphxcHNQdwzYNVskl7NM4VGBso2hUzyhIKioCbVmxJV+P4dxw7
	dfVQo2pInzmaN5i891X91vK7gg/iuhz/LKDfsg3t5JwEOjV+tly7qx5MFZ++fol7Epxr
	rung==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=j8EGhpRs6pvgaDe6D0EWCt9orqfzT7wk/C+HAPl7M6E=;
	b=llf6l6YImWwxDwIioeTYyH00HL46wwmCdOENDXp1E+Th7/ktajao9wHbrq1A1N2GA4
	c8RDWjtrZN9/6DwH2Qg7B4b19h+f+1asCMy+d8q1KdIjXz/jBeoPs7mZAw2bD8eRPDqk
	f3ukwijCWhfIN6jec4ny/8zmryeuST2anYxauQPBlbKOVgAyDqEHc9keBPU6eC8BK+34
	j8wJ02QVEAYsebrcDxNA3vOJmD4yeNO+jc2kNou5nwCWMU6/AtLRb6KHQwSUhQivQrSS
	lea9ap6Snf8yqozUrvzsRPA8DWfjRMIiCV7HNruXbrRjAlqMkyJugKPTarLwwExm+91I
	MR5A==
X-Gm-Message-State: AKaTC02KC56kwMozTR6LJGoa8gq4MHik3urWTaJAPyt3mYYyWVdrSBDRkkXyOjhouJDgliw8
X-Received: by 10.99.111.78 with SMTP id k75mr2465744pgc.114.1479495287034;
	Fri, 18 Nov 2016 10:54:47 -0800 (PST)
Received: from ?IPv6:2601:202:4001:9ea0:31d0:92df:f69d:58e2?
	([2601:202:4001:9ea0:31d0:92df:f69d:58e2])
	by smtp.gmail.com with ESMTPSA id
	g22sm1582432pgn.20.2016.11.18.10.54.46
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 18 Nov 2016 10:54:46 -0800 (PST)
To: "Jolley, Stephen K" <stephen.k.jolley@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
References: <9ADD3FDE8B189B4AA2F8A3C711F8155E572CF49F@fmsmsx111.amr.corp.intel.com>
From: akuster <akuster@mvista.com>
Message-ID: <d9f84435-ac2a-124f-8c41-b1a2abe7e0c0@mvista.com>
Date: Fri, 18 Nov 2016 10:54:45 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <9ADD3FDE8B189B4AA2F8A3C711F8155E572CF49F@fmsmsx111.amr.corp.intel.com>
Subject: Re: Yocto Project Status WW47
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
X-List-Received-Date: Fri, 18 Nov 2016 18:54:51 -0000
Content-Type: multipart/alternative;
	boundary="------------10E5AC3E9786B0D4EF54F957"

--------------10E5AC3E9786B0D4EF54F957
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Stephen


On 11/18/2016 08:35 AM, Jolley, Stephen K wrote:
>
> Current Dev Position: YP 2.3 M1
>
> Next Deadline: YP 2.3 M1 by Dec. 12, 2016
>
> SWAT team rotation: Leo -> Juro
>
> https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team
>
> Key Status/Updates:
>

Thanks for the updates.

> ·2.1.2 QA report is out and likely to be released imminently.
>
> ·The QA report for 2.1.2 is at: 
> https://wiki.yoctoproject.org/wiki/WW46_-_2016-11-10_-_Test_Cycle_2.1.2_rc1
>
> ·At this point most 2.3 targeted features should have been identified 
> in bugzilla. M1 is comparatively loaded compared to M2/M3 and some 
> individuals have particularly heavy workloads so loading balancing is 
> being done.
>
> ·We’ll run a 2.0.3 test build over the weekend to find out our status 
> there.
>
> ·Backports of fixes to the morty release branch are now occurring, 
> thanks Armin. Armin is looking like the principle morty maintainer for 
> that stable release series.
>
> ·There are some changes planned to the getVar/getVarFlag expansion 
> defaults and the old data store APIs are likely to be removed 
> imminently. There is an email on the openembedded-architecture list 
> about this.
>
> ·WDD is now climbing again unfortunately, we’ve wiped out half of the 
> improvements we made in the 2.2 cycle.
>
> Proposed upcoming dot releases:
>
> YP 2.0.3 Release by Dec. 9, 2016
>
> YP 2.2.1 Release by Jan. 20, 2017
>
> YP 2.1.3 Release by May. 19, 2017
>

Would it be reasonable to target a "Code freeze/cutoff" (ie last day to 
accept patch for any of those dot releases) the week before or more to 
give Maintainers time to merge and run a test build(s)?

- Armin

> Key YP 2.3 Dates:
>
> YP 2.3 M1 Cutoff is Dec. 12, 2016
>
> YP 2.3 M1 Release is Dec. 23, 2016
>
> YP 2.3 M2 Cutoff is Jan. 23, 2017
>
> YP 2.3 M2 Release is Feb. 3, 2017
>
> YP 2.3 M3 Cutoff is Feb 27, 2017
>
> YP 2.3 M3 Release is Mar. 10, 2017
>
> YP 2.3 M4 Cutoff is April 3, 2017
>
> YP 2.3 M4 Release is April 28, 2017
>
> Tracking Metrics:
>
> WDD 2516 (last week 2497)
>
> (https://wiki.yoctoproject.org/charts/combo.html)
>
> Key Status Links for YP:
>
> https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.3_Status
>
> https://wiki.yoctoproject.org/wiki/Yocto_2.3_Schedule
>
> https://wiki.yoctoproject.org/wiki/Yocto_2.3_Features
>
> [If anyone has suggestions for other information you’d like to see on 
> this weekly status update, let us know!]
>
> Thanks,
>
> */Stephen K. Jolley/**//*
>
> *Yocto Project Program Manager*
>
> *INTEL, MS JF1-255, 2111 N.E. 25th Avenue, Hillsboro, OR 97124 *
>
> (*Work Telephone*: (503) 712-0534
>
> (*Cell*: (208) 244-4460
>
> * *Email*:_stephen.k.jolley@intel.com_
>
>
>


--------------10E5AC3E9786B0D4EF54F957
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>Stephen<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 11/18/2016 08:35 AM, Jolley, Stephen
      K wrote:<br>
    </div>
    <blockquote
cite="mid:9ADD3FDE8B189B4AA2F8A3C711F8155E572CF49F@fmsmsx111.amr.corp.intel.com"
      type="cite">
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
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
@font-face
	{font-family:"MS Sans Serif";
	panose-1:0 0 0 0 0 0 0 0 0 0;}
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
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.EmailStyle18
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.apple-tab-span
	{mso-style-name:apple-tab-span;}
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
	{mso-list-id:75130131;
	mso-list-template-ids:-1832341456;}
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
	{mso-list-id:605121416;
	mso-list-template-ids:927246872;}
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
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Current
            Dev Position: YP 2.3 M1</span><o:p></o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Next
            Deadline: YP 2.3 M1 by Dec. 12, 2016</span><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">SWAT
            team rotation: Leo -&gt; Juro</span><o:p></o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><a
            moz-do-not-send="true"
            href="https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team"><span
style="font-size:11.0pt;font-family:Consolas;color:#1155CC">https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team</span></a><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Key
            Status/Updates:</span></p>
      </div>
    </blockquote>
    <br>
    Thanks for the updates.<br>
    <br>
    <blockquote
cite="mid:9ADD3FDE8B189B4AA2F8A3C711F8155E572CF49F@fmsmsx111.amr.corp.intel.com"
      type="cite">
      <div class="WordSection1">
        <p style="margin:0in;margin-bottom:.0001pt"><o:p></o:p></p>
        <p
style="mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margin-left:.5in;margin-bottom:.0001pt;text-indent:-.25in;mso-list:l1
          level1 lfo3;vertical-align:baseline">
          <!--[if !supportLists]--><span
            style="font-size:10.0pt;font-family:Symbol;color:black"><span
              style="mso-list:Ignore">·<span style="font:7.0pt
                &quot;Times New Roman&quot;">       
              </span></span></span><!--[endif]--><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2.1.2
            QA report is out and likely to be released imminently.<o:p></o:p></span></p>
        <p
style="mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margin-left:.5in;margin-bottom:.0001pt;text-indent:-.25in;mso-list:l1
          level1 lfo3;vertical-align:baseline">
          <!--[if !supportLists]--><span
            style="font-size:10.0pt;font-family:Symbol;color:black"><span
              style="mso-list:Ignore">·<span style="font:7.0pt
                &quot;Times New Roman&quot;">       
              </span></span></span><!--[endif]--><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">The
            QA report for 2.1.2 is at:
            <a moz-do-not-send="true"
href="https://wiki.yoctoproject.org/wiki/WW46_-_2016-11-10_-_Test_Cycle_2.1.2_rc1"><span
                style="color:#1155CC">https://wiki.yoctoproject.org/wiki/WW46_-_2016-11-10_-_Test_Cycle_2.1.2_rc1</span></a><o:p></o:p></span></p>
        <p
style="mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margin-left:.5in;margin-bottom:.0001pt;text-indent:-.25in;mso-list:l1
          level1 lfo3;vertical-align:baseline">
          <!--[if !supportLists]--><span
            style="font-size:10.0pt;font-family:Symbol;color:black"><span
              style="mso-list:Ignore">·<span style="font:7.0pt
                &quot;Times New Roman&quot;">       
              </span></span></span><!--[endif]--><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">At
            this point most 2.3 targeted features should have been
            identified in bugzilla. M1 is comparatively loaded compared
            to M2/M3 and some individuals have particularly heavy
            workloads so loading balancing is being done.<o:p></o:p></span></p>
        <p
style="mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margin-left:.5in;margin-bottom:.0001pt;text-indent:-.25in;mso-list:l1
          level1 lfo3;vertical-align:baseline">
          <!--[if !supportLists]--><span
            style="font-size:10.0pt;font-family:Symbol;color:black"><span
              style="mso-list:Ignore">·<span style="font:7.0pt
                &quot;Times New Roman&quot;">       
              </span></span></span><!--[endif]--><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">We’ll
            run a 2.0.3 test build over the weekend to find out our
            status there.<o:p></o:p></span></p>
        <p
style="mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margin-left:.5in;margin-bottom:.0001pt;text-indent:-.25in;mso-list:l1
          level1 lfo3;vertical-align:baseline">
          <!--[if !supportLists]--><span
            style="font-size:10.0pt;font-family:Symbol;color:black"><span
              style="mso-list:Ignore">·<span style="font:7.0pt
                &quot;Times New Roman&quot;">       
              </span></span></span><!--[endif]--><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Backports
            of fixes to the morty release branch are now occurring,
            thanks Armin. Armin is looking like the principle morty
            maintainer for that stable release series.<o:p></o:p></span></p>
        <p
style="mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margin-left:.5in;margin-bottom:.0001pt;text-indent:-.25in;mso-list:l1
          level1 lfo3;vertical-align:baseline">
          <!--[if !supportLists]--><span
            style="font-size:10.0pt;font-family:Symbol;color:black"><span
              style="mso-list:Ignore">·<span style="font:7.0pt
                &quot;Times New Roman&quot;">       
              </span></span></span><!--[endif]--><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">There
            are some changes planned to the getVar/getVarFlag expansion
            defaults and the old data store APIs are likely to be
            removed imminently. There is an email on the
            openembedded-architecture list about this.<o:p></o:p></span></p>
        <p
style="mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margin-left:.5in;margin-bottom:.0001pt;text-indent:-.25in;mso-list:l1
          level1 lfo3;vertical-align:baseline">
          <!--[if !supportLists]--><span
            style="font-size:10.0pt;font-family:Symbol;color:black"><span
              style="mso-list:Ignore">·<span style="font:7.0pt
                &quot;Times New Roman&quot;">       
              </span></span></span><!--[endif]--><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">WDD
            is now climbing again unfortunately, we’ve wiped out half of
            the improvements we made in the 2.2 cycle.<o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif"><o:p> </o:p></span></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Proposed
            upcoming dot releases:</span><o:p></o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">YP
            2.0.3 Release by Dec. 9, 2016</span><o:p></o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">YP
            2.2.1 Release by Jan. 20, 2017</span><o:p></o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">YP
            2.1.3 Release by May. 19, 2017</span></p>
      </div>
    </blockquote>
    <br>
    Would it be reasonable to target a "Code freeze/cutoff" (ie last day
    to accept patch for any of those dot releases) the week before or
    more to give Maintainers time to merge and run a test build(s)? <br>
    <br>
    - Armin<br>
    <br>
    <blockquote
cite="mid:9ADD3FDE8B189B4AA2F8A3C711F8155E572CF49F@fmsmsx111.amr.corp.intel.com"
      type="cite">
      <div class="WordSection1">
        <p style="margin:0in;margin-bottom:.0001pt"><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Key
            YP 2.3 Dates:</span><o:p></o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">YP
            2.3 M1 Cutoff is Dec. 12, 2016</span><o:p></o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">YP
            2.3 M1 Release is Dec. 23, 2016</span><o:p></o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">YP
            2.3 M2 Cutoff is Jan. 23, 2017</span><o:p></o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">YP
            2.3 M2 Release is Feb. 3, 2017</span><o:p></o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">YP
            2.3 M3 Cutoff is Feb 27, 2017</span><o:p></o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">YP
            2.3 M3 Release is Mar. 10, 2017</span><o:p></o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">YP
            2.3 M4 Cutoff is April 3, 2017</span><o:p></o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">YP
            2.3 M4 Release is April 28, 2017</span><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Tracking
            Metrics:</span><o:p></o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
            class="apple-tab-span"><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">           
            </span></span><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">WDD
            2516 (last week 2497)</span><o:p></o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt;text-indent:.5in"><span
            style="font-size:11.0pt;font-family:Consolas;color:black">(</span><a
            moz-do-not-send="true"
            href="https://wiki.yoctoproject.org/charts/combo.html"><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:#1155CC">https://wiki.yoctoproject.org/charts/combo.html</span></a><span
            style="font-size:11.0pt;font-family:Consolas;color:black">)</span><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Key
            Status Links for YP:</span><o:p></o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><a
            moz-do-not-send="true"
            href="https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.3_Status"><span
style="font-size:11.0pt;font-family:Consolas;color:#1155CC">https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.3_Status</span></a><o:p></o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><a
            moz-do-not-send="true"
            href="https://wiki.yoctoproject.org/wiki/Yocto_2.3_Schedule"><span
style="font-size:11.0pt;font-family:Consolas;color:#1155CC">https://wiki.yoctoproject.org/wiki/Yocto_2.3_Schedule</span></a><o:p></o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><a
            moz-do-not-send="true"
            href="https://wiki.yoctoproject.org/wiki/Yocto_2.3_Features"><span
style="font-size:11.0pt;font-family:Consolas;color:#1155CC">https://wiki.yoctoproject.org/wiki/Yocto_2.3_Features</span></a><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><span
            style="font-family:&quot;Arial&quot;,sans-serif;color:black">[If
            anyone has suggestions for other information you’d like to
            see on this weekly status update, let us know!]<o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-family:&quot;Arial&quot;,sans-serif;color:black"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span
            style="font-family:&quot;Arial&quot;,sans-serif;color:black">Thanks,</span><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"
          style="page-break-after:avoid;text-autospace:none"><b><i><span
                style="font-size:16.0pt;font-family:&quot;Times New
                Roman&quot;,serif;color:purple">Stephen K. Jolley</span></i></b><b><i><span
style="font-size:16.0pt;font-family:&quot;Tahoma&quot;,sans-serif;color:purple"><o:p></o:p></span></i></b></p>
        <p class="MsoNormal"><b><span
              style="font-size:8.0pt;font-family:&quot;Courier
              New&quot;;color:blue">Yocto Project Program Manager<o:p></o:p></span></b></p>
        <p class="MsoNormal"
          style="page-break-after:avoid;text-autospace:none"><b><span
              style="font-size:10.0pt;font-family:&quot;Courier
              New&quot;;color:fuchsia">INTEL, MS JF1-255, 2111 N.E. 25th
              Avenue, Hillsboro, OR 97124
              <o:p></o:p></span></b></p>
        <p class="MsoNormal"><span
            style="font-family:Wingdings;color:black">(</span><span
            style="font-family:&quot;MS Sans
            Serif&quot;,serif;color:teal">
          </span><span style="font-size:8.0pt;font-family:&quot;MS Sans
            Serif&quot;,serif;color:teal">  </span><b><span
              style="font-size:8.0pt;font-family:&quot;Comic Sans
              MS&quot;;color:teal">Work Telephone</span></b><span
            style="font-family:&quot;MS Sans
            Serif&quot;,serif;color:teal">:       
          </span><span style="font-size:9.0pt;font-family:&quot;MS Sans
            Serif&quot;,serif">(503) 712-0534<o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:9.0pt;font-family:Wingdings;color:black">(</span><span
            style="font-size:9.0pt;font-family:&quot;MS Sans
            Serif&quot;,serif;color:teal">   
          </span><b><span style="font-size:8.0pt;font-family:&quot;Comic
              Sans MS&quot;;color:teal">Cell</span></b><span
            style="font-size:9.0pt;font-family:&quot;MS Sans
            Serif&quot;,serif;color:teal">:              
          </span><span style="font-size:9.0pt;font-family:&quot;MS Sans
            Serif&quot;,serif">(208) 244-4460<span style="color:black"><o:p></o:p></span></span></p>
        <p class="MsoNormal"><span
            style="font-size:9.0pt;font-family:Wingdings">* </span>
          <b><span style="font-size:8.0pt;font-family:&quot;Comic Sans
              MS&quot;;color:teal" lang="FR">Email</span></b><span
            style="font-size:9.0pt;font-family:&quot;MS Sans
            Serif&quot;,serif;color:teal" lang="FR">:</span><span
            style="font-size:9.0pt;font-family:&quot;MS Sans
            Serif&quot;,serif" lang="FR">                           
            <u><span style="color:blue"><a class="moz-txt-link-abbreviated" href="mailto:stephen.k.jolley@intel.com">stephen.k.jolley@intel.com</a></span></u></span><span
style="font-size:12.0pt;font-family:&quot;Arial&quot;,sans-serif"
            lang="FR"><o:p></o:p></span></p>
        <p class="MsoNormal"><o:p> </o:p></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------10E5AC3E9786B0D4EF54F957--
