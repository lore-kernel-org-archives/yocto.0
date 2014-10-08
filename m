Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1ADACE00853; Wed,  8 Oct 2014 00:54:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A983E007C1
	for <yocto@yoctoproject.org>; Wed,  8 Oct 2014 00:54:42 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 9ED5E27E09F;
	Wed,  8 Oct 2014 07:54:39 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id UuNgw-DWtyk5; Wed,  8 Oct 2014 07:54:36 +0000 (UTC)
Received: from [192.168.1.30] (AMarseille-651-1-73-5.w109-208.abo.wanadoo.fr
	[109.208.168.5])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 3583D27E099;
	Wed,  8 Oct 2014 07:54:36 +0000 (UTC)
Message-ID: <5434EDB7.8060600@dynamicdevices.co.uk>
Date: Wed, 08 Oct 2014 09:54:31 +0200
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: "Daniel C. A (NESTIT)" <daniel.ca@nestgroup.net>, yocto@yoctoproject.org
References: <DFA4DD36883F5641AD609D011918C1B309CB8ABA@new-ex1.nestgroup.net>
In-Reply-To: <DFA4DD36883F5641AD609D011918C1B309CB8ABA@new-ex1.nestgroup.net>
Subject: Re: CAN Support
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
X-List-Received-Date: Wed, 08 Oct 2014 07:54:50 -0000
X-Groupsio-MsgNum: 21769
Content-Type: multipart/alternative;
	boundary="------------040602070905060900040903"

--------------040602070905060900040903
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hi Daniel,

On 07/10/2014 15:05, Daniel C. A (NESTIT) wrote:
>
> Hi,
>
>                 Presently im working on i.mx6 EVK for Automotive
> application. I have used 'fsl-image-gui' which was Bitbaked using
> Yocto-dora release. Since I'm worked on CAN interfaces, I got the
> following queries.
>
> 1.       How to make CAN interfaces up on EVK?
>
> 2.       Is there anything that I have to consider when I Bitbake
> fsl-image-gui?
>
> 3.       Has fsl-image-gui got support for basic drivers like
> CAN,I2c,gpio driver., etc?
>
> 4.       My intention is to test CAN Tx/rx using CAN Analyzer and EVK,
> what all are the steps for the same?Is there any document that I can
> follow?
>
>  
>
> Regards,
>
>            Daniel C A
>
>  
>
>

Have you asked over at the meta-freescale list? As you know, driver
support is likely to be closely linked to the Linux kernel
provided for the i.MX6, and they are in the best position over on that
list to answer your question.

