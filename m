Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE472E00B2F; Fri, 30 Oct 2015 04:40:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.206.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 203 seconds by postgrey-1.32 at yocto-www;
	Fri, 30 Oct 2015 04:40:18 PDT
Received: from smtp684.redcondor.net (smtp684.redcondor.net [208.80.206.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D116E00B27
	for <yocto@yoctoproject.org>; Fri, 30 Oct 2015 04:40:17 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp684.redcondor.net ({700db0a8-6fb7-4c8b-9b2a-6812225182d8})
	via TCP (outbound) with ESMTPS id 20151030113649525_0684
	for <yocto@yoctoproject.org>; Fri, 30 Oct 2015 11:36:49 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=46928 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Zs7zy-0004aw-07
	for yocto@yoctoproject.org; Fri, 30 Oct 2015 07:37:34 -0400
Date: Fri, 30 Oct 2015 07:36:40 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.20.1510300734560.24819@localhost>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Subject: "bitbake meta-toolchain", QA Issue, library in wrong location
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
X-List-Received-Date: Fri, 30 Oct 2015 11:40:19 -0000
Content-Type: text/plain; charset=US-ASCII


  goofing around, did a "bitbake meta-toolchain" for my BBB
configuration and, toward the end, got:

WARNING: QA Issue: gcc-cross-canadian-arm-dbg: found library in wrong
location:
/opt/poky/2.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/.debug/libcc1.so.0.0.0
gcc-cross-canadian-arm-dbg: found library in wrong location:
/opt/poky/2.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/.debug/libcc1plugin.so.0.0.0
gcc-cross-canadian-arm-dbg: found library in wrong location:
/opt/poky/2.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/.debug/liblto_plugin.so.0.0.0
gcc-cross-canadian-arm: found library in wrong location:
/opt/poky/2.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1.so.0.0.0
gcc-cross-canadian-arm: found library in wrong location:
/opt/poky/2.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1.so
gcc-cross-canadian-arm: found library in wrong location:
/opt/poky/2.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/liblto_plugin.so.0
gcc-cross-canadian-arm: found library in wrong location:
/opt/poky/2.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1plugin.so.0.0.0
gcc-cross-canadian-arm: found library in wrong location:
/opt/poky/2.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1plugin.so.0
gcc-cross-canadian-arm: found library in wrong location:
/opt/poky/2.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/liblto_plugin.so.0.0.0
gcc-cross-canadian-arm: found library in wrong location:
/opt/poky/2.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1.so.0
gcc-cross-canadian-arm: found library in wrong location:
/opt/poky/2.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/liblto_plugin.so
gcc-cross-canadian-arm: found library in wrong location:
/opt/poky/2.0/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1plugin.so
[libdir]
WARNING: QA Issue: nativesdk-qemu rdepends on nativesdk-libbz2, but it
isn't a build dependency? [build-deps]

  is the above anything i need be concerned about? it's still baking
so i haven't had a chance to test it yet.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


