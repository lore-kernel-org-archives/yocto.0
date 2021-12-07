Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989E3C433EF
	for <webhook@archiver.kernel.org>; Tue,  7 Dec 2021 00:35:02 +0000 (UTC)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com
 [209.85.128.41])
 by mx.groups.io with SMTP id smtpd.web09.60429.1638837300925223838
 for <yocto@lists.yoctoproject.org>;
 Mon, 06 Dec 2021 16:35:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=Npv8WHI4;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.41,
 mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f41.google.com with SMTP id
 n33-20020a05600c502100b0032fb900951eso478000wmr.4
        for <yocto@lists.yoctoproject.org>;
 Mon, 06 Dec 2021 16:35:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=HOH8DUo57g6lO307V7eCpSd9qoY8jPgKJSi7wm1tDO8=;
        b=Npv8WHI4YweiZVRr3MkOaNc1yvPbh/7ZgK3tPIEjoz0zuK7Uys/NDiiPxSFZy3MhKb
         Fv4J3tncDeMH3P+fnHBJpoOLjUCisV4lbUZQt5TmyT6HKAY4ZoMS7We5TCVR/kpUTXEy
         2DsEN0Fy30o0WGQQ5HsZ9WgeoS4MG+0JPlKDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=HOH8DUo57g6lO307V7eCpSd9qoY8jPgKJSi7wm1tDO8=;
        b=dNtLic+v3dj+OvtLKbB6bM0Y5VKSDh1DRHXmoiu2UtxylqBRJZYJQT3MkmojIEu8+o
         H68k30eKSlVZRem04fzUnjC4uk6rbHlOMfMp8FRMv4I3V9GTx2bu5bp0Wpi15uQ5G/Bt
         AYyITkGGJ0Z9mscq5kDOQyB5n8CS7vLQHm1iNZQq3CujgKAD75Gj//0LKHonFdv57JLd
         8UyqseMznjumSo34D+SbmW9m/B6iNlcHrCrbepRajLQDEShtwPmqS+zZKWlOXHgUItiT
         GWSU8G4upcwLTIU/Ov6pywohigfioDViJOLuZ/Hl/3LLAXErkJFrS8nzhhhmo9jEGk0Y
         TKog==
X-Gm-Message-State: AOAM532nmE0jhUQ6ynm6CdsBBlE6CvGTvq0hvUkZ6t8PaGJmuR4psSLH
	tBBg0hQ0Iqp1R+9TxOFGhtR36w==
X-Google-Smtp-Source: 
 ABdhPJwX2z6mNGV+KW7qP3UXhKsPjNBf+ARcVNUOQV8aLMcXS2VMMTPHNqbGoOvpl/KnobAlhFY4lw==
X-Received: by 2002:a1c:f20e:: with SMTP id s14mr2584228wmc.186.1638837299353;
        Mon, 06 Dec 2021 16:34:59 -0800 (PST)
Received: from ?IPv6:2001:8b0:aba:5f3c:a430:ef69:a06e:8b4a?
 ([2001:8b0:aba:5f3c:a430:ef69:a06e:8b4a])
        by smtp.gmail.com with ESMTPSA id
 e8sm12612712wrr.26.2021.12.06.16.34.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 16:34:59 -0800 (PST)
Message-ID: 
 <41007b2c8c85ad4e0f30d73a29080accb70a4189.camel@linuxfoundation.org>
Subject: Re: [yocto] Setting BUILDNAME to a string broke in 3.1.12
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Steve Sakoman <steve@sakoman.com>, Henrik Riomar
 <henrik.riomar@gmail.com>
Cc: yocto@lists.yoctoproject.org
Date: Tue, 07 Dec 2021 00:34:58 +0000
In-Reply-To: 
 <CAOSpxdap8+v96Dkk9ofrQmFkbc43Cuv=VErjgdj6CDupJ=uGxg@mail.gmail.com>
References: 
	<CAF1P4FEULketOK1DizcW5hmutF2HZdVyPZLhD4gh3cuiP31GAg@mail.gmail.com>
	 <CAOSpxdap8+v96Dkk9ofrQmFkbc43Cuv=VErjgdj6CDupJ=uGxg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 07 Dec 2021 00:35:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55491

On Mon, 2021-12-06 at 14:27 -1000, Steve Sakoman wrote:
> On Mon, Dec 6, 2021 at 6:40 AM Henrik Riomar <henrik.riomar@gmail.com> wrote:
> > 
> > Hi,
> > 
> > We set the BUILDNAME (via local.conf) variable to the output of "git
> > describe --long --always" so this info ends up in /etc/version instead
> > of a date. (i.e to know the exact source version of the code
> > deployed on a target)
> > 
> > This has worked fine for us up until 3.1.12, but now we just get a
> > date (201803...) in /etc/version.
> 
> After doing a bit of bisecting it appears that this commit is the culprit:
> 
> reproducible_build: Remove BUILD_REPRODUCIBLE_BINARIES checking
> https://git.yoctoproject.org/poky/commit/?h=dunfell&id=0d6ebaf8ff3232248ebf0e859cd09aefaee54a8a
> 
> Since this was cherry-picked from master to fix some reproducibililty
> errors I suspected that the issue might also exist in the master
> branch.
> 
> A quick test with:
> 
> BUILD_REPRODUCIBLE_BINARIES = "0"
> BUILDNAME = "my custom name"
> 
> added to local.conf confirmed that /etc/version was indeed
> "20180309123456" instead of the expected "my custom name"
> 
> I'm out of time to work on this today, but perhaps Richard might have
> some ideas on how to address this.

rootfs-postcommands.bbclass says:

# Perform any additional adjustments needed to make rootf binary reproducible
rootfs_reproducible () {
        if [ "${REPRODUCIBLE_TIMESTAMP_ROOTFS}" != "" ]; then
                # Convert UTC into %4Y%2m%2d%2H%2M%2S
                sformatted=`date -u -d @${REPRODUCIBLE_TIMESTAMP_ROOTFS} +%4Y%2m%2d%2H%2M%2S`
                echo $sformatted > ${IMAGE_ROOTFS}/etc/version
                bbnote "rootfs_reproducible: set /etc/version to $sformatted"

                if [ -d ${IMAGE_ROOTFS}${sysconfdir}/gconf ]; then
                        find ${IMAGE_ROOTFS}${sysconfdir}/gconf -name '%gconf.xml' -print0 | xargs -0r \
                        sed -i -e 's@\bmtime="[0-9][0-9]*"@mtime="'${REPRODUCIBLE_TIMESTAMP_ROOTFS}'"@g'
                fi
        fi
}

so I'd try setting REPRODUCIBLE_TIMESTAMP_ROOTFS to "". I suspect the change
above started setting that to some value incidentally.

Cheers,

Richard



