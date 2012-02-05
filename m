Return-Path: <autif.mlist@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97019E0123F
	for <yocto@yoctoproject.org>; Sun,  5 Feb 2012 15:26:27 -0800 (PST)
Received: by pbcc11 with SMTP id c11so5747783pbc.35
	for <yocto@yoctoproject.org>; Sun, 05 Feb 2012 15:26:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=YTH6KdtmK6/jJOEXbM3vISFlxdiAooUuqibPeYNALAA=;
	b=Xysh1uDie9qrIksH4kh3kCY0mtL2l3+dOam6m/6F9WS3XMbprNAl2Vp8ycWVFe54RR
	hxR3RM6s0jzMQGjNuX8ByyAL4deuZkXuN3Ihk8r87I/2Et2ZMT8SxhvjyML7wFeFGiVm
	As/KYnZYqa8ZuQQIwWipHs7OlWkxsPddIP1fo=
MIME-Version: 1.0
Received: by 10.68.232.202 with SMTP id tq10mr42269860pbc.68.1328484383346;
	Sun, 05 Feb 2012 15:26:23 -0800 (PST)
Received: by 10.68.218.10 with HTTP; Sun, 5 Feb 2012 15:26:23 -0800 (PST)
In-Reply-To: <CADzUK1KEnbgKOwwUjAdZbsahNq7pCncYU3Vt0xbC1gOzD3btmQ@mail.gmail.com>
References: <000e01cce455$55a1c540$00e54fc0$@sjjmicro.com>
	<CADzUK1KEnbgKOwwUjAdZbsahNq7pCncYU3Vt0xbC1gOzD3btmQ@mail.gmail.com>
Date: Sun, 5 Feb 2012 18:26:23 -0500
Message-ID: <CADzUK1L0Cw=TLKrCBU9LKuv8ZP9jQ8JUq48qXiCGWOyRa=26Vw@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
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
X-List-Received-Date: Sun, 05 Feb 2012 23:26:27 -0000
Content-Type: text/plain; charset=ISO-8859-1

I also attached the corresponding .done file however, since its size
was 0, it was not attached - dont forget to add a .done file too.

On Sun, Feb 5, 2012 at 6:24 PM, autif khan <autif.mlist@gmail.com> wrote:
> It seems like
>
> wget http://tango.freedesktop.org/releases/icon-naming-utils-0.8.7.tar.gz
>
> return a 500 - Internal server error.
>
> Does not look like you did anything wrong.
>
> However, I do not know a workaround.
>
> I have attached these files from my downloads directory.
>
> You can copy these files in yours and it should get you by for now.
>
> On Sun, Feb 5, 2012 at 5:27 PM, Sean Liming <sean_liming@sjjmicro.com> wrote:
>> I am new developer to Yocto and embedded Linux in general
>>
>>
>>
>> Host machine: i3 with 4GB RAM
>>
>> OS: Ubuntu 11.10 64-bit
>>
>>
>>
>> I am following the online quick start guide, and looks like the end of
>> bitbake runs into several errors:
>>
>>
>>
>> ERROR: Task 1136
>> (/home/sean/poky-edison-6.0/meta/recipes-sato/pimlico/contacts_git.bb,
>> do_configure) failed with exit code '1'
>>
>> ERROR:
>> '/home/sean/poky-edison-6.0/meta/recipes-devtools/icon-naming-utils/icon-naming-utils-native_0.8.7.bb'
>> failed
>>
>> ERROR:
>> '/home/sean/poky-edison-6.0/meta/recipes-graphics/xorg-lib/xkeyboard-config_2.1.bb'
>> failed
>>
>> ERROR:
>> '/home/sean/poky-edison-6.0/meta/recipes-support/libfm/libfm_0.1.14.bb'
>> failed
>>
>> ERROR:
>> '/home/sean/poky-edison-6.0/meta/recipes-gnome/gnome/gnome-vfs_2.24.4.bb'
>> failed
>>
>> ERROR: '/home/sean/poky-edison-6.0/meta/recipes-support/vte/vte_0.24.3.bb'
>> failed
>>
>> ERROR:
>> '/home/sean/poky-edison-6.0/meta/recipes-sato/puzzles/oh-puzzles_git.bb'
>> failed
>>
>> ERROR:
>> '/home/sean/poky-edison-6.0/meta/recipes-connectivity/connman/connman-gnome_0.5.bb'
>> failed
>>
>> ERROR: '/home/sean/poky-edison-6.0/meta/recipes-sato/pimlico/tasks_0.19.bb'
>> failed
>>
>> ERROR: '/home/sean/poky-edison-6.0/meta/recipes-sato/pimlico/dates_git.bb'
>> failed
>>
>> ERROR:
>> '/home/sean/poky-edison-6.0/meta/recipes-sato/pimlico/contacts_git.bb'
>> failed
>>
>>
>>
>> Looking back at the build process, one error calls out a package that cannot
>> be downloaded:
>> http://tango.freedesktop.org/releases/icon-naming-utils-0.8.7.tar.gz
>>
>>
>>
>> I have attached errors some of the log files. The common error appears to be
>> oe_runconf failed.
>>
>>
>>
>> Did I miss configure something? Wrong python version?
>>
>> There was a post about the dash vs. bash shell. I am not sure what shell is
>> supposed to be using:
>>
>>
>>
>> The instructions say run sudo dpkg-reconfigure dash and say no. Nothing in
>> the message popup says what is the shell.
>>
>>
>>
>> Thanks for any help.
>>
>>
>>
>> Regards,
>>
>>
>>
>> Sean
>>
>>
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>

