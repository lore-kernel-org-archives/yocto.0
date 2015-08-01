Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5706E00A3C; Sat,  1 Aug 2015 14:44:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,URIBL_JP_SURBL autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.224 listed in list.dnswl.org]
	* 1.2 URIBL_JP_SURBL Contains an URL listed in the JP SURBL blocklist
	*      [URIs: gherzan.com]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from bin-vsp-out-04.atm.binero.net (vsp-authed01.binero.net
	[195.74.38.224])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE973E00595
	for <yocto@yoctoproject.org>; Sat,  1 Aug 2015 14:44:15 -0700 (PDT)
X-Halon-ID: 716870cb-3896-11e5-b1e8-005056917c0c
Authorized-sender: petter@technux.se
Received: from [192.168.1.82] (unknown [81.229.90.163])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPSA;
	Sat,  1 Aug 2015 23:44:09 +0200 (CEST)
Message-ID: <55BD3DAF.4040202@technux.se>
Date: Sat, 01 Aug 2015 23:44:15 +0200
From: =?windows-1252?Q?Petter_Mab=E4cker?= <petter@technux.se>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Herve Jourdain <herve.jourdain@neuf.fr>
References: <086901d0ca77$9e8f1300$dbad3900$@neuf.fr>	<55BB7830.8010909@technux.se>
	<09b101d0cbf8$8d1ab4d0$a7501e70$@neuf.fr>
In-Reply-To: <09b101d0cbf8$8d1ab4d0$a7501e70$@neuf.fr>
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
X-List-Received-Date: Sat, 01 Aug 2015 21:44:20 -0000
Content-Type: multipart/alternative;
	boundary="------------020003090209060105070804"

--------------020003090209060105070804
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

Hi,

BR,
Petter

