Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 084C4E00A85; Mon, 12 Nov 2018 04:30:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f177.google.com (mail-it1-f177.google.com
	[209.85.166.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7CD10E007B3
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2018 04:30:54 -0800 (PST)
Received: by mail-it1-f177.google.com with SMTP id j79-v6so12910787itb.2
	for <yocto@yoctoproject.org>; Mon, 12 Nov 2018 04:30:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=eeURqYzGpgVgK9aYBQMk1buTxpOiHGxt2p8u60IYNt4=;
	b=qfTh7S52uXDUe5kcYNezhfEodnuJJfXwjkIuA/moFDD6mZdy/d3oJpx1cSVpxVeppX
	igt0tzvRqWHuD2Xkc3P7hWPydxFaUcf+sz+aRcz7nZXcmYMvRFcEL522dFR+JNdFfgfO
	vpNQ9grpX1/NZKgAkR9G5Lfic5xu5aJ2tPQdcoqZErOqliRqaaKb6QZox4PmSiS86zT6
	hyo1O7XiRbNyHPyzyzJ+ihI0E6pJ0Ha7NaLL51FpqYG5gbN31SBUZMQryNQhbFsuxPgu
	wJCFhdqEh6OG1N6Mvq+OPzPCVI+uxEol4YKHJO5RWDbw4XBxtwU6LB7z5Rjg74/AYO3s
	7eXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=eeURqYzGpgVgK9aYBQMk1buTxpOiHGxt2p8u60IYNt4=;
	b=su+WlkbPF3jLkzkFbmO9GVSzwT8UPXWVM9xwFkgR6QPU/E47fu9qsRXWjlYoKH258y
	Hn8rYo0xX2Fbigtclt9w5G9RZYb85unaWN9jpPyV85o/39hmYGTAeIsNB9uDxd5jiWAS
	gBrop4z0w6RJhmhTCBCaJzdZUPujkE3FSKYb8j4krVQwLc4QuThptdB1Z/xjSzb2Svng
	RA5TWauZ6/1LywuHm4fLI0vJ1ljW7lCzINnuO9hfhj6qm9uP2vgd5wOChPv3clDJkzjN
	fjxebW+QD+7ESnf/ErnSKwvgW3iSkfoo4vXwakXX8KEmUlYSHH/A3cleT1OZHkFCSeHN
	LM3Q==
X-Gm-Message-State: AGRZ1gLhulQb0sHGlpY0gKSBQBRiqmi2RPDMkuBIaJYQFIjPx9M4zOr7
	dY4UjwG+Pb2KqcQ7hfLdLid2XpKpsfl125ieUc30ltZh
X-Google-Smtp-Source: AJdET5db67wWswtohFQbiJREksD6YTbrr0DFR1xVRqsDxhqmSfJXu2m3NZiIr4FyalIWvJyzITy0M3TF6da/DrLe0h0=
X-Received: by 2002:a24:9142:: with SMTP id
	i63-v6mr12364193ite.130.1542025853812; 
	Mon, 12 Nov 2018 04:30:53 -0800 (PST)
MIME-Version: 1.0
References: <CAOT_U5Y5cpc5e0wLm92PDZxjjTVedxc6enHrVV4-8GN-ZFcYQQ@mail.gmail.com>
In-Reply-To: <CAOT_U5Y5cpc5e0wLm92PDZxjjTVedxc6enHrVV4-8GN-ZFcYQQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 12 Nov 2018 12:30:42 +0000
Message-ID: <CAJTo0Lbnde9NX7XYGzD2UU78-R6bCjN8RvRPMvomYDnnV66sgQ@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: CONFFILES journey form source dir to rootfs
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
X-List-Received-Date: Mon, 12 Nov 2018 12:30:55 -0000
Content-Type: text/plain; charset="UTF-8"

The standard do_install (which calls make install) copies the file
from the source tree to the staging directory.

Ross
On Mon, 12 Nov 2018 at 11:52, Alan Martinovic <alan.martinovic@senic.com> wrote:
>
> Hi,
> I'm trying to understand how a conf file finds its way from source to
> the rootfs.
>
> The example is use is `journald.conf` from systemd.
> The file originates from systemd source:
>     work/cortexa7hf-neon-vfpv4-senic-linux-gnueabi/systemd/1_234-r0/git/src/journal/journald.conf
>
> In the environment is only mentioned as a part of the CONFFILES.
> [output of `bitbake systemd -e` formated for readability]:
>
>     # $CONFFILES [2 operations]
>     #   set /mnt/data/alan/work/senic-os/oe/meta/conf/documentation.conf:116
>     #     [doc] "Identifies editable or configurable files that are
> part of a package."
>     #   override[systemd]:rename from CONFFILES_${PN} data.py:116 [expandKeys]
>     #     "${sysconfdir}/machine-id
>            ${sysconfdir}/systemd/coredump.conf
>            ${sysconfdir}/systemd/journald.conf
>            ${sysconfdir}/systemd/logind.conf
>            ${sysconfdir}/systemd/system.conf
>            ${sysconfdir}/systemd/user.conf"
>     # pre-expansion value:
>     #   "None"
>     #
>     # $CONFFILES_systemd
>     #   rename from CONFFILES_${PN} data.py:116 [expandKeys]
>     #     "${sysconfdir}/machine-id
>            ${sysconfdir}/systemd/coredump.conf
>            ${sysconfdir}/systemd/journald.conf
>            ${sysconfdir}/systemd/logind.conf
>            ${sysconfdir}/systemd/system.conf
>            ${sysconfdir}/systemd/user.conf"
>     CONFFILES_systemd="/etc/machine-id
>             /etc/systemd/coredump.conf
>             /etc/systemd/journald.conf
>             /etc/systemd/logind.conf
>             /etc/systemd/system.conf
>             /etc/systemd/user.conf"
>
>
> The file successfully ends up at `/etc/systemd/journald.conf`.
>
> Why isn't there an action in the environment showing the copying of
> journald.conf
> from `...git/src/journal/journald.conf` to
> `${sysconfdir}/systemd/journald.conf`?
>
>
> Disclaimer:
> There were also some sed related actions with the file in the environment
> which I dropped to reduce noise.
>
> Be Well,
> Alan
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

