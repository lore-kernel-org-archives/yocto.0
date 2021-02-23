Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.3764.1614042892703967370
 for <yocto@lists.yoctoproject.org>;
 Mon, 22 Feb 2021 17:14:52 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=RL2V+LWE;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: bruce.ashfield@gmail.com)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 7FDA038C05F5
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2021 01:14:51 +0000 (UTC)
Received: by mail-ej1-f46.google.com with SMTP id hs11so32217242ejc.1
        for <yocto@yoctoproject.org>; Mon, 22 Feb 2021 17:14:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=INpzbB3Bn0HWoMk+flN9eH8iXvOnrGKTAoEsQvKM7sY=;
        b=RL2V+LWEBGJ7MtCU76rJdelq7uXP/H8BOxILBkyxtDXOPauNcvOq218PjtydOATbvP
         UYq1deO0rsuUd87hkyxpJv+27t2UC2a2e8/QA81imHE7OwW4fqZxV7v7olfymAGTdwtN
         FNsQiCj75JHS54lH0RbS1WB2XP8/Ll9m0uMX8HAIXvz4Td9PAqvm8DHqrB1m02a9Vify
         KcJGMirUozYQMX7S9Ovn2L5wOmPE08TLE/LzY9hXtLLIa815pAKLOb6UQPB5SoPL6BWd
         nc86wC94giMsde8CgUq6+vp7nAOqBNRH/9ksaa2kh2WMiL9psS9XsMixXla27XxyMTcE
         VdNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=INpzbB3Bn0HWoMk+flN9eH8iXvOnrGKTAoEsQvKM7sY=;
        b=si1H8fVnVjd5Rq+SfAzKfGFf4Seiei5hd5pKagbYySrjAVXoR9ioz6exjLoAWw+GuD
         whAwfXIHENXPwYVSOWL7tg8vunRzlrf0t09ZsSY5QQ47pqc0EMH17PaaqY2OVGNxgFP4
         X730oOZzNzxD0Qmy8BjJr0ChiRZIscnwxjYhKiwCKAumLfPMrG6ge1UAJyTl5jszPuwD
         /YHsWJJ53nwguOo4m/x9ZgWL9JHh839HZFns/05Nc4Su0wVVktuiSGPvtESNFYe2aHWs
         4SD84CSHssDZDWHdTT7wBcezxQLPFr5c4erSzT8/DY/XuSW7+eopIyJX3UGMdQhgee44
         ntdw==
X-Gm-Message-State: AOAM532d1Ocn8ieQR4Vd7WtQNieYsz0S+h94hKwVVIdSPQAg3PkT1Fjd
	4cSOFPAPDBcRdqR5tlCEgwI2vl4orVl75lsXEEg=
X-Google-Smtp-Source: ABdhPJzxUmSx1B7kLojnrtXI9X/6qWGpXQUsfqXA8zfLZ6zt4hq0B00H2ldkIqoKV2nmRIw5BcUe6s6C3mpdXKnJ5iY=
X-Received: by 2002:a17:907:101c:: with SMTP id ox28mr14809337ejb.334.1614042890008;
 Mon, 22 Feb 2021 17:14:50 -0800 (PST)
MIME-Version: 1.0
References: <CAFP0Ok-UOjo3n1CYtg+k1C8QHz6L+4RMDcOLPnnWGJ6Oxd+azQ@mail.gmail.com>
In-Reply-To: <CAFP0Ok-UOjo3n1CYtg+k1C8QHz6L+4RMDcOLPnnWGJ6Oxd+azQ@mail.gmail.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Mon, 22 Feb 2021 20:14:39 -0500
Message-ID: <CADkTA4NKtcZYHtWJGs5gOMZxUjf9dn9+KB5-ts4633tdyu8x1Q@mail.gmail.com>
Subject: Re: [yocto] Kernel Header UAPI Issue
To: Karthik Poduval <karthik.poduval@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Mon, Feb 22, 2021 at 7:52 PM Karthik Poduval
<karthik.poduval@gmail.com> wrote:
>
> I have a 5.4 kernel where I applied a patch (using a .scc file) from
> kernel 5.6 which brings in dmabuf heaps.
>
> The patch exports a uapi header
> include/uapi/linux/dma-heap.h.
> I am trying to write an application that uses dmabuf with a recipe (no
> special DEPENDS).
>
> It is able to find
> #include<linux/dma-buf.h>
> but not
> #include<linux/dma-heap.h> (this file is introduced in the patch)
>
> I looked at the recipe's sysroot
> recipe-sysroot/usr/linux/include


That's coming from the linux-libc-headers, your new upi header is not
part of the libc-headers package, so it won't show up there. And no,
it shouldn't be part of that recipe and the libc-headers should not be
generated from the current state of whatever kernel is being built.

You need to arrange for it to be exported and staged separately (look
for examples of 'sysroot_stage' variants in the meta-data, you can
bbappend the behaviour to your kernel recipe), or your code can look
for the header in the kernel shared workdir (STAGING_KERNEL_BUILDDIR)
by adding that to your include paths in the recipe.

As khem also mentioned, you'll need to make sure that the uapi header
is not just patched in, but properly exported.

Bruce

>
> and  dma-buf.h is there but not  dma-heap.h
>
> Why is the header not being imported ?
>
> --
> Regards,
> Karthik Poduval
>
> 
>


-- 
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
