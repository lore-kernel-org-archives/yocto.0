Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.16269.1583600334158670175
 for <yocto@lists.yoctoproject.org>;
 Sat, 07 Mar 2020 08:58:54 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linuxfoundation.org header.s=google header.b=h4H0mQ43;
 spf=softfail (domain: linuxfoundation.org, ip: 140.211.169.56, mailfrom: richard.purdie@linuxfoundation.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB1FEE017EB; Sat,  7 Mar 2020 08:58:53 -0800 (PST)
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
	*      [209.85.221.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4FC8E017E9
	for <yocto@yoctoproject.org>; Sat,  7 Mar 2020 08:58:52 -0800 (PST)
Received: by mail-wr1-f68.google.com with SMTP id p2so5159606wrw.7
        for <yocto@yoctoproject.org>; Sat, 07 Mar 2020 08:58:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=Iwd1fB306dl1P6BrfwNq2Gh6q7YUpOU28+0trXVtXVA=;
        b=h4H0mQ43Txe24O8QOtDtRVgzKQ0b1+3WxmkVWKIjRqHIl/zLVvnoEUMd3z9A0AHw/I
         Js78WkEQp/eqPwABFS6g02Mvw82WnSQZtwukTbiUQTsX1tvBysw3NOpWgdTETGUShRGU
         88Wiuh4wnIR/k0PqG8e12IqHGED9IGbPGDJaQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Iwd1fB306dl1P6BrfwNq2Gh6q7YUpOU28+0trXVtXVA=;
        b=kOGPk6Bt3KGX2UVhuh6IKHf+ASpqkBnw/QWCGDW4Xe2NJ4cV2LiDJ+Z0FvfthKbu9c
         vxFBUrNgPgAF7Rw5296W+q8dvN+8zECdw+cjpccxoYQ4hN4Wt2HX4Najn8I9AUu2V9m1
         FhsPGLjZQO9cwpBPAKPyTLW3Vl1k6rwrUge0l/LyQEGEqEauQwmycfttfptCDlDFBTER
         hfxMg/hpAGrhqLZg1LPPKDA80Rzl2RhlBlY4+kdnWVgjgCZR2kjSkMRFUAdqrSU2M1XJ
         EZ0Q+rfc/WQrH/xmJBx+s/atce2ydrjCE0O755Gfo66qPiemhKP4cfRBiUvDgCQY0uwk
         luqw==
X-Gm-Message-State: ANhLgQ03jPYEasB9lXnN1zfklKWosJGli5HwTlHFlEcFrQn66r8Sz5Ff
	fPjEWKaBS+otfJu2SO4sz2NU4w==
X-Google-Smtp-Source: ADFU+vu/q0Aj0vYUUt1K6PQFfZKyJgATr4Umsju2VsNWjlNBakWN5WhFDgGTsqqlo67ndI+jsCwEoQ==
X-Received: by 2002:a05:6000:1081:: with SMTP id y1mr10329201wrw.52.1583600331778;
        Sat, 07 Mar 2020 08:58:51 -0800 (PST)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
        by smtp.gmail.com with ESMTPSA id t18sm4241590wml.17.2020.03.07.08.58.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Mar 2020 08:58:51 -0800 (PST)
Message-ID: <c348a21730c09536d06458ac5e5d50377f381f4e.camel@linuxfoundation.org>
Subject: Re: [OE-core] Yocto Project Status WW09'20
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Stephen K Jolley <sjolley.yp.pm@gmail.com>, Yocto discussion list
 <yocto@yoctoproject.org>, OE-core <openembedded-core@lists.openembedded.org>
Date: Sat, 07 Mar 2020 16:58:49 +0000
In-Reply-To: <CANNYZj_Q72+SDFEeq68d214wt+Ft4NA0gUYHEYsdCmzkv+b_pw@mail.gmail.com>
References: <107c01d5f174$bbf566a0$33e033e0$@gmail.com>
	 <CANNYZj83rytWFgGPj6BS6R874eqa6_KCoeoMA5afgnx-_YBunw@mail.gmail.com>
	 <efd0caee261782a0b8d752c728c25be23f69cbae.camel@linuxfoundation.org>
	 <CANNYZj_Q72+SDFEeq68d214wt+Ft4NA0gUYHEYsdCmzkv+b_pw@mail.gmail.com>
User-Agent: Evolution 3.35.91-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 2020-03-06 at 22:53 +0100, Alexander Kanavin wrote:
> On Wed, 4 Mar 2020 at 23:42, Richard Purdie <
> richard.purdie@linuxfoundation.org> wrote:
> > Just FYI I think there may also be a couple of other packages
> > coreutils
> > pulls in and they may also have reproducibility issues (gettext-
> > ptest,
> > glibc-locale-* and procps*).
>=20
> Patch for gettext also sent :) glibc-locale and procps I could not
> reproduce :-/

Thanks for that fix, it helps!

FWIW, what I'm seeing with glibc-locale is that these files "disappear"
from the packages in one of my builds:

./usr/share/locale/vi/LC_MESSAGES/libc.mo
./usr/share/locale/ko/LC_MESSAGES/libc.mo
./usr/share/locale/en_GB/LC_MESSAGES/libc.mo
./usr/share/locale/ca/LC_MESSAGES/libc.mo
./usr/share/locale/fr/LC_MESSAGES/libc.mo
./usr/share/locale/pl/LC_MESSAGES/libc.mo
./usr/share/locale/id/LC_MESSAGES/libc.mo
./usr/share/locale/hr/LC_MESSAGES/libc.mo
./usr/share/locale/uk/LC_MESSAGES/libc.mo
./usr/share/locale/ja/LC_MESSAGES/libc.mo
./usr/share/locale/gl/LC_MESSAGES/libc.mo
./usr/share/locale/es/LC_MESSAGES/libc.mo
./usr/share/locale/el/LC_MESSAGES/libc.mo
./usr/share/locale/pt_BR/LC_MESSAGES/libc.mo
./usr/share/locale/sl/LC_MESSAGES/libc.mo
./usr/share/locale/lt/LC_MESSAGES/libc.mo
./usr/share/locale/rw/LC_MESSAGES/libc.mo
./usr/share/locale/sv/LC_MESSAGES/libc.mo
./usr/share/locale/cs/LC_MESSAGES/libc.mo
./usr/share/locale/nl/LC_MESSAGES/libc.mo
./usr/share/locale/zh_CN/LC_MESSAGES/libc.mo
./usr/share/locale/ia/LC_MESSAGES/libc.mo
./usr/share/locale/fi/LC_MESSAGES/libc.mo
./usr/share/locale/be/LC_MESSAGES/libc.mo
./usr/share/locale/ru/LC_MESSAGES/libc.mo
./usr/share/locale/nb/LC_MESSAGES/libc.mo
./usr/share/locale/zh_TW/LC_MESSAGES/libc.mo
./usr/share/locale/tr/LC_MESSAGES/libc.mo
./usr/share/locale/de/LC_MESSAGES/libc.mo
./usr/share/locale/da/LC_MESSAGES/libc.mo
./usr/share/locale/pt/LC_MESSAGES/libc.mo
./usr/share/locale/hu/LC_MESSAGES/libc.mo
./usr/share/locale/eo/LC_MESSAGES/libc.mo
./usr/share/locale/it/LC_MESSAGES/libc.mo
./usr/share/locale/bg/LC_MESSAGES/libc.mo
./usr/share/locale/sk/LC_MESSAGES/libc.mo

I can conform they're not in the glibc stashed-locale sstate object so
they disappear somewhere before that in the glibc recipe itself.

Quite where/why I don't know as yet.

For procps, the timestamps in the output are different, that is the
only difference. That means something is indeterminate with the source
epoch for that recipe. Again, why, I don't know. The two stamps are:

2019-12-08=C2=B704:06:03
2019-12-08=C2=B704:05:49

This latter one could potentially be a bug in hashequiv (cc Joshua). It
may need that stamps patch I have fixed up to resolve it. The fix it
needs is to make it apply only to certain tasks.

Cheers,

Richard

