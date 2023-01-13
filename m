Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20E5BC3DA78
	for <webhook@archiver.kernel.org>; Fri, 13 Jan 2023 17:46:57 +0000 (UTC)
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
 by mx.groups.io with SMTP id smtpd.web10.94900.1673632012030941856
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Jan 2023 09:46:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=KMay1/TR;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.221.50, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wr1-f50.google.com with SMTP id k8so7261885wrc.9
        for <yocto@lists.yoctoproject.org>; Fri, 13 Jan 2023 09:46:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:from:to:cc:subject
         :date:message-id:reply-to;
        bh=f8xbMTIHONOw2eDh9ARc9ACpu8pomMrALjN7JqVYKi4=;
        b=KMay1/TRSuhnXA0qh9LlYscF6QcMNzZbJzm/g+wJcORtlpbqE/sn8CV1Wkp/FlmVlF
         c7qVAUtSRadJ0ut42h4X2Cm/GTFVY2hZ940qk+PVo3Hds+RM3uZFuJQob+wCLQjaS22b
         IYPNZQf0Le+ERGgnDABjES9tVKA4ic46wlh+o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:cc:to:from:subject:message-id:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f8xbMTIHONOw2eDh9ARc9ACpu8pomMrALjN7JqVYKi4=;
        b=LCp8lQ7ZmpZDGSYXSj8wxtWSNI/KsnaIdj3N/jjAckV6fjQcp6ZLe1JZg8WP5dz/qJ
         2w88L3VYf3RCHzm+t6BDwb4zLNsszOvVZkm83joZPgbSXyOMWg6F4qBIWOGVRfapPVw0
         YKe2yaR8zHdJ9IQmn+6oyGB7+sqb1A8KxsWKrBK4wn/CoSiQj575stMWcRmZi29mr03e
         8T7cjbIXi8J10mODl8bTnAvhVM65fRxDoMUhYFcmg8x+/5oKU5/K2cHmvl/G4VMxh3uH
         KYRlZNytdMPiRRsm+BEX1kaEr51My845EANB3k6i9fn7hKkZWQ7a/2oN/N84xBue+gVS
         A+OQ==
X-Gm-Message-State: AFqh2kpyET//Gefn3n0nk/yrOfSurjDFORQ9p25n8Nh6N/I5B9Guej3R
	nO1rKBJsyP59u5QUyNbO22RWDQ==
X-Google-Smtp-Source: AMrXdXs4B4yqKABfj40BHRka7gMPZ8m7M+qUkGJDb9dosM84pO5tzFtyPhG2nDL1t9BLZJHDdGbJQg==
X-Received: by 2002:adf:ecca:0:b0:2bd:e592:5460 with SMTP id s10-20020adfecca000000b002bde5925460mr1444161wro.39.1673632010270;
        Fri, 13 Jan 2023 09:46:50 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:615d:b1e6:6cd2:7fd3? ([2001:8b0:aba:5f3c:615d:b1e6:6cd2:7fd3])
        by smtp.gmail.com with ESMTPSA id f8-20020a0560001b0800b002423edd7e50sm19303745wrz.32.2023.01.13.09.46.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 13 Jan 2023 09:46:49 -0800 (PST)
Message-ID: <728c14677b5087c81da2436102724094f16f6fec.camel@linuxfoundation.org>
Subject: Re: [yocto] [autobuilder][PATCH 1/2] scripts/send-qa-email : clone
 older history to allow comparing against older releases
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: alexis.lothore@bootlin.com, yocto@lists.yoctoproject.org
Cc: alexandre.belloni@bootlin.com
Date: Fri, 13 Jan 2023 17:46:49 +0000
In-Reply-To: <20230113150646.44144-2-alexis.lothore@bootlin.com>
References: <20230113150646.44144-1-alexis.lothore@bootlin.com>
	 <20230113150646.44144-2-alexis.lothore@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.46.1-0ubuntu1 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Jan 2023 17:46:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58981

On Fri, 2023-01-13 at 16:06 +0100, Alexis Lothor=C3=A9 via
lists.yoctoproject.org wrote:
> In order to generate relevant regression reports, we need to use resultto=
ol
> against taggued releases, which can be way older than the last five previ=
ous
> commits
>=20
> Signed-off-by: Alexis Lothor=C3=A9 <alexis.lothore@bootlin.com>
> ---
>  scripts/send-qa-email | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>=20
> diff --git a/scripts/send-qa-email b/scripts/send-qa-email
> index d2f63dc..c2c5a4b 100755
> --- a/scripts/send-qa-email
> +++ b/scripts/send-qa-email
> @@ -78,10 +78,10 @@ if 'poky' in repos and os.path.exists(resulttool) and=
 args.results_dir:
>          elif basebranch:
>              cloneopts =3D ["--branch", basebranch]
>          try:
> -            subprocess.check_call(["git", "clone", "git@push.yoctoprojec=
t.org:yocto-testresults", tempdir, "--depth", "5"] + cloneopts)
> +            subprocess.check_call(["git", "clone", "git@push.yoctoprojec=
t.org:yocto-testresults", tempdir] + cloneopts)
>          except subprocess.CalledProcessError:
>              print("No comparision branch found, falling back to master")
> -            subprocess.check_call(["git", "clone", "git@push.yoctoprojec=
t.org:yocto-testresults", tempdir, "--depth", "5"])
> +            subprocess.check_call(["git", "clone", "git@push.yoctoprojec=
t.org:yocto-testresults", tempdir])
> =20
>          # If the base comparision branch isn't present regression compar=
ision won't work
>          # at least until we can tell the tool to ignore internal branch =
information

That is a somewhat "easy" option but it might not be practical.

The yocto-testresults repo is large. I tried a clone here and it is
taking rather a while, it starts ok but then starts taking a long time
with a lot of data transfer (over a GB so far) :(.

Can we check the tags with something like ls-remote and then only fetch
what we need to compare against?

Cheers,

Richard