On 08/01/2015 03:22 AM, Herve Jourdain wrote:
>
> Hi Petter,
>
> Thanks for your answers.
>
> At some point, I’ve set it in the disto.conf – it works there – but 
> for maintenance reasons I’d love to be able to keep it “localized” 
> with the kernel .bbappend – since it clearly depends on the kernel.
>
> For now, I’ve just patched the sdcard_image-rpi.bbclass, to take the 
> existing ${KERNEL_IMAGE}*.dtb in the ${DEPLOY_DIR_DIRECTORY}, split 
> them in overlay and non-overlay, and then do the processing like it’s 
> done now.
>
> It does work in my case, and I can provide the patch if it’s deemed of 
> interest. But I’m not sure whether or not there can be some side 
> effects – looks like rather safe, but more opinions are definitely 
> needed on that.
>
Feel free to either send a RFC patch to the mailinglist or start by 
sending it for early feedback to me, Andrei and Alex.
>
> Regarding the kernel, yes I’m using the 3.18 that is supported by the 
> meta-raspberry layer. As I mentioned in another thread, with more 
> recent kernels, the RaspberryPi overlay layers were added in a 
> separate directory, so in addition to a patch to build the newer 
> kernel, the sdcard_image-rpi.bbclass will also have to be modified to 
> get the files in the proper directory, when we switch to those newer 
> kernels.
>
I remember that thread. We are currently working with integrating 4.x 
into meta-raspberrypi you can follow Alex work at 
http://redmine.gherzan.com/issues/62. One problem is however how to 
handle support for both 3.x and 4.x with the current KERNEL_DEVICETREE 
solution in combination with the changed overlay directories.
>
> Best regards,
>
> Herve
>
> *From:*Petter Mabäcker [mailto:petter@technux.se]
> *Sent:* vendredi 31 juillet 2015 15:29
> *To:* Herve Jourdain <herve.jourdain@neuf.fr>; 
> francois@concept-embarque.fr; Andrei Gherzan <andrei@gherzan.ro>
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] [meta-raspberrypi] Adding an additional device 
> tree overlay in the SDCard
>
> Hi Herve,
>
> See inline answers.
>
> BR,
> Petter
>
> On 07/30/2015 05:27 AM, Herve Jourdain wrote:
>
>     Hello,
>
>     I’m trying to add a specific .dts file to the raspberrypi.
>
>     Therefore, in my own layer, I have made a
>     linux-raspberrypi_3.%.bbappend, that applies a patch to the
>     arch/arm/boot/dts makefile to add my own layer, and a new rule
>     that copies my specific .dts file to the kernel source directory.
>
>     And, initially, I had also defined KERNEL_DEVICETREE +=
>     “myown-overlay.dtb” in there.
>
>     It definitely compiles well, installation process is smooth, I get
>     the Image-myown-overlay.dtb in tmp/deploy/raspberrypi2.
>
>     BUT when I flash my SDCard, it does NOT appear in the “overlays”
>     directory of the DOS partition!
>
>     If I add it manually, everything works fine, so I know my overlay
>     has been correctly generated and is working.
>
>     What I discovered is that, the sdcard_image_rpi class takes the
>     list of .dtb to be considered from split_overlays(), which is
>     defined in linux-raspberrypi-base class.
>
>     And split_overlays() basically  gets the value of
>     KERNEL_DEVICETREE (dts = d.getVar("KERNEL_DEVICETREE", True)).
>
>     But when I set KERNEL_DEVICETREE in
>     linux-raspberrypi_3.%.bbappend, it seems the additional value it
>     defines is NOT taken into account when linux-raspberry-class
>     evaluates the value of KERNEL_DEVICETREE.
>
>     I’ve checked in the create_image.rpi-sdimg script created, it does
>     not appear in DTS nor DT_OVERLAYS.
>
>     But when I define KERNEL_DEVICETREE in my distro.conf, THEN it is
>     taken into account…
>
>     My goal would be to add that overlay by NOT modifying distro.conf
>     (distros are not necessarily RaspberryPi centric) nor in the
>     raspberry machine files (or local.conf).
>
>     This leads me to several questions:
>
>     #1 Is there a specific reason why my addition to KERNEL_DEVICETREE
>     gets lost when creating the image? I mean, is it normal, or are
>     there some steps I missed there?
>
> Yes, in the current solution KERNEL_DEVICETREE is needed in both the 
> kernel recipe and image creation context. When appending 
> KERNEL_DEVICETREE in linux-raspberrypi_3.%.bbappend your new overlay 
> will only be visible within the linux-raspberrypi scope and NOT within 
> the image class.
>
>
>     #2 Is there a way that I could achieve adding my .dtb overlay in
>     the sdcard image only from my linux kernel bbappend?
>
>
> If I remember the code correct within the kernel scope we are only 
> interesting if device tree should be used. At least in theory 
> (assuming you are using a >= 3.18 kernel since then KERNEL_DEVICETREE 
> will bve set by default) you should be able to skip the 
> KERNEL_DEVICETREE += code in linux-raspberrypi_3.%.bbappend (since it 
> will be set any way and the overlays themselves isn't really used in 
> here..) then append the KERNEL_DEVICETREE within the image scope. If 
> you don't want to put this into the layer.conf or similiar in your own 
> layer I guess it should work to "prepend" for example the 
> IMAGE_CMD.But in the current solution I guess local.conf, layer.conf 
> (in your own layer) or rpi-base.inc (in meta-raspberrypi) is the 
> easiest options..
>
>
>     #3 On a more general note, wouldn’t it be simpler (better?) to
>     just add all the .dtb that are found in the deploy/images/
>     directory to the DOS partition of the SDCard? After all, the .dtb
>     need to be compiled from a .dts, so all the .dtb that appear in
>     deploy/images are “legit”.
>
>
> That might perhaps be a better solution. Have you tried it out? Andrei 
> or Francois might have some comments about this?
>
>     Herve
>
>
>


