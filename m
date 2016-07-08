Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04BBEE00E94; Fri,  8 Jul 2016 06:01:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AA83E00E8B
	for <yocto@yoctoproject.org>; Fri,  8 Jul 2016 06:01:52 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id n127so6752423wme.0
	for <yocto@yoctoproject.org>; Fri, 08 Jul 2016 06:01:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=ssU4Uf0tyntpkkxuwbMeIJQZZAJqqN6j4aQg+6u5/ks=;
	b=AQOvktp22zDd80j8E4iQtQ7ZNMJq4cgWU7sDNPosuSSpkjp0XL+NLlC/xhmvBWsgng
	drATFDxhOa9UjNCh/x7aWa74X6iyfzDjXa81HdxeYJkXItIOiMrs4QX/3fuLUQTY6xlu
	ILyWn/MZQDZ1DQLj43C3k7d0lTMqYWtcFuhMCn9YT8+kv5BrjaineicRNoatgJhdcSHD
	deP33kvIr+Y3XssRXRmgaD/nTzvFkp7Z9+0gLrxpnBbzAmIceyMEWO6wU4mHk6HYeHDe
	OKQa93rOKWKzgIpuEqPzQ9hOqPJ9uBK6Io6wyftUeFFtJb8/MOpg46P2YYeJMUH1zzj8
	9fZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=ssU4Uf0tyntpkkxuwbMeIJQZZAJqqN6j4aQg+6u5/ks=;
	b=jOhlhBo3zQFzynn2Ve6thAz2v9mYzGZgIc37cbSgeKZEO4nrQHGzpCGjdmS8O0eNHc
	s+Xe9heztiU17Febzrc0FG1EvnjCTaWknZP6WNgatQE54FY0ZjPFJx/v4YSB8AKBrwNN
	A3yNoVNAm1rFOJuzWKZWVQd7zM7wo/S1CX8Zy1tFQMP4us9Kd6Ccoa60vAIpUiFJ2E+Q
	0WzW/LAzNxZv06A7abFdJOu3p8AdyXutUqkz64sGd+VsUTMZNrI98am/sxkoa/Pr8FPL
	iTKh7/ELB+9P5tCQGETK5AamJh2cSGhRsup80WT5S2nMIGmxD+GGiMIHljqfS4UuwMDh
	BcJA==
X-Gm-Message-State: ALyK8tJNBfqSTWCgFPrYpQXhTusLeywLnrw2mbjRQ0It8aIuDBAoe2ulukCvXJGOahkSTA==
X-Received: by 10.28.29.211 with SMTP id d202mr3461788wmd.22.1467982911688;
	Fri, 08 Jul 2016 06:01:51 -0700 (PDT)
Received: from resin.home (host86-179-71-94.range86-179.btcentralplus.com.
	[86.179.71.94])
	by smtp.gmail.com with ESMTPSA id oo7sm2900091wjc.6.2016.07.08.06.01.50
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 08 Jul 2016 06:01:51 -0700 (PDT)
Date: Fri, 8 Jul 2016 14:01:45 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Michael Dangler <marmaduke55@gmail.com>
Message-ID: <20160708130145.GA20442@resin.home>
References: <CALNhhxR9MY0T3FaWJmv3D3HcWVAF2nUktZD9p7jbiYwyzcpp_w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALNhhxR9MY0T3FaWJmv3D3HcWVAF2nUktZD9p7jbiYwyzcpp_w@mail.gmail.com>
User-Agent: Mutt/1.6.1 (2016-04-27)
Cc: yocto@yoctoproject.org
Subject: Re: Error building python-imaging_1.1.7.bb
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
X-List-Received-Date: Fri, 08 Jul 2016 13:01:58 -0000
X-Groupsio-MsgNum: 30955
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="cWoXeonUoKmBZSoM"
Content-Disposition: inline

