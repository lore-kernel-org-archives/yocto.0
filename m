Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BA60FE00DCE; Tue, 12 Nov 2019 11:59:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FB41E00D4F
	for <yocto@yoctoproject.org>; Tue, 12 Nov 2019 11:59:18 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.2) with ESMTPS id xACJx3tZ002518
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 12 Nov 2019 11:59:03 -0800 (PST)
Received: from [147.11.116.75] (147.11.116.75) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.468.0;
	Tue, 12 Nov 2019 11:59:02 -0800
To: Sheraz Ali <sheraz.ali@iwavesystems.com>, <yocto@yoctoproject.org>
References: <f7fbc087-cc4f-b223-011d-8480645e9aa8@iwavesystems.com>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <176fe82c-87bf-8ff7-64d0-d7ba1693bb0f@windriver.com>
Date: Tue, 12 Nov 2019 11:59:02 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <f7fbc087-cc4f-b223-011d-8480645e9aa8@iwavesystems.com>
X-Originating-IP: [147.11.116.75]
Subject: Re: Error Building Valgrind_3.15 for yocto
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
X-List-Received-Date: Tue, 12 Nov 2019 19:59:19 -0000
Content-Type: multipart/alternative;
	boundary="------------B034E560CCE9888F8C26AA50"
Content-Language: en-CA

--------------B034E560CCE9888F8C26AA50
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 11/11/19 9:33 PM, Sheraz Ali wrote:
>
> Hi Sir,
>
>         I want to add valgrind to my yocto i am using valgrind version 
> (3.15.0-r0 ) i have attached the valgrind source and error log for 
> your reference.
>
> This is the Build Configuration for which i am trying to build valgrind
>
> Build Configuration:
> BB_VERSION        = "1.22.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-14.04"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "iwg22m"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.6.1"
>
That's a very old  release and is not supported officially by Yocto or 
even by the community:
    https://wiki.yoctoproject.org/wiki/Releases

Do you have a vendor who supports this collection of layers?
If not, there are many companies who are likley able to do so.

> TUNE_FEATURES     = "armv7a vfp neon callconvention-hard cortexa7"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto
> meta-yocto-bsp    = "tmp:c4f1f0f491f988901bfd6965f7d10f60cb94a76f"
> meta-renesas
> meta-rzg1         = "tmp:19bf1ed97d04009722bb88a780268822ee60ff83"
> meta-oe
> meta-multimedia   = "tmp:dca466c074c9a35bc0133e7e0d65cca0731e2acf"
> meta-linaro-toolchain = "tmp:8a0601723c06fdb75e62aa0f0cf15fc9d7d90167"
> meta-networking   = "tmp:dca466c074c9a35bc0133e7e0d65cca0731e2acf"
>
> I am getting the following error can you suggest me what to do
>
> /*arm-poky-linux-gnueabi-gcc: error: unrecognized argument in option 
> '-march=armv7ve'*/
> /*arm-poky-linux-gnueabi-gcc: note: valid arguments to '-march=' are: 
> armv2 armv2a armv3 armv3m armv4 armv4t armv5 armv5e armv5t armv5te 
> armv6 armv6-m armv6j armv6k armv6s-m armv6t2 armv6z armv6zk armv7 
> armv7-a armv7-m armv7-r armv7e-m armv8-a armv8-a+crc iwmmxt iwmmxt2 
> native*/
>

It looks like your BSP layer/vendor (meta-rzg1 perhaps), or perhaps the
toolchain supplier hasn't added support for this arch.

I can understand that you might not be able to upgrade to a
supported Yocto release but if not, it's unlikely that anyone can help.

If you can reproduce the problem on a supported branch with just poky or
with just fewer layers, then you could open a defect against valgrind or 
the toolchain:
    https://bugzilla.yoctoproject.org/

Sorry that I can't be of more assistance.,

../Randy


> make[5]: *** [intdiv-intdiv.o] Error 1
> make[5]: Leaving directory 
> `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/build/none/tests/arm'
> make[4]: *** [check-am] Error 2
> make[4]: Leaving directory 
> `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/build/none/tests/arm'
> make[3]: *** [check-recursive] Error 1
> make[3]: Leaving directory 
> `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/build/none/tests'
> make[2]: *** [check-recursive] Error 1
> make[2]: Leaving directory 
> `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/build/none'
> make[1]: *** [check-recursive] Error 1
> make[1]: Leaving directory 
> `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/build'
> make: *** [check] Error 2
> make: Leaving directory 
> `/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/build'
> ERROR: oe_runmake failed
> WARNING: exit code 1 from a shell command.
> ERROR: Function failed: do_compile_ptest_base (log file is located at 
> /home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/temp/log.do_compile_ptest_base.29480)
>
> Thanks and Regards
> Sheraz Ali Shah
> -- 
> Thanks and Regards
> Sheraz Ali Shah
>

-- 
# Randy MacLeod
# Wind River Linux


