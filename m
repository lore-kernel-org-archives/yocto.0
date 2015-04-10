Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D05DDE00993; Fri, 10 Apr 2015 08:10:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BF0BE00932
	for <yocto@yoctoproject.org>; Fri, 10 Apr 2015 08:10:28 -0700 (PDT)
Received: by iggg4 with SMTP id g4so245609igg.0
	for <yocto@yoctoproject.org>; Fri, 10 Apr 2015 08:10:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type;
	bh=zizda4YISAGLTtEbjp7JIi8yVOsXBs2Vrg+5Bl+s6rE=;
	b=lF8mMra4VDUeiekZwz0wmJK0vbXGLVkpIko1gJ2kul5wDGtz2FR7NmeBgoioRJItKm
	4GAJJULCe1D/HmNdEV508NlTUQVOjSrWgxhOeyZlrV7QfniaBWUhPicaJkDO/MOFD7ey
	QrLKsWkcdzQHADgjEzBPaIa68fOV22JvXT7WZZQCDtlfEn5j+RGSvLEqYdMj3K8m7o1p
	2olGFtIvIebYXVMAnborYFpAWKhURP5LtmwjG975cPwKJQOUouwNcvDhAB32gZL+ZjXx
	1qOkwetKuRY7Dfi6IMWxMicjLdgUAz5Zm0iH80K6hNgxOgjihnY6m7NIDBSamNMsP1hQ
	S88Q==
X-Received: by 10.42.23.17 with SMTP id q17mr4303927icb.4.1428678627846;
	Fri, 10 Apr 2015 08:10:27 -0700 (PDT)
Received: from [192.168.34.210] (static-66-11-92-234.ptr.terago.net.
	[66.11.92.234])
	by mx.google.com with ESMTPSA id b17sm1298674iob.31.2015.04.10.08.10.27
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 10 Apr 2015 08:10:27 -0700 (PDT)
Message-ID: <5527E7E2.7030605@gmail.com>
Date: Fri, 10 Apr 2015 11:10:26 -0400
From: Trevor Woerner <twoerner@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Dilip Basavaraju <DILIP.KUMARB@LNTTECHSERVICES.COM>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <AA6EBB22527ED441A9B86C56F43F6DD820115DCD@POCITMSEXMB07.LntUniverse.com>
In-Reply-To: <AA6EBB22527ED441A9B86C56F43F6DD820115DCD@POCITMSEXMB07.LntUniverse.com>
Subject: Re: Package reduction(package minimisation) for minimal rootfs
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
X-List-Received-Date: Fri, 10 Apr 2015 15:10:30 -0000
Content-Type: multipart/alternative;
	boundary="------------010300040700030403080803"

--------------010300040700030403080803
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 15-04-10 03:04 AM, Dilip Basavaraju wrote:
>                 I have task to minimize the root file system, by 
> removing busy box and adding additional packages in place of busybox 
> like core-utils, binutils, tiny-login etc.

The following quotes are taken from http://busybox.net/about.html:

    "BusyBox combines tiny versions of many common UNIX utilities into a
    single small executable. It provides replacements for most of the
    utilities you usually find in GNU fileutils, shellutils, etc."

    "BusyBox has been written with size-optimization and limited
    resources in mind."


In general, if you are trying to make a small system you would remote 
things like core-utils and replace them with busybox, not the other way 
around.

Maybe having a look at poky-tiny might help?

--------------010300040700030403080803
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    On 15-04-10 03:04 AM, Dilip Basavaraju wrote:<br>
    <blockquote
cite="mid:AA6EBB22527ED441A9B86C56F43F6DD820115DCD@POCITMSEXMB07.LntUniverse.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 14 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
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
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0in;
	margin-right:0in;
	margin-bottom:0in;
	margin-left:.5in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri","sans-serif";}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:432945312;
	mso-list-type:hybrid;
	mso-list-template-ids:270203512 -758581292 67698713 67698715 67698703 67698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:1.75in;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:3.25in;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:4.75in;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:2124032092;
	mso-list-type:hybrid;
	mso-list-template-ids:-549673878 -1879679820 67698713 67698715 67698703 67698713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:.75in;
	text-indent:-.25in;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:1.25in;
	text-indent:-.25in;}
@list l1:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:1.75in;
	text-indent:-9.0pt;}
@list l1:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.25in;
	text-indent:-.25in;}
@list l1:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:2.75in;
	text-indent:-.25in;}
@list l1:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:3.25in;
	text-indent:-9.0pt;}
@list l1:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:3.75in;
	text-indent:-.25in;}
@list l1:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	margin-left:4.25in;
	text-indent:-.25in;}
@list l1:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	margin-left:4.75in;
	text-indent:-9.0pt;}
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
      <div class="WordSection1">                I have task to minimize
        the root file system, by removing busy box and adding additional
        packages in place of busybox like core-utils, binutils,
        tiny-login etc.<o:p></o:p><br>
      </div>
    </blockquote>
    <br>
    The following quotes are taken from <a class="moz-txt-link-freetext" href="http://busybox.net/about.html">http://busybox.net/about.html</a>:<br>
    <br>
    <blockquote>"BusyBox combines tiny versions of many common UNIX
      utilities into a single
      small executable. It provides replacements for most of the
      utilities you
      usually find in GNU fileutils, shellutils, etc."<br>
      <br>
      "BusyBox has been written with size-optimization and limited
      resources in
      mind."<br>
    </blockquote>
    <br>
    In general, if you are trying to make a small system you would
    remote things like core-utils and replace them with busybox, not the
    other way around.<br>
    <br>
    Maybe having a look at poky-tiny might help?<br>
  </body>
</html>

--------------010300040700030403080803--