--cWoXeonUoKmBZSoM
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jun 02, 2016 at 12:55:17PM -0400, Michael Dangler wrote:
> Hello
>
> Am new to yocto and am trying to build an image for a Gumstix Pepper board
> and use ROS. However always get to the point with python-imaging_1.1.7.bb
> failing do_package_qa. HAve tried just doing the following -
>
> bitbake python-imaging
>
> But still have the same failure -
>
> Build Configuration:
> BB_VERSION        = "1.26.0"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-14.04"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "pepper"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.8"
> TUNE_FEATURES     = "arm armv7a vfp neon callconvention-hard cortexa8"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto        = "(nobranch):83aa565d93aacae484976562ef1ae8dbbb6b2bc0"
> meta-gnome
> meta-oe
> meta-xfce
> meta-systemd
> meta-networking
> meta-multimedia
> meta-python       = "(nobranch):10d3c8f85280a0bf867a8e4f84bcda81c290d28e"
> meta-gumstix      = "(nobranch):8ea631d8ef26cb13102dac0910be52674cb7b395"
> meta-gumstix-extras = "(nobranch):15cfa9fcff75d3d95f66cfa190e1b604ff5ea4f6"
> meta-ros          = "(nobranch):d465a23c0a96e651419d46b29ab7c0c3663da314"
> meta-ti           = "(nobranch):03cb3ff15f3b8535ca409ce682f44ec1b81da0c3"
> meta-java         = "(nobranch):66c97ae7461f4c1a13917131787bb76dc34e6b6f"
>
> NOTE: Preparing RunQueue
> NOTE: Executing SetScene Tasks
> NOTE: Executing RunQueue Tasks
> ERROR: QA Issue: python-imaging: The compile log indicates that host
> include and/or library paths were used.
>          Please check the log
> '/home/michael/yocto/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/python-imaging/1.1.7-r5/temp/log.do_compile'
> for more information. [compile-host-path]
> ERROR: QA run found fatal errors. Please consider fixing them.
> ERROR: Function failed: do_package_qa
> ERROR: Logfile of failure stored in:
> /home/michael/yocto/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/python-imaging/1.1.7-r5/temp/log.do_package_qa.11102
> ERROR: Task 9 (/home/michael/yocto/poky/meta/recipes-devtools/python/
> python-imaging_1.1.7.bb, do_package_qa) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 695 tasks of which 0 didn't need to be rerun
> and 1 failed.
> Waiting for 0 running tasks to finish:
>
> Summary: 1 task failed:
>   /home/michael/yocto/poky/meta/recipes-devtools/python/
> python-imaging_1.1.7.bb, do_package_qa
> Summary: There were 3 ERROR messages shown, returning a non-zero exit code.
>
>
> DEBUG: Executing python function sstate_task_prefunc
> DEBUG: Python function sstate_task_prefunc finished
> DEBUG: Executing python function do_package_qa
> NOTE: DO PACKAGE QA
> DEBUG: Executing python function read_subpackage_metadata
> DEBUG: Python function read_subpackage_metadata finished
> ERROR: QA Issue: python-imaging: The compile log indicates that host
> include and/or library paths were used.
>          Please check the log
> '/home/michael/yocto/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/python-imaging/1.1.7-r5/temp/log.do_compile'
> for more information. [compile-host-path]
> NOTE: Checking Package: python-imaging-staticdev
> NOTE: Checking Package: python-imaging-dev
> NOTE: Checking Package: python-imaging-dbg
> NOTE: arm-poky-linux-gnueabi-objdump -p
> /home/michael/yocto/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/python-imaging/1.1.7-r5/packages-split/python-imaging-dbg/usr/lib/python2.7/site-packages/PIL/.debug/_imaging.so
> NOTE: arm-poky-linux-gnueabi-objdump -p
> /home/michael/yocto/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/python-imaging/1.1.7-r5/packages-split/python-imaging-dbg/usr/lib/python2.7/site-packages/PIL/.debug/_imagingmath.so
> NOTE: arm-poky-linux-gnueabi-objdump -p
> /home/michael/yocto/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/python-imaging/1.1.7-r5/packages-split/python-imaging-dbg/usr/lib/python2.7/site-packages/PIL/.debug/_imagingft.so
> NOTE: Checking Package: python-imaging-doc
> NOTE: Checking Package: python-imaging
> NOTE: arm-poky-linux-gnueabi-objdump -p
> /home/michael/yocto/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/python-imaging/1.1.7-r5/packages-split/python-imaging/usr/lib/python2.7/site-packages/PIL/_imaging.so
> NOTE: arm-poky-linux-gnueabi-objdump -p
> /home/michael/yocto/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/python-imaging/1.1.7-r5/packages-split/python-imaging/usr/lib/python2.7/site-packages/PIL/_imagingmath.so
> NOTE: arm-poky-linux-gnueabi-objdump -p
> /home/michael/yocto/build/tmp/work/cortexa8hf-vfp-neon-poky-linux-gnueabi/python-imaging/1.1.7-r5/packages-split/python-imaging/usr/lib/python2.7/site-packages/PIL/_imagingft.so
> ERROR: QA run found fatal errors. Please consider fixing them.
> DEBUG: Python function do_package_qa finished
> ERROR: Function failed: do_package_qa
>
> Any help would be much grateful and please let me know if I should post
> somewhere else. Thank you all.
>
> Cheers, Michael

> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

I've sent a patch lately that might fix your issue:
http://lists.openembedded.org/pipermail/openembedded-devel/2016-July/108073.html

--
Andrei Gherzan

--cWoXeonUoKmBZSoM
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXf6Q5AAoJEHO76Gt+erfPpjQP+QGY+ZJCP2WNvNoR55Nli+m5
FDl/7frVzFFZ8x+fBfGIn/Jsrwkq7GbMKOrFBilnw3Z8wRxg8771+DfnB0FraaL4
K/l9m5BHxzQxSoYpurmz3Q4LDP3d7tgV3RTRp6O78N3HHNpJ87eImi2tP0SD+qD+
bLw2LL6nwaTWqzdGs54i66B8xzSF+QhC5lzrdftKLqA/I1iYnV0mbEoH0f4XXkak
rhZ3d2ej5DFKZsfKpA6WhteiznFRntMxfyrb3JSYCDJiqLi4PqvC6GIFlDUsMx6t
7iTMUsHHhUMsxDzycUZa0D5nWlx8Yi9yTpKborfYAXBVibGTAjhyvAXdWscSK9xB
2cL9D8RH5B48DDazlkLxc8ISTfIdzRvwFILk2KL7uGVJYXVCIS9sRxAUUe8HAvR0
NfyMok5W6h42Ix9Didrsd+gK0b7MLAjC3awX0RFVmYP31o8zkjqn2MwxzW4WA+jM
Vjqxs1dCC1uxZAQ2xVg2F/mj5JY1cBVg270+zeY861vEPk1QKOjsjuLIn9IYuw8k
hjqgcc7l32h9e0LEvl8bSmcUwZvpk3nJ7WeL62cAcP6ZgQQMY02Cp5+/d6N8REvR
guDdcJWedGXd3sqPYQSueHbKhn8FpLyXZsfkpfV15PVaEp6w2DVo3sMZUvg/URan
uRzqMc5207/0i6Pg/8K1
=rBKp
-----END PGP SIGNATURE-----

--cWoXeonUoKmBZSoM--
