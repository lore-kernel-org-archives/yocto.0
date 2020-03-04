Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com [209.85.208.67])
 by mx.groups.io with SMTP id smtpd.web11.12369.1583333865622028006
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Mar 2020 06:57:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=aaB0uLX7;
 spf=pass (domain: gmail.com, ip: 209.85.208.67, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ed1-f67.google.com with SMTP id n18so2636706edw.9
        for <yocto@lists.yoctoproject.org>; Wed, 04 Mar 2020 06:57:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=S17rjTbAzDzCrJUc23jc0brd5rZudFJ8BnWJXdCzGrs=;
        b=aaB0uLX7lcNNLbw7U1aW9/ViWZjg2viRQ7B4JN0IcP14LglLZpeOhPBYsdmA0rNIoQ
         OMCLHFV3bK3L+ziiozAL3EOJLoixUaLc9OPZ3YvJJRFNUe0FNjk+F+dZjEz3k0Zz6or+
         QPdDayBxnD2o/MKm9pS5M9Acz2MsAZ6VAyG0S+lxfNt/m195+Ws0OpxjfTj1b+Teso7U
         JRkI5ueumwXAJhD1rzA5qcNJ9oGTSt+Cv4SAy4WT9oMWFk1nxZbgTXiBd0VFLTTY7/mM
         Vev7BwIjybxuGwc5NGc6U14jsf0Sb4ChIRBcQjIQjR0/zr7HT+LHP+Ci9F+4M9ox2ekA
         T3EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=S17rjTbAzDzCrJUc23jc0brd5rZudFJ8BnWJXdCzGrs=;
        b=EcQKitj4T6MIS3jBnh53VbKWSDfPc/Vfm5TF2Mp0YlQtA43ziaXp6oS1vec72N9R77
         KyhfUOW5u49y82mmY9Z+4jy7nk79ngDzDx/TO95UeoEvJwtmKH999HMqscaxNYFHJPvs
         QJe7vR5I4G3KS/XXZwV7JxILPVe+Y+T6HyI/aihJi7WfYM7EXWiWEU9v7i3f/50QvLSO
         8MJ2iu83Yk5HgtC2Gp/ZRmsIZvZJCVrWvEy/Z7ZLuS9QPO9qi+m0nyOgzpmTom9vyfZh
         9SoQp5NcQcWuk70cvyHnGwpzFYBXTNwLUqazhNJAzUQznolve+sjzdqaExzgXLjiA+Em
         EQeQ==
X-Gm-Message-State: ANhLgQ0CCE6FE2pkSyATLIsit7akdJssY+Lfo691wJuDy+RNu3CjhCsA
	aaiUKqgDikLb6mBV9YWB01Za7iMQIeLRTftTcZQ=
X-Google-Smtp-Source: ADFU+vuYJhZGP+bRzDQKyMbKTIjyJhCnjIVfG0249qx+ksRcmkkeY7J8tgzTHfWfwEEWDOhNvY2E6NoS8fKV3MtrBmE=
X-Received: by 2002:a50:aacd:: with SMTP id r13mr2965873edc.129.1583333864085;
 Wed, 04 Mar 2020 06:57:44 -0800 (PST)
MIME-Version: 1.0
References: <cover.1583333447.git.bruce.ashfield@gmail.com>
In-Reply-To: <cover.1583333447.git.bruce.ashfield@gmail.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Wed, 4 Mar 2020 09:57:32 -0500
Message-ID: <CADkTA4NaTDadYwqhD6k0juuRLE-UWu8cMOoYDf9fhYwQR1g4Bw@mail.gmail.com>
Subject: Re: [PATCH 0/4] kernel-yocto: consolidated pull request
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Misfire on my scripts, obviously any yocto sends of the oe-core series
can be ignored.

Cheers,

Bruce

On Wed, Mar 4, 2020 at 9:56 AM <bruce.ashfield@gmail.com> wrote:
>
> From: Bruce Ashfield <bruce.ashfield@gmail.com>
>
> Hi all,
>
> As mentioned on the technical call yesterday, here's my latest set of
> 5.2 updates, 5.4 updates and more importantly, the removal of 5.2 from
> master.
>
> As usual, I'll continue to support and update 5.2, just without sending
> SRCREV updates to master. The last set of updates to v5.2 put it in
> good shape, and they are ready for backport to any stable branches.
>
> I ran this through the AB and didn't see any issues or old references
> to v5.2.
>
> I'll follow up to other lists to drop a few of the old bbappends.
>
> Cheers,
>
> Bruce
>
>
> The following changes since commit 92e172b5b4de8927d36409386dfce0fc2718f5d1:
>
>   systemd: Fix service file for race issues (2020-03-03 13:06:29 +0000)
>
> are available in the Git repository at:
>
>   git://git.yoctoproject.org/poky-contrib zedd/kernel
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=zedd/kernel
>
> Bruce Ashfield (4):
>   linux-yocto/5.2: backport perf build fix for latest binutils
>   linux-yocto: common-pc-drivers.cfg: add CONFIG_INPUT_UINPUT
>   linux-yocto/5.4: update to v5.4.23
>   linux-yocto: drop 5.2 recipes
>
>  .../linux/linux-yocto-rt_5.2.bb               | 44 ---------------
>  .../linux/linux-yocto-rt_5.4.bb               |  6 +--
>  .../linux/linux-yocto-tiny_5.2.bb             | 32 -----------
>  .../linux/linux-yocto-tiny_5.4.bb             |  8 +--
>  meta/recipes-kernel/linux/linux-yocto_5.2.bb  | 54 -------------------
>  meta/recipes-kernel/linux/linux-yocto_5.4.bb  | 22 ++++----
>  6 files changed, 18 insertions(+), 148 deletions(-)
>  delete mode 100644 meta/recipes-kernel/linux/linux-yocto-rt_5.2.bb
>  delete mode 100644 meta/recipes-kernel/linux/linux-yocto-tiny_5.2.bb
>  delete mode 100644 meta/recipes-kernel/linux/linux-yocto_5.2.bb
>
> --
> 2.19.1
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
