Return-Path: <ajlennon@dynamicdevices.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB363E00BEA; Wed, 18 Jun 2014 15:14:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=HTML_MESSAGE,KHOP_DYNAMIC
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.0 KHOP_DYNAMIC Relay looks like a dynamic address
Received: from www.dynamicdevices.co.uk (www.dynamicdevices.co.uk
	[89.200.136.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43A99E00AFD
	for <yocto@yoctoproject.org>; Wed, 18 Jun 2014 15:14:26 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by www.dynamicdevices.co.uk (Postfix) with ESMTP id 2124A27E037;
	Wed, 18 Jun 2014 22:14:23 +0000 (UTC)
X-Virus-Scanned: Debian amavisd-new at lennoab2.miniserver.com
Received: from www.dynamicdevices.co.uk ([127.0.0.1])
	by localhost (www.dynamicdevices.co.uk [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id gP2DhanMn-y0; Wed, 18 Jun 2014 22:14:21 +0000 (UTC)
Received: from [127.0.0.1] (cpc32-live22-2-0-cust59.17-2.cable.virginm.net
	[82.36.253.60])
	(using TLSv1 with cipher ECDHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by www.dynamicdevices.co.uk (Postfix) with ESMTPSA id 7A81927E031;
	Wed, 18 Jun 2014 22:14:21 +0000 (UTC)
Message-ID: <53A20F35.9060700@dynamicdevices.co.uk>
Date: Wed, 18 Jun 2014 23:14:13 +0100
From: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Ruud den Bekker <ruud.den.bekker@cordis.nl>, yocto@yoctoproject.org
References: <21598C768CAB7B46B75C18783A59ACEE271D1A@cordissvr01.Cordis.local>
In-Reply-To: <21598C768CAB7B46B75C18783A59ACEE271D1A@cordissvr01.Cordis.local>
X-Enigmail-Version: 1.6
Subject: Re: build error
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
X-List-Received-Date: Wed, 18 Jun 2014 22:14:38 -0000
Content-Type: multipart/alternative;
	boundary="------------040907060907020703040508"

--------------040907060907020703040508
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 18/06/2014 09:38, Ruud den Bekker wrote:
>
> L.S.,
>
>  
>
> I followed the directions on
> http://www.codeproject.com/Articles/774826/Adding-rd-party-components-to-Yocto-OpenEmbedded-L
>
> to add an example project to my yocto-poky build tree.
>
>  
>
> a strange thing happens:
>
> when using bitbake bbexample-lt  for "qemuarm" or "edgerouter", it
> builds ok.
>
> however,if I select "beaglebone" for "MACHINE", I get a configure
> error in my log file:
>
>  
>
> "configure:3024: checking for C compiler version
>
> configure:3033: arm-poky-linux-gnueabi-gcc  -march=armv7-a
> -mthumb-interwork -mfloat-abi=hard -mfpu=neon -mtune=cortex-a8
> --sysroot=/home/ruud/poky-daisy-11.0.0/build/tmp/sysroots/beaglebone
> --version >&5
>
> /home/ruud/poky-daisy-11.0.0/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/bbexample-lt/1.0-r0/bbexample-1.0/configure:
> line 3035: arm-poky-linux-gnueabi-gcc: command not found"
>
>  
>
> However, the building e.g. a "core-image-minimal" or my added
> "core-image-mono" for a "beaglebone" builds fine and I can use the RFS
> on a "real" hardware board.
>
>  
>

Hi Ruud,

I checked this through for the Beaglebone and it builds OK.

- git cloned meta-ti
- setup a new build tree
- MACHINE ??= 'beaglebone' in local.conf
- Added meta-example layer to bblayers.conf

$ bitbake bbexample

...

BB_VERSION        = "1.23.1"
BUILD_SYS         = "i686-linux"
NATIVELSBSTRING   = "Ubuntu-12.04"
TARGET_SYS        = "arm-poky-linux-gnueabi"
MACHINE           = "beaglebone"
DISTRO            = "poky"
DISTRO_VERSION    = "1.6+snapshot-20140618"
TUNE_FEATURES     = "arm armv7a vfp neon"
TARGET_FPU        = "vfp-neon"
meta
meta-yocto        = "master:b5a928af721026795be7b7f68b2dd577408afbe5"
meta-oe           = "master:8316933b400ae6fda688637fcc3e202b38a8e12b"
meta-ti           = "master:f351978d956e199032db5302696587969f5c428e"
meta-example      = "master:5ee4f20b041bc886b1d2d913ac11814057317634"

Given you're having other issues too, it might be worth you trying a
simple build in a clean tree?

Regards,

Alex

> What can be the cause of this?
>
>  
>
> Best regards,
>
>  
>
> Ruud
>
>  
>
> Ruud den Bekker
>
> Cordis Automation B.V.
>
> High Tech Campus 9
>
> 5656 AE Eindhoven
>
>  
>
>
>


--------------040907060907020703040508
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <div class="moz-cite-prefix">On 18/06/2014 09:38, Ruud den Bekker
      wrote:<br>
    </div>
    <blockquote
cite="mid:21598C768CAB7B46B75C18783A59ACEE271D1A@cordissvr01.Cordis.local"
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
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
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
        <p class="MsoNormal"><span lang="EN-US">L.S.,<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">I followed the
            directions on <a moz-do-not-send="true"
href="http://www.codeproject.com/Articles/774826/Adding-rd-party-components-to-Yocto-OpenEmbedded-L">http://www.codeproject.com/Articles/774826/Adding-rd-party-components-to-Yocto-OpenEmbedded-L</a><o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">to add an example
            project to my yocto-poky build tree.<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">a strange thing happens:<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">when using bitbake
            bbexample-lt&nbsp; for &#8220;qemuarm&#8221; or &#8220;edgerouter&#8221;, it builds ok.<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">however,if I select
            &#8220;beaglebone&#8221; for &#8220;MACHINE&#8221;, I get a configure error in my
            log file:<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">&#8220;configure:3024:
            checking for C compiler version<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">configure:3033:
            arm-poky-linux-gnueabi-gcc&nbsp; -march=armv7-a -mthumb-interwork
            -mfloat-abi=hard -mfpu=neon -mtune=cortex-a8
            --sysroot=/home/ruud/poky-daisy-11.0.0/build/tmp/sysroots/beaglebone
            --version &gt;&amp;5<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">/home/ruud/poky-daisy-11.0.0/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/bbexample-lt/1.0-r0/bbexample-1.0/configure:
            line 3035: arm-poky-linux-gnueabi-gcc: command not found&#8221;<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">However, the building
            e.g. a &#8220;core-image-minimal&#8221; or my added &#8220;core-image-mono&#8221;
            for a &#8220;beaglebone&#8221; builds fine and I can use the RFS on a
            &#8220;real&#8221; hardware board.<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
      </div>
    </blockquote>
    <br>
    Hi Ruud,<br>
    <br>
    I checked this through for the Beaglebone and it builds OK.<br>
    <br>
    - git cloned meta-ti<br>
    - setup a new build tree<br>
    - MACHINE ??= 'beaglebone' in local.conf<br>
    - Added meta-example layer to bblayers.conf<br>
    <br>
    $ bitbake bbexample<br>
    <br>
    ...<br>
    <br>
    BB_VERSION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = "1.23.1"<br>
    BUILD_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = "i686-linux"<br>
    NATIVELSBSTRING&nbsp;&nbsp; = "Ubuntu-12.04"<br>
    TARGET_SYS&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = "arm-poky-linux-gnueabi"<br>
    MACHINE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = "beaglebone"<br>
    DISTRO&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = "poky"<br>
    DISTRO_VERSION&nbsp;&nbsp;&nbsp; = "1.6+snapshot-20140618"<br>
    TUNE_FEATURES&nbsp;&nbsp;&nbsp;&nbsp; = "arm armv7a vfp neon"<br>
    TARGET_FPU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; = "vfp-neon"<br>
    meta<br>
    meta-yocto&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
    "master:b5a928af721026795be7b7f68b2dd577408afbe5"<br>
    meta-oe&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
    "master:8316933b400ae6fda688637fcc3e202b38a8e12b"<br>
    meta-ti&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
    "master:f351978d956e199032db5302696587969f5c428e"<br>
    meta-example&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; =
    "master:5ee4f20b041bc886b1d2d913ac11814057317634"<br>
    <br>
    Given you're having other issues too, it might be worth you trying a
    simple build in a clean tree?<br>
    <br>
    Regards,<br>
    <br>
    Alex<br>
    <br>
    <blockquote
cite="mid:21598C768CAB7B46B75C18783A59ACEE271D1A@cordissvr01.Cordis.local"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"><span lang="EN-US">What can be the cause of
            this?<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal">Best regards,<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">Ruud<o:p></o:p></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <p class="MsoNormal">Ruud den Bekker<o:p></o:p></p>
        <p class="MsoNormal"><span lang="EN-US">Cordis Automation B.V.<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">High Tech Campus 9<o:p></o:p></span></p>
        <p class="MsoNormal">5656 AE Eindhoven<span lang="EN-US"><o:p></o:p></span></p>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------040907060907020703040508--
