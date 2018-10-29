Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B71E9E00BD0; Mon, 29 Oct 2018 14:03:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.167.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com
	[209.85.167.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6EE9E00BBF
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 14:03:07 -0700 (PDT)
Received: by mail-oi1-f176.google.com with SMTP id c25-v6so8484992oiy.0
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 14:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=/rIfko6DHGAfrE9TKHG6HJ0fmgaQ3E3hGp11T1RZ60A=;
	b=Ci5gYLPD5Am3NGuBI9RTZYBWNrg0HOqAdG0EQcuuIXVKSPj+fb2zsAn4o+vduna40R
	4sNNP8wi4AJCZjVDkSsqctBQj0x2NzMlPVRzmsm2aTWhJ77oyemLf7SkAw9ZU0/814j0
	imk8qa47328YDMWs5ikWxBJO8/jszsX+WEX5jrETlYl+aMgGMJq/vM2zMysSqc/7B61w
	VmuzTiJVZdBKFF44Plqy5KwpNRDYzG7/kOyAidaH4tzWhDRRiVgwx66IA3x0Fvy0o16I
	bINOGm5ZZbRU4B4vqkIPg6R+Y2WXwbKeh3iQANSprQhOESORSQr9By8B/VLDB7wcHLOM
	D0yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=/rIfko6DHGAfrE9TKHG6HJ0fmgaQ3E3hGp11T1RZ60A=;
	b=fikge1iwsU2+K2OG6IGsXgV4JR2NFMll9/fdAT1q0eqA1Axb/0Rmk15WdWmG0fzCuH
	SVqAgoATwomgsda1W9/gYlVMQCev++D8u6AutX5pn094gqdh01NaUqWFl39LAyGx4+0u
	95it8c3O/v6jhIoTpPFkpHVYWT8yIn67j73Ta+RIJIm02y7ULQaM3cpOg+4PA6XfF144
	S2KWDSvX5o2e2pjbFP2KjsPCywdO2LzLO7qiGVN65KTZmJ0Yr6W4pnF1cVkO50YdYMH2
	rELU94/pDKU/VJjVjw39+pHDsX+OtyxGLXDaZ79y7CIffaWwo5O/b40ICCGpZOHmvxd0
	l7YQ==
X-Gm-Message-State: AGRZ1gIRw/FXoa96BIl2lPAMjvdE0ojs4dsObn9yDuntrMSGzMVoV8VE
	IAdiB+6IAgxGamhkt30yPLr73YITyVGbrhE+AYSlpA/x3KI=
X-Google-Smtp-Source: AJdET5ctd74zqpIDr8DZAP5nFTmPnRSzkWaFR9RsfoFme+m4oe2vU13rJ2IbXsBvoHcbTRFE+y7azMZzfY1J/jnVM30=
X-Received: by 2002:aca:a6db:: with SMTP id
	t88-v6mr10001733oij.225.1540846986980; 
	Mon, 29 Oct 2018 14:03:06 -0700 (PDT)
MIME-Version: 1.0
References: <CA+4=ZEPrnNxV5HAwZ-KA98vFLHzqYbo0MHAb+mj+aq_cr=pHig@mail.gmail.com>
	<CAJTo0LbZTFEEeaZ1hn-7D5XJnurXBDK6FRMT-79wJ8rMWTNicA@mail.gmail.com>
	<CA+4=ZEMiTA8OZSqibcnfU=_POt8+68hwcx9EGX7Ahy2R6TZOiA@mail.gmail.com>
	<CAJTo0LY+hMQgq4U6caqvChq4HUhj0P9OE+rD1ZGCgCH59oYP4Q@mail.gmail.com>
	<CA+4=ZENGPKV6hQbyQ_o3GEtsmuAnFsGhPFHv20iSRODgba=LLA@mail.gmail.com>
In-Reply-To: <CA+4=ZENGPKV6hQbyQ_o3GEtsmuAnFsGhPFHv20iSRODgba=LLA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 29 Oct 2018 21:02:53 +0000
Message-ID: <CAJTo0LagPTdQ__2OfiKjwtDhe8=4T7aOqY3EjnAuqwKQdftnmw@mail.gmail.com>
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
X-List-Received-Date: Mon, 29 Oct 2018 21:03:08 -0000
Content-Type: text/plain; charset="UTF-8"

That is... interesting.

Can you verify that this file has been built by gtk+3?

$ oe-pkgdata-util find-path '*/gdk-x11-3.0.pc'
gtk+3-dev: /usr/lib/pkgconfig/gdk-x11-3.0.pc

If so can you find any gdk-x11-3.0.pc files under
/opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/recipe-sysroot?
 Probably under usr/lib/pkgconfig.

Ross
On Mon, 29 Oct 2018 at 19:34, Joe Flowers <joe.flowers@nofreewill.com> wrote:
>
> HI Ross,
>
> It still doesn't work.
>
>
> local.conf
> https://pastebin.com/2Ng0wSCi
>
>
> log.do_configure.27655
> https://pastebin.com/4EX9vqmK
>
>
> config.log
> https://pastebin.com/DY2FnM7w
>
>
> Thanks for trying to help me.
>
> Joe
> ----------------
>
>
> On Mon, Oct 29, 2018 at 11:43 AM Burton, Ross <ross.burton@intel.com> wrote:
>>
>> x11 is in the default DISTRO_FEATURES for poky, so you don't need to add that.
>>
>> If core-image-x11 works then core-image-sato should build fine.  Try
>> deleting your tmp/ and trying again, if that doesn't work then
>> pastebin both temp/log.do_configure and config.log from the recipe
>> that is failing (matchbox-panel).
>>
>> Ross
>> On Mon, 29 Oct 2018 at 13:21, Joe Flowers <joe.flowers@nofreewill.com> wrote:
>> >
>> > Thanks, Ross.
>> >
>> > 1.
>> > Both of these commands worked:
>> >
>> > MACHINE=wandboard bitbake core-image-x11
>> > MACHINE=wandboard bitbake gtk+3
>> >
>> > 2.
>> > I've attached my local.conf.
>> >
>> > If the attachment does not go through, then I will copy and paste it into my next message.
>> >
>> > Thanks!
>> >
>> > Joe
>> > -------------------------------
>> >
>> >
>> > On Mon, Oct 29, 2018 at 7:54 AM Burton, Ross <ross.burton@intel.com> wrote:
>> >>
>> >> Can you share your local.conf?  Does bitbake gtk+3 work?
>> >>
>> >> Ross
>> >> On Mon, 29 Oct 2018 at 06:42, Joe Flowers <joe.flowers@nofreewill.com> wrote:
>> >> >
>> >> > Hello everyone,
>> >> >
>> >> > 1.
>> >> > I am trying to build a core-image-sato image for a WandBoard but am getting stuck at this error message:
>> >> >
>> >> > "| No package 'gdk-x11-3.0' found"
>> >> >
>> >> > See below for more details.
>> >> >
>> >> >
>> >> > 2.
>> >> > I have grepped this list's archives and run into someone with the same problem, but a solution was never included in the thread.
>> >> >
>> >> > https://lists.yoctoproject.org/pipermail/yocto/2017-December/039149.html
>> >> >
>> >> >
>> >> > Help please.
>> >> >
>> >> > Joe
>> >> >
>> >> > ------------------------------
>> >> >
>> >> > Command
>> >> >
>> >> > MACHINE=wandboard bitbake core-image-sato
>> >> >
>> >> > produces this error message:
>> >> >
>> >> > ...
>> >> > ...
>> >> > | checking for pkg-config... /opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/recipe-sysroot-native/usr/bin/pkg-config
>> >> > | configure: WARNING: using cross tools not prefixed with host triplet
>> >> > | checking pkg-config is at least version 0.9.0... yes
>> >> > | checking for glib-2.0
>> >> > |                   gmodule-export-2.0
>> >> > |                   x11
>> >> > |                   gdk-x11-3.0
>> >> > |                   gtk+-3.0... no
>> >> > | configure: error: Package requirements (glib-2.0
>> >> > |                   gmodule-export-2.0
>> >> > |                   x11
>> >> > |                   gdk-x11-3.0
>> >> > |                   gtk+-3.0) were not met:
>> >> > |
>> >> > | No package 'gdk-x11-3.0' found
>> >> > |
>> >> > | Consider adjusting the PKG_CONFIG_PATH environment variable if you
>> >> > | installed software in a non-standard prefix.
>> >> > |
>> >> > | Alternatively, you may set the environment variables MATCHBOX_PANEL_CFLAGS
>> >> > | and MATCHBOX_PANEL_LIBS to avoid the need to call pkg-config.
>> >> > | See the pkg-config man page for more details.
>> >> > | NOTE: The following config.log files may provide further information.
>> >> > | NOTE: /opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/build/config.log
>> >> > | ERROR: configure failed
>> >> > | WARNING: exit code 1 from a shell command.
>> >> > | ERROR: Function failed: do_configure (log file is located at /opt/yocto/build/tmp/work/cortexa9hf-neon-poky-linux-gnueabi/matchbox-panel-2/2.11-r0/temp/log.do_configure.40754)
>> >> > ERROR: Task (/opt/yocto/sources/poky/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:do_configure) failed with exit code '1'
>> >> > NOTE: Tasks Summary: Attempted 3024 tasks of which 2828 didn't need to be rerun and 1 failed.
>> >> >
>> >> > Summary: 1 task failed:
>> >> >   /opt/yocto/sources/poky/meta/recipes-sato/matchbox-panel-2/matchbox-panel-2_2.11.bb:do_configure
>> >> > Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
>> >> > joe@ubuntu:/opt/yocto/build$
>> >> >
>> >> > ------------------------------
>> >> >
>> >> > --
>> >> > _______________________________________________
>> >> > yocto mailing list
>> >> > yocto@yoctoproject.org
>> >> > https://lists.yoctoproject.org/listinfo/yocto

