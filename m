Return-Path: <rail@esenciatech.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49DDBE00CBE; Thu, 30 Nov 2017 10:10:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.213.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f50.google.com (mail-vk0-f50.google.com
	[209.85.213.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49720E00B48
	for <yocto@yoctoproject.org>; Thu, 30 Nov 2017 10:10:39 -0800 (PST)
Received: by mail-vk0-f50.google.com with SMTP id w190so3972258vkd.7
	for <yocto@yoctoproject.org>; Thu, 30 Nov 2017 10:10:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=esenciatech-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=RiSYadtK5V3juIInP5b2/JmZNgvH6XR6TqYYZjGMT1g=;
	b=axYfzMFR8eRzBKIAYXyYniiXPYOkC/D0y2ZmNkYxkmtEmK5NdLtLwQGshYNs/i0hLZ
	+hfB1mK2pWf04hA3kksXqgCea4AeSivLpk5UNZf0ysElLH0Fm+kAcqjdj8s4Q/+kFKTB
	HKhVuLTDFPIMu/0SxciyA2pzZo3+x8OTU0YTh5EyRh3Oo5pbPGXEHSybR1EfGEiuOjTb
	C8PGT5pvv43wDty7e+uKxU2Qo8PvZFJ8/ClhrVnwC7K06oKV3I8N4iN6V3wltp9hNgk3
	rsNgtq208Up/CH9S8vuUvfL/2QduJzV9BeDFsw7I0JixOCztbVewIp1UauIT9q2HfQeE
	nAdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=RiSYadtK5V3juIInP5b2/JmZNgvH6XR6TqYYZjGMT1g=;
	b=YGL4LQdvBt9l6ORFO34/N+eOhQcGhfKgtUGHdj6IMcllMISBWBHcOycJee1uh3luxM
	4cYHDCbCCHSTEMV4M+sqqQv2scmPXTL+JCwRWNZBUia0jLrWCcPWDJns6POjEkZUh+F9
	rW6SntvZDA/cXmHbYrYL12z51gaJE5MX7CifL4CjkkkGqzrBtbTEtELwn5/0oUXqBpca
	aoPhgsm2LCK9HppzoyFq6KAupMD0LWvz08fJH1uaA5LXxBlJxGyrPod3XJITs4r6GbGq
	NiyDQcWt/9eqZ2bQ7Cf6ATHkU+P3wIq5jxJxxzrfNItkVclfA+INBq42+zlTfX288ETa
	zHTQ==
X-Gm-Message-State: AKGB3mIOALMB0ib0oLdv2LmHltzRB/g+3OfJ6sbaCXeYL+yX8sdnIam4
	gbRXPoC9IfuJiSCZcugbMuyFdjeFv9be3Y7AKoLgImhuOcNapfvl480H6Dd9xxIjqadCCyja66U
	TTdg34fFSDhdX+vBsZQtUZfMwXg==
X-Google-Smtp-Source: AGs4zMZbvyFPree51Xkawzel4JsTYjni/BIByO5wEgVCoOC7Df2ljmhI6SF5oVwLFA/rpOBBoBPx0cd4OWb8TRGkM1Y=
X-Received: by 10.31.108.19 with SMTP id h19mr2669703vkc.75.1512065439080;
	Thu, 30 Nov 2017 10:10:39 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.95.198 with HTTP; Thu, 30 Nov 2017 10:10:38 -0800 (PST)
From: Rail Shafigulin <rail@esenciatech.com>
Date: Thu, 30 Nov 2017 10:10:38 -0800
Message-ID: <CAOLNbFYR+Y9WsUu0Cw3KLtHdDyZ_giUQO00bj==58LKZ87DAeQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: dev package non-sym link
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
X-List-Received-Date: Thu, 30 Nov 2017 18:10:41 -0000
Content-Type: text/plain; charset="UTF-8"

Somewhat new to Yocto. Trying to build a library. It compiled but I'm
having issues during the package task. The error output is

ERROR: anokiwavelib-1.0+gitAUTOINC+16df62468c-r0 do_package_qa: QA
Issue: -dev package contains non-symlink .so: anokiwavelib-dev path
'/work/cortexa9hf-neon-xilinx-linux-gnueabi/anokiwavelib/1.0+gitAUTOINC+16df62468c-r0/packages-split/anokiwavelib-dev/usr/lib/libAnokiWave.so'
[dev-elf]
ERROR: anokiwavelib-1.0+gitAUTOINC+16df62468c-r0 do_package_qa: QA run
found fatal errors. Please consider fixing them.
ERROR: anokiwavelib-1.0+gitAUTOINC+16df62468c-r0 do_package_qa:
Function failed: do_package_qa
ERROR: Logfile of failure stored in:
/home/someuser/projects/petalinux-build-system/petalinux-build-env/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/anokiwavelib/1.0+gitAUTOINC+16df62468c-r0/temp/log.do_package_qa.5765
ERROR: Task (/home/someuser/projects/petalinux-build-system/sources/core/../meta-customlayer/recipes-anokiwave/lib/anokiwavelib_git.bb:do_package_qa)
failed with exit code '1'


I do understand the issue. It doesn't create links for libAnokiWave.so
and libAnokiWave.so.1. I do see the following in
/home/someuser/projects/petalinux-build-system/petalinux-build-env/tmp/work/cortexa9hf-neon-xilinx-linux-gnueabi/anokiwavelib/1.0+gitAUTOINC+16df62468c-r0/package/usr/lib

drwxr-xr-x 3 someuser someuser  4096 Nov 29 14:10 ./
drwxr-xr-x 4 someuser someuser  4096 Nov 29 14:10 ../
drwxr-xr-x 2 someuser someuser  4096 Nov 29 14:10 .debug/
-rw-r--r-- 2 someuser someuser 45084 Nov 29 14:10 libAnokiWave.so
-rw-r--r-- 2 someuser someuser 45088 Nov 29 14:10 libAnokiWave.so.1
-rwxr-xr-x 2 someuser someuser 45092 Nov 29 14:10 libAnokiWave.so.1.0.1*

and .debug contains

drwxr-xr-x 2 someuser someuser  4096 Nov 29 14:10 ./
drwxr-xr-x 3 someuser someuser  4096 Nov 29 14:10 ../
-rwxr-xr-x 2 someuser someuser 81500 Nov 29 14:10 libAnokiWave.so*
-rwxr-xr-x 2 someuser someuser 81500 Nov 29 14:10 libAnokiWave.so.1*
-rwxr-xr-x 2 someuser someuser 81500 Nov 29 14:10 libAnokiWave.so.1.0.1*

Which is incorrect, libAnokiWave.so and libAnokiWave.so.1 are not links.

I'm not really sure how to fix this. Would appreciate any help with it.

-- 
Rail Shafigulin
Software Engineer
Esencia Technologies

-- 




*ESENCIA TECHNOLOGIES, INC.*3945 Freedom Circle, Suite #360,
Santa Clara CA 95054
________________________________________________________

Phone: +1 408 736 8284 Fax: +1 408 519 3475 
http://www.esenciatech.com | http://www.lnttechservices.com



