Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 09BEBE0098A; Tue, 21 Jun 2016 07:03:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2205E00972
	for <yocto@yoctoproject.org>; Tue, 21 Jun 2016 07:03:03 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga103.fm.intel.com with ESMTP; 21 Jun 2016 07:02:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,504,1459839600"; 
	d="scan'208,217";a="1006682554"
Received: from lsandov1-mobl2.zpn.intel.com (HELO [10.219.5.155])
	([10.219.5.155])
	by fmsmga002.fm.intel.com with ESMTP; 21 Jun 2016 07:02:45 -0700
To: "Anicic Damir (PSI)" <damir.anicic@psi.ch>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <DB23C91B06C303459B24BC3208AF424A20F4CF40@MBX214.d.ethz.ch>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Message-ID: <a2cff31a-909e-988c-562b-29289f8c79c9@linux.intel.com>
Date: Tue, 21 Jun 2016 09:04:48 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.1.1
MIME-Version: 1.0
In-Reply-To: <DB23C91B06C303459B24BC3208AF424A20F4CF40@MBX214.d.ethz.ch>
Subject: Re: Yocto 2.1 perl problem
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
X-List-Received-Date: Tue, 21 Jun 2016 14:03:07 -0000
Content-Type: multipart/alternative;
	boundary="------------5E04D21BE902F95C2286A5F5"

--------------5E04D21BE902F95C2286A5F5
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Some basic approach: Try cleaning the target (perl, in this case) and 
build again.


$ bitbake -c cleansstate perl & bitbake perl


