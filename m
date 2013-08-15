Return-Path: <lschwab@xeralux.com>
Received: from mail-ee0-f44.google.com (mail-ee0-f44.google.com [74.125.83.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53931E0073F
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2013 16:47:54 -0700 (PDT)
Received: by mail-ee0-f44.google.com with SMTP id b47so658831eek.3
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2013 16:47:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=PD+mnRnSsOu5OdvQI0DHpeo0ULtI143GcqN/JZ3FyfQ=;
	b=jqFqoYyo3RWgXBrTvyeASoN9j8gbaKiBNN7dEB9EdM6VLlr6GCGFlzRs+nQV2lyUrt
	BfG8M6+v2G4afkrWF5bsBvt/92L8PiWMmowI9FbIrt/Eq6/w/CE2ehrh6A+RcXCm2ALg
	BXcyt1xsQUjf0GyWZUIxXwHcUEMAD2zXdHAbQFh1RU4OMISet+PO6ofB7Pldy4sDXBDK
	iDrfulA7EeiJiL8KqiGgU+Vx6bNrur4MZcU7SeJNwLH7SxCjdTLjqiQU52d8uxLmHRwf
	zsFqGPpkYsJaTSGQ03+iykTrMxFMqhfvvgQGl+pEiFz1ipURtF1XgOgoYXY47Ib5aCVk
	ndAg==
X-Gm-Message-State: ALoCoQmNqHqhaLZeb4Gkrs378Ae/s5d0TiCvWhZSM2BSdvt/7867akSNbp9uJ8U1XK0/bvbME7Qs
MIME-Version: 1.0
X-Received: by 10.14.241.74 with SMTP id f50mr26027972eer.29.1376610472951;
	Thu, 15 Aug 2013 16:47:52 -0700 (PDT)
Received: by 10.14.139.65 with HTTP; Thu, 15 Aug 2013 16:47:52 -0700 (PDT)
In-Reply-To: <CALb2248DaSMOHnP7EgXk9pBADkwsRWzuYaROyv6Nc5SZehJbAA@mail.gmail.com>
References: <CALb224_XTEf-9eX9d9ERZpHv7RRm_hGM8N8N6d+x-oSswrH-qA@mail.gmail.com>
	<520D205C.2060105@linux.intel.com>
	<CALb224-nFp88Eq_NqoPUo9pcDJ7KS6ysQbgcKuORPqDH2nUP7w@mail.gmail.com>
	<520D2EE7.30708@linux.intel.com>
	<CALb2248DaSMOHnP7EgXk9pBADkwsRWzuYaROyv6Nc5SZehJbAA@mail.gmail.com>
Date: Thu, 15 Aug 2013 16:47:52 -0700
Message-ID: <CALb2249f=iEeqpSG9-PtnVa=u2t-Qe-Nco=sF4iALa85EdHvfQ@mail.gmail.com>
From: Leo Schwab <lschwab@sensity.com>
To: Leo Schwab <lschwab@sensity.com>
Cc: yocto@yoctoproject.org
Subject: Re: How Does Yocto Fill In UBOOT_MACHINE?
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
X-List-Received-Date: Thu, 15 Aug 2013 23:47:55 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 15, 2013 at 1:21 PM, Leo Schwab <lschwab@sensity.com> wrote:
> Still not entirely clear why the results differ.
>
I still haven't figured out why those two runs are different, but I
think I see what I might have done wrong with the .bbappend file.  Put
briefly: I copy-pasted Freescale's work.

Again, my u-boot-imx_2009.08.bbappend file:

----
FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

SRC_URI_append_ourboard = "file://u-boot-ourboard.patch"

UBOOT_MACHINE_ourboard = "mx6_ourboard_config"
----

The reason I put a UBOOT_MACHINE_ourboard assignment in there at all
is because Freescale does something similar in their
meta-fsl-arm/recipes-bsp/u-boot/u-boot-imx_2009.08.bb file for all
their development boards:

----
[ ...blah, blah, blah... ]
UBOOT_MACHINE_imx53qsb = "mx53_loco_config"
UBOOT_MACHINE_imx53ard = "mx53_ard_ddr3_config"
UBOOT_MACHINE_imx51evk = "mx51_bbg_config"
UBOOT_MACHINE_imx6qsabrelite = "mx6q_sabrelite_config"
UBOOT_MACHINE_imx6qsabreauto = "mx6q_sabreauto_config"
UBOOT_MACHINE_imx6qsabresd = "mx6q_sabresd_config"
UBOOT_MACHINE_imx6dlsabresd = "mx6dl_sabresd_config"
UBOOT_MACHINE_imx6slevk = "mx6sl_evk_config"
UBOOT_MACHINE_imx28evk = "mx28_evk_config"
[ ... ]
----

Near as I can tell, however, these override assignments are redundant,
as they have machine definitions located at
meta-fsl-arm/conf/machine/*.conf, each of which assigns a value to
UBOOT_MACHINE.  Indeed, if I'm reading the bitbake docs correctly, the
above assignments will override any UBOOT_MACHINE assignment in any
other machine/*.conf file (this potential gotcha is currently obscured
by the fact that the same value is assigned in both places).

From this, I conclude that I should remove the UBOOT_MACHINE_ourboard
assignment from my .bbappend file entirely, since the OVERRIDES
facility doesn't really buy me anything in this instance, and
(manifestly) leads to confusion.  Does that seem reasonable?

Schwab

