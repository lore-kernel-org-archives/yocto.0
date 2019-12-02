Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web12.532.1575290636554323682
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 Dec 2019 04:43:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=LaLV+VHb;
 spf=pass (domain: gmail.com, ip: 209.85.167.43, mailfrom: sgujic@gmail.com)
Received: by mail-lf1-f43.google.com with SMTP id r14so11599809lfm.5
        for <yocto@lists.yoctoproject.org>; Mon, 02 Dec 2019 04:43:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WZM3KxQ0QygiQnG+S0zGFn8+30n8UsBvRLTmK0V67SY=;
        b=LaLV+VHbpcmaAA1T7kwJ7R1otLX9l6yq5TE8hV35/3JSjxs2cqsJsz+/EMg9DknI4A
         55WsCKtkz3E6cnqZ4Z7/lsQf+0jrZyN6joB9h0Ee/dRjsRMBpCLpRTb1v89kcTZk2zPT
         RRSHRaPDWodsYAVRN/M7AMYVUsEZkFmlhhHmSuAj+fY63m/x02zroqUYNdZbd6Eg8G2n
         t51n88M/p9nUIFfsnzYN/Ww05eIN2xptv9iNW9gn3crCZWs/Ob6jWuj0Y6ZiOh/TQs0U
         P0BHfcW2EvE0HcJ6ahOL9p6ZKiB67qP5YumLSZWMoKxUjOGUPuCHPsT1QKJhFVPXg+y2
         t+Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WZM3KxQ0QygiQnG+S0zGFn8+30n8UsBvRLTmK0V67SY=;
        b=FHLRKc0WiUusD/ll1jMlXpwFNjppkJKbkRuBqszXJnpcSU58K6dc2VWQAYez/8B8HV
         qZk8iIW8mfJdFJV+gpS1e/rra7tnBXPD1DpFC5UK8ls3CGBnUnK9uG9pX353Mdhp2epQ
         7KGRXoaSy2kIEX93f+dI5MIYWBCw1AwGItZLI8Tmizh9e67qoMifnzNLVaEYPlCScPaX
         cP9rQnrqbmUEWObmNd1wAUl4mTPslgtvu51vzNr3h4iX60i8BEdQ5jhgIZ6Y1nJzPjef
         lqCTa1nvIPZ9PvhkMzOrIbQ2LA/W0K9qKQA1LlzEzNgIIE8IhEERAnTApMt8nBNb6zRa
         hsOg==
X-Gm-Message-State: APjAAAXfq5f/84l2ptUYaVWfyx9kqqrb5hx7kHMmVSFP9szN86rQCFD4
	dumX+C4XIwy8DWm6xXsXl2uhncsQo6L58/0DCMM=
X-Google-Smtp-Source: APXvYqx9gz3ZTwDUdRXqNoZc9i2rxS7oSR/2eT0f2joTnO2BI0AZ9VgV3QS2ILy/syO0wHYqS/I8XUkIaLWYP/rwUYY=
X-Received: by 2002:a19:84d:: with SMTP id 74mr42166078lfi.122.1575290634492;
 Mon, 02 Dec 2019 04:43:54 -0800 (PST)
MIME-Version: 1.0
References: <15DBB17AE3A7E664.7552@lists.yoctoproject.org>
In-Reply-To: <15DBB17AE3A7E664.7552@lists.yoctoproject.org>
From: "Sinisa" <sgujic@gmail.com>
Date: Mon, 2 Dec 2019 13:44:58 +0100
Message-ID: <CA+OPWonuBa2NUy=40aPehPMEz7=-ww_5TuR83qDkCShNzPe0Yw@mail.gmail.com>
Subject: Re: [yocto] Copy initramfs to rootfs
To: Sinisa Gujic <sgujic@gmail.com>
Cc: yocto@yoctoproject.org, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

Hi,

I figured out the way to do this, im not sure if this is the good
approach, but so far it works for me. So ill just post it here if
someone else stumbles upon this issue.

I was on good track with ROOTFS_POSTPROCESS_COMMAND, so i did this in
my image recipe.

In recipe called my-fancy-image.bb

INITRAMFS_IMAGE = "initramfs-image-recipe"
INITRAMFS_FSTYPES = "cpio.gz"

initramfs_postprocess() {
  rm ${IMAGE_ROOTFS}/boot/zImage-*
  cp ${DEPLOY_DIR_IMAGE}/zImage-initramfs--* ${IMAGE_ROOTFS}/boot/zImage
}

ROOTFS_POSTPROCESS_COMMAND += "initramfs_postprocess; "

And in my local.conf

INITRAMFS_IMAGE_BUNDLE = "1"

Then, call bitbake my-fancy-image and in /boot you will get your
zImage-initramfs (named zImage).

It surely does look like a little bit hackish way to do things, but
yocto documentation does not provide any better solution as far as i
can tell.

Feel free to post here if you have or know a better solution.

Regards,
Sinisa

On Fri, Nov 29, 2019 at 6:14 PM Sinisa via Lists.Yoctoproject.Org
<sgujic=gmail.com@lists.yoctoproject.org> wrote:
>
> Hello everyone,
>
> I started to build kernel with initramfs, and so far all that works
> great. I got my new shiny zImage-initramfs--4.1.14..xxx.bin. I can
> boot it over tftp, its does exactly what i want.
>
> Problem im facing is, how do i put this new zImage instead of
> originally built zImage in final rootfs archive (tar.gz).
>
> To clarify, upon a "bitbake create-my-fancy-image" i got in
> tmp/deploy/images two zImage files, one without initramfs and one with
> initramfs. When i inspect my rootfs.tar.gz /boot folder, i have zImage
> inisde (symlink and DTB also).
>
> I would like to replace somehow this zImage with initramfs version.
> How do i do that?
>
> Documentations talks only about this IMAGE_BUNDLE that is going to
> merge kernel with initramfs, but i cant find any obvious way to get
> this into rootfs, to replace somehow original zImage.
>
> The best idea i have so far (that does not work) is to do something like this:
>
> initramfs_postprocess() {
>    # NOTE: pseudo code
>    rm ${IMAGE_ROOTFS}/boot/zImage-custom*
>    unlink ${IMAGE_ROOTFS}/boot/zImage
>    # Im not sure how do i reference file from tmp/deploy/images, which
> is my question number 2
>    cp zImage-initramfs-* to ${WORKDIR}/boot/zImage
> }
>
> ROOTFS_POSTPROCESS_COMMAND += "initramfs_postprocess; "
>
> This above looks very dirty to me, but its best "idea" i have atm.
>
> So, in my local.conf i have:
> INITRAMFS_IMAGE_BUNDLE = "1" # means fuse kernel + initramfs
>
> And in my main image recipe i have:
> INITRAMFS_IMAGE = "initramfs-custom" #name of the recipe that provides
> some custom /init
> INITRAMFS_FSTYPES = "cpio.gz" # make a compressed cpio out of initramfs
>
> One thing to note, im trying to avoid doing this with wks and creating
> a special /boot partition. This is not something im really targeting,
> i know its possible, but i want to have my kernel inside rootfs.tar.gz
> in /boot from single image recipe due the various reasons.
>
> Any suggestion is much appreciated.
>
> Regards,
> Sinisa
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47472): https://lists.yoctoproject.org/g/yocto/message/47472
> Mute This Topic: https://lists.yoctoproject.org/mt/64383719/3618560
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [sgujic@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
