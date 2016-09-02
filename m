Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08650E007E1; Fri,  2 Sep 2016 12:36:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.49 listed in list.dnswl.org]
	*  0.0 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.49 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f49.google.com (mail-vk0-f49.google.com
	[209.85.213.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91A27E007A2
	for <yocto@yoctoproject.org>; Fri,  2 Sep 2016 12:36:48 -0700 (PDT)
Received: by mail-vk0-f49.google.com with SMTP id j189so22301422vkc.2
	for <yocto@yoctoproject.org>; Fri, 02 Sep 2016 12:36:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=IuImReOl75lZzDvKbpHLjAttU7cmIcnvgZG/I7PbQxU=;
	b=fr7GtePze9DZoxq5heoiEUdWuI/mKlswq7xwFtn1/CG5Ucs09xkIegYXDm4kI2Jr0l
	drgRatJ620KsfJKbC/pQEqqsmB0Ov/QcGDbJ6syRgbvbPkkrlLzhK+T1IeAQCHOMEj90
	cirvtcqbOYKv+/MXQ15/usidefEfJXGIZX7K0FsoyWCHanL/h20YoZsfTkpgrv/8I1/X
	GxSkU79FMu58aSLMOcFqnjDa1My3EvVng+wWV+E4JaOOjJO27wOaidsR36lt87qxH7oA
	rN1Fv6vmqOjGX1DHxoHZlYHViISvMzDFPwK3nk2pfqJUQvhtNPPXtRKX97dR0cdnVEiP
	qq3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=IuImReOl75lZzDvKbpHLjAttU7cmIcnvgZG/I7PbQxU=;
	b=Jj5XcgZMcwVvdBkHFAWrJix9LEp6OiYttFB/QeXL4elxfmWfKD+oFrP0ONLpcY+CXH
	vEK6ReiyixiCmJENL33BEzme355WeCd021//5BnCs6Y0gHLdFR0vWLpNb77UIOOVDxDA
	QWiFZWa4syXFLato8tKCx11+tw5JpE6PCWtTx7JYurV3+kPUVeA10nSSCngPgeYSVm/6
	y5T05SGgl370cM8/2KLzIsUxtPQD37H9ZUSS/Iwr8BQhErEbtjtUbnF6TpsKc+F0muV7
	LiO9ybtCf+BYqY11+kK14kvBN6SJtPcq2bqOL7vFOnELr/HNju4/SHWglQMud2i1BdWw
	K6rg==
X-Gm-Message-State: AE9vXwOLlpaqakjaphsDLHsoRwbI3URMw9LaGGtNDRsRqk6u9UHfSZBxRW3EFiP3UtMg0wvXOnDUaT6EC/Yc9A==
X-Received: by 10.31.12.72 with SMTP id 69mr14930211vkm.62.1472845007187; Fri,
	02 Sep 2016 12:36:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.81.41 with HTTP; Fri, 2 Sep 2016 12:36:46 -0700 (PDT)
From: "Daniel." <danielhilst@gmail.com>
Date: Fri, 2 Sep 2016 16:36:46 -0300
Message-ID: <CAF3SDA7xnKy6nGNqzzOcp+nwERrT522OdZVUnaFqyjhR9y3_ng@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: libSegFault.so crashing on Daisy
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
X-List-Received-Date: Fri, 02 Sep 2016 19:36:52 -0000
Content-Type: text/plain; charset=UTF-8

Hi everybody,

I was trying to use libSegFault.so to capture stacktraces but the
libSegFault it self is crashing? Can someone try to reproduce this?

1) Install libc6-dbg. This will give you access to libSegFault.so at
/lib/.debug/libSegFault.so
2) Set LD_PRELOAD: export LD_PRELOAD=/lib/.debug/libSegFault.so
3) Running any executable results in a crash for me :/

root@localhost:/media/card2# export LD_PRELOAD=/lib/.debug/libSegFault.so
root@localhost:/media/card2# ls
Segmentation fault (core dumped)
root@localhost:/media/card2#

The core dump gives-me this backtrace:
#0  _dl_relocate_object (scope=0x76fc2898, reloc_mode=1,
consider_profiling=consider_profiling@entry=0) at dl-reloc.c:238
#1  0x76fa1428 in dl_main (phdr=<optimized out>, phnum=<optimized
out>, user_entry=<optimized out>, auxv=<optimized out>) at rtld.c:2204
#2  0x76fb4418 in _dl_sysdep_start
(start_argptr=start_argptr@entry=0x7eb39cf0, dl_main=0x0) at
../elf/dl-sysdep.c:249
#3  0x76fa2cc0 in _dl_start_final (arg=0x7eb39cf0, arg@entry=0x0,
info=0x7eb39a70, info@entry=0x7eb39a68) at rtld.c:332
#4  0x76fa2f50 in _dl_start (arg=0x0) at rtld.c:560
#5  0x76f9ed50 in _start () from /lib/ld-linux-armhf.so.3
#6  0x76f9ed50 in _start () from /lib/ld-linux-armhf.so.3

I'm on ARMv7, i.MX6q


Regards,

-- 
"Do or do not. There is no try"
  Yoda Master

