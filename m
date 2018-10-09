Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 285F9E00B5E; Mon,  8 Oct 2018 19:51:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C25B4E00A86
	for <yocto@yoctoproject.org>; Mon,  8 Oct 2018 19:51:43 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w992owN1011700
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 8 Oct 2018 19:51:08 -0700
Received: from server.local (128.224.21.82) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.408.0;
	Mon, 8 Oct 2018 19:50:47 -0700
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <286078d59ba1400fb6646b0e6057add6@sakuraus.com>
	<16551d421c7747ab9ae52856a668d750@sakuraus.com>
	<a3fc06bf-e202-dec1-8618-f7f89e1c8a93@windriver.com>
	<7b74cef2003b44909e3033efa1d4305a@sakuraus.com>
	<772b7fca373e4a9085660b8a79a36673@sakuraus.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <445024a9-2d4c-e583-b57a-dd536d193ea0@windriver.com>
Date: Mon, 8 Oct 2018 22:50:47 -0400
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.13; rv:52.0)
	Gecko/20100101 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <772b7fca373e4a9085660b8a79a36673@sakuraus.com>
Subject: Re: changing kernel config in Morty build
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
X-List-Received-Date: Tue, 09 Oct 2018 02:51:46 -0000
Content-Type: multipart/alternative;
	boundary="------------048215331ACCA7539004C98D"
Content-Language: en-US

--------------048215331ACCA7539004C98D
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 8bit

On 2018-10-05 7:26 PM, Greg Wilson-Lindberg wrote:
> Hi Bruce,
> I've been able to reproduce the problem in a more minimal environment.
>
> To build a basic Yocto Raspberry Pi environment I based my build on the instructions found here:
> https://themeaningfulengineer.github.io/exploring-yocto-with-raspberrypi/
>
> The steps that I actually executed are:
>
> git clone -b morty --single-branch git://git.yoctoproject.org/poky
> cd poky/
> git clone -b morty http://git.yoctoproject.org/git/meta-raspberrypi
> source oe-init-build-env rpi-build
>
> In rpi-build/conf/local.conf I changed the MACHINE assignment to "raspberrypi2" from "qemu86"
>
> In rpi-build/conf/bblayers.conf I added "  /home/gwilson/Qt/poky/meta-raspberrypi \" to pick up the raspberry layer.
>
> At this point I ran:
> bitbake rpi-hwup-image
>
> to verify that the environment was correct. The build finished with only a couple of warnings about checksum problems and using alternate mirrors.
> I then copied in my kernel scripts and added in the directory to the bblayers file.
> When I rebuilt with these changes I get the same warnings/errors about changing the kernel config that I get with my full build environment.
> I've attached my meta-test directory with the kernel configuration .bbappend and .scc & .cfg files, and the final bblayers.conf & local.conf files.
> Thank you for taking a look at this.
Thanks Greg,

I was able to reproduce the problem a few minutes ago, but will have to 
look at the root cause in the morning!

Bruce

