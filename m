Return-Path: <wjn740@gmail.com>
Received: from mail-tul01m020-f176.google.com (mail-tul01m020-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBFC7E01217
	for <yocto@yoctoproject.org>; Sun,  5 Feb 2012 17:30:17 -0800 (PST)
Received: by obbwd18 with SMTP id wd18so9065532obb.35
	for <yocto@yoctoproject.org>; Sun, 05 Feb 2012 17:30:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=MRmltbUg0lxbVPUonwSVZRX/atyGuzLXlY5cU1VqTHc=;
	b=TP44opbtKBXqiKhwjfn9fBeNzF2KOwMNYndgX1ZsCu6110RAFO7c+ISoFf2QpZO+67
	Hqy1kdfcpllTT4t+36Bat2oEp5sYAEJmFGWd7SYMOIqcFjRBaeC733TmMhUhpJKfpQZF
	7ZnTIlrtdpZ1nx2zuv0KzF35EHpVlXsq1kOKk=
MIME-Version: 1.0
Received: by 10.182.182.69 with SMTP id ec5mr91117obc.48.1328491817139; Sun,
	05 Feb 2012 17:30:17 -0800 (PST)
Received: by 10.182.47.105 with HTTP; Sun, 5 Feb 2012 17:30:17 -0800 (PST)
In-Reply-To: <000e01cce455$55a1c540$00e54fc0$@sjjmicro.com>
References: <000e01cce455$55a1c540$00e54fc0$@sjjmicro.com>
Date: Mon, 6 Feb 2012 09:30:17 +0800
Message-ID: <CA+FcS-w-6z6ko2XUi9+Hfy2eUxomJ6HF+WySmH16M3Y4yo5BoQ@mail.gmail.com>
From: "James W." <wjn740@gmail.com>
To: Sean Liming <sean_liming@sjjmicro.com>
Cc: yocto@yoctoproject.org
Subject: Re: Build Error
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
X-List-Received-Date: Mon, 06 Feb 2012 01:30:17 -0000
Content-Type: text/plain; charset=UTF-8

i suppose try again ,again, and again.

On Mon, Feb 6, 2012 at 6:27 AM, Sean Liming <sean_liming@sjjmicro.com> wrote:
> I am new developer to Yocto and embedded Linux in general
>
>
>
> Host machine: i3 with 4GB RAM
>
> OS: Ubuntu 11.10 64-bit
>
>
>
> I am following the online quick start guide, and looks like the end of
> bitbake runs into several errors:
>
>
>
> ERROR: Task 1136
> (/home/sean/poky-edison-6.0/meta/recipes-sato/pimlico/contacts_git.bb,
> do_configure) failed with exit code '1'
>
> ERROR:
> '/home/sean/poky-edison-6.0/meta/recipes-devtools/icon-naming-utils/icon-naming-utils-native_0.8.7.bb'
> failed
>
> ERROR:
> '/home/sean/poky-edison-6.0/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.1.bb'
> failed
>
> ERROR:
> '/home/sean/poky-edison-6.0/meta/recipes-support/libfm/libfm_0.1.14.bb'
> failed
>
> ERROR:
> '/home/sean/poky-edison-6.0/meta/recipes-gnome/gnome/gnome-vfs_2.24.4.bb'
> failed
>
> ERROR: '/home/sean/poky-edison-6.0/meta/recipes-support/vte/vte_0.24.3.bb'
> failed
>
> ERROR:
> '/home/sean/poky-edison-6.0/meta/recipes-sato/puzzles/oh-puzzles_git.bb'
> failed
>
> ERROR:
> '/home/sean/poky-edison-6.0/meta/recipes-connectivity/connman/connman-gnome_0.5.bb'
> failed
>
> ERROR: '/home/sean/poky-edison-6.0/meta/recipes-sato/pimlico/tasks_0.19.bb'
> failed
>
> ERROR: '/home/sean/poky-edison-6.0/meta/recipes-sato/pimlico/dates_git.bb'
> failed
>
> ERROR:
> '/home/sean/poky-edison-6.0/meta/recipes-sato/pimlico/contacts_git.bb'
> failed
>
>
>
> Looking back at the build process, one error calls out a package that cannot
> be downloaded:
> http://tango.freedesktop.org/releases/icon-naming-utils-0.8.7.tar.gz
>
>
>
> I have attached errors some of the log files. The common error appears to be
> oe_runconf failed.
>
>
>
> Did I miss configure something? Wrong python version?
>
> There was a post about the dash vs. bash shell. I am not sure what shell is
> supposed to be using:
>
>
>
> The instructions say run sudo dpkg-reconfigure dash and say no. Nothing in
> the message popup says what is the shell.
>
>
>
> Thanks for any help.
>
>
>
> Regards,
>
>
>
> Sean
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

