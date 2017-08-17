Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 789D7E00DBD; Thu, 17 Aug 2017 11:51:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.196 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.196 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f196.google.com (mail-wr0-f196.google.com
	[209.85.128.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63BE2E00726
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 11:51:23 -0700 (PDT)
Received: by mail-wr0-f196.google.com with SMTP id 49so3751718wrw.5
	for <yocto@yoctoproject.org>; Thu, 17 Aug 2017 11:51:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8Y0eIlWAlkUTIbqlewZkxyCKeAtebWx6gI3jO3yFT3o=;
	b=jdmTLAco0/DxM/XtMeQPL+dmeWR43/FwT5wvlpz6AtycnaeUFlC7ZCTggcjJe1nAYs
	KqxFyai9IteVP4FIYTyh0LnOY+AGcZgeWKKzkO8Rbz7rOhrE65krsid817/crgHdqU3m
	LcKaVYfGkTTGpKZ9yb2bhA0YqMUsIHF5Wd5POqX0PczunjpFSuD6uaqu+jka5MJj8tAs
	+ycCfwkq+RlpFZAfa7p1NRGb935d1/DyA38HmsbTQSC3WwmvpCpPaBqAzpFYhJFVDpsr
	s4GfLPoUUbJKscC7Z2kA3y+MWgHIUeAtqfhMqRl6gTUOuW731uuJGd6f//4GFe2RBIn4
	dMew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8Y0eIlWAlkUTIbqlewZkxyCKeAtebWx6gI3jO3yFT3o=;
	b=PvGgzEAL2DnA/gUgFTAFX2VJ9Z7ZMGjGTRgC/pWa0cusw90Bkj8TV6+sslFBFklnrh
	0mbT7Nk3xwHMlf9WHuC4H9AofO/iPO+EkBdV8aQKi054vAJ9ZtGg93P5OybIyf4pV347
	Rt1KhiYtpfXhhfBwdE4SJzRCQANSniCBmlKKbF345U7rVUUMSIYTvvmS2EUOqlM9iALT
	EV6QNrZf/gxL/dpCNDEjQq1fW8p/wauFXLliZNsayVMz7lxXl71NZ0NC/pka+VwpnVxd
	C3ISxetOccqat2bwoJGAso5yNqbSAHft1e1KsTcMIRoRHr0dS4O6je5tB7mo7s/5kTan
	qQDA==
X-Gm-Message-State: AHYfb5glWoXkaJOiyEGgZ73srpH6ZBZgK0maSI1JhqIDmuBh2R5OT3j7
	tfoL6z41cbOEiVY6MVPFM+qaadTOkg==
X-Received: by 10.28.24.210 with SMTP id 201mr1852857wmy.65.1502995883069;
	Thu, 17 Aug 2017 11:51:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.169.70 with HTTP; Thu, 17 Aug 2017 11:51:22 -0700 (PDT)
In-Reply-To: <0ee7bfc7-9aa1-f1b4-7455-337c7e7233b8@laposte.net>
References: <0ee7bfc7-9aa1-f1b4-7455-337c7e7233b8@laposte.net>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 17 Aug 2017 11:51:22 -0700
Message-ID: <CAJ86T=UQXJPo_99tiQ2VUvFXw6PQQPq=F39VCDJy6g2A797ZFw@mail.gmail.com>
To: idealsim <idealsim@laposte.net>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: [php7] packageconfig apache2 error
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
X-List-Received-Date: Thu, 17 Aug 2017 18:51:25 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Aug 17, 2017 at 1:55 AM, idealsim <idealsim@laposte.net> wrote:
> Hi i would like to add modphp to my image (pyro branch). For this i add this
> to my local.conf :
>
> PACKAGECONFIG_append_pn-php = "apache2 pam"
> IMAGE_INSTALL_append = "\
> apache2 \
> php \
> php-cli \
> "

Slightly off topic, but you should include an explicit leading space
when adding to a space separated list with _append, ie:

  PACKAGECONFIG_append_pn-php = " apache2 pam"

It didn't cause a problem this time because the default value for
PACKAGECONFIG in php.inc includes a trailing space, but it's not good
to rely on that.

> But during the build of php (7.1.0 by default in pyro) i have this error
> during install :
>
> |
> /media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/php-7.1.0/build/shtool
> install -c ext/phar/phar.phar
> /media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/image/usr/bin
> |   page: php-config.1
> | ln -s -f phar.phar
> /media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/image/usr/bin/phar
> | Installing PDO headers:
> /media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/image/usr/include/php/ext/pdo/
> |
> | Notice: unserialize(): Error at offset 394 of 2427 bytes in
> phar:///media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/build/pear/install-pear-nozlib.phar/PEAR/Config.php
> on line 1080
> | ERROR: One of /home/modjo/.pearrc or
> /media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/recipe-sysroot-native/usr/bin/../../etc//pear.conf
> is corrupt, please remove them and try againInstalling header files:
> /media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/image/usr/include/php/
> | install: cannot stat 'libs/libphp5.so': No such file or directory
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_install (log file is located at
> /media/modjo/data1TO/yocto/pyro/quadBuild/tmp/work/udooqdl-poky-linux-gnueabi/php/7.1.0-r0/temp/log.do_install.31439)
> ERROR: Task
> (/media/modjo/data1TO/yocto/pyro/sources/meta-openembedded/meta-oe/recipes-devtools/php/php_7.1.0.bb:do_install)
> failed with exit code '1'
> NOTE: Tasks Summary: Attempted 1283 tasks of which 1276 didn't need to be
> rerun and 1 failed.
>
> To resolve this i change this line (in php.inc) :
>
> Line 179 install -m 755  libs/libphp5.so ${D}${libdir}/apache2/modules
>
> by this one :
>
> Line 179 install -m 755  libs/libphp7.so ${D}${libdir}/apache2/modules
>
> Perhaps this recipe need a patch ?
>
> Modjo
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