Whilst I don't have a definitive answer for you if you look at the
Freescale Embedded Linux bundle for the i.MX6 processor
(e.g. L3.10.17_1.0.0_LINUX_DOCS
<https://www.freescale.com/webapp/Download?colCode=L3.10.17_1.0.0_LINUX_DOCS&appType=license&location=null&fasp=1&WT_TYPE=Supporting%20Information&WT_VENDOR=FREESCALE&WT_FILE_FORMAT=gz&WT_ASSET=Documentation&fileExt=.gz> )
you will see sections on GPIO, I2C, and FlexCAN. There are also details
in those sections on
the specific kernel configuration options that need to be turned on if
they are not already turned on by default in the
meta-freescale kernel configuration.

If the drivers you need are not built into the standard kernel by
default then you will need to make some configuration changes.

To do so you might wish to start by looking at the Yocto kernel
development manual here

http://www.yoctoproject.org/docs/1.6.1/kernel-dev/kernel-dev.html

Incidentally. I haven't yet had a chance to pick up a copy of Otavio
Salvador's book "Embedded Linux Development with Yocto Project"
but he's active with all of this over on the meta-freescale list so you
could probably do worse than take a look at his book.

e.g.
http://www.amazon.co.uk/Embedded-Linux-Development-Yocto-Project/dp/1783282339

Regards,

Alex



--------------040602070905060900040903
Content-Type: multipart/related;
 boundary="------------030309090805040300050202"

--------------030309090805040300050202
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi Daniel,<br>
    <br>
    <div class="moz-cite-prefix">On 07/10/2014 15:05, Daniel C. A
      (NESTIT) wrote:<br>
    </div>
    <blockquote
cite="mid:DFA4DD36883F5641AD609D011918C1B309CB8ABA@new-ex1.nestgroup.net"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-1">
      <meta name="Generator" content="Microsoft Word 12 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
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
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:564798544;
	mso-list-type:hybrid;
	mso-list-template-ids:1832179528 1074331663 1074331673 1074331675 1074331663 1074331673 1074331675 1074331663 1074331673 1074331675;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
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
        <p class="MsoNormal">Hi,<o:p></o:p></p>
        <p class="MsoNormal">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Presently im working on
          i.mx6 EVK for Automotive application. I have used
          &#8216;fsl-image-gui&#8217; which was Bitbaked using Yocto-dora release.
          Since I&#8217;m worked on CAN interfaces, I got the following
          queries.<o:p></o:p></p>
        <p class="MsoListParagraph"
          style="text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span
            style="mso-list:Ignore">1.<span style="font:7.0pt
              &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]-->How
          to make CAN interfaces up on EVK?<o:p></o:p></p>
        <p class="MsoListParagraph"
          style="text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span
            style="mso-list:Ignore">2.<span style="font:7.0pt
              &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]-->Is
          there anything that I have to consider when I Bitbake
          fsl-image-gui?<o:p></o:p></p>
        <p class="MsoListParagraph"
          style="text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span
            style="mso-list:Ignore">3.<span style="font:7.0pt
              &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]-->Has
          fsl-image-gui got support for basic drivers like CAN,I2c,gpio
          driver., etc?<o:p></o:p></p>
        <p class="MsoListParagraph"
          style="text-indent:-18.0pt;mso-list:l0 level1 lfo1"><!--[if !supportLists]--><span
            style="mso-list:Ignore">4.<span style="font:7.0pt
              &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span><!--[endif]-->My
          intention is to test CAN Tx/rx using CAN Analyzer and EVK,
          what all are the steps for the same?Is there any document that
          I can follow?<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal"><span style="font-family:&quot;Times New
            Roman&quot;,&quot;serif&quot;" lang="EN-US">Regards,<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="font-family:&quot;Times New
            Roman&quot;,&quot;serif&quot;" lang="EN-US">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            Daniel C A<o:p></o:p></span></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
      </div>
      <br>
    </blockquote>
    <br>
    Have you asked over at the meta-freescale list? As you know, driver
    support is likely to be closely linked to the Linux kernel<br>
    provided for the i.MX6, and they are in the best position over on
    that list to answer your question.<br>
    <br>
    Whilst I don't have a definitive answer for you if you look at the
    Freescale Embedded Linux bundle for the i.MX6 processor<br>
    (e.g. <a
href="https://www.freescale.com/webapp/Download?colCode=L3.10.17_1.0.0_LINUX_DOCS&amp;appType=license&amp;location=null&amp;fasp=1&amp;WT_TYPE=Supporting%20Information&amp;WT_VENDOR=FREESCALE&amp;WT_FILE_FORMAT=gz&amp;WT_ASSET=Documentation&amp;fileExt=.gz"
      onclick='s_objectID="https://www.freescale.com/webapp/Download?colCode=L3.10.17_1.0.0_LINUX_DOCS&amp;appType=license&amp;locat_1";return
      this.s_oc?this.s_oc(e):true' style="color: rgb(1, 123, 186);
      text-decoration: none; font-family: arial, sans-serif; font-size:
      12px; font-style: normal; font-variant: normal; font-weight:
      normal; letter-spacing: normal; line-height: normal; orphans:
      auto; text-align: -webkit-left; text-indent: 0px; text-transform:
      none; white-space: normal; widows: auto; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; background-color: rgb(236, 240,
      241);">L3.10.17_1.0.0_LINUX_DOCS</a><span style="color: rgb(81,
      98, 111); font-family: arial, sans-serif; font-size: 12px;
      font-style: normal; font-variant: normal; font-weight: normal;
      letter-spacing: normal; line-height: normal; orphans: auto;
      text-align: -webkit-left; text-indent: 0px; text-transform: none;
      white-space: normal; widows: auto; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; display: inline !important; float:
      none; background-color: rgb(236, 240, 241);">&nbsp;</span><img
      src="cid:part2.02050706.03010007@dynamicdevices.co.uk" alt=""
      style="color: rgb(81, 98, 111); font-family: arial, sans-serif;
      font-size: 12px; font-style: normal; font-variant: normal;
      font-weight: normal; letter-spacing: normal; line-height: normal;
      orphans: auto; text-align: -webkit-left; text-indent: 0px;
      text-transform: none; white-space: normal; widows: auto;
      word-spacing: 0px; -webkit-text-stroke-width: 0px;
      background-color: rgb(236, 240, 241);"><span style="color: rgb(81,
      98, 111); font-family: arial, sans-serif; font-size: 12px;
      font-style: normal; font-variant: normal; font-weight: normal;
      letter-spacing: normal; line-height: normal; orphans: auto;
      text-align: -webkit-left; text-indent: 0px; text-transform: none;
      white-space: normal; widows: auto; word-spacing: 0px;
      -webkit-text-stroke-width: 0px; display: inline !important; float:
      none; background-color: rgb(236, 240, 241);"> )</span> you will
    see sections on GPIO, I2C, and FlexCAN. There are also details in
    those sections on <br>
    the specific kernel configuration options that need to be turned on
    if they are not already turned on by default in the <br>
    meta-freescale kernel configuration.<br>
    <br>
    If the drivers you need are not built into the standard kernel by
    default then you will need to make some configuration changes.<br>
    <br>
    To do so you might wish to start by looking at the Yocto kernel
    development manual here<br>
    <br>
    <a class="moz-txt-link-freetext" href="http://www.yoctoproject.org/docs/1.6.1/kernel-dev/kernel-dev.html">http://www.yoctoproject.org/docs/1.6.1/kernel-dev/kernel-dev.html</a><br>
    <br>
    Incidentally. I haven't yet had a chance to pick up a copy of Otavio
    Salvador's book "Embedded Linux Development with Yocto Project"<br>
    but he's active with all of this over on the meta-freescale list so
    you could probably do worse than take a look at his book.<br>
    <br>
    e.g.
<a class="moz-txt-link-freetext" href="http://www.amazon.co.uk/Embedded-Linux-Development-Yocto-Project/dp/1783282339">http://www.amazon.co.uk/Embedded-Linux-Development-Yocto-Project/dp/1783282339</a><br>
    <br>
    Regards,<br>
    <br>
    Alex<br>
    <br>
    <br>
  </body>
</html>

--------------030309090805040300050202
Content-Type: image/gif;
 name="SECURITYINFOIMAGE.gif"
Content-Transfer-Encoding: base64
Content-ID: <part2.02050706.03010007@dynamicdevices.co.uk>
Content-Disposition: inline;
 filename="SECURITYINFOIMAGE.gif"

R0lGODlhCgAMAHAAACH5BAEAAAUALAAAAAAKAAwAggAAAH6TlsTP0XyVmf///wAAAAAAAAAAAAMn
WDqsXkPI8aITdImbRwgMA0JEaRIBWQYmNZjsWsRoq57o/O1f9vwJADs=

--------------030309090805040300050202--

--------------040602070905060900040903--
