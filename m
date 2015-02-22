Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C76E8E006B5; Sun, 22 Feb 2015 11:32:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.49 listed in list.dnswl.org]
Received: from mail-la0-f49.google.com (mail-la0-f49.google.com
	[209.85.215.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2AE84E003AB
	for <yocto@yoctoproject.org>; Sun, 22 Feb 2015 11:32:38 -0800 (PST)
Received: by labgd6 with SMTP id gd6so14730063lab.7
	for <yocto@yoctoproject.org>; Sun, 22 Feb 2015 11:32:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=B+zocq2aTw383kaJm0RXMC5tTELlfnk96xOtf4FYtZA=;
	b=HpI7aHDC/GRXcuuUpTGtbrfbvgSpWB/nwcSZF+YcS11SQe4fC7Jlotr+FzDzWFVtqz
	+qu5jN4VbTsRVPGXU5udxkIdBjacGfdJcFTe7Q6KoCcmYk0RroqlYagiIT4p6hnk1x69
	siQn0YISrwf1azWBUZZQ/NwFPRS2oUdJD7hvmbcZ0IO07avrenUVUMcGc+9h8bzoQXRE
	cNkWmRfMo+P2WYZik6MFCg/h/nb5SLOtg9Qev3VkCLDP958aVBpohLQhcPIYusAGiJCS
	dV2S/sP3kf3igVigSeKcpVTYK5JmsCteh4jYVFfHwTJ8DdceTLsm6R7ivLQAOK4YGcdI
	YaTg==
MIME-Version: 1.0
X-Received: by 10.152.28.5 with SMTP id x5mr6721994lag.112.1424633556230; Sun,
	22 Feb 2015 11:32:36 -0800 (PST)
Received: by 10.112.40.11 with HTTP; Sun, 22 Feb 2015 11:32:36 -0800 (PST)
In-Reply-To: <CAAKMwipbvKwqWGbB1HMtxSEets6V7So1usw1dqqf6zw8OLbQ8g@mail.gmail.com>
References: <CAAKMwipbvKwqWGbB1HMtxSEets6V7So1usw1dqqf6zw8OLbQ8g@mail.gmail.com>
Date: Sun, 22 Feb 2015 14:32:36 -0500
Message-ID: <CADkTA4Pi8GvttGGxT5f=Z7NyYkMP5bAy-D56oist1Et_N0e5kQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: kaiu@gmx.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: WARNING: QA Issue
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
X-List-Received-Date: Sun, 22 Feb 2015 19:32:56 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 22, 2015 at 10:32 AM, Kai Ulrich <kaiu@gmx.de> wrote:
> Hi,
>
>
> During a "bitbake  core-image-sato-sdk"
> WARNING: QA Issue: smstools3 requires /bin/bash, but no providers in its
> RDEPENDS [file-rdeps]
>
> You can find the sources
> https://github.com/kaiulrich/meta-smstools3
>
> Any thing I can do against this?

Just add bash to the RDEPENDS of the package and send patch .. and if
you for some reason don't want bash on the target, you'll need to look at
the sources, determine if it really needs bash. If it doesn't changing
an explicit
#!/bin/bash to #!/bin/sh fixes things. If there are bashisms, you
either live with
it, or patch the scripts to not be bash specific.

You could of course inhibit the warning .. but that's just hiding from the issue
and you will have runtime issues if those scripts are ever run.

Cheers,

Bruce

>
>
> Friendly regards
> Kai
>
> log.do_package_qa:
> DEBUG: Executing python function sstate_task_prefunc
> DEBUG: Python function sstate_task_prefunc finished
> DEBUG: Executing python function do_package_qa
> NOTE: DO PACKAGE QA
> DEBUG: Executing python function read_subpackage_metadata
> DEBUG: Python function read_subpackage_metadata finished
> NOTE: Checking Package: smstools3-dbg
> NOTE: i586-poky-linux-objdump -p
> /home/kulrich/Develpment/yocto/dizzy/poky/build_test/tmp/work/i586-poky-linux/smstools3/3.1.15-r0/packages-split/smstools3-dbg/usr/bin/.debug/smsd
> NOTE: Checking Package: smstools3-staticdev
> NOTE: Checking Package: smstools3-dev
> NOTE: Checking Package: smstools3-doc
> NOTE: Checking Package: smstools3-locale
> NOTE: Checking Package: smstools3
> NOTE: i586-poky-linux-objdump -p
> /home/kulrich/Develpment/yocto/dizzy/poky/build_test/tmp/work/i586-poky-linux/smstools3/3.1.15-r0/packages-split/smstools3/usr/bin/smsd
> WARNING: QA Issue: smstools3 requires /bin/bash, but no providers in its
> RDEPENDS [file-rdeps]
> NOTE: DONE with PACKAGE QA
> DEBUG: Python function do_package_qa finished
> DEBUG: Executing python function sstate_task_postfunc
> NOTE: Using umask 002 (not 22) for sstate packaging
> DEBUG: Executing python function sstate_hardcode_path
> NOTE: Removing hardcoded paths from sstate package: 'find
> /home/kulrich/Develpment/yocto/dizzy/poky/build_test/tmp/work/i586-poky-linux/smstools3/3.1.15-r0/sstate-build-package_qa/
> \( -name "*.la" -o -name "*-config" -o -name "*_config" \) -type f | xargs
> grep -l -e
> '/home/kulrich/Develpment/yocto/dizzy/poky/build_test/tmp/sysroots/qemux86'
> | tee
> /home/kulrich/Develpment/yocto/dizzy/poky/build_test/tmp/work/i586-poky-linux/smstools3/3.1.15-r0/sstate-build-package_qa/fixmepath
> | xargs --no-run-if-empty sed -i -e
> 's:/home/kulrich/Develpment/yocto/dizzy/poky/build_test/tmp/sysroots/qemux86:FIXMESTAGINGDIRHOST:g''
> DEBUG: Python function sstate_hardcode_path finished
> DEBUG: Executing shell function sstate_create_package
> DEBUG: Shell function sstate_create_package finished
> DEBUG: Python function sstate_task_postfunc finished
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

