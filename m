Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E07C0C36000
	for <webhook@archiver.kernel.org>; Fri, 21 Mar 2025 08:41:28 +0000 (UTC)
Received: from mail-qv1-f47.google.com (mail-qv1-f47.google.com [209.85.219.47])
 by mx.groups.io with SMTP id smtpd.web10.16492.1742546486125785101
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Mar 2025 01:41:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=QsN7D/Bo;
 spf=pass (domain: gmail.com, ip: 209.85.219.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f47.google.com with SMTP id 6a1803df08f44-6dd15d03eacso16854636d6.0
        for <yocto@lists.yoctoproject.org>; Fri, 21 Mar 2025 01:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1742546485; x=1743151285; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ElkkVW49zFY//jfAFaLw3G13bRVLvPaarvXXzp05h64=;
        b=QsN7D/Boq+74koWWxxtjeV1EMSiBn8O3JNR3E0RbpoeH41wGs07F8koB7I4wEHZAWJ
         AR9Hb/qxgR09aDeo/sSmeyBqMRxnnqkb0tGPOcT4eW5mImRS9Hxh3Re2zsenhCPtiNi7
         eYp92k9prBIuw0mCwzZxsCIMiJMYwFc9zhQsGdWd1Ze2b8UVmn2aSmnzlvmIrJSixYpN
         l5tUOFxZbWkTMugt0FXhGrEagDdzWUxPrhjjuF+8+RpuiuQ2E8mioClihmWe6ba7Z8+q
         /8mE8sciP3aSxlbjJGGUnectfA4wr2NnWlsjR7DIpQWyYR5/KoqCqFuPUZndvyXeU+UW
         goIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742546485; x=1743151285;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ElkkVW49zFY//jfAFaLw3G13bRVLvPaarvXXzp05h64=;
        b=lRqrv5WJIqDrjopDPLfrGcgaZL0sVz9vITDL0MF29C7inlTeExtI7VFOIbISJjJO6N
         O+S/tfHmnTCjDGhZ73XrGV4qCbVPThAPoM4DnVTyBjoWR3h0P1hI3fSl5owkUDW4qLNJ
         Ge0prPVDtNiVcPjN7k12m6jzBzkU+TQmya2JTOCFaXXhbP3llpqcsCpzQ4/66zLgto1H
         CIzsbhPr1FXra0f4mo1HSJhZMn1BYhlSmYvOqEAUnqAM2Xo446zL08iva4NqpOaIwlhH
         BNJtbyHprNt8W+F4aQQtQycihKZOv7xXEdZ7TE2mxD5Mjv7ASj/XWLsL3pqW6LFMmvcW
         KSaA==
X-Gm-Message-State: AOJu0YwbOEFbIHlmUCwmiQqNXidyx4zRR1FAIR4acJUFi5ywbvUD01DW
	fgzf7kKsaxMNxDRbgjalEkxxXFIjBHbFAKMa9KG+ByGVccE6AXcxrww9M01K785UQB02Vq3PLr4
	ZIWAMzZpSoXifDe6DfhP5zg+uQpyrnw==
X-Gm-Gg: ASbGnct11Z9JoHwfIS0OWRq/W/pAHgAjAZhSESad/n3/usvT7SC4vTZo9iBGneiJqMl
	2nGuFXBKxtgsEK/MrEekvNtrtSfp3549rJkdHpdTWa654DdWT8UohFHFqFwCRI8qwt62EVIyX76
	4rgTyocGDhn5UDtDlnBBTMxqB3X7aJJbus1C1OlFLZ4GB+uPYQudosrV3+/uJ6
X-Google-Smtp-Source: AGHT+IGYGahSddZ85BPeHhxZdAv1Lq05ZKAaXgZOEIazEIudH9ytnzFrP6Tpot+y/sgrnk754t56n+vpVbgLd6OdhzU=
X-Received: by 2002:a05:6214:2aac:b0:6e8:9053:825e with SMTP id
 6a1803df08f44-6eb3f1442a2mr29855176d6.17.1742546485143; Fri, 21 Mar 2025
 01:41:25 -0700 (PDT)
MIME-Version: 1.0
References: <975bd8bc-c4a8-4927-ae48-fde101bfbf7f@muxen.fr>
In-Reply-To: <975bd8bc-c4a8-4927-ae48-fde101bfbf7f@muxen.fr>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 21 Mar 2025 09:41:13 +0100
X-Gm-Features: AQ5f1JpO_2DJw2mkpm6EPl9ouO3wWwHUBRoovqFUloxh6bKLtWtfCxWwlMSswQA
Message-ID: <CANNYZj_TXTHywFvqqxfCEqW9pCRiU_36-Sbmhh0s+bPLtTQWMQ@mail.gmail.com>
Subject: Re: [yocto] Using a python3 native module during do_fetch
To: yocto@lists.yoctoproject.org, william.martin@muxen.fr
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Mar 2025 08:41:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64999

This isn't possible. Fetchers are always run by bitbake, and use host
machine python. What you can do is turn the fetcher into a wrapper
over a python script that is built via recipe.

Alex

On Thu, 20 Mar 2025 at 19:40, William MARTIN via
lists.yoctoproject.org
<william.martin=muxen.fr@lists.yoctoproject.org> wrote:
>
> Hi,
>
>
> I have write a custom fetcher for Gitlab Artifiacts based on the python3 module "python_gitlab".
> The fetcher works fine if the python module is installed using pip on the build machine.
>
> I have create a recipe for the "python_gitlab" module to try to make the fetcher works without the pip module pre-installed.
> The package python3-python-gitlab-native seem created.
>
> But the do_fetch seem to be executed using the build machine python, so the python module is unavailable.
> Does someone have any tips to add a ***wrapper*** to ensure the fetch is done using the python3 build by yocto ?
>
> Regards,
>
> William
>
>
>
> python3-python-gitlab_5.6.0.bb
>
> SUMMARY = "Access to the GitLab APIs."
> HOMEPAGE = "https://github.com/python-gitlab/python-gitlab"
> LICENSE = "LGPL-3.0-only"
> LIC_FILES_CHKSUM = "file://COPYING;md5=e6a600fd5e1d9cbde2d983680233ad02"
> PYPI_PACKAGE="python_gitlab"
> SRC_URI[sha256sum] = "bc531e8ba3e5641b60409445d4919ace68a2c18cb0ec6d48fbced6616b954166"
> RDEPENDS:${PN} += " \
>     python3-requests-toolbelt \
> "
> inherit pypi python_setuptools_build_meta
> BBCLASSEXTEND = "native nativesdk"
>
>
> python3-requests-toolbelt_%.bbappend
>
> BBCLASSEXTEND = "native nativesdk"
>
>
> conf/layer.conf
>
> addpylib ${LAYERDIR}/lib muxen
>
> classes/artifact-fetch.bbclass
>
> #
> # artifact-fetch class
> #
> # Registers 'artifact' method for Bitbake fetch2.
> #
> # Adds support for following format in recipe SRC_URI:
> # artifact://<projectGitlabURL>;version<version>;job=<jobName>;auth=<authToken>
> #
> # Install python_gitlab on the host
> # pip install --break-system-packages python_gitlab
> #
> # Add authentification token per host in your build/conf/local.conf
> # GITLAB_AUTH_WWW_EXEMPLE_COM = "glpat-56123sdc6sdHHHHHHfsd"
>
> do_unpack[depends] += "unzip-native:do_populate_sysroot"
> S = "${WORKDIR}/sources-unpack"
>
> do_fetch[depends] += "python3-python-gitlab-native:do_populate_sysroot"
>
> python () {
> from muxen import artifact
> bb.fetch2.methods.append( artifact.Artifact() )
> }
>
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64995): https://lists.yoctoproject.org/g/yocto/message/64995
> Mute This Topic: https://lists.yoctoproject.org/mt/111814381/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>

