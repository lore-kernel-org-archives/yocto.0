Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 741ECE00BE0; Fri,  4 Nov 2016 10:49:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f175.google.com (mail-pf0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B27CE00B62
	for <yocto@yoctoproject.org>; Fri,  4 Nov 2016 10:49:02 -0700 (PDT)
Received: by mail-pf0-f175.google.com with SMTP id 189so55419573pfz.3
	for <yocto@yoctoproject.org>; Fri, 04 Nov 2016 10:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to; bh=Aa+vW92yf1PqEpUxkaWc7kSxj1IsvPCNusys3EE2wB4=;
	b=T/R2xjUsWr+sXWAvskn0tgJzY8xS3eL+un0XybuEmgeDBHLdXUe6Z4S/5Vh0use5qN
	CxOER6TZUZI10G19nzSmklI65WkdrnGFW5Acscz3T61erzrKj9jcxD8yGjkaGhqsCW7O
	yew6DoyAiRd3RjdrPkUQ+2n19m/mIByy/MA6Km6Pf5GeQKALV0dxP34Vc8XrY1Z+Y3Gi
	h3qtk5CTbdjAGJiJZa9IAONbybvxsPGFi9s1hozzhRLupOpQXAWuj1XtFIdZglaZ5hDl
	218DDxFEZIrcuuGpPHjf4TlK03fOOHFeQd0ymp7ZEANbGlJWMtwBSKE024b6q1KJoB7+
	4feA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to;
	bh=Aa+vW92yf1PqEpUxkaWc7kSxj1IsvPCNusys3EE2wB4=;
	b=AXRv1XXCXH0wcAOJ9zUcMM1+TvbHm17hWUed+OXvd2Zo/FvBbdQhi00bmyUIrPVFcl
	Ou3XzVD+9l+kGNYEAUUWKZZaQI2aOefQrscYrqvfoMvLf1qgXxom+7A9lcV33bEY6NaP
	886q0g19mYQyWhtr8Tu0U8RD4zB9QxvEUOsk+4bOFKdQGx+CYGMEyfcg63TJLpQDXLhz
	4/hJf3ZegyGKeZ+01eeL2qU1JAqdY4eyPoMn0LZjn/+o1HRnksgVpuXlqaGTBPftxynt
	8zROwyFfWo7asxSh8j8RDFTLYJq1gUe/jMdVjHCl+j+ZDc8ZephDsKYnt3ctQf3h22oC
	CJbg==
X-Gm-Message-State: ABUngvcDI0PcX5+N9EMzAvyV9EOZiZXdruL28bZLAQIGKzzQjCltsNSNhO9/LiYHakcvTqr3
X-Received: by 10.99.149.72 with SMTP id t8mr23845832pgn.29.1478281742345;
	Fri, 04 Nov 2016 10:49:02 -0700 (PDT)
Received: from ?IPv6:2601:202:4001:9ea0:8836:a344:6752:41ee?
	([2601:202:4001:9ea0:8836:a344:6752:41ee])
	by smtp.gmail.com with ESMTPSA id
	p25sm15630076pfk.20.2016.11.04.10.49.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 04 Nov 2016 10:49:01 -0700 (PDT)
To: "Jolley, Stephen K" <stephen.k.jolley@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
References: <9ADD3FDE8B189B4AA2F8A3C711F8155E572AE52E@fmsmsx111.amr.corp.intel.com>
From: akuster <akuster@mvista.com>
Message-ID: <30727d6e-51a6-2582-8e8f-88faf92fe9c6@mvista.com>
Date: Fri, 4 Nov 2016 10:49:00 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <9ADD3FDE8B189B4AA2F8A3C711F8155E572AE52E@fmsmsx111.amr.corp.intel.com>
Subject: Re: Yocto Project Status WW45 - UPDATED
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
X-List-Received-Date: Fri, 04 Nov 2016 17:49:08 -0000
Content-Type: multipart/alternative;
	boundary="------------737C7A837999A8F60698646E"

--------------737C7A837999A8F60698646E
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit



On 11/04/2016 10:06 AM, Jolley, Stephen K wrote:
>
> Current Dev Position: YP 2.3 M1
>
> Next Deadline: YP 2.3 M1 by Dec. 12, 2016
>
> SWAT team rotation: Ross -> Randy
>
> https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team
>
> Key Status/Updates:
>
> ·2.2 was released!
>
> ·Patches are starting to be merged into master
>
> ·We are intending to have point releases for 2.0 and 2.1, this is 
> dependent on good build test results.
>
> ·We are having various issues with the new autobuilder so it is still 
> not in production use yet.
>
> ·There was a challenging taskhash mismatch test case this week which 
> has resulted in some significant debugging improvements for taskhashes 
> and basehashes which are now in master.
>
> ·2.3 planning is underway and RP will send more thoughts on the plans 
> for that in the next couple of weeks.
>
> ·We are going to make a strong effort to load balance things up front 
> this time so work is spread over M1-3 rather than the usual ‘front 
> loaded’ everything in M1 approach which is currently how bugzilla looks.
>
> Proposed upcoming dot releases:
>
> YP 2.0.3 Release by Nov. 18, 2016
>
> YP 2.1.2 Release by Dec. 9, 2016
>
> YP 2.2.1 Release by Jan. 20, 2017
>
So is there a Morty Maintainer ?

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
> WDD 2422 (last week 2394)
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


--------------737C7A837999A8F60698646E
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p><br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 11/04/2016 10:06 AM, Jolley, Stephen
      K wrote:<br>
    </div>
    <blockquote
cite="mid:9ADD3FDE8B189B4AA2F8A3C711F8155E572AE52E@fmsmsx111.amr.corp.intel.com"
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
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:"Comic Sans MS";
	panose-1:3 15 7 2 3 3 2 2 2 4;}