--------------B034E560CCE9888F8C26AA50
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 11/11/19 9:33 PM, Sheraz Ali wrote:<br>
    </div>
    <blockquote type="cite"
      cite="mid:f7fbc087-cc4f-b223-011d-8480645e9aa8@iwavesystems.com">
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <p>Hi Sir,</p>
      <p>        I want to add valgrind to my yocto i am using valgrind
        version (3.15.0-r0 ) i have attached the valgrind source and
        error log for your reference.</p>
      <p>This is the Build Configuration for which i am trying to build
        valgrind<br>
      </p>
      <p>Build Configuration:<br>
        BB_VERSION        = "1.22.0"<br>
        BUILD_SYS         = "x86_64-linux"<br>
        NATIVELSBSTRING   = "Ubuntu-14.04"<br>
        TARGET_SYS        = "arm-poky-linux-gnueabi"<br>
        MACHINE           = "iwg22m"<br>
        DISTRO            = "poky"<br>
        DISTRO_VERSION    = "1.6.1"<br>
      </p>
    </blockquote>
    <p>That's a very old  release and is not supported officially by
      Yocto or even by the community:<br>
         <a class="moz-txt-link-freetext" href="https://wiki.yoctoproject.org/wiki/Releases">https://wiki.yoctoproject.org/wiki/Releases</a><br>
    </p>
    <p>Do you have a vendor who supports this collection of layers?<br>
      If not, there are many companies who are likley able to do so.<br>
    </p>
    <blockquote type="cite"
      cite="mid:f7fbc087-cc4f-b223-011d-8480645e9aa8@iwavesystems.com">
      <p> TUNE_FEATURES     = "armv7a vfp neon callconvention-hard
        cortexa7"<br>
        TARGET_FPU        = "vfp-neon"<br>
        meta              <br>
        meta-yocto        <br>
        meta-yocto-bsp    =
        "tmp:c4f1f0f491f988901bfd6965f7d10f60cb94a76f"<br>
        meta-renesas      <br>
        meta-rzg1         =
        "tmp:19bf1ed97d04009722bb88a780268822ee60ff83"<br>
        meta-oe           <br>
        meta-multimedia   =
        "tmp:dca466c074c9a35bc0133e7e0d65cca0731e2acf"<br>
        meta-linaro-toolchain =
        "tmp:8a0601723c06fdb75e62aa0f0cf15fc9d7d90167"<br>
        meta-networking   =
        "tmp:dca466c074c9a35bc0133e7e0d65cca0731e2acf"</p>
      <p>I am getting the following error can you suggest me what to do
        <br>
      </p>
      <p><i><b>arm-poky-linux-gnueabi-gcc: error: unrecognized argument
            in option '-march=armv7ve'</b></i><br>
        <i><b>arm-poky-linux-gnueabi-gcc: note: valid arguments to
            '-march=' are: armv2 armv2a armv3 armv3m armv4 armv4t armv5
            armv5e armv5t armv5te armv6 armv6-m armv6j armv6k armv6s-m
            armv6t2 armv6z armv6zk armv7 armv7-a armv7-m armv7-r
            armv7e-m armv8-a armv8-a+crc iwmmxt iwmmxt2 native</b></i><br>
      </p>
    </blockquote>
    <p><br>
    </p>
    <p>It looks like your BSP layer/vendor (meta-rzg1 perhaps), or
      perhaps the<br>
      toolchain supplier hasn't added support for this arch. <br>
    </p>
    <p>I can understand that you might not be able to upgrade to a<br>
      supported Yocto release but if not, it's unlikely that anyone can
      help.</p>
    <p>If you can reproduce the problem on a supported branch with just
      poky or <br>
      with just fewer layers, then you could open a defect against
      valgrind or the toolchain:<br>
         <a class="moz-txt-link-freetext" href="https://bugzilla.yoctoproject.org/">https://bugzilla.yoctoproject.org/</a><br>
    </p>
    <p>Sorry that I can't be of more assistance.,</p>
    <p>../Randy </p>
    <p><br>
    </p>
    <blockquote type="cite"
      cite="mid:f7fbc087-cc4f-b223-011d-8480645e9aa8@iwavesystems.com">
      <p>make[5]: *** [intdiv-intdiv.o] Error 1<br>
        make[5]: Leaving directory
`/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/build/none/tests/arm'<br>
        make[4]: *** [check-am] Error 2<br>
        make[4]: Leaving directory
`/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/build/none/tests/arm'<br>
        make[3]: *** [check-recursive] Error 1<br>
        make[3]: Leaving directory
`/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/build/none/tests'<br>
        make[2]: *** [check-recursive] Error 1<br>
        make[2]: Leaving directory
`/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/build/none'<br>
        make[1]: *** [check-recursive] Error 1<br>
        make[1]: Leaving directory
`/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/build'<br>
        make: *** [check] Error 2<br>
        make: Leaving directory
`/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/build'<br>
        ERROR: oe_runmake failed<br>
        WARNING: exit code 1 from a shell command.<br>
        ERROR: Function failed: do_compile_ptest_base (log file is
        located at
/home/sarjoodeen/Project/2018/Nippon/YOCTO/iwG22M-release-bsp/build/tmp/work/cortexa7hf-vfp-neon-poky-linux-gnueabi/valgrind/3.15.0-r0/temp/log.do_compile_ptest_base.29480)</p>
      Thanks and Regards<br>
      Sheraz Ali Shah
      <pre class="moz-signature" cols="72">-- 
Thanks and Regards
Sheraz Ali Shah
</pre>
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
    </blockquote>
    <p><br>
    </p>
    <pre class="moz-signature" cols="72">-- 
# Randy MacLeod
# Wind River Linux
</pre>
  </body>
</html>

--------------B034E560CCE9888F8C26AA50--
