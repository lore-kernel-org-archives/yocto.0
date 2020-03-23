Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.970.1585000138969474714
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Mar 2020 14:48:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amarulasolutions.com header.s=google header.b=bkBhifRd;
 spf=softfail (domain: amarulasolutions.com, ip: 140.211.169.56, mailfrom: michael@amarulasolutions.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CED6EE018C1; Mon, 23 Mar 2020 14:48:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.128.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f67.google.com (mail-wm1-f67.google.com [209.85.128.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47610E018BF
	for <yocto@yoctoproject.org>; Mon, 23 Mar 2020 14:48:54 -0700 (PDT)
Received: by mail-wm1-f67.google.com with SMTP id d1so1327462wmb.2
        for <yocto@yoctoproject.org>; Mon, 23 Mar 2020 14:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QLe7AMgI+wmPXjslAWxmWziFRmC0ebGIVuBHKuUCWVw=;
        b=bkBhifRdfhJZtDPEyaIMcdb3b5zDoKalVCWH9a0rIy8uyi/zBQgMGbJMiGlTHLEY79
         XS1QiG2AsR3dqo99DD83fifyzWRcApayyxWk1XGghxNke43ZjtciJmC6wRl1B47BJ+Jj
         KX6kVAoyxU2hYCgbLcYtbYUwo/SN/Kk/yW9GU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QLe7AMgI+wmPXjslAWxmWziFRmC0ebGIVuBHKuUCWVw=;
        b=E81PCzxPkO8Mbm1iL74JJszhHgLvv//p43eoEvhVMjB4TZxywO5pzqm4ucebRw3HR6
         r8/CL+PK1mhpfL9iAGmkKMBjdqjCrvf04pH/cprnk/acb7n+j8xtUvOWVsx5YvopZhLd
         hSygsSloFaHxxmro8ft1YHB72r7gf5lUsWr5H/yYZQZAay3ZkyrtzGtV4ToE6m9NBkh/
         8Ghneom3b0sn8NplSEeO/wEICYvMSRCMLIXnqZ474uvfpgvdN5k6WuPcH0II11DZwu1M
         hnDS1JK0QnT46ayBaYQn3kg6h71UpnVskDq5ItlwFiW4Db9NvbA9N4ScOjHRkyz6Iksb
         jFkw==
X-Gm-Message-State: ANhLgQ23RqFd8hbx5aAvAqIFEnggZlWlmzsBzksVu1wzyDcmVJff7Cbv
	7yQOQKvEuzLYEOW79Yi+G96EevFH5+Pg8RrJ++DlBA==
X-Google-Smtp-Source: ADFU+vuK5YvhYi8W0oByrHeyvD6UYGg75mDNmuyiEo3+9Cfxsa1UgD5L7EupcKmpMipdfOL6vkQwXjGSHpxEtLYk2ug=
X-Received: by 2002:a05:600c:2048:: with SMTP id p8mr1558160wmg.58.1585000133202;
 Mon, 23 Mar 2020 14:48:53 -0700 (PDT)
MIME-Version: 1.0
References: <CAFP0Ok8cBje8vofUwqo2ac5moA7Yj3OiJNO9DDbJJXxCJUsEtA@mail.gmail.com>
 <CAHUNapQTnMDphOyxhZ08KzN=venDyXcwaAtsRHz+6sDTO6UhQg@mail.gmail.com>
 <CAFP0Ok9cSbcFzYELJ+D65aw4hMGXegfK=qr4Ay79wsJO2TPLHA@mail.gmail.com>
 <CAHUNapRTV8SgnDfhPGY5G8kaFyK9g=qK2GG7vOPkmmuj-Ugv7Q@mail.gmail.com>
 <20200323111421.GA20231@xn--80adja5bqm.su> <CAOf5uwmWFFZr5QvWp6kQazzU1YkmcmdxNEBZp_9WXwm0dOvJyg@mail.gmail.com>
 <20200323214537.GA24482@linux-uys3>
In-Reply-To: <20200323214537.GA24482@linux-uys3>
From: "Michael Nazzareno Trimarchi" <michael@amarulasolutions.com>
Date: Mon, 23 Mar 2020 22:48:41 +0100
Message-ID: <CAOf5uw=4XW=7rm5WdGUYbGoiv7M24NdwSOMYW65BqkFvvQSx6w@mail.gmail.com>
Subject: Re: [yocto] yocto on tinkerbaord using meta-rockchip
To: Trevor Woerner <twoerner@gmail.com>
Cc: Sergey Bostandzhyan <jin@mediatomb.cc>, karthik poduval <karthik.poduval@gmail.com>, 
	Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi

On Mon, Mar 23, 2020 at 10:45 PM Trevor Woerner <twoerner@gmail.com> wrote:
>
> On Mon 2020-03-23 @ 10:31:05 PM, Michael Nazzareno Trimarchi wrote:
> > What about the status of qt layer using panfrost? and mainline
>
> Thanks to JPEW, mesa with panfrost is enabled/working with relevant boards.
> I've tested it, running, on both the rock-pi-4 and tinkerboard (so it *should*
> be working with your vyasa-rk3288 board too, although I haven't run-tested it
> lately). Therefore most anything sitting on top of mesa *should* work.
>
> Of course... the panfrost project is a "work-in-progress", so there are
> probably some cases that might not work.

Technically I can include meta-qt and build on top of mesa using
wayland and some
mainline kernel. I'm working right now on tinker-s board and figure
out to move legacy
project on mainline solution.  I will try to compile it and give a try

Michael

>
> Best regards,
>         Trevor



-- 
| Michael Nazzareno Trimarchi                     Amarula Solutions BV |
| COO  -  Founder                                      Cruquiuskade 47 |
| +31(0)851119172                                 Amsterdam 1018 AM NL |
|                  [`as] http://www.amarulasolutions.com               |
