Return-Path: <sean.liming@annabooks.com>
Received: from mail14c40.carrierzone.com (mail14c40.carrierzone.com
	[209.235.156.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABCACE0142C
	for <yocto@yoctoproject.org>; Tue, 13 Nov 2012 18:54:12 -0800 (PST)
X-Authenticated-User: sean.liming.annabooks.com
Received: from [10.0.0.211]
	(s66-76-248-226.chkmcmtc01.chckok.ok.sta.suddenlink.net
	[66.76.248.226] (may be forged)) (authenticated bits=0)
	by mail14c40.carrierzone.com (8.13.6/8.13.1) with ESMTP id
	qAE2s5sQ007627
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 14 Nov 2012 02:54:07 +0000
Message-ID: <50A307CD.1080801@annabooks.com>
Date: Tue, 13 Nov 2012 18:54:05 -0800
From: Sean Liming <sean.liming@annabooks.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121028 Thunderbird/16.0.2
MIME-Version: 1.0
To: "Zhang, Jessica" <jessica.zhang@intel.com>
References: <000301cdbe44$ace11c60$06a35520$@annabooks.com>
	<1FFB62CE8AEB0D4298B51122D8903E961672353D@IRSMSX104.ger.corp.intel.com>
	<000801cdbe98$853b87f0$8fb297d0$@annabooks.com>
	<1FFB62CE8AEB0D4298B51122D8903E96167235DC@IRSMSX104.ger.corp.intel.com>
	<000001cdbea3$68797770$396c6650$@annabooks.com>
	<000a01cdbeb7$f4fdaa90$def8ffb0$@annabooks.com>
	<C6510F6D410BB64A8C15398EDC6B847C46B3953A@ORSMSX101.amr.corp.intel.com>
	<003b01cdbef6$7d7c41e0$7874c5a0$@annabooks.com>
	<C6510F6D410BB64A8C15398EDC6B847C46B39968@ORSMSX101.amr.corp.intel.com>
	<50A1C135.6050105@annabooks.com>
	<C6510F6D410BB64A8C15398EDC6B847C46B3A4A7@ORSMSX101.amr.corp.intel.com>
In-Reply-To: <C6510F6D410BB64A8C15398EDC6B847C46B3A4A7@ORSMSX101.amr.corp.intel.com>
X-CSC: 0
X-CHA: v=1.1 cv=Umyp6kOqXXr8OAD/CyokRdnvZxekMwUtwR0dOfakl0A= c=1 sm=1
	a=Uyy7E1cbcwUA:10 a=22GXwuBOM20A:10 a=_DgR7O7FQkkA:10
	a=xkRxM2LhC82Hpm68dS0Xug==:17 a=IjdlZ_XXAAAA:8 a=iGHA9ds3AAAA:8
	a=QyXUC8HyAAAA:8 a=cwb2QqL7O5icPhIbMMAA:9 a=wPNLvfGTeEIA:10
	a=nHK3ipOpxeAA:10 a=FCaQVidmf_IA:10 a=DWcHd_tN-00A:10 a=PAfwrr6pMpkA:10
	a=XDKM753qmDAA:10 a=dGJ0OcVc7YAA:10 a=Ji-_HfFHn7L0SctP:21
	a=cjyuO2hSeR3FPOQv:21 a=Tfc1H6yMNVgtmk4C3cwA:9 a=UiCQ7L4-1S4A:10
	a=hTZeC7Yk6K0A:10 a=_W_S_7VecoQA:10 a=frz4AuCg-hUA:10
	a=HgdDCDyo_dIq0iUz:21 a=sRLPxWE4bTw13UiB:21 a=ACq1xryPPNWtH5bE:21
	a=xkRxM2LhC82Hpm68dS0Xug==:117
X-CTCH-Spam: Unknown
X-CTCH-RefID: str=0001.0A020204.50A307D1.0069, ss=1, re=0.000, recu=0.000,
	reip=0.000, cl=1, cld=1, fgs=0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Cannot Compile Application in Eclipse IDE Juno
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
X-List-Received-Date: Wed, 14 Nov 2012 02:54:13 -0000
Content-Type: multipart/alternative;
	boundary="------------070707080408000800070607"

--------------070707080408000800070607
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Jessica,

Yes, I created the same project. I went back, re-downloaded,  and re-set 
up Eclipse, and it looks like it is working with some warnings.

I am going to go back to x86. Thanks for the help.


-- 
Regards,

Sean D. Liming
Owner
Annabooks
Cell: 858-774-3176


On 11/13/2012 04:23 PM, Zhang, Jessica wrote:
>
> Hi Sean,
>
> I did the exact same step as you did and my helloworld project was 
> able to build using the Yocto ADT cross toolchain and sysroot, please 
> see the attached screenshot.  Btw, what project did you create?  I've 
> created File->New->C Project, make sure extend "Yocto Project ADT 
> Project" and select "Hello World ANSI C Autotools Project".  After 
> your project is created, highlight it and under Project menu you 
> should see "Change Yocto Project Settings" and verify that your 
> toolchain and sysroot there is also correct, which it should since it 
> by default inherit for your Preference settings.
>
> Thanks,
>
> Jessica
>
> *From:*Sean Liming [mailto:sean.liming@annabooks.com]
> *Sent:* Monday, November 12, 2012 7:41 PM
> *To:* Zhang, Jessica
> *Cc:* Georgescu, Alexandru C; yocto@yoctoproject.org
> *Subject:* Re: [yocto] Cannot Compile Application in Eclipse IDE Juno
>
>
> I left the conf file alone, and tried to build for ARM. Same result. 
> Attached is the ADT setup and the compile error I am seeing.
>
>
> -- 
> Regards,
>   
> Sean D. Liming
> Owner
> Annabooks
> Cell: 858-774-3176
>
>
> ADT preferences.jpeg
>
> JunoOutput.jpeg
>
>
>
> On 11/11/2012 09:42 PM, Zhang, Jessica wrote:
>
>     Hi Sean,
>
>     If you use adt-installer then the sysroot will be setup for you.
>     So you don't need to step 4 and 5.  BTW, you do need to take a
>     look of adt-installer.conf file to ensure the sysroot location is
>     what you'd expected and also, the image (core-image-sato-sdk) is
>     the one that's going to be extracted as sysroot.  Also, for
>     Eclipse, please make sure the toolchain and sysroot is matching
>     what you've used adt-installer to set them to.
>
>     Thanks,
>
>     Jessica
>
>     *From:*Sean Liming [mailto:sean.liming@annabooks.com]
>     *Sent:* Friday, November 09, 2012 7:50 PM
>     *To:* Zhang, Jessica; Georgescu, Alexandru C;
>     yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     *Subject:* RE: [yocto] Cannot Compile Application in Eclipse IDE Juno
>
>     Jessica,
>
>     Trying to follow two different documentations that reference each
>     other and a video on an older ADT and Eclipse versions is a bit of
>     a challenge to get things setup. I am testing different approaches
>     on my own in order to get a better understanding of what is going on.
>
>     So to be clear:
>
>     1.Download the ADT 1.3 installer
>
>     2.Extract the install, don't make any changes to the
>     adt-install.conf file -- just install the ARM
>
>     3.Run the ADT installer, which should install the tool chain
>
>     4.Download the core-image-sato-sdk 1.3 image
>
>     5.Use the runqemu-extract-sdk to extract to the sysroot defined by
>     ADT installer
>
>     6.Open Eclipse and point to the defaults
>
>     Is this correct?
>
>     Regards,
>
>     Sean Liming
>
>     Owner
>
>     Annabooks
>
>     Tel: 714-970-7523 / Cell: 858-774-3176
>
>     *From:*Zhang, Jessica [mailto:jessica.zhang@intel.com]
>     <mailto:[mailto:jessica.zhang@intel.com]>
>     *Sent:* Friday, November 09, 2012 1:19 PM
>     *To:* Sean Liming; Georgescu, Alexandru C; yocto@yoctoproject.org
>     <mailto:yocto@yoctoproject.org>
>     *Subject:* RE: [yocto] Cannot Compile Application in Eclipse IDE Juno
>
>     Hi Sean,
>
>     ADT support all 4 architectures (x86, arm, ppc and mips).  By
>     reading your steps on how did you set up your cross development
>     environment, seems there's confusion there. Can you stick with one
>     method at the time so it's easier for us to help on resolving your
>     issue?  Can you download the toolchain for 1.3 release and install
>     your toolchain using it?  For 1.3 we made toolchain relocatable,
>     so you should be able to install it to a meaningful place to you.
>
>     After install your toolchain, can you download our 1.3
>     core-image-sato-sdk image and extract it using runqemu-extract-sdk
>     and using the output directory as your sysroot in Eclipse.  And
>     see whether you can build the helloworld sample program.  If
>     everything works, that means your steps of setting up the
>     cross-development environment is correct.  Then you can switch to
>     your n450 image as sysroot and see whether there's problem.  If
>     so, we have to debug that issue.
>
>     Thanks,
>
>     Jessica
>
>     *From:*yocto-bounces@yoctoproject.org
>     <mailto:yocto-bounces@yoctoproject.org>
>     [mailto:yocto-bounces@yoctoproject.org] *On Behalf Of *Sean Liming
>     *Sent:* Friday, November 09, 2012 9:23 PM
>     *To:* Georgescu, Alexandru C; yocto@yoctoproject.org
>     <mailto:yocto@yoctoproject.org>
>     *Subject:* Re: [yocto] Cannot Compile Application in Eclipse IDE Juno
>
>     Is there a step I missed? Or is the ADT only for ARM at the moment?
>
>     Regards,
>
>     Sean Liming
>
>     Owner
>
>     Annabooks
>
>     Tel: 714-970-7523 / Cell: 858-774-3176
>
>     *From:*yocto-bounces@yoctoproject.org
>     <mailto:yocto-bounces@yoctoproject.org>
>     [mailto:yocto-bounces@yoctoproject.org]
>     <mailto:[mailto:yocto-bounces@yoctoproject.org]> *On Behalf Of
>     *Sean Liming
>     *Sent:* Friday, November 09, 2012 9:55 AM
>     *To:* 'Georgescu, Alexandru C'; yocto@yoctoproject.org
>     <mailto:yocto@yoctoproject.org>
>     *Subject:* Re: [yocto] Cannot Compile Application in Eclipse IDE Juno
>
>     I am using Intel Atom n450, not ARM. I have built three images
>     using atom-pc for the BSP and core-image-sato-dev,
>     core-image-sato, and core-image-sato-sdk for the base images. All
>     the images are in the build directory. Using Hob, I set the Build
>     Toolchain for each build to be x86_64 in the Advanced
>     configuration. The images build and run.
>
>     To setup the application development environment
>
>     1.Used Bitbake adt-installer -- the ADT installer was in the
>     tmp/deploy/sdk folder. (I also downloaded the ADT and extracted
>     the tarball with the same result.)
>
>     2.Extracted the ADT tarball.
>
>     3.Change the adt_intstaller.conf file to
>
>     YOCTOADT_TARGETS="x86_64"
>
>     QEMU and NFS are set to Y
>
>     YOCTOADT_ROOTFS_x86_64="sato-sdk"
>
>     YOCTOADT_TARGET_SYSROOT_IMAGE_ x86_64="sato-sdk"
>
>     YOCTOADT_TARGET_SYSROOT_LOC_ x86_64="$HOME/Yocto1.3/test-yocto/x86_64"
>
>     I commented out the other settings for the ARM.
>
>     4.Ran the ADT installer. It looks like the QEMU rootfs gets
>     installed in the $HOME/Yocto1.3/test-yocto/x86_64. As a test I
>     changed this out with the rootfs built from one of the images. In
>     either case the issue was the same
>
>     5.Installed Eclipse JUNO
>
>     6.Setup the Eclipse plugins per instructions
>
>     7.Setup the ADT parameters to point to the Toolchain Root Location
>     and Sysroot location. An error would occur if I don't get these right.
>
>     8.Created the applications and tried to compile with the errors.
>
>     Am I supposed to bitbake meta-ide-support?
>
>     Regards,
>
>     Sean Liming
>
>     Owner
>
>     Annabooks
>
>     Tel: 714-970-7523 / Cell: 858-774-3176
>
>     *From:*Georgescu, Alexandru C
>     [mailto:alexandru.c.georgescu@intel.com]
>     *Sent:* Friday, November 09, 2012 9:24 AM
>     *To:* Sean Liming; yocto@yoctoproject.org
>     <mailto:yocto@yoctoproject.org>
>     *Subject:* RE: [yocto] Cannot Compile Application in Eclipse IDE Juno
>
>     ADT installs by default not only the toolchain, but also the
>     sysroot (ADT have to be configured and installed by matching your
>     target architecture). It asks you where to install the tooclhain,
>     but the sysroot is installed by default in this location:
>     YOCTOADT_TARGET_SYSROOT_LOC_arm="$HOME/test-yocto/arm".
>
>     That parameter can be found in adt-installer/adt_installer.conf.
>
>     Basically, to deploy an app to your target using Eclipse, you have
>     to specify 3 parameters:
>
>      "Toolchain Root Location", "Sysroot location" and configure the
>     Target options.
>
>     Use the "Toolchain Root Location" as location where you have
>     installed the ADT, and the Sysroot Location as specified in the
>     adt_installer.conf. ADT needs the first two params in order to
>     build you app locally.
>
>     "runqemu-extract-sdk" is used to extract the qemu tarball that can
>     be used as sysroot location. More details about the ADT tools are
>     found at the same location:
>     http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html.
>
>     Regards,
>
>     *--*
>
>     *Alexandru Georgescu*
>
>     *From:*Sean Liming [mailto:sean.liming@annabooks.com]
>     *Sent:* Friday, November 09, 2012 18:38
>     *To:* Georgescu, Alexandru C; yocto@yoctoproject.org
>     <mailto:yocto@yoctoproject.org>
>     *Subject:* RE: [yocto] Cannot Compile Application in Eclipse IDE Juno
>
>     Do I have to use Qemu? Can I use my target's rootfs?
>
>     If I can use my target's rootfs, how do I extract the SDK?
>     runqemu-extract-sdk?
>
>     Regards,
>
>     Sean Liming
>
>     Owner
>
>     Annabooks
>
>     Tel: 714-970-7523 / Cell: 858-774-3176
>
>     *From:*Georgescu, Alexandru C
>     [mailto:alexandru.c.georgescu@intel.com]
>     <mailto:[mailto:alexandru.c.georgescu@intel.com]>
>     *Sent:* Friday, November 09, 2012 8:21 AM
>     *To:* yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     *Cc:* Sean Liming
>     *Subject:* RE: [yocto] Cannot Compile Application in Eclipse IDE Juno
>
>     Hi Sean,
>
>     There may be a problem with your sysroot setup. Please make sure
>     you have set it correctly by following the tutorial from here:
>     http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html#extracting-the-root-filesystem
>
>     Regards,
>
>     *--*
>
>     *Alexandru Georgescu*
>
>     *From:*yocto-bounces@yoctoproject.org
>     <mailto:yocto-bounces@yoctoproject.org>
>     [mailto:yocto-bounces@yoctoproject.org] *On Behalf Of *Sean Liming
>     *Sent:* Friday, November 09, 2012 08:37
>     *To:* yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>     *Subject:* [yocto] Cannot Compile Application in Eclipse IDE Juno
>
>     Yocto 1.3 Danny
>
>     Target: n450 Black Sand
>
>     Eclipse: Juno C/C++ Developers
>
>     After going through the steps to setup the ADT and Eclipse plugin,
>     I am trying to compile the Hello World application based on the
>     Hello World ANSI C Autotools Project type. I think I have the ADT
>     Preference set correctly. It is not complaining about a missing
>     tool chain.
>
>     Compiling results in errors:
>
>     Compiler cannot create executable in /home/sean/workspace/HelloADT
>     -- Configuration problem
>
>     Make *** No rules to make target 'all' -- C/C++ problem
>
>     What am I missing?
>
>     Regards,
>
>     Sean
>



--------------070707080408000800070607
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

<html>
  <head>
    <meta content="text/html; charset=ISO-8859-1"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <div class="moz-cite-prefix">Jessica,<br>
      <br>
      Yes, I created the same project. I went back, re-downloaded,&nbsp; and
      re-set up Eclipse, and it looks like it is working with some
      warnings. <br>
      <br>
      I am going to go back to x86. Thanks for the help.<br>
      <br>
      <br>
      <pre class="moz-signature" cols="72">-- 
Regards,

Sean D. Liming
Owner
Annabooks
Cell: 858-774-3176</pre>
      <br>
      On 11/13/2012 04:23 PM, Zhang, Jessica wrote:<br>
    </div>
    <blockquote
cite="mid:C6510F6D410BB64A8C15398EDC6B847C46B3A4A7@ORSMSX101.amr.corp.intel.com"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=ISO-8859-1">
      <meta name="Generator" content="Microsoft Word 14 (filtered
        medium)">
      <style><!--
/* Font Definitions */
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Tahoma;
	panose-1:2 11 6 4 3 5 4 4 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:SimSun;
	panose-1:2 1 6 0 3 1 1 1 1 1;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
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
	margin-right:0cm;
	mso-margin-bottom-alt:auto;
	margin-left:0cm;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	color:black;}
