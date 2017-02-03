Return-Path: <andras@tantosonline.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 443A4E0052B; Fri,  3 Feb 2017 14:53:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE,TO_NO_BRKTS_PCNT autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [96.114.154.168 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  2.5 TO_NO_BRKTS_PCNT To: lacks brackets + percentage
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Fri, 03 Feb 2017 14:53:13 PST
Received: from resqmta-po-09v.sys.comcast.net (resqmta-po-09v.sys.comcast.net
	[96.114.154.168])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FD2CE004D2
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 14:53:13 -0800 (PST)
Received: from resomta-po-02v.sys.comcast.net ([96.114.154.226])
	by resqmta-po-09v.sys.comcast.net with SMTP
	id ZmiBc3EwU3kZMZmiCciYO5; Fri, 03 Feb 2017 22:52:12 +0000
Received: from kakukkfu.nl.home ([76.28.198.67])
	by resomta-po-02v.sys.comcast.net with SMTP
	id ZmiBcfzh6k3bxZmiCcUiPB; Fri, 03 Feb 2017 22:52:12 +0000
Received: from [10.60.16.43] (unknown [192.31.242.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by kakukkfu.nl.home (Postfix) with ESMTPSA id 17A5E440029
	for <yocto@yoctoproject.org>; Fri,  3 Feb 2017 14:55:32 -0800 (PST)
To: yocto@yoctoproject.org
From: Andras Tantos <andras@tantosonline.com>
Message-ID: <43debf33-b22d-2838-fcc3-286bc837e015@tantosonline.com>
Date: Fri, 3 Feb 2017 14:52:10 -0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
X-CMAE-Envelope: MS4wfOKqzcJmTYULXnzD2gM6TzF8yxAwYjTH8wxAZ8bnnZvZUgwuOSVJw15QGzj9wUaDsEflztsi+j825jVwXBdlZwXBUZ/B68rA8gQWvtyGZd5xKE68ByDk
	G/zjPLUJ5liE6rs/qimvohV4p2xHm/F1jHA3IQy2MrBSWp6VpXFM1Re+nuz5BUsQeJeZyHcSxyApkA==
Subject: Problem building glibc-locale
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
X-List-Received-Date: Fri, 03 Feb 2017 22:53:15 -0000
Content-Type: multipart/alternative;
	boundary="------------46ADFB37A38A0A580B60A315"

--------------46ADFB37A38A0A580B60A315
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi all,

I'm trying to build glibc-locale (actually I'm trying to build 
core-image-base, but that fails building glibc-locale) and encountering 
the following error:

    WARNING: Host distribution "Ubuntu-16.04" has not been validated
    with this version of the build system; you may possibly experience
    unexpected failures. It is recommended that you use a tested
    distribution.
    Parsing recipes: 100%
    |#####################################################################################################################|
    Time: 00:00:05
    Parsing of 871 .bb files complete (0 cached, 871 parsed). 1301
    targets, 218 skipped, 0 masked, 0 errors.
    NOTE: Resolving any missing task queue dependencies

    Build Configuration:
    BB_VERSION        = "1.30.0"
    BUILD_SYS         = "x86_64-linux"
    NATIVELSBSTRING   = "Ubuntu-16.04"
    TARGET_SYS        = "i586-poky-linux"
    MACHINE           = "qemux86"
    DISTRO            = "poky"
    DISTRO_VERSION    = "2.1.2"
    TUNE_FEATURES     = "m32 i586"
    TARGET_FPU        = ""
    meta
    meta-poky
    meta-yocto-bsp    = "krogoth:ae9b341ecfcc60e970f29cfe04306411ad26c0cf"

    NOTE: Fetching uninative binary shim from
    http://downloads.yoctoproject.org/releases/uninative/1.0.1/x86_64-nativesdk-libc.tar.bz2;sha256sum=acf1e44a0ac2e855e81da6426197d36358bf7b4e88e552ef933128498c8910f8
    NOTE: Preparing RunQueue
    NOTE: Executing SetScene Tasks
    NOTE: Executing RunQueue Tasks
    WARNING: zlib-native-1.2.8-r0 do_fetch: Failed to fetch URL
    http://www.zlib.net/zlib-1.2.8.tar.xz, attempting MIRRORS if available
    WARNING: libpcre-native-8.38-r0 do_fetch: Failed to fetch URL
    ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.38.tar.bz2,
    attempting MIRRORS if available
    ERROR: glibc-locale-2.23-r0 do_package: QA Issue: glibc-locale:
    Files/directories were installed but not shipped in any package:
       /usr/lib/gconv/IBM4971.so
       /usr/lib/gconv/IBM1004.so
       /usr/lib/gconv/GREEK7.so
       /usr/lib/gconv/IBM866.so
       /usr/lib/gconv/ISO8859-11.so
    ... lots of files listed and trimmed ...
       /usr/share/i18n/locales/es_CU
       /usr/share/i18n/locales/crh_UA
       /usr/share/i18n/locales/the_NP
       /usr/share/i18n/locales/ar_DZ
       /usr/share/i18n/locales/os_RU
       /usr/share/i18n/locales/nds_DE
       /usr/share/i18n/locales/ar_MA
       /usr/share/i18n/locales/cs_CZ
       /usr/share/i18n/locales/sv_FI
       /usr/share/i18n/locales/sd_IN
       /usr/share/i18n/locales/es_VE
    Please set FILES such that these items are packaged. Alternatively
    if they are unneeded, avoid installing them or delete them within
    do_install.
    glibc-locale: 815 installed and not shipped files.
    [installed-vs-shipped]
    ERROR: glibc-locale-2.23-r0 do_package: Fatal QA errors found,
    failing task.
    ERROR: glibc-locale-2.23-r0 do_package: Function failed: do_package
    ERROR: Logfile of failure stored in:
    /home/atantos/personal/cray-xmp/trunk/sockit_sw/t7/krogoth/build/tmp/work/i586-poky-linux/glibc-locale/2.23-r0/temp/log.do_package.187260
    ERROR: Task 11
    (/home/atantos/personal/cray-xmp/trunk/sockit_sw/t7/krogoth/poky/meta/recipes-core/glibc/glibc-locale_2.23.bb,
    do_package) failed with exit code '1'
    NOTE: Tasks Summary: Attempted 341 tasks of which 0 didn't need to
    be rerun and 1 failed.
    Waiting for 0 running tasks to finish:

    Summary: 1 task failed:
    /home/atantos/personal/cray-xmp/trunk/sockit_sw/t7/krogoth/poky/meta/recipes-core/glibc/glibc-locale_2.23.bb,
    do_package
    Summary: There were 3 WARNING messages shown.
    Summary: There were 3 ERROR messages shown, returning a non-zero
    exit code.


The problem seems to be related to trying to include usbhost in 
DISTRO_FEATURES.

The minimal repro seems to be this script:

    #!/bin/bash
    BRANCH=krogoth
    #BRANCH=jethro

    function error_exit
    {
         echo "$1" 1>&2
         exit 1
    }

    mkdir $BRANCH || error_exit "can't create directory: $BANCH"
    cd $BRANCH || error_exit "can't CD to directory: $BANCH"
    BASE=$PWD

    echo setting up branch: $BRANCH
    echo ====================================================
    echo
    echo STEP 1: cloning repositories
    echo ----------------------------------------------------
    git clone -b $BRANCH git://git.yoctoproject.org/poky.git ||
    error_exit "Can't clone main repo"

    echo
    echo STEP 2: creating default config
    echo ----------------------------------------------------
    source poky/oe-init-build-env ./build

    echo
    echo STEP 3: customizing configuration
    echo ----------------------------------------------------


    echo "###########################################" >> conf/local.conf
    echo "###########################################" >> conf/local.conf
    echo "###########################################" >> conf/local.conf
    echo "# LOCAL CHANGES" >> conf/local.conf
    echo "###########################################" >> conf/local.conf
    echo "###########################################" >> conf/local.conf
    echo "###########################################" >> conf/local.conf
    echo "DISTRO_FEATURES += \"usbhost\"" >> conf/local.conf

    echo
    echo STEP 3: building
    echo ----------------------------------------------------
    bitbake glibc-locale


I've seen other people report this problem but no solution, for example 
here: https://www.mail-archive.com/yocto@yoctoproject.org/msg32378.html 
and here: 
http://stackoverflow.com/questions/41937565/yocto-glibc-locale-do-package-installed-but-not-shipped-in-any-package.

Can you please help me fix the problem?

Thanks,
Andras Tantos


--------------46ADFB37A38A0A580B60A315
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body bgcolor="#FFFFFF" text="#000000">
    Hi all,<br>
    <br>
    I'm trying to build glibc-locale (actually I'm trying to build
    core-image-base, but that fails building glibc-locale) and
    encountering the following error:<br>
    <br>
    <blockquote>WARNING: Host distribution "Ubuntu-16.04" has not been
      validated with this version of the build system; you may possibly
      experience unexpected failures. It is recommended that you use a
      tested distribution.<br>
      Parsing recipes: 100%
|#####################################################################################################################|
      Time: 00:00:05<br>
      Parsing of 871 .bb files complete (0 cached, 871 parsed). 1301
      targets, 218 skipped, 0 masked, 0 errors.<br>
      NOTE: Resolving any missing task queue dependencies<br>
      <br>
      Build Configuration:<br>
      BB_VERSION        = "1.30.0"<br>
      BUILD_SYS         = "x86_64-linux"<br>
      NATIVELSBSTRING   = "Ubuntu-16.04"<br>
      TARGET_SYS        = "i586-poky-linux"<br>
      MACHINE           = "qemux86"<br>
      DISTRO            = "poky"<br>
      DISTRO_VERSION    = "2.1.2"<br>
      TUNE_FEATURES     = "m32 i586"<br>
      TARGET_FPU        = ""<br>
      meta<br>
      meta-poky<br>
      meta-yocto-bsp    =
      "krogoth:ae9b341ecfcc60e970f29cfe04306411ad26c0cf"<br>
      <br>
      NOTE: Fetching uninative binary shim from
<a class="moz-txt-link-freetext" href="http://downloads.yoctoproject.org/releases/uninative/1.0.1/x86_64-nativesdk-libc.tar.bz2;sha256sum=acf1e44a0ac2e855e81da6426197d36358bf7b4e88e552ef933128498c8910f8">http://downloads.yoctoproject.org/releases/uninative/1.0.1/x86_64-nativesdk-libc.tar.bz2;sha256sum=acf1e44a0ac2e855e81da6426197d36358bf7b4e88e552ef933128498c8910f8</a><br>
      NOTE: Preparing RunQueue<br>
      NOTE: Executing SetScene Tasks<br>
      NOTE: Executing RunQueue Tasks<br>
      WARNING: zlib-native-1.2.8-r0 do_fetch: Failed to fetch URL
      <a class="moz-txt-link-freetext" href="http://www.zlib.net/zlib-1.2.8.tar.xz">http://www.zlib.net/zlib-1.2.8.tar.xz</a>, attempting MIRRORS if
      available<br>
      WARNING: libpcre-native-8.38-r0 do_fetch: Failed to fetch URL
      <a class="moz-txt-link-freetext" href="ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.38.tar.bz2">ftp://ftp.csx.cam.ac.uk/pub/software/programming/pcre/pcre-8.38.tar.bz2</a>,
      attempting MIRRORS if available<br>
      ERROR: glibc-locale-2.23-r0 do_package: QA Issue: glibc-locale:
      Files/directories were installed but not shipped in any package:<br>
        /usr/lib/gconv/IBM4971.so<br>
        /usr/lib/gconv/IBM1004.so<br>
        /usr/lib/gconv/GREEK7.so<br>
        /usr/lib/gconv/IBM866.so<br>
        /usr/lib/gconv/ISO8859-11.so<br>
      ... lots of files listed and trimmed ...<br>
        /usr/share/i18n/locales/es_CU<br>
        /usr/share/i18n/locales/crh_UA<br>
        /usr/share/i18n/locales/the_NP<br>
        /usr/share/i18n/locales/ar_DZ<br>
        /usr/share/i18n/locales/os_RU<br>
        /usr/share/i18n/locales/nds_DE<br>
        /usr/share/i18n/locales/ar_MA<br>
        /usr/share/i18n/locales/cs_CZ<br>
        /usr/share/i18n/locales/sv_FI<br>
        /usr/share/i18n/locales/sd_IN<br>
        /usr/share/i18n/locales/es_VE<br>
      Please set FILES such that these items are packaged. Alternatively
      if they are unneeded, avoid installing them or delete them within
      do_install.<br>
      glibc-locale: 815 installed and not shipped files.
      [installed-vs-shipped]<br>
      ERROR: glibc-locale-2.23-r0 do_package: Fatal QA errors found,
      failing task.<br>
      ERROR: glibc-locale-2.23-r0 do_package: Function failed:
      do_package<br>
      ERROR: Logfile of failure stored in:
/home/atantos/personal/cray-xmp/trunk/sockit_sw/t7/krogoth/build/tmp/work/i586-poky-linux/glibc-locale/2.23-r0/temp/log.do_package.187260<br>
      ERROR: Task 11
(/home/atantos/personal/cray-xmp/trunk/sockit_sw/t7/krogoth/poky/meta/recipes-core/glibc/glibc-locale_2.23.bb,
      do_package) failed with exit code '1'<br>
      NOTE: Tasks Summary: Attempted 341 tasks of which 0 didn't need to
      be rerun and 1 failed.<br>
      Waiting for 0 running tasks to finish:<br>
      <br>
      Summary: 1 task failed:<br>
       
/home/atantos/personal/cray-xmp/trunk/sockit_sw/t7/krogoth/poky/meta/recipes-core/glibc/glibc-locale_2.23.bb,
      do_package<br>
      Summary: There were 3 WARNING messages shown.<br>
      Summary: There were 3 ERROR messages shown, returning a non-zero
      exit code.<br>
    </blockquote>
    <br>
    The problem seems to be related to trying to include usbhost in
    DISTRO_FEATURES.<br>
    <br>
    The minimal repro seems to be this script:<br>
    <br>
    <blockquote>#!/bin/bash<br>
      BRANCH=krogoth<br>
      #BRANCH=jethro<br>
      <br>
      function error_exit<br>
      {<br>
          echo "$1" 1&gt;&amp;2<br>
          exit 1<br>
      }<br>
      <br>
      mkdir $BRANCH || error_exit "can't create directory: $BANCH"<br>
      cd $BRANCH || error_exit "can't CD to directory: $BANCH"<br>
      BASE=$PWD<br>
      <br>
      echo setting up branch: $BRANCH<br>
      echo ====================================================<br>
      echo<br>
      echo STEP 1: cloning repositories<br>
      echo ----------------------------------------------------<br>
      git clone -b $BRANCH git://git.yoctoproject.org/poky.git ||
      error_exit "Can't clone main repo"<br>
      <br>
      echo<br>
      echo STEP 2: creating default config<br>
      echo ----------------------------------------------------<br>
      source poky/oe-init-build-env ./build<br>
      <br>
      echo<br>
      echo STEP 3: customizing configuration<br>
      echo ----------------------------------------------------<br>
      <br>
      <br>
      echo "###########################################" &gt;&gt;
      conf/local.conf<br>
      echo "###########################################" &gt;&gt;
      conf/local.conf<br>
      echo "###########################################" &gt;&gt;
      conf/local.conf<br>
      echo "# LOCAL CHANGES" &gt;&gt; conf/local.conf<br>
      echo "###########################################" &gt;&gt;
      conf/local.conf<br>
      echo "###########################################" &gt;&gt;
      conf/local.conf<br>
      echo "###########################################" &gt;&gt;
      conf/local.conf<br>
      echo "DISTRO_FEATURES += \"usbhost\"" &gt;&gt; conf/local.conf<br>
      <br>
      echo<br>
      echo STEP 3: building<br>
      echo ----------------------------------------------------<br>
      bitbake glibc-locale<br>
    </blockquote>
    <br>
    I've seen other people report this problem but no solution, for
    example here:
    <a class="moz-txt-link-freetext" href="https://www.mail-archive.com/yocto@yoctoproject.org/msg32378.html">https://www.mail-archive.com/yocto@yoctoproject.org/msg32378.html</a>
    and here:
<a class="moz-txt-link-freetext" href="http://stackoverflow.com/questions/41937565/yocto-glibc-locale-do-package-installed-but-not-shipped-in-any-package">http://stackoverflow.com/questions/41937565/yocto-glibc-locale-do-package-installed-but-not-shipped-in-any-package</a>.<br>
    <br>
    Can you please help me fix the problem?<br>
    <br>
    Thanks,<br>
    Andras Tantos<br>
    <br>
  </body>
</html>

--------------46ADFB37A38A0A580B60A315--