> Regards,
> Greg Wilson-Lindberg
>
>
> ------------------------------------------------------------------------
> *From:* yocto-bounces@yoctoproject.org 
> <yocto-bounces@yoctoproject.org> on behalf of Greg Wilson-Lindberg 
> <GWilson@sakuraus.com>
> *Sent:* Friday, October 5, 2018 9:23:52 AM
> *To:* Bruce Ashfield; yocto@yoctoproject.org
> *Subject:* Re: [yocto] changing kernel config in Morty build
> Hi Bruce,
> I'll do my best to get something for you.
> Thanks,
>
> Greg Wilson-Lindberg
> Principal Firmware Engineer | Sakura Finetek USA, Inc.
>
> 1750 W 214th Street | Torrance, CA 90501 | U.S.A.
> T: +1 310 783 5075
> F: +1 310 618 6902 | E: gwilson@sakuraus.com
> www.sakuraus.com <http://www.sakuraus.com>
>
>
>
>
>
> Confidentiality Notice: This e-mail transmission may contain 
> confidential or legally privileged information that is intended only 
> for the individual or entity named in the e-mail address. If you are 
> not the intended recipient, you are hereby notified that any 
> disclosure, copying, distribution, or reliance upon the contents of 
> this e-mail is strictly prohibited. If you have received this e-mail 
> transmission in error, please reply to the sender, so that Sakura 
> Finetek USA, Inc. can arrange for proper delivery, and then please 
> delete the message from your inbox. Thank you.
>
>
>
> > -----Original Message-----
> > From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> > Sent: Friday, October 05, 2018 08:46 AM
> > To: Greg Wilson-Lindberg <GWilson@sakuraus.com>; yocto@yoctoproject.org
> > Subject: Re: [yocto] changing kernel config in Morty build
> >
> > On 2018-10-04 4:38 PM, Greg Wilson-Lindberg wrote:
> > > Does anybody else have any idea about what is going on here?
> > >
> >
> > I can't tell from the information provided.
> >
> > But if you can send me a set of layers to clone, and configure 
> locally, I can figure it
> > out.
> >
> > Cheers,
> >
> > Bruce
> >
> > > Yocto is seeing my request to change the kernel config, suggests that
> > > the change is acceptable, but then doesn't make it.
> > >
> > > Thanks in advance for any insight,
> > >
> > > Greg
> > >
> > > **
> > >
> > > *From:*Greg Wilson-Lindberg
> > > *Sent:* Tuesday, October 02, 2018 02:22 PM
> > > *To:* yocto@yoctoproject.org
> > > *Subject:* changing kernel config in Morty build
> > >
> > > I'm trying to change some kernel configuration flags in a
> > > raspberrypi3 Morty build and I get warnings that it isn't working.
> > >
> > > Here is the build info and warnings:
> > >
> > > Build Configuration:
> > >
> > > BB_VERSION        = "1.32.0"
> > >
> > > BUILD_SYS         = "x86_64-linux"
> > >
> > > NATIVELSBSTRING   = "universal"
> > >
> > > TARGET_SYS        = "arm-poky-linux-gnueabi"
> > >
> > > MACHINE           = "raspberrypi3"
> > >
> > > DISTRO            = "b2qt"
> > >
> > > DISTRO_VERSION    = "2.2.4"
> > >
> > > TUNE_FEATURES     = "arm armv7ve vfp thumb neon vfpv4
> > > callconvention-hard cortexa7"
> > >
> > > TARGET_FPU        = "hard"
> > >
> > > SDKMACHINE        = "x86_64"
> > >
> > > meta
> > >
> > > meta-poky         = "HEAD:df76669bdd70aa0d903c4211dde731221c7e756d"
> > >
> > > meta-raspberrypi  = "HEAD:2a192261a914892019f4f428d7462bb3c585ebac"
> > >
> > > meta-oe
> > >
> > > meta-python
> > >
> > > meta-networking
> > >
> > > meta-initramfs
> > >
> > > meta-multimedia   = "HEAD:b40116cf457b88a2db14b86fda9627fb34d56ae6"
> > >
> > > meta-boot2qt
> > >
> > > meta-raspberrypi-extras = "<unknown>:<unknown>"
> > >
> > > meta-mingw        = "HEAD:1c2e155111dce94423cc227ea69f7f50f316c78e"
> > >
> > > meta-qt5          = "HEAD:49e9d9a73b5c6e3d6eab88dc0005305e85b1a62d"
> > >
> > > meta-sakura       = "<unknown>:<unknown>"
> > >
> > > Initialising tasks: 100%
> > >
> > |###################################################################
> > ##
> > >
> > |###################################################################
> > ##
> > > |###|
> > > Time: 0:00:00
> > >
> > > NOTE: Executing SetScene Tasks
> > >
> > > NOTE: Executing RunQueue Tasks
> > >
> > > WARNING: linux-raspberrypi-1_4.4.50+gitAUTOINC+04c8e47067-r0
> > > do_kernel_configcheck: [kernel config]: specified values did not make
> > > it into the kernel's final configuration:
> > >
> > > ---------- CONFIG_SND_SOC_MAX9768 -----------------
> > >
> > > Config: CONFIG_SND_SOC_MAX9768
> > >
> > > From:
> > > /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/work
> > > -shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
> > >
> > > Requested value:  CONFIG_SND_SOC_MAX9768=y
> > >
> > > Actual value:
> > >
> > > Config 'SND_SOC_MAX9768' has the following conditionals:
> > >
> > > Dependency values are:
> > >
> > > ---------- CONFIG_MAX1363 -----------------
> > >
> > > Config: CONFIG_MAX1363
> > >
> > > From:
> > > /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/work
> > > -shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
> > >
> > > Requested value:  CONFIG_MAX1363=m
> > >
> > > Actual value:     # CONFIG_MAX1363 is not set
> > >
> > > Config 'MAX1363' has the following conditionals:
> > >
> > >    I2C (value: "y")
> > >
> > > Dependency values are:
> > >
> > >    I2C [y]
> > >
> > > ---------- CONFIG_CAN_EMS_USB -----------------
> > >
> > > Config: CONFIG_CAN_EMS_USB
> > >
> > > From:
> > > /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/work
> > > -shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg
> > >
> > > Requested value:  CONFIG_CAN_EMS_USB=m
> > >
> > > Actual value:     # CONFIG_CAN_EMS_USB is not set
> > >
> > > Config 'CAN_EMS_USB' has the following conditionals:
> > >
> > >    (none)
> > >
> > > Dependency values are:
> > >
> > > Here is my
> > >
> > > linux-raspberrypi_4.4.bbappend for the kernel:
> > >
> > > # Scribe additions to Kernel configuration
> > >
> > > FILESEXTRAPATHS_prepend := "${FILE_DIRNAME}/files:"
> > >
> > > FILESEXTRAPATHS_prepend := "${FILE_DIRNAME}/${PN}:"
> > >
> > > SRC_URI += "file://Scribe.scc <file:///%5C%5CScribe.scc>"
> > >
> > > SRC_URI += "file://mcp251x.c.patch <file:///%5C%5Cmcp251x.c.patch>"
> > >
> > > The Scribe.scc file:
> > >
> > > # Scribe additions to kernel configuration
> > >
> > > kconf hardware Scribe.cfg
> > >
> > > And the Scribe.cfg file:
> > >
> > > # Scribe additions to kernel configuration
> > >
> > > # Enable MAX9768
> > >
> > > #CONFIG_SOC_ALL_CODECS=m
> > >
> > > #CONFIG_COMPILE_TEST=y
> > >
> > > CONFIG_SND_SOC_MAX9768=y
> > >
> > > # Enable MAX11606
> > >
> > > #IIO=y
> > >
> > > CONFIG_MAX1363=m
> > >
> > > # Enable EMS CPC-USB
> > >
> > > CONFIG_CAN_EMS_USB=m
> > >
> > > Here is my directory tree:
> > >
> > > Qt-5.9.6
> > >
> > >       Yocto-mirror
> > > # Yocto build mirror
> > >
> > >       Yocto-build-RPi3                   #
> > > Yocto build root
> > >
> > >                  build-raspberrypi                    #
> > > build directory
> > >
> > >                  sources
> > >   # yocto sources
> > >
> > >                         meta-sakura
> > > # our recipes
> > >
> > >                                 recipes-kernel
> > > # directory for kernel changes
> > >
> > >                                         linux
> > >     # directory that contains linux-raspberrypi_4.4.bbappend
> > >
> > > files
> > >       # directory that contains .scc & .cfg files
> > >
> > > As seen above none of the changes are accepted although there is
> > > nothing that blocks any of them.
> > >
> > > Any help understanding this would be greatly appreciated.
> > >
> > > Regards,
> > >
> > > Greg Wilson-Lindberg
> > >
> > >
> > >
>
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--------------048215331ACCA7539004C98D
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html;
      charset=windows-1252">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">On 2018-10-05 7:26 PM, Greg
      Wilson-Lindberg wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:772b7fca373e4a9085660b8a79a36673@sakuraus.com">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <meta name="Generator" content="Microsoft Exchange Server">
      <!-- converted from text -->
      <style><!-- .EmailQuote { margin-left: 1pt; padding-left: 4pt; border-left: #800000 2px solid; } --></style>
      <meta content="text/html; charset=UTF-8">
      <style type="text/css" style="">
<!--
p
	{margin-top:0;
	margin-bottom:0}
-->
</style>
      <div dir="ltr">
        <div id="x_divtagdefaultwrapper" style="font-size:12pt;
          color:#000000; font-family:Calibri,Arial,Helvetica,sans-serif">
          <div style="color:#000000; background-color:#ffffff;
            font-style:normal; font-weight:normal; text-decoration:none">
            <pre>Hi Bruce,
I've been able to reproduce the problem in a more minimal environment.

To build a basic Yocto Raspberry Pi environment I based my build on the instructions found here:
<a class="moz-txt-link-freetext" href="https://themeaningfulengineer.github.io/exploring-yocto-with-raspberrypi/">https://themeaningfulengineer.github.io/exploring-yocto-with-raspberrypi/</a>

The steps that I actually executed are:

git clone -b morty --single-branch <a class="moz-txt-link-freetext" href="git://git.yoctoproject.org/poky">git://git.yoctoproject.org/poky</a>
cd poky/
git clone -b morty <a class="moz-txt-link-freetext" href="http://git.yoctoproject.org/git/meta-raspberrypi">http://git.yoctoproject.org/git/meta-raspberrypi</a>
source oe-init-build-env rpi-build

In rpi-build/conf/local.conf I changed the MACHINE assignment to "raspberrypi2" from "qemu86"

In rpi-build/conf/bblayers.conf I added "  /home/gwilson/Qt/poky/meta-raspberrypi \" to pick up the raspberry layer.

At this point I ran:
bitbake rpi-hwup-image

to verify that the environment was correct. The build finished with only a couple of warnings about checksum problems and using alternate mirrors.</pre>
            <pre>I then copied in my kernel scripts and added in the directory to the bblayers file. </pre>
            <pre>When I rebuilt with these changes I get the same warnings/errors about changing the kernel config that I get with my full build environment.
</pre>
            <pre><pre style="font-size:16px">I've attached my meta-test directory with the kernel configuration .bbappend and .scc &amp; .cfg files, and the final bblayers.conf &amp; local.conf files.</pre><pre style="font-size:16px">Thank you for taking a look at this.</pre></pre>
          </div>
        </div>
      </div>
    </blockquote>
    Thanks Greg,<br>
    <br>
    I was able to reproduce the problem a few minutes ago, but will have
    to look at the root cause in the morning!<br>
    <br>
    Bruce<br>
    <br>
    <blockquote type="cite"
      cite="mid:772b7fca373e4a9085660b8a79a36673@sakuraus.com">
      <div dir="ltr">
        <div id="x_divtagdefaultwrapper" style="font-size:12pt;
          color:#000000; font-family:Calibri,Arial,Helvetica,sans-serif">
          <div style="color:#000000; background-color:#ffffff;
            font-style:normal; font-weight:normal; text-decoration:none">
            <pre><pre style="font-size:16px">Regards,</pre><pre style="font-size:16px">Greg Wilson-Lindberg</pre>
</pre>
          </div>
          <br>
        </div>
        <hr tabindex="-1" style="display:inline-block; width:98%">
        <div id="x_divRplyFwdMsg" dir="ltr"><font style="font-size:11pt"
            face="Calibri, sans-serif" color="#000000"><b>From:</b>
            <a class="moz-txt-link-abbreviated" href="mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a>
            <a class="moz-txt-link-rfc2396E" href="mailto:yocto-bounces@yoctoproject.org">&lt;yocto-bounces@yoctoproject.org&gt;</a> on behalf of Greg
            Wilson-Lindberg <a class="moz-txt-link-rfc2396E" href="mailto:GWilson@sakuraus.com">&lt;GWilson@sakuraus.com&gt;</a><br>
            <b>Sent:</b> Friday, October 5, 2018 9:23:52 AM<br>
            <b>To:</b> Bruce Ashfield; <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
            <b>Subject:</b> Re: [yocto] changing kernel config in Morty
            build</font>
          <div> </div>
        </div>
      </div>
      <font size="2"><span style="font-size:10pt;">
          <div class="PlainText">Hi Bruce,<br>
            I'll do my best to get something for you.<br>
            Thanks,<br>
            <br>
            Greg Wilson-Lindberg  <br>
            Principal Firmware Engineer | Sakura Finetek USA, Inc.  <br>
             <br>
            1750 W 214th Street | Torrance, CA 90501 | U.S.A.  <br>
            T: +1 310 783 5075  <br>
            F: +1 310 618 6902 | E: <a class="moz-txt-link-abbreviated" href="mailto:gwilson@sakuraus.com">gwilson@sakuraus.com</a>      <br>
            <a href="http://www.sakuraus.com" moz-do-not-send="true">www.sakuraus.com</a>           
            <br>
             <br>
            <br>
            <br>
            <br>
            <br>
            Confidentiality Notice: This e-mail transmission may contain
            confidential or legally privileged information that is
            intended only for the individual or entity named in the
            e-mail address. If you are not the intended recipient, you
            are hereby notified that any disclosure, copying,
            distribution, or reliance upon the contents of this e-mail
            is strictly prohibited. If you have received this e-mail
            transmission in error, please reply to the sender, so that
            Sakura Finetek USA, Inc. can arrange for proper delivery,
            and then please delete the message from your inbox. Thank
            you.<br>
            <br>
            <br>
            <br>
            &gt; -----Original Message-----<br>
            &gt; From: Bruce Ashfield [<a
              href="mailto:bruce.ashfield@windriver.com"
              moz-do-not-send="true">mailto:bruce.ashfield@windriver.com</a>]<br>
            &gt; Sent: Friday, October 05, 2018 08:46 AM<br>
            &gt; To: Greg Wilson-Lindberg <a class="moz-txt-link-rfc2396E" href="mailto:GWilson@sakuraus.com">&lt;GWilson@sakuraus.com&gt;</a>;
            <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
            &gt; Subject: Re: [yocto] changing kernel config in Morty
            build<br>
            &gt; <br>
            &gt; On 2018-10-04 4:38 PM, Greg Wilson-Lindberg wrote:<br>
            &gt; &gt; Does anybody else have any idea about what is
            going on here?<br>
            &gt; &gt;<br>
            &gt; <br>
            &gt; I can't tell from the information provided.<br>
            &gt; <br>
            &gt; But if you can send me a set of layers to clone, and
            configure locally, I can figure it<br>
            &gt; out.<br>
            &gt; <br>
            &gt; Cheers,<br>
            &gt; <br>
            &gt; Bruce<br>
            &gt; <br>
            &gt; &gt; Yocto is seeing my request to change the kernel
            config, suggests that<br>
            &gt; &gt; the change is acceptable, but then doesn't make
            it.<br>
            &gt; &gt;<br>
            &gt; &gt; Thanks in advance for any insight,<br>
            &gt; &gt;<br>
            &gt; &gt; Greg<br>
            &gt; &gt;<br>
            &gt; &gt; **<br>
            &gt; &gt;<br>
            &gt; &gt; *From:*Greg Wilson-Lindberg<br>
            &gt; &gt; *Sent:* Tuesday, October 02, 2018 02:22 PM<br>
            &gt; &gt; *To:* <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
            &gt; &gt; *Subject:* changing kernel config in Morty build<br>
            &gt; &gt;<br>
            &gt; &gt; I'm trying to change some kernel configuration
            flags in a<br>
            &gt; &gt; raspberrypi3 Morty build and I get warnings that
            it isn't working.<br>
            &gt; &gt;<br>
            &gt; &gt; Here is the build info and warnings:<br>
            &gt; &gt;<br>
            &gt; &gt; Build Configuration:<br>
            &gt; &gt;<br>
            &gt; &gt; BB_VERSION        = "1.32.0"<br>
            &gt; &gt;<br>
            &gt; &gt; BUILD_SYS         = "x86_64-linux"<br>
            &gt; &gt;<br>
            &gt; &gt; NATIVELSBSTRING   = "universal"<br>
            &gt; &gt;<br>
            &gt; &gt; TARGET_SYS        = "arm-poky-linux-gnueabi"<br>
            &gt; &gt;<br>
            &gt; &gt; MACHINE           = "raspberrypi3"<br>
            &gt; &gt;<br>
            &gt; &gt; DISTRO            = "b2qt"<br>
            &gt; &gt;<br>
            &gt; &gt; DISTRO_VERSION    = "2.2.4"<br>
            &gt; &gt;<br>
            &gt; &gt; TUNE_FEATURES     = "arm armv7ve vfp thumb neon
            vfpv4<br>
            &gt; &gt; callconvention-hard cortexa7"<br>
            &gt; &gt;<br>
            &gt; &gt; TARGET_FPU        = "hard"<br>
            &gt; &gt;<br>
            &gt; &gt; SDKMACHINE        = "x86_64"<br>
            &gt; &gt;<br>
            &gt; &gt; meta<br>
            &gt; &gt;<br>
            &gt; &gt; meta-poky         =
            "HEAD:df76669bdd70aa0d903c4211dde731221c7e756d"<br>
            &gt; &gt;<br>
            &gt; &gt; meta-raspberrypi  =
            "HEAD:2a192261a914892019f4f428d7462bb3c585ebac"<br>
            &gt; &gt;<br>
            &gt; &gt; meta-oe<br>
            &gt; &gt;<br>
            &gt; &gt; meta-python<br>
            &gt; &gt;<br>
            &gt; &gt; meta-networking<br>
            &gt; &gt;<br>
            &gt; &gt; meta-initramfs<br>
            &gt; &gt;<br>
            &gt; &gt; meta-multimedia   =
            "HEAD:b40116cf457b88a2db14b86fda9627fb34d56ae6"<br>
            &gt; &gt;<br>
            &gt; &gt; meta-boot2qt<br>
            &gt; &gt;<br>
            &gt; &gt; meta-raspberrypi-extras =
            "&lt;unknown&gt;:&lt;unknown&gt;"<br>
            &gt; &gt;<br>
            &gt; &gt; meta-mingw        =
            "HEAD:1c2e155111dce94423cc227ea69f7f50f316c78e"<br>
            &gt; &gt;<br>
            &gt; &gt; meta-qt5          =
            "HEAD:49e9d9a73b5c6e3d6eab88dc0005305e85b1a62d"<br>
            &gt; &gt;<br>
            &gt; &gt; meta-sakura       =
            "&lt;unknown&gt;:&lt;unknown&gt;"<br>
            &gt; &gt;<br>
            &gt; &gt; Initialising tasks: 100%<br>
            &gt; &gt;<br>
            &gt;
            |###################################################################<br>
            &gt; ##<br>
            &gt; &gt;<br>
            &gt;
            |###################################################################<br>
            &gt; ##<br>
            &gt; &gt; |###|<br>
            &gt; &gt; Time: 0:00:00<br>
            &gt; &gt;<br>
            &gt; &gt; NOTE: Executing SetScene Tasks<br>
            &gt; &gt;<br>
            &gt; &gt; NOTE: Executing RunQueue Tasks<br>
            &gt; &gt;<br>
            &gt; &gt; WARNING:
            linux-raspberrypi-1_4.4.50+gitAUTOINC+04c8e47067-r0<br>
            &gt; &gt; do_kernel_configcheck: [kernel config]: specified
            values did not make<br>
            &gt; &gt; it into the kernel's final configuration:<br>
            &gt; &gt;<br>
            &gt; &gt; ---------- CONFIG_SND_SOC_MAX9768
            -----------------<br>
            &gt; &gt;<br>
            &gt; &gt; Config: CONFIG_SND_SOC_MAX9768<br>
            &gt; &gt;<br>
            &gt; &gt; From:<br>
            &gt; &gt;
            /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/work<br>
            &gt; &gt;
            -shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg<br>
            &gt; &gt;<br>
            &gt; &gt; Requested value:  CONFIG_SND_SOC_MAX9768=y<br>
            &gt; &gt;<br>
            &gt; &gt; Actual value:<br>
            &gt; &gt;<br>
            &gt; &gt; Config 'SND_SOC_MAX9768' has the following
            conditionals:<br>
            &gt; &gt;<br>
            &gt; &gt; Dependency values are:<br>
            &gt; &gt;<br>
            &gt; &gt; ---------- CONFIG_MAX1363 -----------------<br>
            &gt; &gt;<br>
            &gt; &gt; Config: CONFIG_MAX1363<br>
            &gt; &gt;<br>
            &gt; &gt; From:<br>
            &gt; &gt;
            /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/work<br>
            &gt; &gt;
            -shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg<br>
            &gt; &gt;<br>
            &gt; &gt; Requested value:  CONFIG_MAX1363=m<br>
            &gt; &gt;<br>
            &gt; &gt; Actual value:     # CONFIG_MAX1363 is not set<br>
            &gt; &gt;<br>
            &gt; &gt; Config 'MAX1363' has the following conditionals:<br>
            &gt; &gt;<br>
            &gt; &gt;    I2C (value: "y")<br>
            &gt; &gt;<br>
            &gt; &gt; Dependency values are:<br>
            &gt; &gt;<br>
            &gt; &gt;    I2C [y]<br>
            &gt; &gt;<br>
            &gt; &gt; ---------- CONFIG_CAN_EMS_USB -----------------<br>
            &gt; &gt;<br>
            &gt; &gt; Config: CONFIG_CAN_EMS_USB<br>
            &gt; &gt;<br>
            &gt; &gt; From:<br>
            &gt; &gt;
            /home/gwilson/Qt/Qt-5.9.6/Yocto-build-RPi3/build-raspberrypi3/tmp/work<br>
            &gt; &gt;
            -shared/raspberrypi3/kernel-source/.kernel-meta/configs/Scribe.cfg<br>
            &gt; &gt;<br>
            &gt; &gt; Requested value:  CONFIG_CAN_EMS_USB=m<br>
            &gt; &gt;<br>
            &gt; &gt; Actual value:     # CONFIG_CAN_EMS_USB is not set<br>
            &gt; &gt;<br>
            &gt; &gt; Config 'CAN_EMS_USB' has the following
            conditionals:<br>
            &gt; &gt;<br>
            &gt; &gt;    (none)<br>
            &gt; &gt;<br>
            &gt; &gt; Dependency values are:<br>
            &gt; &gt;<br>
            &gt; &gt; Here is my<br>
            &gt; &gt;<br>
            &gt; &gt; linux-raspberrypi_4.4.bbappend for the kernel:<br>
            &gt; &gt;<br>
            &gt; &gt; # Scribe additions to Kernel configuration<br>
            &gt; &gt;<br>
            &gt; &gt; FILESEXTRAPATHS_prepend :=
            "${FILE_DIRNAME}/files:"<br>
            &gt; &gt;<br>
            &gt; &gt; FILESEXTRAPATHS_prepend :=
            "${FILE_DIRNAME}/${PN}:"<br>
            &gt; &gt;<br>
            &gt; &gt; SRC_URI += "<a class="moz-txt-link-freetext" href="file://Scribe.scc">file://Scribe.scc</a> &lt;<a
              href="file:///%5C%5CScribe.scc" moz-do-not-send="true">file:///%5C%5CScribe.scc</a>&gt;"<br>
            &gt; &gt;<br>
            &gt; &gt; SRC_URI += "<a class="moz-txt-link-freetext" href="file://mcp251x.c.patch">file://mcp251x.c.patch</a> &lt;<a
              href="file:///%5C%5Cmcp251x.c.patch"
              moz-do-not-send="true">file:///%5C%5Cmcp251x.c.patch</a>&gt;"<br>
            &gt; &gt;<br>
            &gt; &gt; The Scribe.scc file:<br>
            &gt; &gt;<br>
            &gt; &gt; # Scribe additions to kernel configuration<br>
            &gt; &gt;<br>
            &gt; &gt; kconf hardware Scribe.cfg<br>
            &gt; &gt;<br>
            &gt; &gt; And the Scribe.cfg file:<br>
            &gt; &gt;<br>
            &gt; &gt; # Scribe additions to kernel configuration<br>
            &gt; &gt;<br>
            &gt; &gt; # Enable MAX9768<br>
            &gt; &gt;<br>
            &gt; &gt; #CONFIG_SOC_ALL_CODECS=m<br>
            &gt; &gt;<br>
            &gt; &gt; #CONFIG_COMPILE_TEST=y<br>
            &gt; &gt;<br>
            &gt; &gt; CONFIG_SND_SOC_MAX9768=y<br>
            &gt; &gt;<br>
            &gt; &gt; # Enable MAX11606<br>
            &gt; &gt;<br>
            &gt; &gt; #IIO=y<br>
            &gt; &gt;<br>
            &gt; &gt; CONFIG_MAX1363=m<br>
            &gt; &gt;<br>
            &gt; &gt; # Enable EMS CPC-USB<br>
            &gt; &gt;<br>
            &gt; &gt; CONFIG_CAN_EMS_USB=m<br>
            &gt; &gt;<br>
            &gt; &gt; Here is my directory tree:<br>
            &gt; &gt;<br>
            &gt; &gt; Qt-5.9.6<br>
            &gt; &gt;<br>
            &gt; &gt;       Yocto-mirror<br>
            &gt; &gt; # Yocto build mirror<br>
            &gt; &gt;<br>
            &gt; &gt;       Yocto-build-RPi3                           
                              #<br>
            &gt; &gt; Yocto build root<br>
            &gt; &gt;<br>
            &gt; &gt;                  build-raspberrypi               
                               #<br>
            &gt; &gt; build directory<br>
            &gt; &gt;<br>
            &gt; &gt;                  sources<br>
            &gt; &gt;   # yocto sources<br>
            &gt; &gt;<br>
            &gt; &gt;                         meta-sakura<br>
            &gt; &gt; # our recipes<br>
            &gt; &gt;<br>
            &gt; &gt;                                 recipes-kernel<br>
            &gt; &gt; # directory for kernel changes<br>
            &gt; &gt;<br>
            &gt; &gt;                                         linux<br>
            &gt; &gt;     # directory that contains
            linux-raspberrypi_4.4.bbappend<br>
            &gt; &gt;<br>
            &gt; &gt;                                               
            files<br>
            &gt; &gt;       # directory that contains .scc &amp; .cfg
            files<br>
            &gt; &gt;<br>
            &gt; &gt; As seen above none of the changes are accepted
            although there is<br>
            &gt; &gt; nothing that blocks any of them.<br>
            &gt; &gt;<br>
            &gt; &gt; Any help understanding this would be greatly
            appreciated.<br>
            &gt; &gt;<br>
            &gt; &gt; Regards,<br>
            &gt; &gt;<br>
            &gt; &gt; Greg Wilson-Lindberg<br>
            &gt; &gt;<br>
            &gt; &gt;<br>
            &gt; &gt;<br>
            <br>
            -- <br>
            _______________________________________________<br>
            yocto mailing list<br>
            <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
            <a href="https://lists.yoctoproject.org/listinfo/yocto"
              moz-do-not-send="true">https://lists.yoctoproject.org/listinfo/yocto</a><br>
          </div>
        </span></font>
    </blockquote>
    <p><br>
    </p>
  </body>
</html>

--------------048215331ACCA7539004C98D--
