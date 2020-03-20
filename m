Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.4032.1584669531679209060
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Mar 2020 18:58:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CwTnh3up;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: twoerner@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1443E01891; Thu, 19 Mar 2020 18:58:50 -0700 (PDT)
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
	*      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EAD8E0188F
	for <yocto@yoctoproject.org>; Thu, 19 Mar 2020 18:58:49 -0700 (PDT)
Received: by mail-ed1-f45.google.com with SMTP id z3so5280954edq.11
        for <yocto@yoctoproject.org>; Thu, 19 Mar 2020 18:58:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ql+F/bu39B9jMzlR1jQB51d06quuvyjv4lpENnyyuTs=;
        b=CwTnh3upaXwGDbi4OJfOG1w6xpH1RUFg3maKtCzA3jc67MjskcjeA20E0VyAPsAaUm
         kdnLOENeaea3m/htdSPjhf2WA8jUI0eUZvd0Aqm9Q9vuePw0hTL7jUejHdxi0MwsH9QB
         CiJzYklc+j7N5SqYEIoyoZoLk7J/F79axz79MLXD5NaNp53UsHrSOjHv7CmOsoLqwc3R
         3zNScch5whxNbsAewTo3smD0CLd50zeuUfuk+p1e91e4ijy6fUlN+e40wUq+iZds/Gon
         haVRYmCvsdHmG28WM49lrydMdoD9T05O+H+jgKzO+l4EDuasHC08ntr9RlylrKfaMOOj
         pM2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ql+F/bu39B9jMzlR1jQB51d06quuvyjv4lpENnyyuTs=;
        b=cJwRvhRqFhu7l8Wy+pYatgCgshaesszWkVhh/K4Vln1gAvJNvfObrTBwhVidAMLuhM
         +FWYOlltL708Y+bizP5jM5bqo0ZlNUqRVYSIy7V0q0d+EJfVXiyVyyqqpGu86bWMWYsq
         C17NZubMwtxpjMyf/fDQnSe9CGZVsC5+DpwxIqXY/BSCaLU6+m9Oh406J4hc4VyB8aAb
         YXYtTO9k6000jvpg5qJNCLQA+Y4eZdUQG253cJJZPs0i+YXtoc/xtyjJKGTirwStksnk
         oQaoOgp2npDDCkpY/+XMJZUtQ+UdC3q/QTDwfXpq2iY0RjXmSZ1svGD2tzG+wJqMkvzY
         exyg==
X-Gm-Message-State: ANhLgQ2f0hwKJZQsiZFF6eLYJ07S5pnFm7I8lI7V39bKwzIGp6y2Gee9
	kb2i5ma3aZbLiVPl/ZhPC/nIwoHnjZVxGyvWSvY=
X-Google-Smtp-Source: ADFU+vuRZXBkDlUPVG59SK8/26wc9rRnnNoX2sPPWunejfGcK1dnRJwCe939LpaW1ylt2bU3wU5raM34bMf62SpvbSg=
X-Received: by 2002:a50:c05c:: with SMTP id u28mr5528592edd.193.1584669528635;
 Thu, 19 Mar 2020 18:58:48 -0700 (PDT)
MIME-Version: 1.0
References: <CAFP0Ok8cBje8vofUwqo2ac5moA7Yj3OiJNO9DDbJJXxCJUsEtA@mail.gmail.com>
In-Reply-To: <CAFP0Ok8cBje8vofUwqo2ac5moA7Yj3OiJNO9DDbJJXxCJUsEtA@mail.gmail.com>
From: "Trevor Woerner" <twoerner@gmail.com>
Date: Thu, 19 Mar 2020 21:58:37 -0400
Message-ID: <CAHUNapQTnMDphOyxhZ08KzN=venDyXcwaAtsRHz+6sDTO6UhQg@mail.gmail.com>
Subject: Re: yocto on tinkerbaord using meta-rockchip
To: karthik poduval <karthik.poduval@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi Karthik,

On Thu, Mar 19, 2020 at 9:36 PM karthik poduval
<karthik.poduval@gmail.com> wrote:
> Thank you for you work on meta-rockchip layer. You were listed as the
> maintainer for meta-rockchip so I though I will send you a mail with
> an issue I was facing.
>
> I was trying to flash an image on a Asus tinker board using
> meta-rockchip. Here are the steps I followed.
>
> git clone git://git.yoctoproject.org/poky
> git clone  git://git.yoctoproject.org/meta-rockchip
> source poky/oe-init-build-env
> bitbake-layers add-layer ../../meta-rockchip/
> MACHINE=tinker-board bitbake core-image-minimal
>
> #flahsed it using the following command to sdcard (my sdcard was dev/sde)
> sudo dd if=tmp/deploy/images/tinker-board/core-image-minimal-tinker-board.wic
> of=/dev/sde
>
> after inserting sdcard and booting up I can see on the serial console
> it attempts to boot, crosses bootloader and proceeds to linux boot but
> then gets hing around dwmmc_rockchip loading.
>
> Attached the complete serial log. Your help is greatly appreciated.

According to the log, your board is a "tinker-board-s", please try
using that for your MACHINE instead of "tinker-board".

Thanks and best regards,
    Trevor
