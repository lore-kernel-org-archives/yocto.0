Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4318E00A49; Mon,  1 Jun 2015 02:23:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (auslands-kv[at]gmx.de)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4403CE009CA
	for <yocto@yoctoproject.org>; Mon,  1 Jun 2015 02:23:27 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1YzLwL-000347-Ai
	for yocto@yoctoproject.org; Mon, 01 Jun 2015 11:23:25 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 01 Jun 2015 11:23:25 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 01 Jun 2015 11:23:25 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Mon, 01 Jun 2015 11:23:19 +0200
Message-ID: <mkh8a7$kt6$1@ger.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
Subject: Strange configure error (???)
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
X-List-Received-Date: Mon, 01 Jun 2015 09:23:30 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hi

I'm currently moving from Dora to Fido. I moved all my recipes to a new
yocto installation and are modifying the recipes where necessary.

I have a very strange error when configuring a kernel recipe
(linux-cubox-i). Actually, there is no error when using the defaut
recipe included in fido. Only if I add the following bbappend file in
order to change the kernel configuration, I get the error:

FILESEXTRAPATHS_prepend := "${THISDIR}/linux-cubox-i:"

SRC_URI = "file://defconfig \
           file://videoin.cfg \
           file://networking.cfg \
           file://wlan.cfg \
           file://dm-crypt.cfg \
           file://no-caam.cfg \
           file://leds.cfg \
           file://mod-to-builtin.cfg \
           file://watchdog-nowayout.cfg \
"

KERNEL_IMAGETYPE_cubox-i = "zImage"


Error:

| DEBUG: Executing python function sysroot_cleansstate
| DEBUG: Python function sysroot_cleansstate finished
| DEBUG: Executing shell function do_configure
| WARNING: exit code 128 from a shell command.
| ERROR: Function failed: do_configure (log file is located at
/home/ubuntu/yocto1.8/build/tmp/work/cubox_i-poky-linux-gnueabi/linux-cubox-i/3.14.14-r0/temp/log.do_configure.29043)


Nothing more in the configure log. :(

Any idea, what is wrong? In general I just want to use a diffent kernel
config. Actually a kernel config that worked before without problems on
dora. I really have no idea, why this isn't working or even what the
error means.

Thanks for any help

Michael


