Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.21139.1584122868643220287
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Mar 2020 11:07:48 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CejxEOi5;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: andrey.z@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CCACE01841; Fri, 13 Mar 2020 11:07:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (andrey.z[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF82DE0183B
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2020 11:07:47 -0700 (PDT)
Received: by mail-wr1-f53.google.com with SMTP id s14so13282541wrt.8
        for <yocto@yoctoproject.org>; Fri, 13 Mar 2020 11:07:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kEpCFCPRacatVO7dupAFLCsDXKkwfMW7/O8MltWkT9s=;
        b=CejxEOi5DW1Z1uqiVlaThl9sWvUGkueZA21O8dDuJsXu9Kvo1YXSCLvRTlsP5jqIYo
         midSvhPk7poy1RmssJDSCSywkW6Md4Jl+jC5aJ9eimz32KI1PShC+lQgz+Te10uR2GYv
         if/CFd7yFRmL8tZRRv59oj8Edh+lUkWtqyu7oNcXv8UtyrHX8RCwCCqCdokR6SgSaoME
         XiWlYhYp+diNSn5XAkGm63uoMzKmnnm5jCELg2rQtZ0YXVDyNh8FqOhm1BuE8CY56xxP
         RCHy7v7l9ZX6A2xESKp+mXpC4miGkq8tSqFonPtqFAv9F290VvSwPhMQVqzOrtZQBcjp
         8u1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kEpCFCPRacatVO7dupAFLCsDXKkwfMW7/O8MltWkT9s=;
        b=PFa+fd8Wwby/au3+koU+wiH3kZCEMsqd+kf31lYumZ4h0jW2f8vICDX61Y5zlrGthR
         DMh5IYY8KkXUWxZ5e3P7ytcsAhkIpsVtKMV7KSayU7XkgzS4QmAcg67/cxmT6z1I+Ja4
         e0FIZgIpxRDm3d7qqVVVMOdXCH6aeuCbthfdiVJJpJUOaJVN8yAAcGPy0fmiGzBQORog
         p9a6+zMBv8mEBAGKT5qHWJxbvsXp8QkeLlHZS5XQSTg9UVc9s0ps3SR/l63m0hW3G8hm
         tBSMGPrE2hULmUZpu9ThLr4Wjhb9cvwxKbYWqdZMLJNR664/WrCM2GwxcT9QwBZijYhp
         g1bw==
X-Gm-Message-State: ANhLgQ1tZsgRY3CR7LRwlqsAj95chg4NlYuN+AyieAL0XmrIXhf5M0ir
	UJbk/qCqduqIGbUvGvCSHtZ3BIS4MaFDLBIoE3g=
X-Google-Smtp-Source: ADFU+vs638Mx93hJsGuSdehpKfR3rywMDpLDX5/MCAOEFVmAfNRT+R2wecOvRcXB0SNEiQdZTle3MnBRDusTslwvfnQ=
X-Received: by 2002:adf:db50:: with SMTP id f16mr2359849wrj.73.1584122866832;
 Fri, 13 Mar 2020 11:07:46 -0700 (PDT)
MIME-Version: 1.0
References: <CAA=hcWSGmz-GRFac-UR6AcTRyUYjvf1buRaYQvvCMrr__OuV_g@mail.gmail.com>
 <20200313164014.GN1578@denix.org>
In-Reply-To: <20200313164014.GN1578@denix.org>
From: "Andrey Zhizhikin" <andrey.z@gmail.com>
Date: Fri, 13 Mar 2020 19:07:34 +0100
Message-ID: <CAHtQpK7c88eUNPDcCoX7OdrDzhNhGyntYU53WqrJXXbSYtT7nQ@mail.gmail.com>
Subject: Re: [OE-core] [yocto] menuconf u-boot
To: Denys Dmytriyenko <denis@denix.org>
Cc: JH <jupiter.hce@gmail.com>, Yocto discussion list <yocto@yoctoproject.org>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"

JH,

Please refer to my replies to Denys, cross-posting to unrelated lists
is generally not a good idea.

On Fri, Mar 13, 2020 at 5:40 PM Denys Dmytriyenko <denis@denix.org> wrote:
>
> What's u-boot-imx?

This is U-Boot fork for NXP devices (former Freescale), which is not
maintained by OE-Core.

>
> It's definitely not in openembedded-core, so there's no reason to cross-post
> there.
>
> If google doesn't help, it's recommended to post such specific questions to
> the corresponding mailing list for the layer this recipe comes from.

The correct mailing list would be meta-freescale@yoctoproject.org and
JH already had some questions posted there.

>
> If it's not clear where the recipe comes from, Layer Index can help:
> https://layers.openembedded.org/
>
> Thanks.
>
> --
> Denys
>
>
> On Fri, Mar 13, 2020 at 08:15:17PM +1100, JH wrote:
> > Hi,
> >
> > I tried to run bitbake -c menuconfig u-boot, it popped up a terminal
> > u-boot-imx configuration:

It is not clear which yocto branch/machine you're trying to build
here. If you provide more details - then there is a bigger chance that
people would step in to assist you.

> >
> > make: *** No rule make target 'menuconfig'. Stop.
> > Command failed.
> > Press any key to continue...
> >
> > How can I  run menuconfig u-boot?

I've tried it now on the [master] branch of yocto for imx8mmevk
machine - it is building OK and I have the menuconfig from u-boot-imx.
Hence, please refer to my point above regarding more pre-information
on the issue.

> >
> > Thank you.
> >
> > Kind regards,
> >
> > - jh
>
> > 
>
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core



-- 
Regards,
Andrey.