pre
	{mso-style-priority:99;
	mso-style-link:"HTML Preformatted Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:10.0pt;
	font-family:"Courier New";
	color:black;}
p.MsoAcetate, li.MsoAcetate, div.MsoAcetate
	{mso-style-priority:99;
	mso-style-link:"Balloon Text Char";
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:8.0pt;
	font-family:"Tahoma","sans-serif";
	color:black;}
p.MsoListParagraph, li.MsoListParagraph, div.MsoListParagraph
	{mso-style-priority:34;
	margin-top:0cm;
	margin-right:0cm;
	margin-bottom:0cm;
	margin-left:36.0pt;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri","sans-serif";
	color:black;}
span.HTMLPreformattedChar
	{mso-style-name:"HTML Preformatted Char";
	mso-style-priority:99;
	mso-style-link:"HTML Preformatted";
	font-family:"Consolas","serif";
	color:black;}
span.BalloonTextChar
	{mso-style-name:"Balloon Text Char";
	mso-style-priority:99;
	mso-style-link:"Balloon Text";
	font-family:"Tahoma","sans-serif";}
span.EmailStyle23
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:windowtext;}
span.EmailStyle24
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle25
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle26
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle27
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle28
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle29
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle30
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle31
	{mso-style-type:personal;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
span.EmailStyle32
	{mso-style-type:personal-reply;
	font-family:"Calibri","sans-serif";
	color:#1F497D;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-size:10.0pt;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:72.0pt 72.0pt 72.0pt 72.0pt;}
div.WordSection1
	{page:WordSection1;}
/* List Definitions */
@list l0
	{mso-list-id:842820700;
	mso-list-type:hybrid;
	mso-list-template-ids:-1868264150 67698703 67698713 67698715 67698703 67698713 67698715 67698703 67698713 67698715;}
@list l0:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l0:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l0:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1
	{mso-list-id:918292231;
	mso-list-type:hybrid;
	mso-list-template-ids:-1415145472 67698703 67698713 67698715 67698703 67698713 67698715 67698703 67698713 67698715;}
@list l1:level1
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level2
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level3
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level4
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level5
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level6
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
@list l1:level7
	{mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level8
	{mso-level-number-format:alpha-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:left;
	text-indent:-18.0pt;}
@list l1:level9
	{mso-level-number-format:roman-lower;
	mso-level-tab-stop:none;
	mso-level-number-position:right;
	text-indent:-9.0pt;}
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
        <p class="MsoNormal"><span style="color:#1F497D">Hi Sean,<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">I did the exact
            same step as you did and my helloworld project was able to
            build using the Yocto ADT cross toolchain and sysroot,
            please see the attached screenshot. &nbsp;Btw, what project did
            you create?&nbsp; I&#8217;ve created File-&gt;New-&gt;C Project, make
            sure extend &#8220;Yocto Project ADT Project&#8221; and select &#8220;Hello
            World ANSI C Autotools Project&#8221;.&nbsp; After your project is
            created, highlight it and under Project menu you should see
            &#8220;Change Yocto Project Settings&#8221; and verify that your
            toolchain and sysroot there is also correct, which it should
            since it by default inherit for your Preference settings.<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Thanks,<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D">Jessica<o:p></o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p>&nbsp;</o:p></span></p>
        <p class="MsoNormal"><span style="color:#1F497D"><o:p>&nbsp;</o:p></span></p>
        <div>
          <div style="border:none;border-top:solid #B5C4DF
            1.0pt;padding:3.0pt 0cm 0cm 0cm">
            <p class="MsoNormal"><b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">From:</span></b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;;color:windowtext">
                Sean Liming [<a class="moz-txt-link-freetext" href="mailto:sean.liming@annabooks.com">mailto:sean.liming@annabooks.com</a>]
                <br>
                <b>Sent:</b> Monday, November 12, 2012 7:41 PM<br>
                <b>To:</b> Zhang, Jessica<br>
                <b>Cc:</b> Georgescu, Alexandru C;
                <a class="moz-txt-link-abbreviated" href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
                <b>Subject:</b> Re: [yocto] Cannot Compile Application
                in Eclipse IDE Juno<o:p></o:p></span></p>
          </div>
        </div>
        <p class="MsoNormal"><o:p>&nbsp;</o:p></p>
        <div>
          <p class="MsoNormal"><br>
            I left the conf file alone, and tried to build for ARM. Same
            result. Attached is the ADT setup and the compile error I am
            seeing.<br>
            <br>
            <br>
            <o:p></o:p></p>
          <pre>-- <o:p></o:p></pre>
          <pre>Regards,<o:p></o:p></pre>
          <pre><o:p>&nbsp;</o:p></pre>
          <pre>Sean D. Liming<o:p></o:p></pre>
          <pre>Owner<o:p></o:p></pre>
          <pre>Annabooks<o:p></o:p></pre>
          <pre>Cell: 858-774-3176<o:p></o:p></pre>
          <p class="MsoNormal"><br>
            ADT preferences.jpeg <o:p></o:p></p>
          <p class="MsoNormal" style="text-align:center" align="center"><o:p>&nbsp;</o:p></p>
          <p><o:p>&nbsp;</o:p></p>
          <p class="MsoNormal">JunoOutput.jpeg <o:p></o:p></p>
          <p class="MsoNormal" style="text-align:center" align="center"><o:p>&nbsp;</o:p></p>
          <p class="MsoNormal"><br>
            <br>
            On 11/11/2012 09:42 PM, Zhang, Jessica wrote:<o:p></o:p></p>
        </div>
        <blockquote style="margin-top:5.0pt;margin-bottom:5.0pt">
          <p class="MsoNormal"><span style="color:#1F497D">Hi Sean,</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">If you use
              adt-installer then the sysroot will be setup for you. So
              you don&#8217;t need to step 4 and 5.&nbsp; BTW, you do need to take
              a look of adt-installer.conf file to ensure the sysroot
              location is what you&#8217;d expected and also, the image
              (core-image-sato-sdk) is the one that&#8217;s going to be
              extracted as sysroot. &nbsp;Also, for Eclipse, please make sure
              the toolchain and sysroot is matching what you&#8217;ve used
              adt-installer to set them to.</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Thanks,</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Jessica</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
          <div>
            <div style="border:none;border-top:solid #B5C4DF
              1.0pt;padding:3.0pt 0cm 0cm 0cm">
              <p class="MsoNormal"><b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
                  Sean Liming [<a moz-do-not-send="true"
                    href="mailto:sean.liming@annabooks.com">mailto:sean.liming@annabooks.com</a>]
                  <br>
                  <b>Sent:</b> Friday, November 09, 2012 7:50 PM<br>
                  <b>To:</b> Zhang, Jessica; Georgescu, Alexandru C; <a
                    moz-do-not-send="true"
                    href="mailto:yocto@yoctoproject.org">
                    yocto@yoctoproject.org</a><br>
                  <b>Subject:</b> RE: [yocto] Cannot Compile Application
                  in Eclipse IDE Juno</span><o:p></o:p></p>
            </div>
          </div>
          <p class="MsoNormal">&nbsp;<o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Jessica,</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Trying to
              follow two different documentations that reference each
              other and a video on an older ADT and Eclipse versions is
              a bit of a challenge to get things setup. I am testing
              different approaches on my own in order to get a better
              understanding of what is going on.</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">So to be
              clear:</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
          <p class="MsoListParagraph"
            style="text-indent:-18.0pt;mso-list:l1 level1 lfo2"><!--[if !supportLists]--><span
              style="mso-list:Ignore">1.<span style="font:7.0pt
                &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </span></span><!--[endif]--><span style="color:#1F497D">Download
              the ADT 1.3 installer</span><o:p></o:p></p>
          <p class="MsoListParagraph"
            style="text-indent:-18.0pt;mso-list:l1 level1 lfo2"><!--[if !supportLists]--><span
              style="mso-list:Ignore">2.<span style="font:7.0pt
                &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </span></span><!--[endif]--><span style="color:#1F497D">Extract
              the install, don&#8217;t make any changes to the
              adt-install.conf file &#8211; just install the ARM</span><o:p></o:p></p>
          <p class="MsoListParagraph"
            style="text-indent:-18.0pt;mso-list:l1 level1 lfo2"><!--[if !supportLists]--><span
              style="mso-list:Ignore">3.<span style="font:7.0pt
                &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </span></span><!--[endif]--><span style="color:#1F497D">Run
              the ADT installer, which should install the tool chain</span><o:p></o:p></p>
          <p class="MsoListParagraph"
            style="text-indent:-18.0pt;mso-list:l1 level1 lfo2"><!--[if !supportLists]--><span
              style="mso-list:Ignore">4.<span style="font:7.0pt
                &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </span></span><!--[endif]--><span style="color:#1F497D">Download
              the core-image-sato-sdk 1.3 image
            </span><o:p></o:p></p>
          <p class="MsoListParagraph"
            style="text-indent:-18.0pt;mso-list:l1 level1 lfo2"><!--[if !supportLists]--><span
              style="mso-list:Ignore">5.<span style="font:7.0pt
                &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </span></span><!--[endif]--><span style="color:#1F497D">Use
              the runqemu-extract-sdk to extract to the sysroot defined
              by ADT installer</span><o:p></o:p></p>
          <p class="MsoListParagraph"
            style="text-indent:-18.0pt;mso-list:l1 level1 lfo2"><!--[if !supportLists]--><span
              style="mso-list:Ignore">6.<span style="font:7.0pt
                &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              </span></span><!--[endif]--><span style="color:#1F497D">Open
              Eclipse and point to the defaults</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">Is this
              correct?</span><o:p></o:p></p>
          <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
          <div>
            <p class="MsoNormal"><span style="color:#1F497D">Regards,</span><o:p></o:p></p>
            <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
            <p class="MsoNormal"><span style="color:#1F497D">Sean Liming</span><o:p></o:p></p>
            <p class="MsoNormal"><span style="color:#1F497D">Owner</span><o:p></o:p></p>
            <p class="MsoNormal"><span style="color:#1F497D">Annabooks</span><o:p></o:p></p>
            <p class="MsoNormal"><span style="color:#1F497D">Tel:
                714-970-7523 / Cell: 858-774-3176</span><o:p></o:p></p>
          </div>
          <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
          <div style="border:none;border-left:solid blue
            1.5pt;padding:0cm 0cm 0cm 4.0pt">
            <div>
              <div style="border:none;border-top:solid #B5C4DF
                1.0pt;padding:3.0pt 0cm 0cm 0cm">
                <p class="MsoNormal"><b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
                    Zhang, Jessica
                    <a moz-do-not-send="true"
                      href="mailto:[mailto:jessica.zhang@intel.com]">[mailto:jessica.zhang@intel.com]</a>
                    <br>
                    <b>Sent:</b> Friday, November 09, 2012 1:19 PM<br>
                    <b>To:</b> Sean Liming; Georgescu, Alexandru C; <a
                      moz-do-not-send="true"
                      href="mailto:yocto@yoctoproject.org">
                      yocto@yoctoproject.org</a><br>
                    <b>Subject:</b> RE: [yocto] Cannot Compile
                    Application in Eclipse IDE Juno</span><o:p></o:p></p>
              </div>
            </div>
            <p class="MsoNormal">&nbsp;<o:p></o:p></p>
            <p class="MsoNormal"><span style="color:#1F497D">Hi Sean,</span><o:p></o:p></p>
            <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
            <p class="MsoNormal"><span style="color:#1F497D">ADT support
                all 4 architectures (x86, arm, ppc and mips).&nbsp; By
                reading your steps on how did you set up your cross
                development environment, seems there&#8217;s confusion there.&nbsp;
                Can you stick with one method at the time so it&#8217;s easier
                for us to help on resolving your issue?&nbsp; Can you
                download the toolchain for 1.3 release and install your
                toolchain using it?&nbsp; For 1.3 we made toolchain
                relocatable, so you should be able to install it to a
                meaningful place to you.&nbsp;
              </span><o:p></o:p></p>
            <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
            <p class="MsoNormal"><span style="color:#1F497D">After
                install your toolchain, can you download our 1.3
                core-image-sato-sdk image and extract it using
                runqemu-extract-sdk and using the output directory as
                your sysroot in Eclipse.&nbsp; And see whether you can build
                the helloworld sample program.&nbsp; If everything works,
                that means your steps of setting up the
                cross-development environment is correct.&nbsp; Then you can
                switch to your n450 image as sysroot and see whether
                there&#8217;s problem.&nbsp; If so, we have to debug that issue.</span><o:p></o:p></p>
            <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
            <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
            <p class="MsoNormal"><span style="color:#1F497D">Thanks,</span><o:p></o:p></p>
            <p class="MsoNormal"><span style="color:#1F497D">Jessica</span><o:p></o:p></p>
            <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
            <div>
              <div style="border:none;border-top:solid #B5C4DF
                1.0pt;padding:3.0pt 0cm 0cm 0cm">
                <p class="MsoNormal"><b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
                    <a moz-do-not-send="true"
                      href="mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a>
                    [<a moz-do-not-send="true"
                      href="mailto:yocto-bounces@yoctoproject.org">mailto:yocto-bounces@yoctoproject.org</a>]
                    <b>On Behalf Of </b>Sean Liming<br>
                    <b>Sent:</b> Friday, November 09, 2012 9:23 PM<br>
                    <b>To:</b> Georgescu, Alexandru C; <a
                      moz-do-not-send="true"
                      href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
                    <b>Subject:</b> Re: [yocto] Cannot Compile
                    Application in Eclipse IDE Juno</span><o:p></o:p></p>
              </div>
            </div>
            <p class="MsoNormal">&nbsp;<o:p></o:p></p>
            <p class="MsoNormal"><span style="color:#1F497D">Is there a
                step I missed? Or is the ADT only for ARM at the moment?</span><o:p></o:p></p>
            <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
            <div>
              <p class="MsoNormal"><span style="color:#1F497D">Regards,</span><o:p></o:p></p>
              <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
              <p class="MsoNormal"><span style="color:#1F497D">Sean
                  Liming</span><o:p></o:p></p>
              <p class="MsoNormal"><span style="color:#1F497D">Owner</span><o:p></o:p></p>
              <p class="MsoNormal"><span style="color:#1F497D">Annabooks</span><o:p></o:p></p>
              <p class="MsoNormal"><span style="color:#1F497D">Tel:
                  714-970-7523 / Cell: 858-774-3176</span><o:p></o:p></p>
            </div>
            <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
            <div style="border:none;border-left:solid blue
              1.5pt;padding:0cm 0cm 0cm 4.0pt">
              <div>
                <div style="border:none;border-top:solid #B5C4DF
                  1.0pt;padding:3.0pt 0cm 0cm 0cm">
                  <p class="MsoNormal"><b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
                      <a moz-do-not-send="true"
                        href="mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a>
                      <a moz-do-not-send="true"
                        href="mailto:[mailto:yocto-bounces@yoctoproject.org]">[mailto:yocto-bounces@yoctoproject.org]</a>
                      <b>On Behalf Of </b>Sean Liming<br>
                      <b>Sent:</b> Friday, November 09, 2012 9:55 AM<br>
                      <b>To:</b> 'Georgescu, Alexandru C'; <a
                        moz-do-not-send="true"
                        href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
                      <b>Subject:</b> Re: [yocto] Cannot Compile
                      Application in Eclipse IDE Juno</span><o:p></o:p></p>
                </div>
              </div>
              <p class="MsoNormal">&nbsp;<o:p></o:p></p>
              <p class="MsoNormal"><span style="color:#1F497D">I am
                  using Intel Atom n450, not ARM. I have built three
                  images using atom-pc for the BSP and
                  core-image-sato-dev, core-image-sato, and
                  core-image-sato-sdk for the base images. All the
                  images are in the build directory. Using Hob, I set
                  the Build Toolchain for each build to be x86_64 in the
                  Advanced configuration. The images build and run.</span><o:p></o:p></p>
              <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
              <p class="MsoNormal"><span style="color:#1F497D">To setup
                  the application development environment</span><o:p></o:p></p>
              <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
              <p class="MsoListParagraph"
                style="text-indent:-18.0pt;mso-list:l0 level1 lfo4"><!--[if !supportLists]--><span
                  style="mso-list:Ignore">1.<span style="font:7.0pt
                    &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  </span></span><!--[endif]--><span
                  style="color:#1F497D">Used Bitbake adt-installer &#8211; the
                  ADT installer was in the tmp/deploy/sdk folder. (I
                  also downloaded the ADT and extracted the tarball with
                  the same result.)</span><o:p></o:p></p>
              <p class="MsoListParagraph"
                style="text-indent:-18.0pt;mso-list:l0 level1 lfo4"><!--[if !supportLists]--><span
                  style="mso-list:Ignore">2.<span style="font:7.0pt
                    &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  </span></span><!--[endif]--><span
                  style="color:#1F497D">Extracted the ADT tarball.</span><o:p></o:p></p>
              <p class="MsoListParagraph"
                style="text-indent:-18.0pt;mso-list:l0 level1 lfo4"><!--[if !supportLists]--><span
                  style="mso-list:Ignore">3.<span style="font:7.0pt
                    &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  </span></span><!--[endif]--><span
                  style="color:#1F497D">Change the adt_intstaller.conf
                  file to
                </span><o:p></o:p></p>
              <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
              <p class="MsoNormal"><span style="color:#1F497D">YOCTOADT_TARGETS=&#8221;x86_64&#8221;</span><o:p></o:p></p>
              <p class="MsoNormal"><span style="color:#1F497D">QEMU and
                  NFS are set to Y</span><o:p></o:p></p>
              <p class="MsoNormal"><span style="color:#1F497D">YOCTOADT_ROOTFS_x86_64=&#8221;sato-sdk&#8221;</span><o:p></o:p></p>
              <p class="MsoNormal"><span style="color:#1F497D">YOCTOADT_TARGET_SYSROOT_IMAGE_
                  x86_64=&#8221;sato-sdk&#8221;</span><o:p></o:p></p>
              <p class="MsoNormal"><span style="color:#1F497D">YOCTOADT_TARGET_SYSROOT_LOC_
                  x86_64=&#8221;$HOME/Yocto1.3/test-yocto/x86_64&#8221;</span><o:p></o:p></p>
              <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
              <p class="MsoNormal"><span style="color:#1F497D">I
                  commented out the other settings for the ARM.</span><o:p></o:p></p>
              <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
              <p class="MsoListParagraph"
                style="text-indent:-18.0pt;mso-list:l0 level1 lfo4"><!--[if !supportLists]--><span
                  style="mso-list:Ignore">4.<span style="font:7.0pt
                    &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  </span></span><!--[endif]--><span
                  style="color:#1F497D">Ran the ADT installer. It looks
                  like the QEMU rootfs gets installed in the
                  $HOME/Yocto1.3/test-yocto/x86_64. As a test I changed
                  this out with the rootfs built from one of the images.
                  In either case the issue was the same</span><o:p></o:p></p>
              <p class="MsoListParagraph"
                style="text-indent:-18.0pt;mso-list:l0 level1 lfo4"><!--[if !supportLists]--><span
                  style="mso-list:Ignore">5.<span style="font:7.0pt
                    &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  </span></span><!--[endif]--><span
                  style="color:#1F497D">Installed Eclipse JUNO</span><o:p></o:p></p>
              <p class="MsoListParagraph"
                style="text-indent:-18.0pt;mso-list:l0 level1 lfo4"><!--[if !supportLists]--><span
                  style="mso-list:Ignore">6.<span style="font:7.0pt
                    &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  </span></span><!--[endif]--><span
                  style="color:#1F497D">Setup the Eclipse plugins per
                  instructions</span><o:p></o:p></p>
              <p class="MsoListParagraph"
                style="text-indent:-18.0pt;mso-list:l0 level1 lfo4"><!--[if !supportLists]--><span
                  style="mso-list:Ignore">7.<span style="font:7.0pt
                    &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  </span></span><!--[endif]--><span
                  style="color:#1F497D">Setup the ADT parameters to
                  point to the Toolchain Root Location and Sysroot
                  location. An error would occur if I don&#8217;t get these
                  right.</span><o:p></o:p></p>
              <p class="MsoListParagraph"
                style="text-indent:-18.0pt;mso-list:l0 level1 lfo4"><!--[if !supportLists]--><span
                  style="mso-list:Ignore">8.<span style="font:7.0pt
                    &quot;Times New Roman&quot;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                  </span></span><!--[endif]--><span
                  style="color:#1F497D">Created the applications and
                  tried to compile with the errors.</span><o:p></o:p></p>
              <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
              <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
              <p class="MsoNormal"><span style="color:#1F497D">Am I
                  supposed to bitbake meta-ide-support?</span><o:p></o:p></p>
              <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
              <div>
                <p class="MsoNormal"><span style="color:#1F497D">Regards,</span><o:p></o:p></p>
                <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
                <p class="MsoNormal"><span style="color:#1F497D">Sean
                    Liming</span><o:p></o:p></p>
                <p class="MsoNormal"><span style="color:#1F497D">Owner</span><o:p></o:p></p>
                <p class="MsoNormal"><span style="color:#1F497D">Annabooks</span><o:p></o:p></p>
                <p class="MsoNormal"><span style="color:#1F497D">Tel:
                    714-970-7523 / Cell: 858-774-3176</span><o:p></o:p></p>
              </div>
              <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
              <div style="border:none;border-left:solid blue
                1.5pt;padding:0cm 0cm 0cm 4.0pt">
                <div>
                  <div style="border:none;border-top:solid #B5C4DF
                    1.0pt;padding:3.0pt 0cm 0cm 0cm">
                    <p class="MsoNormal"><b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
                        Georgescu, Alexandru C [<a
                          moz-do-not-send="true"
                          href="mailto:alexandru.c.georgescu@intel.com">mailto:alexandru.c.georgescu@intel.com</a>]
                        <br>
                        <b>Sent:</b> Friday, November 09, 2012 9:24 AM<br>
                        <b>To:</b> Sean Liming; <a
                          moz-do-not-send="true"
                          href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
                        <b>Subject:</b> RE: [yocto] Cannot Compile
                        Application in Eclipse IDE Juno</span><o:p></o:p></p>
                  </div>
                </div>
                <p class="MsoNormal">&nbsp;<o:p></o:p></p>
                <p class="MsoNormal"><span style="color:#1F497D">ADT
                    installs by default not only the toolchain, but also
                    the sysroot (ADT have to be configured and installed
                    by matching your target architecture). It asks you
                    where to install the tooclhain, but the sysroot is
                    installed by default in this location:
                    YOCTOADT_TARGET_SYSROOT_LOC_arm="$HOME/test-yocto/arm".</span><o:p></o:p></p>
                <p class="MsoNormal"><span style="color:#1F497D">That
                    parameter can be found in
                    adt-installer/adt_installer.conf.</span><o:p></o:p></p>
                <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
                <p class="MsoNormal"><span style="color:#1F497D">Basically,
                    to deploy an app to your target using Eclipse, you
                    have to specify 3 parameters:
                  </span><o:p></o:p></p>
                <p class="MsoNormal" style="text-indent:36.0pt"><span
                    style="color:#1F497D">&nbsp;&#8220;Toolchain Root Location&#8221;,
                    &#8220;Sysroot location&#8221; and configure the Target options.</span><o:p></o:p></p>
                <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
                <p class="MsoNormal"><span style="color:#1F497D">Use the
                    &#8220;Toolchain Root Location&#8221; as location where you have
                    installed the ADT, and the Sysroot Location as
                    specified in the adt_installer.conf. ADT needs the
                    first two params in order to build you app locally.
                  </span><o:p></o:p></p>
                <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
                <p class="MsoNormal"><span style="color:#1F497D">&#8220;runqemu-extract-sdk&#8221;
                    is used to extract the qemu tarball that can be used
                    as sysroot location. More details about the ADT
                    tools are found at the same location:
                  </span><a moz-do-not-send="true"
href="http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html">http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html</a>.<o:p></o:p></p>
                <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
                <p class="MsoNormal"><span style="color:#1F497D">Regards,</span><o:p></o:p></p>
                <div>
                  <p class="MsoNormal"><b><span
                        style="font-size:8.0pt;color:#7F7F7F">--</span></b><o:p></o:p></p>
                  <p class="MsoNormal"><b><span
                        style="font-size:8.0pt;color:#7F7F7F">Alexandru
                        Georgescu</span></b><o:p></o:p></p>
                </div>
                <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
                <div>
                  <div style="border:none;border-top:solid #B5C4DF
                    1.0pt;padding:3.0pt 0cm 0cm 0cm">
                    <p class="MsoNormal"><b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
                        Sean Liming [<a moz-do-not-send="true"
                          href="mailto:sean.liming@annabooks.com">mailto:sean.liming@annabooks.com</a>]
                        <br>
                        <b>Sent:</b> Friday, November 09, 2012 18:38<br>
                        <b>To:</b> Georgescu, Alexandru C; <a
                          moz-do-not-send="true"
                          href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
                        <b>Subject:</b> RE: [yocto] Cannot Compile
                        Application in Eclipse IDE Juno</span><o:p></o:p></p>
                  </div>
                </div>
                <p class="MsoNormal">&nbsp;<o:p></o:p></p>
                <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
                <p class="MsoNormal"><span style="color:#1F497D">Do I
                    have to use Qemu? Can I use my target&#8217;s rootfs?
                  </span><o:p></o:p></p>
                <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
                <p class="MsoNormal"><span style="color:#1F497D">If I
                    can use my target&#8217;s rootfs, how do I extract the
                    SDK? runqemu-extract-sdk?</span><o:p></o:p></p>
                <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
                <div>
                  <p class="MsoNormal"><span style="color:#1F497D">Regards,</span><o:p></o:p></p>
                  <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
                  <p class="MsoNormal"><span style="color:#1F497D">Sean
                      Liming</span><o:p></o:p></p>
                  <p class="MsoNormal"><span style="color:#1F497D">Owner</span><o:p></o:p></p>
                  <p class="MsoNormal"><span style="color:#1F497D">Annabooks</span><o:p></o:p></p>
                  <p class="MsoNormal"><span style="color:#1F497D">Tel:
                      714-970-7523 / Cell: 858-774-3176</span><o:p></o:p></p>
                </div>
                <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
                <div style="border:none;border-left:solid blue
                  1.5pt;padding:0cm 0cm 0cm 4.0pt">
                  <div>
                    <div style="border:none;border-top:solid #B5C4DF
                      1.0pt;padding:3.0pt 0cm 0cm 0cm">
                      <p class="MsoNormal"><b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
                          Georgescu, Alexandru C
                          <a moz-do-not-send="true"
                            href="mailto:[mailto:alexandru.c.georgescu@intel.com]">[mailto:alexandru.c.georgescu@intel.com]</a>
                          <br>
                          <b>Sent:</b> Friday, November 09, 2012 8:21 AM<br>
                          <b>To:</b> <a moz-do-not-send="true"
                            href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
                          <b>Cc:</b> Sean Liming<br>
                          <b>Subject:</b> RE: [yocto] Cannot Compile
                          Application in Eclipse IDE Juno</span><o:p></o:p></p>
                    </div>
                  </div>
                  <p class="MsoNormal">&nbsp;<o:p></o:p></p>
                  <p class="MsoNormal"><span style="color:#1F497D">Hi
                      Sean,</span><o:p></o:p></p>
                  <p class="MsoNormal"><span style="color:#1F497D">There
                      may be a problem with your sysroot setup. Please
                      make sure you have set it correctly by following
                      the tutorial from here:
                      <a moz-do-not-send="true"
href="http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html#extracting-the-root-filesystem">http://www.yoctoproject.org/docs/current/adt-manual/adt-manual.html#extracting-the-root-filesystem</a></span><o:p></o:p></p>
                  <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
                  <p class="MsoNormal"><span style="color:#1F497D">Regards,</span><o:p></o:p></p>
                  <div>
                    <p class="MsoNormal"><b><span
                          style="font-size:8.0pt;color:#7F7F7F">--</span></b><o:p></o:p></p>
                    <p class="MsoNormal"><b><span
                          style="font-size:8.0pt;color:#7F7F7F">Alexandru
                          Georgescu</span></b><o:p></o:p></p>
                  </div>
                  <p class="MsoNormal"><span style="color:#1F497D">&nbsp;</span><o:p></o:p></p>
                  <div>
                    <div style="border:none;border-top:solid #B5C4DF
                      1.0pt;padding:3.0pt 0cm 0cm 0cm">
                      <p class="MsoNormal"><b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span
style="font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">
                          <a moz-do-not-send="true"
                            href="mailto:yocto-bounces@yoctoproject.org">yocto-bounces@yoctoproject.org</a>
                          [<a moz-do-not-send="true"
                            href="mailto:yocto-bounces@yoctoproject.org">mailto:yocto-bounces@yoctoproject.org</a>]
                          <b>On Behalf Of </b>Sean Liming<br>
                          <b>Sent:</b> Friday, November 09, 2012 08:37<br>
                          <b>To:</b> <a moz-do-not-send="true"
                            href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
                          <b>Subject:</b> [yocto] Cannot Compile
                          Application in Eclipse IDE Juno</span><o:p></o:p></p>
                    </div>
                  </div>
                  <p class="MsoNormal">&nbsp;<o:p></o:p></p>
                  <p class="MsoNormal">&nbsp;<o:p></o:p></p>
                  <p class="MsoNormal">Yocto 1.3 Danny<o:p></o:p></p>
                  <p class="MsoNormal">Target: n450 Black Sand<o:p></o:p></p>
                  <p class="MsoNormal">Eclipse: Juno C/C++ Developers<o:p></o:p></p>
                  <p class="MsoNormal">&nbsp;<o:p></o:p></p>
                  <p class="MsoNormal">After going through the steps to
                    setup the ADT and Eclipse plugin, I am trying to
                    compile the Hello World application based on the
                    Hello World ANSI C Autotools Project type. I think I
                    have the ADT Preference set correctly. It is not
                    complaining about a missing tool chain.<o:p></o:p></p>
                  <p class="MsoNormal">&nbsp;<o:p></o:p></p>
                  <p class="MsoNormal">Compiling results in errors:<o:p></o:p></p>
                  <p class="MsoNormal">&nbsp;<o:p></o:p></p>
                  <p class="MsoNormal">Compiler cannot create executable
                    in /home/sean/workspace/HelloADT &#8211; Configuration
                    problem<o:p></o:p></p>
                  <p class="MsoNormal">Make *** No rules to make target
                    &#8216;all&#8217; &#8211; C/C++ problem<o:p></o:p></p>
                  <p class="MsoNormal">&nbsp;<o:p></o:p></p>
                  <p class="MsoNormal">What am I missing?<o:p></o:p></p>
                  <p class="MsoNormal">&nbsp;<o:p></o:p></p>
                  <p class="MsoNormal">Regards,<o:p></o:p></p>
                  <p class="MsoNormal">&nbsp;<o:p></o:p></p>
                  <p class="MsoNormal">Sean <o:p></o:p></p>
                  <p class="MsoNormal">&nbsp;<o:p></o:p></p>
                </div>
              </div>
            </div>
          </div>
        </blockquote>
        <p class="MsoNormal" style="margin-bottom:12.0pt"><span
            style="font-size:12.0pt;font-family:&quot;Times New
            Roman&quot;,&quot;serif&quot;"><o:p>&nbsp;</o:p></span></p>
      </div>
    </blockquote>
    <br>
    <br>
  </body>
</html>

--------------070707080408000800070607--
