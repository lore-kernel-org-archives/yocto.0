Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qe0-f49.google.com (mail-qe0-f49.google.com
	[209.85.128.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AD006E016B0
	for <yocto@yoctoproject.org>; Fri,  4 Oct 2013 04:05:02 -0700 (PDT)
Received: by mail-qe0-f49.google.com with SMTP id s14so2708441qeb.22
	for <yocto@yoctoproject.org>; Fri, 04 Oct 2013 04:05:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=SUUtKa1VFxv26U/MJ5JG+QW94LFrGfYmUOJvARCJrgE=;
	b=ArAwfscwaPH285SzAupO/orMpk8lo8NysZuSFZ2P070LuuOKbzP1oSmIAUol+XIC2J
	g00XSH/WI2qNaznprpiMBA5QLx49aqhpPp2WE1PB6kNW+0lzdxoUd0NQnEKQjfCndwKK
	o+qN5XzoP571b17kt1ob2EXtkyarzXJpW6lmQC6XQHjyP9DIIgYMBcJ0Uy//bc3/6ND/
	LVa6Wkcnjt0T5tcZ6JDRpymCloXN2fb/xVuBtKfetRghN9Y79nsRqP4PqeIjadKl3ZPm
	d291S/G/igawBXNA0fzuPYZV5cM/aucGP0UVmx5ZofBC4+yu8HwXaoPi3bYoQ4s6XxfC
	IqPQ==
MIME-Version: 1.0
X-Received: by 10.224.69.132 with SMTP id z4mr16808083qai.78.1380884702163;
	Fri, 04 Oct 2013 04:05:02 -0700 (PDT)
Received: by 10.49.57.197 with HTTP; Fri, 4 Oct 2013 04:05:02 -0700 (PDT)
In-Reply-To: <524E1183.6020907@windriver.com>
References: <BLU169-W9127A348CABC5098CC9ED0B2170@phx.gbl>
	<524DD3BC.7080505@windriver.com>
	<BLU169-W86EB6DD276E984A3F87FAFB2100@phx.gbl>
	<524E1183.6020907@windriver.com>
Date: Fri, 4 Oct 2013 13:05:02 +0200
Message-ID: <CAFyqS9odzK7gxJOffd_+R6e+581Ha4O+ZBKLSiboxZYoKSOn9g@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Cross Compile Kernel Modules
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
X-List-Received-Date: Fri, 04 Oct 2013 11:05:06 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Oct 4, 2013 at 2:53 AM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> On 13-10-03 8:21 PM, Parker Mackenzie wrote:
>>
>> Thanks Bruce,
>>
>> That got me further. I added a comment to the video on YouTube which might
>> help others which stumble across the presentation.
>>
>> Now I get the following error
>> ERROR: Function failed: do_rootfs
>>
>> Which points me to a log file which indicates the following failed:
>>
>>
>> Note: adding Smart RPM DB channel
>>
>> Note: to be installed: packagegroup-core-tools-debug@beagleboard
>> kernel-dev@beagleboard rpm-postinsts@all packagegroup-core-boot@beagleboard
>> libstdc++6@armv7a_vfp_neon
>> Loading cache...
>> Updating cache... ######################################## [100%]
>>
>> Computing transaction...error: Can't install
>> kernel-dev-3.4.43+git0+1bab5bd090948b4cc4c4ed57c834603a3cf9f235_c994390cfa28339cbc1ec3b56eeec83a5fa75bb7-r4.4@beagleboard:
>> no package provides /usr/bin/python
>>
>> Saving cache...
>>
>> ERROR: Function failed: do_rootfs (see
>> /home/parker/Projects/beagleboard/yocto/poky-dylan-9.0.2/build/tmp/work/beagleboard-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/log.do_rootfs.61003
>> for further information)
>>
>>
>> However :
>> [parker@jasper build]$ which python
>> /usr/bin/python
>
>
> That would be your build host's python. The kernel module is pulling it
> in as a dependency for the target, so it needs to be part of the rootfs
> packages.
>
> Check that your have python in your dependencies/image install lists,
> which bitbake -e <your image type> will dump ... among many other
> things :)
>
> Which image type are you building ? core-image-minimal ? Try adding this
> to your local.conf: IMAGE_INSTALL_append = " python"
>
Bruce, is not the proper package to add in this case python-core? I do
not think anything simply provides just "python", or is it?

> Cheers,
>
> Bruce
>
>
>>
>>
>> I have gone through the documentation; however, feel free to point me at a
>> resource if this is a silly new-guy question. An internet search did bring
>> up the following nugget; patch 2/3 sounds related, however, I am not sure
>> how to proceed.
>> http://comments.gmane.org/gmane.comp.handhelds.openembedded.core/34245
>>
>> Thanks in advance,
>> Parker
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