On 06/21/2016 08:00 AM, Anicic Damir (PSI) wrote:
> Hi!
>
> Suddenly perl does not build any more (I did not have the problem in 
> last two weeks).
> I did not change anything (my humble bitbake understanding) about perl.
>
> =====================================================================
> Build Configuration:
> BB_VERSION        = "1.30.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "universal"
> TARGET_SYS        = "powerpc64-poky-linux"
> MACHINE           = "powerpc64-ppc64e6500"
> DISTRO            = "gfa-ppc64e6500"
> DISTRO_VERSION    = "2.1"
> TUNE_FEATURES     = "m64 fpu-hard e6500 altivec"
> TARGET_FPU        = ""
> meta
> meta-poky
> meta-yocto-bsp
> meta-gfa          = "krogoth:4376fb851791a1fb514873ad239d516dd7159341"
>
> NOTE: Preparing RunQueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: perl-5.22.1-r0 do_package: objcopy failed with exit code 256 
> (cmd was 'powerpc64-poky-linux-objcopy' --only-keep-debug 
> '/home/anicic/yocto-2.1-all/build/ppc64e6500/tmp/work/ppc64e6500-poky-linux/perl/5.22.1-r0/package/usr/lib64/perl/ptest/generate_uudmap' 
> '/home/anicic/yocto-2.1-all/build/ppc64e6500/tmp/work/ppc64e6500-poky-linux/perl/5.22.1-r0/package/usr/lib64/perl/ptest/.debug/generate_uudmap'):
> powerpc64-poky-linux-objcopy: Unable to recognise the format of the 
> input file 
> `/home/anicic/yocto-2.1-all/build/ppc64e6500/tmp/work/ppc64e6500-poky-linux/perl/5.22.1-r0/package/usr/lib64/perl/ptest/generate_uudmap'
> ERROR: perl-5.22.1-r0 do_package: Function failed: split_and_strip_files
> ERROR: Logfile of failure stored in: 
> /home/anicic/yocto-2.1-all/build/ppc64e6500/tmp/work/ppc64e6500-poky-linux/perl/5.22.1-r0/temp/log.do_package.21205
> ERROR: Task 1691 
> (/home/anicic/yocto-2.1-all/poky/meta/recipes-devtools/perl/perl_5.22.1.bb, 
> do_package) failed with exit code '1'
> =====================================================================
>
> The problem seems to be that
> /home/anicic/yocto-2.1-all/build/ppc64e6500/tmp/work/ppc64e6500-poky-linux/perl/5.22.1-r0/package/usr/lib64/perl/ptest/generate_uudmap
> is built for host "ELF 64-bit LSB executable, x86-64"
> instead of target "64-bit PowerPC or cisco 7500"
>
> What could it be?
>
> Damir
>
>
>


--------------5E04D21BE902F95C2286A5F5
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    <p>Some basic approach: Try cleaning the target (perl, in this case)
      and build again.</p>
    <p><br>
    </p>
    <p>$ bitbake -c cleansstate perl &amp; bitbake perl<br>
    </p>
    <br>
    <div class="moz-cite-prefix">On 06/21/2016 08:00 AM, Anicic Damir
      (PSI) wrote:<br>
    </div>
    <blockquote
      cite="mid:DB23C91B06C303459B24BC3208AF424A20F4CF40@MBX214.d.ethz.ch"
      type="cite">
      <meta http-equiv="Content-Type" content="text/html;
        charset=windows-1252">
      <style id="owaParaStyle" type="text/css">P {margin-top:0;margin-bottom:0;}</style>
      <div style="direction: ltr;font-family: Tahoma;color:
        #000000;font-size: 10pt;">Hi!<br>
        <br>
        Suddenly perl does not build any more (I did not have the
        problem in last two weeks).<br>
        I did not change anything (my humble bitbake understanding)
        about perl.<br>
        <br>
=====================================================================<br>
        Build Configuration:<br>
        BB_VERSION        = "1.30.0"<br>
        BUILD_SYS         = "x86_64-linux"<br>
        NATIVELSBSTRING   = "universal"<br>
        TARGET_SYS        = "powerpc64-poky-linux"<br>
        MACHINE           = "powerpc64-ppc64e6500"<br>
        DISTRO            = "gfa-ppc64e6500"<br>
        DISTRO_VERSION    = "2.1"<br>
        TUNE_FEATURES     = "m64 fpu-hard e6500 altivec"<br>
        TARGET_FPU        = ""<br>
        meta              <br>
        meta-poky         <br>
        meta-yocto-bsp    <br>
        meta-gfa          =
        "krogoth:4376fb851791a1fb514873ad239d516dd7159341"<br>
        <br>
        NOTE: Preparing RunQueue<br>
        NOTE: Executing SetScene Tasks<br>
        NOTE: Executing RunQueue Tasks<br>
        ERROR: perl-5.22.1-r0 do_package: objcopy failed with exit code
        256 (cmd was 'powerpc64-poky-linux-objcopy' --only-keep-debug
'/home/anicic/yocto-2.1-all/build/ppc64e6500/tmp/work/ppc64e6500-poky-linux/perl/5.22.1-r0/package/usr/lib64/perl/ptest/generate_uudmap'
'/home/anicic/yocto-2.1-all/build/ppc64e6500/tmp/work/ppc64e6500-poky-linux/perl/5.22.1-r0/package/usr/lib64/perl/ptest/.debug/generate_uudmap'):<br>
        powerpc64-poky-linux-objcopy: Unable to recognise the format of
        the input file
`/home/anicic/yocto-2.1-all/build/ppc64e6500/tmp/work/ppc64e6500-poky-linux/perl/5.22.1-r0/package/usr/lib64/perl/ptest/generate_uudmap'<br>
        ERROR: perl-5.22.1-r0 do_package: Function failed:
        split_and_strip_files<br>
        ERROR: Logfile of failure stored in:
/home/anicic/yocto-2.1-all/build/ppc64e6500/tmp/work/ppc64e6500-poky-linux/perl/5.22.1-r0/temp/log.do_package.21205<br>
        ERROR: Task 1691
(/home/anicic/yocto-2.1-all/poky/meta/recipes-devtools/perl/perl_5.22.1.bb,
        do_package) failed with exit code '1'<br>
=====================================================================<br>
        <br>
        The problem seems to be that <br>
/home/anicic/yocto-2.1-all/build/ppc64e6500/tmp/work/ppc64e6500-poky-linux/perl/5.22.1-r0/package/usr/lib64/perl/ptest/generate_uudmap<br>
        is built for host "ELF 64-bit LSB executable, x86-64"<br>
        instead of target "64-bit PowerPC or cisco 7500"<br>
        <br>
        What could it be?<br>
        <br>
        Damir<br>
        <br>
      </div>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------5E04D21BE902F95C2286A5F5--
