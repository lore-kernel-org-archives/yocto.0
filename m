Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87F09E00BBF; Mon, 29 Oct 2018 08:43:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.52 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
	[209.85.210.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C2D37E00A1A
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 08:43:17 -0700 (PDT)
Received: by mail-ot1-f52.google.com with SMTP id g25so8013500otl.0
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 08:43:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=YJ3K6QVz9pm0dqSF6UZ/AzW+JMFtChqUzb4kdPjClHw=;
	b=ck0cxRtio7JrEKmPckunOyaEbPvXVzDjvEB6pBtRiLDOIpnIB3SskN0NJQUBUVfA4i
	8Vj6GEyVewrMcoliws8Ocd8rcqz6zpJvayDg+fPAWe209CFDK9AttTGScI4r3hy5TLmS
	q4NFy2fMSGHy7LacD+9G8gw+BfXYzxpF/gWM5+ZAWdxENP6YVQxyqiok2/0821y1hb8a
	P1yVf8Mt5TrYmZyrc64n4D4ruU7tvJHjH6IozcV2KjKTWqhT9QjQmO9uLi0GWOThMGgP
	yMv/epTYCa7E9v/DxfYKx247HY8zmBabn7YKutlcYJoLuCnlOOP/cwmyGk/jUppqsusp
	zwKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=YJ3K6QVz9pm0dqSF6UZ/AzW+JMFtChqUzb4kdPjClHw=;
	b=PvV8r+rvztv4E9oAIPCl9iPATA85nCZ9LsyCTyvFEHqMUT5ZcqG5SaF7IdMvw9Pyxe
	vN+ZhYacsN4KIB/gthqNycUKzNTaiUmrZtXV9OYkuT1Kneiyp9kR13kLg6vTbwYBBOSS
	VmHbGls5jfn76oxndX++bH2Ys9/BEQ0O/jtPBqaN7QuIaJGl2PB5t7r3zfpToICDrpuV
	QQSsk1RF5OMyxrT21PcflDMBXR88qdEs3Wh7pw39nyspAow6fGH+yTYFMDiwyMyTepfn
	5YNU7aK6bLA2KjRlaQ8bpSfI/T0loD4RNy78+uo+K0iBvnSn0GAZXs4S2pRNeeJSNBN5
	iX0Q==
X-Gm-Message-State: AGRZ1gKBH5rd3N1UqF++ghQ63MnqwAEA7MTrf51RC2Ksi2V2cNSIcL1k
	+SNILnV165nndeLTmfKWVz5TSNfftMVhyW8UdzIswA==
X-Google-Smtp-Source: AJdET5dAuZNQs6aNLQewPDn/YlNFW42jsxZT1JQ2fEFMFN7/slxvr+7r0ojzWZw41pMPEll+hJcJB6rknCHo6CrSsVE=
X-Received: by 2002:a9d:30ae:: with SMTP id s46mr9750775otc.132.1540827796921; 
	Mon, 29 Oct 2018 08:43:16 -0700 (PDT)
MIME-Version: 1.0
References: <CA+4=ZEPrnNxV5HAwZ-KA98vFLHzqYbo0MHAb+mj+aq_cr=pHig@mail.gmail.com>
	<CAJTo0LbZTFEEeaZ1hn-7D5XJnurXBDK6FRMT-79wJ8rMWTNicA@mail.gmail.com>
	<CA+4=ZEMiTA8OZSqibcnfU=_POt8+68hwcx9EGX7Ahy2R6TZOiA@mail.gmail.com>
In-Reply-To: <CA+4=ZEMiTA8OZSqibcnfU=_POt8+68hwcx9EGX7Ahy2R6TZOiA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 29 Oct 2018 15:43:05 +0000
Message-ID: <CAJTo0LY+hMQgq4U6caqvChq4HUhj0P9OE+rD1ZGCgCH59oYP4Q@mail.gmail.com>
To: joe.flowers@nofreewill.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: "bitbake core-image-sato" yields "No package 'gdk-x11-3.0' found" build failure
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
X-List-Received-Date: Mon, 29 Oct 2018 15:43:18 -0000
Content-Type: text/plain; charset="UTF-8"

x11 is in the default DISTRO_FEATURES for poky, so you don't need to add that.

If core-image-x11 works then core-image-sato should build fine.  Try
deleting your tmp/ and trying again, if that doesn't work then
pastebin both temp/log.do_configure and config.log from the recipe
that is failing (matchbox-panel).

Ross
On Mon, 29 Oct 2018 at 13:21, Joe Flowers <joe.flowers@nofreewill.com> wrote:
>
> Thanks, Ross.
>
> 1.
> Both of these commands worked:
>
> MACHINE=wandboard bitbake core-image-x11
> MACHINE=wandboard bitbake gtk+3
>
> 2.
> I've attached my local.conf.
>
> If the attachment does not go through, then I will copy and paste it into my next message.
>
> Thanks!
>
> Joe
> -------------------------------
>
>
> On Mon, Oct 29, 2018 at 7:54 AM Burton, Ross <ross.burton@intel.com> wrote:
>>
>> Can you share your local.conf?  Does bitbake gtk+3 work?
>>
>> Ross
>> On Mon, 29 Oct 2018 at 06:42, Joe Flowers <joe.flowers@nofreewill.com> wrote:
>> >
>> > Hello everyone,
>> >
>> > 1.
>> > I am trying to build a core-image-sato image for a WandBoard but am getting stuck at this error message:
>> >
>> > "| No package 'gdk-x11-3.0' found"
>> >
>> > See below for more details.
>> >
>> >
>> > 2.
>> > I have grepped this list's archives and run into someone with the same problem, but a solution was never included in the thread.
>> >
>> > https://lists.yoctoproject.org/pipermail/yocto/2017-December/039149.html
>> >
>> >
>> > Help please.
>> >
>> > Joe
>> >
>> > ------------------------------
>> >
>> > Command
>> >
>> > MACHINE=wandboard bitbake core-image-sato
>> >
>> > produces this error message:
>> >
>> > ...
>> > ...
>> > | checking for pkg-config... /opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/recipe-sysroot-native/usr/bin/pkg-config
>> > | configure: WARNING: using cross tools not prefixed with host triplet
>> > | checking pkg-config is at least version 0.9.0... yes
>> > | checking for glib-2.0
>> > |                   gmodule-export-2.0
>> > |                   x11
>> > |                   gdk-x11-3.0
>> > |                   gtk+-3.0... no
>> > | configure: error: Package requirements (glib-2.0
>> > |                   gmodule-export-2.0
>> > |                   x11
>> > |                   gdk-x11-3.0
>> > |                   gtk+-3.0) were not met:
>> > |
>> > | No package 'gdk-x11-3.0' found
>> > |
>> > | Consider adjusting the PKG_CONFIG_PATH environment variable if you
>> > | installed software in a non-standard prefix.
>> > |
>> > | Alternatively, you may set the environment variables MATCHBOX_PANEL_CFLAGS
>> > | and MATCHBOX_PANEL_LIBS to avoid the need to call pkg-config.
>> > | See the pkg-config man page for more details.
>> > | NOTE: The following config.log files may provide further information.
>> > | NOTE: /opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/build/config.log
>> > | ERROR: configure failed
>> > | WARNING: exit code 1 from a shell command.
>> > | ERROR: Function failed: do_configure (log file is located at /opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/temp/log.do_configure.40754)
>> > ERROR: Task (/opt/yocto/sources/poky/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:do_configure) failed with exit code '1'
>> > NOTE: Tasks Summary: Attempted 3024 tasks of which 2828 didn't need to be rerun and 1 failed.
>> >
>> > Summary: 1 task failed:
>> >   /opt/yocto/sources/poky/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:do_configure
>> > Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
>> > joe@ubuntu:/opt/yocto/build$
>> >
>> > ------------------------------
>> >
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto

