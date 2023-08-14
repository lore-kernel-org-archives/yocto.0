Return-Path: <tom.isaacson@teknique.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B52ABC001DB
	for <webhook@archiver.kernel.org>; Mon, 14 Aug 2023 03:01:40 +0000 (UTC)
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
 by mx.groups.io with SMTP id smtpd.web11.99559.1691982098576431082
 for <yocto@lists.yoctoproject.org>;
 Sun, 13 Aug 2023 20:01:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@teknique-com.20221208.gappssmtp.com header.s=20221208 header.b=MokXtOND;
 spf=none, err=SPF record not found (domain: teknique.com, ip: 209.85.219.50, mailfrom: tom.isaacson@teknique.com)
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-6418d8a659fso8601876d6.0
        for <yocto@lists.yoctoproject.org>; Sun, 13 Aug 2023 20:01:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=teknique-com.20221208.gappssmtp.com; s=20221208; t=1691982097; x=1692586897;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zzWts+sPqyusvvzF8YMPz8AZW7ppYpx+fYmVMxIsA+0=;
        b=MokXtONDZi6dqqN1uVyvz8eosaMMLjR1GdT0ukgvFQuQpv1tEzjkG7TGaXkWruHh2U
         otBuKuCpMlL4U0blAZXz7xw85QxSucCQdcpXf7tSqXqP80GskTarNqFKIzMiyA4lfBa2
         7TMDz86SSW2ECTwIy8wxgjUiRMZbsIQ6I/BpHVEuDqoaYjbjyvcuRTd4E4nL2JabXVoZ
         thv37s7ht5sUFYB37Dl2cTy2i3CQwiSIAN1wvm9y4jEmmPwE7NDn40MblFIDUcr1ucLc
         Wz525db91dogKHyzz/JliWkyu728KOuLz19UEY0O7cesw7EfuuAiJk7hLuxTTnL54w/X
         I3zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691982097; x=1692586897;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=zzWts+sPqyusvvzF8YMPz8AZW7ppYpx+fYmVMxIsA+0=;
        b=e5HUXFp3raVhtJ8TKV6hPbhdrKuUKer+ezR33iNGgt+/jNFHVdOI6qC0og3vODCUFZ
         kT0BtjGBqMgkXWKSTPHzOn1epz0diZIiFm3E/3bECVCE/1N+sfXaEE7PEeFZh6W8xzsE
         AKIJ0SNwUw1O+EIdriWqADQktVvAJ/IWTkT4bFfn2cBYIuGgHkpJohzn7uvgOeQJMVQN
         grrgjCDpLfHLMTEJyQOZgm4BXO2NCQ6+Ju3y8ZzKWz2ZHoc7SlQr3wN8p4UorGaF5LZu
         DqP22+VjLbx8JUqXXA4HVZ+KCj76Zhy/nlFSPlwY0jkwp6VMtrsU31pkf979b86Hi3Z5
         V2pg==
X-Gm-Message-State: AOJu0Yy/KQOrXVMw1oE5ssJ7plvmcYgA0sjWnp2WjSa0dGBnpKDGERbs
	nfpb3naJcP6WXhuEvQeZt+zqmnQH3AtVX7/AomY/Qytvwn2hA3MTN98=
X-Google-Smtp-Source: AGHT+IH+dcM3pIirytnAFgqVltmxVx0jjmS5tEcwTbmLPoEDvBcfbFGqZJ1zUHidVQpReXdX0LVQeT3eFQPvxNQne40=
X-Received: by 2002:a0c:b389:0:b0:63d:2bf4:2649 with SMTP id
 t9-20020a0cb389000000b0063d2bf42649mr6233881qve.39.1691982097493; Sun, 13 Aug
 2023 20:01:37 -0700 (PDT)
MIME-Version: 1.0
References: <CA+EiEZ+k3eSZENj_ORU+-7rx99ed__pu7Ger2JpGm1U8gZ2WRg@mail.gmail.com>
 <c9cc305944c70a7f59e881e39d020d5e216197e3.camel@linuxfoundation.org>
 <CA+EiEZLbtCfDGyxA8kjwQkPjeJJ9vzwpKMKGSW6ABGq2uogg2Q@mail.gmail.com>
 <fd9c2bb67198be27092ed786908f100ab8393d38.camel@linuxfoundation.org>
 <CA+EiEZLQ5WNP_9wUFvoh33U_5J0Uys+0hXbn4UNrToV1HYuFdg@mail.gmail.com> <1a30874e474b84412cb2df4bc2bfeeaf8775ba89.camel@linuxfoundation.org>
In-Reply-To: <1a30874e474b84412cb2df4bc2bfeeaf8775ba89.camel@linuxfoundation.org>
From: Tom Isaacson <tom.isaacson@teknique.com>
Date: Mon, 14 Aug 2023 15:01:28 +1200
Message-ID: <CA+EiEZLvxbbBSoweOXOXi6bEP_1=L+dZ=hcepvUa1NZ6QD8-Nw@mail.gmail.com>
Subject: Re: [yocto] Intermittent build failure where dwarfsrcfiles doesn't exist
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "<yocto@lists.yoctoproject.org>" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 14 Aug 2023 03:01:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60787

Sorry, I thought you'd missed it. I appreciate the help you've
provided. I'm trying to learn more about Yocto so I can contribute. My
first patch has been rejected twice now because I'm still trying to
get the hang of emailing patches and I have some improvements for
devtool coming.

Some progress. By looking at the logs I found in
WORKDIR/temp/log.do_prepare_recipe_sysroot the line:
    DEBUG: Removing manifest:
poky/build/tmp/work/oclea_cv25-oclea-linux/my-app/1.0.53-8c74bcd/recipe-sys=
root/usr/include/
    DEBUG: Removing manifest:
poky/build/tmp/work/oclea_cv25-oclea-linux/my-app/1.0.53-8c74bcd/recipe-sys=
root/usr/share/
    DEBUG: Removing manifest:
poky/build/tmp/work/oclea_cv25-oclea-linux/my-app/1.0.53-8c74bcd/recipe-sys=
root/usr/lib/
    DEBUG: Removing manifest:
poky/build/tmp/work/oclea_cv25-oclea-linux/my-app/1.0.53-8c74bcd/recipe-sys=
root/usr/
Every time I did a build the whole directory was being deleted. I
searched up from here for "stale" and found:
    NOTE: breakpad-native exists in sysroot, but is stale
(breakpad-native.8f0ddd03590cd9de4ac792a3a9bf1683a19767029fc1e81b3004c4aea8=
624a2f
vs. breakpad-native.652752786bdc3761978980d1e588e3281de1d8980a6bc81080ad258=
5932d4849),
removing.
Note this is just rerunning the build, I haven't changed anything.

By adding some logging I found sstate_clean_manifest() was being
called with a manifest file:
    NOTE: sstate_clean_manifest(manifest =3D
poky/build/tmp/work/oclea_cv25-oclea-linux/my-app/1.0.53-8c74bcd/recipe-sys=
root-native/installeddeps/breakpad-native.8f0ddd03590cd9de4ac792a3a9bf1683a=
19767029fc1e81b3004c4aea8624a2f)+
Checking the contents of the new file showed the manifest included
those directories at the bottom:
    recipe-sysroot-native/usr/include/
    recipe-sysroot-native/usr/share/
    recipe-sysroot-native/usr/lib/
    recipe-sysroot-native/usr/bin/
    recipe-sysroot-native/usr/

Now by default Dunfell includes Breakpad v1.10.0 but for some reason a
colleague had added a .bbappend file that set SRCREV_breakpad to a
commit almost a year before this release. Unfortunately he's left and
the comment wasn't helpful so I removed that. I no longer see
dwarfsrcfiles being deleted so once the build works it seems stable.

However:
* The manifest file for breakpad.native still contains those
directories and I can't figure out where it gets created - the only
reference to the installeddeps directory is in staging.bbclass and
that seems to only read the manifest, not create it.
* Still doesn't explain why dwarfsrcfiles sometimes isn't copied to
poky/build/tmp/work/oclea_cv25-oclea-linux/my-app/1.0.53-8c74bcd/recipe-sys=
root-native/usr/bin/dwarfsrcfiles
in time. This happens on my CI build a lot because it's starting with
a clean directory.

On Sat, Aug 12, 2023 at 9:11=E2=80=AFAM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Sat, 2023-08-12 at 07:50 +1200, Tom Isaacson wrote:
> > My bad. Ok, so:
> > * What function is responsible for copying the dwarfsrcfiles binary to
> > poky/build/tmp/work/oclea_cv25-oclea-linux/my-app/1.0.53-8c74bcd/recipe=
-sysroot-native/usr/bin/dwarfsrcfiles?
>
> It would come from the extend_recipe_sysroot function in
> staging.bbclass.
>
> You will see this function being called in various tasks as it will
> show in logs in WORKDIR/temp/log.do_*
>
> > * When the build completes the dwarfsrcfiles binary is present (even
> > if it got there too late). Why, if I rerun the build with no changes,
> > does it get removed and recopied?
>
> There are a number of reasons, the example that comes to mine readily
> is code which removes things it thinks are now invalid and then
> installs new versions of them.
>
> For example if the taskhash of dwarfsrcfiles changes (e.g. it's code
> changed), it would rebuild it, then update copies in any recipe's
> sysroot that depended on it.
>
> > * I asked before, but I've just been doing this by adding debug
> > output, but is there a guide on how to debug this directly? I can't
> > figure out how to step into the Python code directly. I use VSCode.
>
> I'm not ignoring the question, I simply don't know. I don't use VSCode.
> I'm an old school C/kernel person who uses printk (or bb.warn() in
> the bitbake case) to debug things.
>
> Personally, I'd start with looking at the logs for my-app, see when
> dwardsrc-files is being added or removed from the sysroot. The logs
> should indicate that.
>
> Removal could also happen at build setup time where bitbake prints
> messages about removing things in which case the removal wouldn't be in
> the recipes logs and isn't well logged, that code is central.
>
> I'm doing my best to at least give you some answers, I'm afraid I don't
> have them all, or tons of time to spend on this so I'm doing the best I
> can. I'm assuming some answers are better than none, particularly if
> you're looking at something you think is abnormal but really isn't.
>
> I hope you can figure it out! If/as/when you do, help documenting it so
> the next person can know what you wish was documented would be helpful
> btw!
>
> Cheers,
>
> Richard
>
>
>


--=20
Tom Isaacson

