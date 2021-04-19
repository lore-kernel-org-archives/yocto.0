Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
 by mx.groups.io with SMTP id smtpd.web10.1373.1618867809352714481
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Apr 2021 14:30:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=nIRanGuQ;
 spf=pass (domain: burtonini.com, ip: 209.85.221.54, mailfrom: ross@burtonini.com)
Received: by mail-wr1-f54.google.com with SMTP id a4so35500396wrr.2
        for <yocto@lists.yoctoproject.org>; Mon, 19 Apr 2021 14:30:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aqSrSE1hg+acXPuIy3hIm/UK07JTfSNxCdK4zhwhizg=;
        b=nIRanGuQSYw0IR3qPm42PgnhziReN52y6UZiPwq83hnagEJqLtf1so0KYsqu1iV22o
         r5oI8PXIdnTo6ecSGRWe0z9BmmpiJK1/iSh3aUpQzBLCecjaC6UfGbIRfkhONA2h8CW/
         nJsjbnI+6J7OfCtKs5bYPro2b15YKMj/TeF3j2V1pBX1w84zDHVKCWoLTGoSedHHJkcQ
         E2A0btud95klco5mK44KiVFSlucO3Ah+0iJz0bBq1BlpX8X419EZu+6RUDMvYMYbzRhj
         hD2RggXv7mzkD9FYY0nW2YsTxBLMeXH8+/NfqlpVmOts201arAxgi7RjIj33gDjGiFYv
         KmxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aqSrSE1hg+acXPuIy3hIm/UK07JTfSNxCdK4zhwhizg=;
        b=A9kFrhDkpcGNeSsGvlQiHIhGzJ3b4/FMwPVw6kz2hg+kp6GPSCv4Hu4JU70XQQLiVc
         P8g8JT/jxiHbWZbMzu4Sm7YDacOqBKWWuIn/7926H60qwif0t+bAXqJVXP5xw3DeAv7T
         XzcFXz97mWUhoLk80OKCtDE1i3z4p41FvhkXXEsIfdaZhGZheze8YCM7qyX5SiPBXZvO
         U0UyzMg0lDQGaiwcFh34XcBw0DH4BiEomUL4mgkiq+1anMmFFY/7KwAVmHNgEqWgngfK
         uoZd5y1ZQe6i0V5Eb11Iaz018sofsseOtpa1iA+kIS96Nc62vmAz48y8aJjKtw0F1ypa
         c8+Q==
X-Gm-Message-State: AOAM5317XoUIdxI+vKckFySP/Ve6uB1ITwkPxRGV4Vu1phdJ/2JyQKCI
	xYV9XvOE/CXLK6swvtUAicYmfydSsb0DB7sJbT7cwQ==
X-Google-Smtp-Source: ABdhPJyvPb7gbsMMQW52ekrgiwNcZGqMXmSl8Kq/OzMpdjdBJXkJ+Cf2CD2G5XQ6CT+bKWxABhzVZA1jxxnNwSBnVUw=
X-Received: by 2002:a5d:4707:: with SMTP id y7mr17192602wrq.396.1618867807895;
 Mon, 19 Apr 2021 14:30:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210419204657.1477082-1-richard.purdie@linuxfoundation.org>
In-Reply-To: <20210419204657.1477082-1-richard.purdie@linuxfoundation.org>
From: "Ross Burton" <ross@burtonini.com>
Date: Mon, 19 Apr 2021 22:29:57 +0100
Message-ID: <CAAnfSTsgWjNbpQHZs9wzL2T_3+Mi4FhngP23A8rBMgUur2Sayg@mail.gmail.com>
Subject: Re: [yocto] [meta-gplv2] [PATCH] conf/distro: Add removal of btrfs-tools from util-linux ptest depends
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"

+1.

Ross

On Mon, 19 Apr 2021 at 21:47, Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> btrfs-tools has changed to LGPL-3.1 so to allow util-linux to build,
> remove the dependency from its ptest package. This may regress some
> ptests but keeps the gplv2 layer working.
>
> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>  conf/distro/include/disable-gplv3.inc | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/conf/distro/include/disable-gplv3.inc b/conf/distro/include/disable-gplv3.inc
> index bded378..3285543 100644
> --- a/conf/distro/include/disable-gplv3.inc
> +++ b/conf/distro/include/disable-gplv3.inc
> @@ -1,3 +1,4 @@
>  INCOMPATIBLE_LICENSE = '*GPLv3*'
>  WARN_QA_remove = 'incompatible-license'
>  RDEPENDS_${PN}-ptest_remove_pn-glib-2.0 = "python3-dbusmock"
> +RDEPENDS_${PN}-ptest_remove_pn-util-linux = "btrfs-tools"
> --
> 2.30.2
>
>
> 
>
