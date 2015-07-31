Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80905E009F0; Fri, 31 Jul 2015 06:29:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.225 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-05.atm.binero.net (vsp-unauthed01.binero.net
	[195.74.38.225])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B747AE009E5
	for <yocto@yoctoproject.org>; Fri, 31 Jul 2015 06:29:30 -0700 (PDT)
X-Halon-ID: 3150d0b2-3788-11e5-8d95-005056916f53
Authorized-sender: petter@technux.se
Received: from [192.168.1.82] (unknown [81.229.90.163])
	by bin-vsp-out-05.atm.binero.net (Halon Mail Gateway) with ESMTPSA;
	Fri, 31 Jul 2015 15:29:38 +0200 (CEST)
Message-ID: <55BB7830.8010909@technux.se>
Date: Fri, 31 Jul 2015 15:29:20 +0200
From: =?windows-1252?Q?Petter_Mab=E4cker?= <petter@technux.se>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Herve Jourdain <herve.jourdain@neuf.fr>, 
	francois@concept-embarque.fr, Andrei Gherzan <andrei@gherzan.ro>
References: <086901d0ca77$9e8f1300$dbad3900$@neuf.fr>
In-Reply-To: <086901d0ca77$9e8f1300$dbad3900$@neuf.fr>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] Adding an additional device tree overlay in the SDCard
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
X-List-Received-Date: Fri, 31 Jul 2015 13:29:35 -0000
Content-Type: multipart/alternative;
	boundary="------------030002070405070402030408"

--------------030002070405070402030408
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Hi Herve,

See inline answers.

BR,
Petter

On 07/30/2015 05:27 AM, Herve Jourdain wrote:
>
> Hello,
>
> I’m trying to add a specific .dts file to the raspberrypi.
>
> Therefore, in my own layer, I have made a 
> linux-raspberrypi_3.%.bbappend, that applies a patch to the 
> arch/arm/boot/dts makefile to add my own layer, and a new rule that 
> copies my specific .dts file to the kernel source directory.
>
> And, initially, I had also defined KERNEL_DEVICETREE += 
> “myown-overlay.dtb” in there.
>
> It definitely compiles well, installation process is smooth, I get the 
> Image-myown-overlay.dtb in tmp/deploy/raspberrypi2.
>
> BUT when I flash my SDCard, it does NOT appear in the “overlays” 
> directory of the DOS partition!
>
> If I add it manually, everything works fine, so I know my overlay has 
> been correctly generated and is working.
>
> What I discovered is that, the sdcard_image_rpi class takes the list 
> of .dtb to be considered from split_overlays(), which is defined in 
> linux-raspberrypi-base class.
>
> And split_overlays() basically  gets the value of KERNEL_DEVICETREE 
> (dts = d.getVar("KERNEL_DEVICETREE", True)).
>
> But when I set KERNEL_DEVICETREE in linux-raspberrypi_3.%.bbappend, it 
> seems the additional value it defines is NOT taken into account when 
> linux-raspberry-class evaluates the value of KERNEL_DEVICETREE.
>
> I’ve checked in the create_image.rpi-sdimg script created, it does not 
> appear in DTS nor DT_OVERLAYS.
>
> But when I define KERNEL_DEVICETREE in my distro.conf, THEN it is 
> taken into account…
>
> My goal would be to add that overlay by NOT modifying distro.conf 
> (distros are not necessarily RaspberryPi centric) nor in the raspberry 
> machine files (or local.conf).
>
> This leads me to several questions:
>
> #1 Is there a specific reason why my addition to KERNEL_DEVICETREE 
> gets lost when creating the image? I mean, is it normal, or are there 
> some steps I missed there?
>
Yes, in the current solution KERNEL_DEVICETREE is needed in both the 
kernel recipe and image creation context. When appending 
KERNEL_DEVICETREE in linux-raspberrypi_3.%.bbappend your new overlay 
will only be visible within the linux-raspberrypi scope and NOT within 
the image class.

> #2 Is there a way that I could achieve adding my .dtb overlay in the 
> sdcard image only from my linux kernel bbappend?
>

