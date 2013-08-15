Return-Path: <lschwab@xeralux.com>
Received: from mail-ee0-f50.google.com (mail-ee0-f50.google.com [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A027CE01440
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2013 13:21:49 -0700 (PDT)
Received: by mail-ee0-f50.google.com with SMTP id d51so571568eek.23
	for <yocto@yoctoproject.org>; Thu, 15 Aug 2013 13:21:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=0wbdTIoOPJS9SwDhGWq/6fWzVkOtXJk7GUkOwcIWYHo=;
	b=HJAJEtTDHIFq4QJOdWHz+9/Xjk2jw4sueSa7o79DqpIU9XQS6IGlxZve0N39kzzoNe
	L/3xGP+LY6WxB6QohNdQVLQitJxxlDAnW4oFY1T9Nw6VHLTUSwSRyFHD//Pf6Faatutm
	BtkZOWEb8i50jOjjd8y++oM22tnbp6eGX38MrOxh/+FwD/6Az8/pGwPP5wHYuwOK91hY
	76Hos9A1FSzOv4ynsGgJzkpJNWT3uwm3217mBir5nGkPyTLPHQmmS4KViehA8ueYeYoC
	eUpZ6iIXHPRUB5Hijq72KG3BTUuJ9JQpz7oTcHp+VZ8BLvJ+HKA+Mu1cUlLPkBaKXf6z
	DffA==
X-Gm-Message-State: ALoCoQmhi2NiRabpXKwFLzpgZNWale/2LN5vmq0tX5mI+g2gsFXvDNBhydblG7308g371uM2QDGD
MIME-Version: 1.0
X-Received: by 10.15.54.199 with SMTP id t47mr24675075eew.46.1376598108382;
	Thu, 15 Aug 2013 13:21:48 -0700 (PDT)
Received: by 10.14.139.65 with HTTP; Thu, 15 Aug 2013 13:21:48 -0700 (PDT)
In-Reply-To: <520D2EE7.30708@linux.intel.com>
References: <CALb224_XTEf-9eX9d9ERZpHv7RRm_hGM8N8N6d+x-oSswrH-qA@mail.gmail.com>
	<520D205C.2060105@linux.intel.com>
	<CALb224-nFp88Eq_NqoPUo9pcDJ7KS6ysQbgcKuORPqDH2nUP7w@mail.gmail.com>
	<520D2EE7.30708@linux.intel.com>
Date: Thu, 15 Aug 2013 13:21:48 -0700
Message-ID: <CALb2248DaSMOHnP7EgXk9pBADkwsRWzuYaROyv6Nc5SZehJbAA@mail.gmail.com>
From: Leo Schwab <lschwab@sensity.com>
To: Saul Wold <sgw@linux.intel.com>
Cc: yocto@yoctoproject.org, Leo Schwab <lschwab@sensity.com>
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
X-List-Received-Date: Thu, 15 Aug 2013 20:21:51 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Aug 15, 2013 at 12:41 PM, Saul Wold <sgw@linux.intel.com> wrote:
> What version of oe-core / bitbake are you working with?
>
Umm...  Is 'dylan' a meaningful answer?

> Sound likeyou are trying a clean build, you could just try "bitbake -e
> u-boot" without doing a full build and check those two items, the -e will
> also give you the do_compile() task.
>
Ooo, interesting.  'bitbake -e' all by itself gives me this:

----
# $UBOOT_MACHINE
#   set /home/ewhac/devel/iMX6/fsl-community-bsp/sources/meta-belis3/conf/machine/ourboard.conf:12
#     "mx6dl_sabresd_config"
UBOOT_MACHINE="mx6dl_sabresd_config"
----

But 'bitbake -e u-boot' gives me this:

----
# $UBOOT_MACHINE [4 operations]
#   set /home/ewhac/devel/iMX6/fsl-community-bsp/sources/meta-belis3/conf/machine/ourboard.conf:12
#     "mx6dl_sabresd_config"
#   finalize ast.py:331 [finalize]
#     "was: mx6dl_sabresd_config"
#   override[ourboard]:set
/home/ewhac/devel/iMX6/fsl-community-bsp/sources/meta-belis3/recipes-bsp/u-boot/u-boot-imx_2009.08.bbappend:5
#     "mx6_ourboard_config"
#   finalize override[ourboard]:
#     "mx6_ourboard_config"
# computed:
#   "mx6_ourboard_config"
UBOOT_MACHINE="mx6_ourboard_config"
----

And the generated do_compile() script reflects this.  Still not
entirely clear why the results differ.

Thank you for all the suggestions so far.

Schwab

