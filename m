Return-Path: <mhubig@imko.de>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B29AE00283
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 12:35:35 -0700 (PDT)
Received: by bkty5 with SMTP id y5so518344bkt.35
	for <yocto@yoctoproject.org>; Wed, 08 Aug 2012 12:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=imko.de; s=google;
	h=date:from:to:subject:message-id:mail-followup-to:mime-version
	:content-type:content-disposition:user-agent;
	bh=G/r+K49dSbm+FtpNUYrza+MIsqoolB8A4O/cJk6Im1I=;
	b=aUntuXOv9p+1INOasNN7ygIq7v42xDPo2K7yztu/tOxKswHmJQa2e0z8StI+PRAtS9
	+IpM2UHyYGGJdmzfuBV1WFZyY1/hAmllrW/fMoADhmsSikqLzePo8GG4YSHOeRUMh2Te
	XOsDYt5nNmOSwYUjGceHutjZC+7ReGVOZkGqI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:subject:message-id:mail-followup-to:mime-version
	:content-type:content-disposition:user-agent:x-gm-message-state;
	bh=G/r+K49dSbm+FtpNUYrza+MIsqoolB8A4O/cJk6Im1I=;
	b=IcrsVUHSCdK64yLgdXtLMXdcZAC7tEaqh/AP7k64RfvsSoILUeUNBOo+1EOruC1hof
	SeF+JKjfIIUEKDZf7Lvxb935OiQt57tpGIuv7+XjgzYMefZveEKqQf6hJAApG1e/bcGm
	+MDjPSVC4JY8LUcYbB5k4PqK/VIgmZzf9aFnBCtlR8j5S4PayCDXsSmo0rTqwQjdY8lE
	BA1hO4CThlBOSC3ku/z5AnFgW8GelmcKREAdtGCHbAgfxZFvCh1+ycNQ++K+q2E+uuwH
	i/BiHWZKQ4q8T7wpKF76Yf7P3bTYz6NzDc1/VXJ0fkOZUQ4mwFK5QF3fjMo9DEjLgiC8
	Y/Cg==
Received: by 10.205.127.77 with SMTP id gz13mr8044220bkc.17.1344454534172;
	Wed, 08 Aug 2012 12:35:34 -0700 (PDT)
Received: from imko.de (business-092-079-181-094.static.arcor-ip.net.
	[92.79.181.94])
	by mx.google.com with ESMTPS id hg13sm10806811bkc.7.2012.08.08.12.35.32
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 08 Aug 2012 12:35:33 -0700 (PDT)
Date: Wed, 8 Aug 2012 21:35:28 +0200
From: Markus Hubig <mhubig@imko.de>
To: Yocto Project Mailing List <yocto@yoctoproject.org>
Message-ID: <20120808193528.GA20546@imko.de>
Mail-Followup-To: Yocto Project Mailing List <yocto@yoctoproject.org>
MIME-Version: 1.0
Received: by 10.76.76.167 with HTTP; Wed, 8 Aug 2012 12:07:12 -0700 (PDT)
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Gm-Message-State: ALoCoQkn9/ApQRYp0KexKOSaORu1/YxL2t9V0IErJsaYmzMVJBBf2JxbOaDTRnI2UkzRuxB5KzV0
Subject: Strange WARNING while do_kernel_configcheck()
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
X-List-Received-Date: Wed, 08 Aug 2012 19:35:36 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hello @all,

I'm working on a bsp vor the taskit stamp9g20 cpu module.

I have a bbappend file for the linux-yocto_3.2 kernel which was ones working
but now (after updating the denzil branch from 7.0 to 7.0.1) I get a strange
error while building the kernel.

I managed to track the problem down to a warning at the do_kernel_configcheck
task ... 

The warning I get is:

| NOTE: validating kernel configuration
| WARNING: Can't find any BSP hardware or required configuration fragments.
| WARNING: Looked at 
|  <snip>/linux/meta/cfg/standard/default/arm-versatile-926ejs/hdw_frags.txt
| and
|  <snip>/linux/meta/cfg/standard/default/arm-versatile-926ejs/required_frags.txt
| in directory:
|  <snip>/linux/meta/cfg/standard/default/arm-versatile-926ejs

Which seems to be the wrong path to look, course there is no such path like

<snip>/linux/meta/cfg/standard/default/arm-versatile-926ejs

the whole stuff is in:

<snip>/linux/meta/cfg/standard/default/stamp9g20

maybe I made a mistake in my linux-yocto_3.2.bbappend file?

| 1| FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
| 2| 
| 3| PR := "${PR}.1"
| 4| 
| 5| COMPATIBLE_MACHINE_stamp9g20 = "stamp9g20"
| 6| KBRANCH_stamp9g20  = "standard/default/arm-versatile-926ejs"
| 7| KMACHINE_stamp9g20  = "stamp9g20"
| 8| 
| 9| COMPATIBLE_MACHINE_portuxg20 = "portuxg20"
|10| KBRANCH_portuxg20  = "standard/default/arm-versatile-926ejs"
|11| KMACHINE_portux9g20  = "portuxg20"
|12| 
|13| SRC_URI += "file://hardware.cfg                  \
|14|             file://non-hardware.cfg              \
|15|            "
|16| 
|17| SRC_URI_append_stamp9g20 = "file://portuxg20.cfg \
|18|             file://portuxg20-preempt-rt.scc      \
|19|             file://portuxg20.scc                 \
|20|             file://portuxg20-standard.scc        \
|21|             "
|22| 
|23| SRC_URI_append_portuxg20 = "file://stamp9g20.cfg \
|24|             file://stamp9g20-preempt-rt.scc      \
|25|             file://stamp9g20.scc                 \
|26|             file://stamp9g20-standard.scc        \
|27|            "

The code which is -generating- responsible for this warning is:

(from "meta/classes/kernel-yocto.bbclass")

| 1| python do_kernel_configcheck() {
| 2|     import bb, re, string, sys, commands
| 3| 
| 4|     bb.plain("NOTE: validating kernel configuration")
| 5| 
| 6|     pathprefix = "export PATH=%s:%s; " % (d.getVar('PATH', True), "${S}/scripts/util/")
| 7|     cmd = d.expand("cd ${B}/..; kconf_check -config- ${B} ${S} ${B} ${KBRANCH}")
| 8|     ret, result = commands.getstatusoutput("%s%s" % (pathprefix, cmd))
| 9| 
|10|     bb.plain( "%s" % result )
|11| }

Cheers, Markus