--------------020003090209060105070804
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <div class="moz-cite-prefix">Hi,<br>
      <br>
      BR,<br>
      Petter<br>
      <br>
      On 08/01/2015 03:22 AM, Herve Jourdain wrote:<br>
    </div>
    <blockquote cite="mid:09b101d0cbf8$8d1ab4d0$a7501e70$@neuf.fr"
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
	color:black;
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
	{mso-style-type:personal;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
span.EmailStyle18
	{mso-style-type:personal-reply;
	font-family:"Calibri",sans-serif;
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
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
        <p class="MsoNormal"><span style="color:#1F497D">Hi Petter,<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D" lang="EN-US">Thanks
            for your answers.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D" lang="EN-US">At
            some point, I’ve set it in the disto.conf – it works there –
            but for maintenance reasons I’d love to be able to keep it
            “localized” with the kernel .bbappend – since it clearly
            depends on the kernel.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D" lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D" lang="EN-US">For
            now, I’ve just patched the sdcard_image-rpi.bbclass, to take
            the existing ${KERNEL_IMAGE}*.dtb in the
            ${DEPLOY_DIR_DIRECTORY}, split them in overlay and
            non-overlay, and then do the processing like it’s done now.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D" lang="EN-US">It
            does work in my case, and I can provide the patch if it’s
            deemed of interest. But I’m not sure whether or not there
            can be some side effects – looks like rather safe, but more
            opinions are definitely needed on that.</span></p>
      </div>
    </blockquote>
    Feel free to either send a RFC patch to the mailinglist or start by
    sending it for early feedback to me, Andrei and Alex.<br>
    <blockquote cite="mid:09b101d0cbf8$8d1ab4d0$a7501e70$@neuf.fr"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"><span style="color:#1F497D" lang="EN-US"><o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D" lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D" lang="EN-US">Regarding
            the kernel, yes I’m using the 3.18 that is supported by the
            meta-raspberry layer. As I mentioned in another thread, with
            more recent kernels, the RaspberryPi overlay layers were
            added in a separate directory, so in addition to a patch to
            build the newer kernel, the sdcard_image-rpi.bbclass will
            also have to be modified to get the files in the proper
            directory, when we switch to those newer kernels.</span></p>
      </div>
    </blockquote>
    I remember that thread. We are currently working with integrating
    4.x into meta-raspberrypi you can follow Alex work at
    <a class="moz-txt-link-freetext" href="http://redmine.gherzan.com/issues/62">http://redmine.gherzan.com/issues/62</a>. One problem is however how to
    handle support for both 3.x and 4.x with the current
    KERNEL_DEVICETREE solution in combination with the changed overlay
    directories.<br>
    <blockquote cite="mid:09b101d0cbf8$8d1ab4d0$a7501e70$@neuf.fr"
      type="cite">
      <div class="WordSection1">
        <p class="MsoNormal"><span style="color:#1F497D" lang="EN-US"><o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D" lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D" lang="EN-US">Best
            regards,<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D" lang="EN-US"><o:p> </o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D" lang="EN-US">Herve<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D" lang="EN-US"><o:p> </o:p></span></p>
        <div>
          <div style="border:none;border-top:solid #E1E1E1
            1.0pt;padding:3.0pt 0cm 0cm 0cm">
            <p class="MsoNormal"><b><span
                  style="color:windowtext;mso-fareast-language:FR"
                  lang="EN-US">From:</span></b><span
                style="color:windowtext;mso-fareast-language:FR"
                lang="EN-US"> Petter Mabäcker [<a class="moz-txt-link-freetext" href="mailto:petter@technux.se">mailto:petter@technux.se</a>]
                <br>
                <b>Sent:</b> vendredi 31 juillet 2015 15:29<br>
                <b>To:</b> Herve Jourdain
                <a class="moz-txt-link-rfc2396E" href="mailto:herve.jourdain@neuf.fr">&lt;herve.jourdain@neuf.fr&gt;</a>;
                <a class="moz-txt-link-abbreviated" href="mailto:francois@concept-embarque.fr">francois@concept-embarque.fr</a>; Andrei Gherzan
                <a class="moz-txt-link-rfc2396E" href="mailto:andrei@gherzan.ro">&lt;andrei@gherzan.ro&gt;</a><br>
                <b>Cc:</b> <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
                <b>Subject:</b> Re: [yocto] [meta-raspberrypi] Adding an
                additional device tree overlay in the SDCard<o:p></o:p></span></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p> </o:p></p>
        <div>
          <p class="MsoNormal">Hi Herve,<br>
            <br>
            See inline answers.<br>
            <br>
            BR,<br>
            Petter<br>
            <br>
            On 07/30/2015 05:27 AM, Herve Jourdain wrote:<span
              style="font-size:12.0pt;mso-fareast-language:FR"><o:p></o:p></span></p>
        </div>
        <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
          <p class="MsoNormal">Hello,<o:p></o:p></p>
          <p class="MsoNormal"> <o:p></o:p></p>
          <p class="MsoNormal"><span lang="EN-US">I’m trying to add a
              specific .dts file to the raspberrypi.</span><o:p></o:p></p>
          <p class="MsoNormal"><span lang="EN-US">Therefore, in my own
              layer, I have made a linux-raspberrypi_3.%.bbappend, that
              applies a patch to the arch/arm/boot/dts makefile to add
              my own layer, and a new rule that copies my specific .dts
              file to the kernel source directory.</span><o:p></o:p></p>
          <p class="MsoNormal"><span lang="EN-US">And, initially, I had
              also defined KERNEL_DEVICETREE += “myown-overlay.dtb” in
              there.</span><o:p></o:p></p>
          <p class="MsoNormal"><span lang="EN-US"> </span><o:p></o:p></p>
          <p class="MsoNormal"><span lang="EN-US">It definitely compiles
              well, installation process is smooth, I get the
              Image-myown-overlay.dtb in tmp/deploy/raspberrypi2.</span><o:p></o:p></p>
          <p class="MsoNormal"><span lang="EN-US"> </span><o:p></o:p></p>
          <p class="MsoNormal"><span lang="EN-US">BUT when I flash my
              SDCard, it does NOT appear in the “overlays” directory of
              the DOS partition!</span><o:p></o:p></p>
          <p class="MsoNormal"><span lang="EN-US"> </span><o:p></o:p></p>
          <p class="MsoNormal"><span lang="EN-US">If I add it manually,
              everything works fine, so I know my overlay has been
              correctly generated and is working.</span><o:p></o:p></p>
          <p class="MsoNormal"><span lang="EN-US"> </span><o:p></o:p></p>
          <p class="MsoNormal"><span lang="EN-US">What I discovered is
              that, the sdcard_image_rpi class takes the list of .dtb to
              be considered from split_overlays(), which is defined in
              linux-raspberrypi-base class.</span><o:p></o:p></p>
          <p class="MsoNormal"><span lang="EN-US">And split_overlays()
              basically  gets the value of KERNEL_DEVICETREE (dts =
              d.getVar("KERNEL_DEVICETREE", True)).</span><o:p></o:p></p>
          <p class="MsoNormal"><span lang="EN-US"> </span><o:p></o:p></p>
          <p class="MsoNormal"><span lang="EN-US">But when I set
              KERNEL_DEVICETREE in linux-raspberrypi_3.%.bbappend, it
              seems the additional value it defines is NOT taken into
              account when linux-raspberry-class evaluates the value of
              KERNEL_DEVICETREE.</span><o:p></o:p></p>
          <p class="MsoNormal"><span lang="EN-US">I’ve checked in the
              create_image.rpi-sdimg script created, it does not appear
              in DTS nor DT_OVERLAYS.</span><o:p></o:p></p>
          <p class="MsoNormal"><span lang="EN-US"> </span><o:p></o:p></p>
          <p class="MsoNormal"><span lang="EN-US">But when I define
              KERNEL_DEVICETREE in my distro.conf, THEN it is taken into
              account…</span><o:p></o:p></p>
          <p class="MsoNormal"><span lang="EN-US"> </span><o:p></o:p></p>
          <p class="MsoNormal"><span lang="EN-US">My goal would be to
              add that overlay by NOT modifying distro.conf (distros are
              not necessarily RaspberryPi centric) nor in the raspberry
              machine files (or local.conf).</span><o:p></o:p></p>
          <p class="MsoNormal"><span lang="EN-US">This leads me to
              several questions:</span><o:p></o:p></p>
          <p class="MsoNormal"><span lang="EN-US">#1 Is there a specific
              reason why my addition to KERNEL_DEVICETREE gets lost when
              creating the image? I mean, is it normal, or are there
              some steps I missed there?</span><o:p></o:p></p>
        </blockquote>
        <p class="MsoNormal"><span
            style="font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;mso-fareast-language:FR">Yes, in the
            current solution </span><span
            style="font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;mso-fareast-language:FR" lang="EN-US">KERNEL_DEVICETREE
            is needed in both the kernel recipe and image creation
            context. When appending KERNEL_DEVICETREE in
            linux-raspberrypi_3.%.bbappend your new overlay will only be
            visible within the linux-raspberrypi scope and NOT within
            the image class.</span><span
            style="font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;mso-fareast-language:FR"><br>
            <br>
            <br>
            <o:p></o:p></span></p>
        <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
          <p class="MsoNormal"><span lang="EN-US">#2 Is there a way that
              I could achieve adding my .dtb overlay in the sdcard image
              only from my linux kernel bbappend?</span><o:p></o:p></p>
        </blockquote>
        <p class="MsoNormal"><span
            style="font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;mso-fareast-language:FR"><br>
            If I remember the code correct within the kernel scope we
            are only interesting if device tree should be used. At least
            in theory (assuming you are using a &gt;= 3.18 kernel since
            then KERNEL_DEVICETREE will bve set by default) you should
            be able to skip the </span><span
            style="font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;mso-fareast-language:FR" lang="EN-US">KERNEL_DEVICETREE
            += code in linux-raspberrypi_3.%.bbappend (since it will be
            set any way and the overlays themselves isn't really used in
            here..) then append the KERNEL_DEVICETREE within the image
            scope. If you don't want to put this into the layer.conf or
            similiar in your own layer I guess it should work to
            "prepend" for example the IMAGE_CMD.</span><span
            style="font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;mso-fareast-language:FR"> But in the
            current solution I guess local.conf, layer.conf (in your own
            layer) or rpi-base.inc (in meta-raspberrypi) is the easiest
            options..<br>
            <br>
            <br>
            <o:p></o:p></span></p>
        <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
          <p class="MsoNormal"><span lang="EN-US">#3 On a more general
              note, wouldn’t it be simpler (better?) to just add all the
              .dtb that are found in the deploy/images/ directory to the
              DOS partition of the SDCard? After all, the .dtb need to
              be compiled from a .dts, so all the .dtb that appear in
              deploy/images are “legit”.</span><o:p></o:p></p>
        </blockquote>
        <p class="MsoNormal"><span
            style="font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;mso-fareast-language:FR" lang="EN-US"><br>
            That might perhaps be a better solution. Have you tried it
            out? Andrei or Francois might have some comments about this?<br>
            <br>
          </span><span style="font-size:12.0pt;font-family:&quot;Times
            New Roman&quot;,serif;mso-fareast-language:FR"><o:p></o:p></span></p>
        <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
          <p class="MsoNormal"><span lang="EN-US"> </span><o:p></o:p></p>
          <p class="MsoNormal"><span lang="EN-US">Herve</span><o:p></o:p></p>
          <p class="MsoNormal"><span
              style="font-size:12.0pt;font-family:&quot;Times New
              Roman&quot;,serif;mso-fareast-language:FR"><br>
              <br>
              <o:p></o:p></span></p>
        </blockquote>
        <p class="MsoNormal"><span
            style="font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,serif;mso-fareast-language:FR"><o:p> </o:p></span></p>
      </div>
    </blockquote>
    <br>
  </body>
</html>

--------------020003090209060105070804--