@font-face
	{font-family:"ms sans serif";}
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.apple-tab-span
	{mso-style-name:apple-tab-span;}
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
	{mso-list-id:338703282;
	mso-list-template-ids:-839059232;}
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
            team rotation: Ross -&gt; Randy
          </span><o:p></o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><a
            moz-do-not-send="true"
            href="https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team"><span
style="font-size:11.0pt;font-family:Consolas;color:#1155CC">https://wiki.yoctoproject.org/wiki/Yocto_Build_Failure_Swat_Team</span></a><o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Key
            Status/Updates:</span><o:p></o:p></p>
        <p
style="mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margin-left:.5in;margin-bottom:.0001pt;text-indent:-.25in;mso-list:l0
          level1 lfo1;vertical-align:baseline">
          <!--[if !supportLists]--><span
            style="font-size:10.0pt;font-family:Symbol;color:black"><span
              style="mso-list:Ignore">·<span style="font:7.0pt
                &quot;Times New Roman&quot;">       
              </span></span></span><!--[endif]--><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2.2
            was released!<o:p></o:p></span></p>
        <p
style="mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margin-left:.5in;margin-bottom:.0001pt;text-indent:-.25in;mso-list:l0
          level1 lfo1;vertical-align:baseline">
          <!--[if !supportLists]--><span
            style="font-size:10.0pt;font-family:Symbol;color:black"><span
              style="mso-list:Ignore">·<span style="font:7.0pt
                &quot;Times New Roman&quot;">       
              </span></span></span><!--[endif]--><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Patches
            are starting to be merged into master
            <o:p></o:p></span></p>
        <p
style="mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margin-left:.5in;margin-bottom:.0001pt;text-indent:-.25in;mso-list:l0
          level1 lfo1;vertical-align:baseline">
          <!--[if !supportLists]--><span
            style="font-size:10.0pt;font-family:Symbol;color:black"><span
              style="mso-list:Ignore">·<span style="font:7.0pt
                &quot;Times New Roman&quot;">       
              </span></span></span><!--[endif]--><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">We
            are intending to have point releases for 2.0 and 2.1, this
            is dependent on good build test results.<o:p></o:p></span></p>
        <p
style="mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margin-left:.5in;margin-bottom:.0001pt;text-indent:-.25in;mso-list:l0
          level1 lfo1;vertical-align:baseline">
          <!--[if !supportLists]--><span
            style="font-size:10.0pt;font-family:Symbol;color:black"><span
              style="mso-list:Ignore">·<span style="font:7.0pt
                &quot;Times New Roman&quot;">       
              </span></span></span><!--[endif]--><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">We
            are having various issues with the new autobuilder so it is
            still not in production use yet.<o:p></o:p></span></p>
        <p
style="mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margin-left:.5in;margin-bottom:.0001pt;text-indent:-.25in;mso-list:l0
          level1 lfo1;vertical-align:baseline">
          <!--[if !supportLists]--><span
            style="font-size:10.0pt;font-family:Symbol;color:black"><span
              style="mso-list:Ignore">·<span style="font:7.0pt
                &quot;Times New Roman&quot;">       
              </span></span></span><!--[endif]--><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">There
            was a challenging taskhash mismatch test case this week
            which has resulted in some significant debugging
            improvements for taskhashes and basehashes which are now in
            master.<o:p></o:p></span></p>
        <p
