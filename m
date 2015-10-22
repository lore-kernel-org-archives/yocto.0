Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A660CE00B1A; Thu, 22 Oct 2015 12:05:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 653CFE00AF6
	for <yocto@yoctoproject.org>; Thu, 22 Oct 2015 12:05:21 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 22AF2F8119A; Thu, 22 Oct 2015 13:05:20 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 94833F8119A;
	Thu, 22 Oct 2015 13:05:19 -0600 (MDT)
To: yocto@yoctoproject.org
References: <167A17EDB344B047B2D335D8E4C5A2FAA4DE5180@EX2010-CO-02.AERO.BALL.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <562933A5.8060505@mlbassoc.com>
Date: Thu, 22 Oct 2015 13:06:13 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <167A17EDB344B047B2D335D8E4C5A2FAA4DE5180@EX2010-CO-02.AERO.BALL.com>
Subject: Re: using do_install_append?
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
X-List-Received-Date: Thu, 22 Oct 2015 19:05:25 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 2015-10-22 12:26, Smith, Daniel W wrote:
> Hello,
>
> This seems like it should be an easy task, but perhaps I’m missing something very basic so it is not working.
>
> I have working recipe that installs the fluxbox window manager.  However I want to customize the default runtime configuration files located in /usr/share/fluxbox.  To do this I
> created fluxbox_1.3.5.bbappend in order to replace the default configuration files with my own.
>
> This file contains the following:
>
> FILESEXTRAPATHS_prepend_poky := "${THISDIR}/files:"
>
> SRC_URI = "file://apps \
>
>             file://init \
>
>             file://keys \
>
>             file://menu \
>
>             file://overlay \
>
>             file://windowmenu "

Shouldn't this be SRC_URI_append ?  Otherwise, your .bbappend will be
writing over the SRC_URI from the original recipe.

Also, please CC your replies to the list so that everyone benefits.

>
> #
>
> # Install the customized Fluxbox configuration files.
>
> #
>
> do_install_append() {
>
>    install -m 0644 ${WORKDIR}/apps          ${D}{datadir}/fluxbox/apps
>
>    install -m 0644 ${WORKDIR}/init          ${D}{datadir}/fluxbox/init
>
>    install -m 0644 ${WORKDIR}/keys          ${D}{datadir}/fluxbox/keys
>
>    install -m 0644 ${WORKDIR}/menu          ${D}{datadir}/fluxbox/menu
>
>    install -m 0644 ${WORKDIR}/windowmenu    ${D}{datadir}/fluxbox/windowmenu
>
> }
>
> However now when I bitbake fluxbox it fails to configure:
>
> ERROR: Function failed: fluxbox: LIC_FILES_CHKSUM points to an invalid file: /export/home/dwsmith/poky-fido-13.0.0/build/tmp/work/ppc7400-poky-linux/fluxbox/1.3.5-r0/git/COPYING
>
> ERROR: Logfile of failure stored in: /export/home/dwsmith/poky-fido-13.0.0/build/tmp/work/ppc7400-poky-linux/fluxbox/1.3.5-r0/temp/log.do_configure.32643
>
> Log data follows:
>
> | DEBUG: Executing python function sysroot_cleansstate
>
> | DEBUG: Python function sysroot_cleansstate finished
>
> | DEBUG: SITE files ['endian-big', 'bit-32', 'powerpc-common', 'common-linux', 'common-glibc', 'powerpc32-linux', 'powerpc-linux', 'common']
>
> | DEBUG: Executing shell function autotools_preconfigure
>
> | DEBUG: Shell function autotools_preconfigure finished
>
> | DEBUG: Executing python function autotools_copy_aclocals
>
> | DEBUG: Python function autotools_copy_aclocals finished
>
> | DEBUG: Executing shell function do_configure
>
> | NOTE: nothing to configure
>
> | DEBUG: Shell function do_configure finished
>
> | DEBUG: Executing python function do_qa_configure
>
> | NOTE: Checking autotools environment for common misconfiguration
>
> | DEBUG: Python function do_qa_configure finished
>
> | ERROR: Function failed: fluxbox: LIC_FILES_CHKSUM points to an invalid file: /export/home/dwsmith/poky-fido-13.0.0/build/tmp/work/ppc7400-poky-linux/fluxbox/1.3.5-r0/git/COPYING
>
> ERROR: Task 5 (/export/home/dwsmith/poky-fido-13.0.0/meta-lightwm-master/recipes-fluxbox/fluxbox/fluxbox_1.3.5.bb, do_configure) failed with exit code '1'
>
> NOTE: Tasks Summary: Attempted 793 tasks of which 792 didn't need to be rerun and 1 failed.
>
> Why would adding a do_install_append cause the config to now fail?  What am I missing?  I can remove  fluxbox_1.3.5.bbappend and it works fine, so there is obviously something I’m
> not doing right.
>
> Thanks for nay help you can provide.
>
> -Daniel Smith
>
>
>
> This message and any enclosures are intended only for the addressee. Please
> notify the sender by email if you are not the intended recipient. If you are
> not the intended recipient, you may not use, copy, disclose, or distribute this
> message or its contents or enclosures to any other person and any such actions
> may be unlawful. Ball reserves the right to monitor and review all messages
> and enclosures sent to or from this email address.
>
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