If I remember the code correct within the kernel scope we are only 
interesting if device tree should be used. At least in theory (assuming 
you are using a >= 3.18 kernel since then KERNEL_DEVICETREE will bve set 
by default) you should be able to skip the KERNEL_DEVICETREE += code in 
linux-raspberrypi_3.%.bbappend (since it will be set any way and the 
overlays themselves isn't really used in here..) then append the 
KERNEL_DEVICETREE within the image scope. If you don't want to put this 
into the layer.conf or similiar in your own layer I guess it should work 
to "prepend" for example the IMAGE_CMD. But in the current solution I 
guess local.conf, layer.conf (in your own layer) or rpi-base.inc (in 
meta-raspberrypi) is the easiest options..

> #3 On a more general note, wouldn’t it be simpler (better?) to just 
> add all the .dtb that are found in the deploy/images/ directory to the 
> DOS partition of the SDCard? After all, the .dtb need to be compiled 
> from a .dts, so all the .dtb that appear in deploy/images are “legit”.
>

That might perhaps be a better solution. Have you tried it out? Andrei 
or Francois might have some comments about this?
>
> Herve
>
>
>


--------------030002070405070402030408
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">Hi Herve,<br>
      <br>
      See inline answers.<br>
      <br>
      BR,<br>
      Petter<br>
      <br>
      On 07/30/2015 05:27 AM, Herve Jourdain wrote:<br>
    </div>
    <blockquote cite="mid:086901d0ca77$9e8f1300$dbad3900$@neuf.fr"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Word 15 (filtered
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
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
	font-family:"Calibri",sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 70.85pt 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext="edit" spidmax="1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext="edit">
<o:idmap v:ext="edit" data="1" />
</o:shapelayout></xml><![endif]-->
      <div class="WordSection1">
        <p class="MsoNormal">Hello,<o:p></o:p></p>
        <p class="MsoNormal"><o:p> </o:p></p>
        <p class="MsoNormal"><span lang="EN-US">I’m trying to add a
            specific .dts file to the raspberrypi.<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">Therefore, in my own
            layer, I have made a linux-raspberrypi_3.%.bbappend, that
            applies a patch to the arch/arm/boot/dts makefile to add my
            own layer, and a new rule that copies my specific .dts file
            to the kernel source directory.<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">And, initially, I had
            also defined KERNEL_DEVICETREE += “myown-overlay.dtb” in
            there.<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">It definitely compiles
            well, installation process is smooth, I get the
            Image-myown-overlay.dtb in tmp/deploy/raspberrypi2.<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">BUT when I flash my
            SDCard, it does NOT appear in the “overlays” directory of
            the DOS partition!<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">If I add it manually,
            everything works fine, so I know my overlay has been
            correctly generated and is working.<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">What I discovered is
            that, the sdcard_image_rpi class takes the list of .dtb to
            be considered from split_overlays(), which is defined in
            linux-raspberrypi-base class.<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">And split_overlays()
            basically  gets the value of KERNEL_DEVICETREE (dts =
            d.getVar("KERNEL_DEVICETREE", True)).<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">But when I set
            KERNEL_DEVICETREE in linux-raspberrypi_3.%.bbappend, it
            seems the additional value it defines is NOT taken into
            account when linux-raspberry-class evaluates the value of
            KERNEL_DEVICETREE.<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">I’ve checked in the
            create_image.rpi-sdimg script created, it does not appear in
            DTS nor DT_OVERLAYS.<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">But when I define
            KERNEL_DEVICETREE in my distro.conf, THEN it is taken into
            account…<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">My goal would be to add
            that overlay by NOT modifying distro.conf (distros are not
            necessarily RaspberryPi centric) nor in the raspberry
            machine files (or local.conf).<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">This leads me to several
            questions:<o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">#1 Is there a specific
            reason why my addition to KERNEL_DEVICETREE gets lost when
            creating the image? I mean, is it normal, or are there some
            steps I missed there?</span></p>
      </div>
    </blockquote>
    Yes, in the current solution <span lang="EN-US"></span><span
      lang="EN-US">KERNEL_DEVICETREE is needed in both the kernel recipe
      and image creation context. When appending </span><span
      lang="EN-US">KERNEL_DEVICETREE in </span><span lang="EN-US">linux-raspberrypi_3.%.bbappend
      your new overlay will only be visible within the linux-raspberrypi
      scope and NOT within the image class.</span><br>
    <br>
    <blockquote cite="mid:086901d0ca77$9e8f1300$dbad3900$@neuf.fr"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"><span lang="EN-US"><o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">#2 Is there a way that I
            could achieve adding my .dtb overlay in the sdcard image
            only from my linux kernel bbappend?</span></p>
      </div>
    </blockquote>
    <br>
    If I remember the code correct within the kernel scope we are only
    interesting if device tree should be used. At least in theory
    (assuming you are using a &gt;= 3.18 kernel since then
    KERNEL_DEVICETREE will bve set by default) you should be able to
    skip the <span lang="EN-US">KERNEL_DEVICETREE += code in </span><span
      lang="EN-US">linux-raspberrypi_3.%.bbappend (since it will be set
      any way and the overlays themselves isn't really used in here..)
      then append the KERNEL_DEVICETREE within the image scope. If you
      don't want to put this into the layer.conf or similiar in your own
      layer I guess it should work to "prepend" for example the
      IMAGE_CMD.</span> But in the current solution I guess local.conf,
    layer.conf (in your own layer) or rpi-base.inc (in meta-raspberrypi)
    is the easiest options..<br>
    <br>
    <blockquote cite="mid:086901d0ca77$9e8f1300$dbad3900$@neuf.fr"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"><span lang="EN-US"><o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">#3 On a more general
            note, wouldn’t it be simpler (better?) to just add all the
            .dtb that are found in the deploy/images/ directory to the
            DOS partition of the SDCard? After all, the .dtb need to be
            compiled from a .dts, so all the .dtb that appear in
            deploy/images are “legit”.</span></p>
      </div>
    </blockquote>
    <span lang="EN-US"><br>
      That might perhaps be a better solution. Have you tried it out?
      Andrei or Francois might have some comments about this?<br>
    </span>
    <blockquote cite="mid:086901d0ca77$9e8f1300$dbad3900$@neuf.fr"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"><span lang="EN-US"><o:p></o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span lang="EN-US">Herve<o:p></o:p></span></p>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------030002070405070402030408--
