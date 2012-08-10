Return-Path: <kergoth@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B0A4E0034A
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 09:41:58 -0700 (PDT)
Received: by lagr15 with SMTP id r15so1079061lag.35
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2012 09:41:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=83t7FEKExWCJ9ylT0RZWX9fQw+m1XLdY4b6VuotYuNY=;
	b=HsEdM7Hwq4EceOT2dNgas7tIopKxknRKAeo6C18TNFjWxjssstSTG2taaTSeQjaa0G
	vIfykxTmu8SA3krrJi3TrzcNTX/+QAjP4blvkXUx1+esSX/69E6PgvAofqAIhc+vWz3V
	u5j+PkAzMQyMf+VwFXow9XMZ3HnoZUCuHoBbxiEPg2XTux82w7OiHNWpYKumxYzE6iYe
	Pwd2CJibtPiw/WFxmIHfNch8MjXmFfO5oUixCWHrEN7S21epv3Ejt3Kle/D177FDwRAz
	Qh5UlK8seYkB7eXgdt5W8MbakxqF+JBgurml0dq4fwptkY0t7TfIKMpsY8cZpgEBt2/r
	S/rQ==
Received: by 10.152.112.233 with SMTP id it9mr3419091lab.40.1344616917169;
	Fri, 10 Aug 2012 09:41:57 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.5.104 with HTTP; Fri, 10 Aug 2012 09:41:37 -0700 (PDT)
In-Reply-To: <8A8AC1E4-4D09-41DF-9E0C-C7057C54A9FE@gmail.com>
References: <8A8AC1E4-4D09-41DF-9E0C-C7057C54A9FE@gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Fri, 10 Aug 2012 09:41:37 -0700
X-Google-Sender-Auth: fZMtGwxD-6w1ItzMomjfMYsEhBs
Message-ID: <CABcZANmqUK-m648mu_qnQTkTRycpF2mSSJvjr8SsJ5AYB=h04A@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: external-sourcery-toolchain: ERROR: QA Issue: No GNU_HASH in the elf binary
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
X-List-Received-Date: Fri, 10 Aug 2012 16:41:58 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Aug 10, 2012 at 9:37 AM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
>       I'm building with the mentor external-sourcery-toolchain.
>
> I get the following error:
>
> ERROR: QA Issue: No GNU_HASH in the elf binary:
> '/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/zip-3.0-r1/packages-split/zip/usr/bin/zipcloak'
> ERROR: QA Issue: No GNU_HASH in the elf binary:
> '/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/zip-3.0-r1/packages-split/zip/usr/bin/zip'
> ERROR: QA Issue: No GNU_HASH in the elf binary:
> '/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/zip-3.0-r1/packages-split/zip/usr/bin/zipsplit'
> ERROR: QA Issue: No GNU_HASH in the elf binary:
> '/tool/yocto/poky/build/tmp/work/ppc440-poky-linux/zip-3.0-r1/packages-split/zip/usr/bin/zipnote'
> ERROR: QA run found fatal errors. Please consider fixing them.
> ERROR: Function failed: do_package_qa
> ERROR: Logfile of failure stored in:
> /tool/yocto/poky/build/tmp/work/ppc440-poky-linux/zip-3.0-r1/temp/log.do_package.47453
>
> Adding the following statement to zip.bb doesn't fix the problem, like it
> used to when using the gcc-4.x compilers:
>
> TARGET_CC_ARCH += "${LDFLAGS}"

I have bits that work around this by making the ldflags/gnu_hash check
nonfatal when using this toolchain, but they haven't gone into oe-core
yet. See https://github.com/MentorEmbedded/meta-sourcery/blob/master/conf/distro/include/tcmode-external-sourcery.inc#L87-94
for details. You should be able to try a build using this layer, or
just grab those bits and put them into your oe-core
tcmode-external-sourcery.inc.

I haven't had time to pursue this meta-sourcery wrt upstream yet, but
I think in the long term it's the best approach for supporting the
sourcery g++ toolchain. I think all we should keep in oe-core is
either a sample/example config, a link to that layer, or a
configuration for a toolchain that doesn't require as much tweaking
(e.g. tuning arguments), such as crosstool-ng. That isn't related to
your issue, but is why I haven't been quite as proactive about pushing
fixes to the tcmode in oe-core recently.
-- 
Christopher Larson