style="mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margin-left:.5in;margin-bottom:.0001pt;text-indent:-.25in;mso-list:l0
          level1 lfo1;vertical-align:baseline">
          <!--[if !supportLists]--><span
            style="font-size:10.0pt;font-family:Symbol;color:black"><span
              style="mso-list:Ignore">·<span style="font:7.0pt
                &quot;Times New Roman&quot;">       
              </span></span></span><!--[endif]--><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">2.3
            planning is underway and RP will send more thoughts on the
            plans for that in the next couple of weeks.<o:p></o:p></span></p>
        <p
style="mso-margin-top-alt:0in;margin-right:0in;margin-bottom:0in;margin-left:.5in;margin-bottom:.0001pt;text-indent:-.25in;mso-list:l0
          level1 lfo1;vertical-align:baseline">
          <!--[if !supportLists]--><span
            style="font-size:10.0pt;font-family:Symbol;color:black"><span
              style="mso-list:Ignore">·<span style="font:7.0pt
                &quot;Times New Roman&quot;">       
              </span></span></span><!--[endif]--><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">We
            are going to make a strong effort to load balance things up
            front this time so work is spread over M1-3 rather than the
            usual ‘front loaded’ everything in M1 approach which is
            currently how bugzilla looks.<o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif"><o:p> </o:p></span></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">Proposed
            upcoming dot releases:</span><o:p></o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">YP
            2.0.3 Release by Nov. 18, 2016</span><o:p></o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">YP
            2.1.2 Release by Dec. 9, 2016</span><o:p></o:p></p>
        <p style="margin:0in;margin-bottom:.0001pt"><span
style="font-size:11.0pt;font-family:&quot;Arial&quot;,sans-serif;color:black">YP
            2.2.1 Release by Jan. 20, 2017</span></p>
      </div>
    </blockquote>
    So is there a Morty Maintainer ?<br>
    <br>
    <blockquote
cite="mid:9ADD3FDE8B189B4AA2F8A3C711F8155E572AE52E@fmsmsx111.amr.corp.intel.com"
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
            2422 (last week 2394)</span><o:p></o:p></p>
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
        <p style="margin:0in;margin-bottom:.0001pt"><span
            style="font-size:11.0pt;font-family:Consolas"><a
              moz-do-not-send="true"
              href="https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.3_Status">https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.3_Status</a></span><o:p></o:p></p>
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
        <p class="MsoNormal"
          style="page-break-after:avoid;text-autospace:none"><b><span
              style="font-size:10.0pt;font-family:&quot;Courier
              New&quot;;color:fuchsia">INTEL, MS JF1-255, 2111 N.E. 25th
              Avenue, Hillsboro, OR 97124
              <o:p></o:p></span></b></p>
        <p class="MsoNormal"><span
            style="font-family:Wingdings;color:black">(</span><span
            style="font-family:&quot;ms sans serif&quot;;color:teal">
          </span><span style="font-size:8.0pt;font-family:&quot;ms sans
            serif&quot;;color:teal">  </span><b><span
              style="font-size:8.0pt;font-family:&quot;Comic Sans
              MS&quot;;color:teal">Work Telephone</span></b><span
            style="font-family:&quot;ms sans serif&quot;;color:teal">:       
          </span><span style="font-size:9.0pt;font-family:&quot;ms sans
            serif&quot;">(503) 712-0534<o:p></o:p></span></p>
        <p class="MsoNormal"><span
            style="font-size:9.0pt;font-family:Wingdings;color:black">(</span><span
            style="font-size:9.0pt;font-family:&quot;ms sans
            serif&quot;;color:teal">   
          </span><b><span style="font-size:8.0pt;font-family:&quot;Comic
              Sans MS&quot;;color:teal">Cell</span></b><span
            style="font-size:9.0pt;font-family:&quot;ms sans
            serif&quot;;color:teal">:              
          </span><span style="font-size:9.0pt;font-family:&quot;ms sans
            serif&quot;">(208) 244-4460<span style="color:black"><o:p></o:p></span></span></p>
        <p class="MsoNormal"><span
            style="font-size:9.0pt;font-family:Wingdings">* </span>
          <b><span style="font-size:8.0pt;font-family:&quot;Comic Sans
              MS&quot;;color:teal" lang="FR">Email</span></b><span
            style="font-size:9.0pt;font-family:&quot;ms sans
            serif&quot;;color:teal" lang="FR">:</span><span
            style="font-size:9.0pt;font-family:&quot;ms sans
            serif&quot;" lang="FR">                           
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

--------------737C7A837999A8F60698646E--
