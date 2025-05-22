Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9F4CC54E90
	for <webhook@archiver.kernel.org>; Thu, 22 May 2025 10:27:08 +0000 (UTC)
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
 by mx.groups.io with SMTP id smtpd.web11.20896.1747909618981867627
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 May 2025 03:26:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=R3cmOZM1;
 spf=pass (domain: gmail.com, ip: 209.85.219.42, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-6f2c45ecaffso70945006d6.2
        for <yocto@lists.yoctoproject.org>; Thu, 22 May 2025 03:26:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747909618; x=1748514418; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mz/UXUzThFUlfZ8FrU+tU6roUWPZtwt7+nJhD5HBqTM=;
        b=R3cmOZM1e18VEREjxa2lm00IiqsPrzJv0pfiqykDgeEJurC36GhamC3NbdD6UJWOLN
         d4faLNzMpibzkqSU9GfiPvSVeqk3coeARj2Wqdxkqhzaa4uHDy9y7HsDD5z/DY25kLce
         E05H+GJ/GH8hJCahUtb4yntYc83TWcocHlfJDxkF91adJHHqbhXSh7brGVc7ba94QmfH
         +lCLVv6G7bRXMsuxFUZFTyTk6AkNOakDityrsbHjy9JYQ5GRjXTNqB7PuEE3Vv3CvBcd
         uppUWhSh4r8i/b0aYvT8qFkWbR8j5+Uqyc3BW8HIhDA0gVPkGqfaj+DDBSZQ6ZFVIL08
         09fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747909618; x=1748514418;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mz/UXUzThFUlfZ8FrU+tU6roUWPZtwt7+nJhD5HBqTM=;
        b=FA1h98VyT4oi2eKrnnslEdtKTABT/cj1Ufg7XBXlN9zJEGAlbmaOgiWRJhvSlfinRP
         jpjY4XNsKJab9QE7FFJ6uQNgtt4pzsp5eqmUcX/iX7FCp6qLNLNYZ3CV8y//9Arhnsvg
         Ux1eqfxb3tuHnMrsBN5u3+BrW0j0tgH5efgo8sKx5pLsMY/jzlCBeEPX6KbtpHfBtwov
         CQkgk6wubElnSLCJN4SBA4wps4kSa+yCO/N2Cujf1t2wZSJNgtGrmYBK8DZVXc1WmElk
         RSm7LOuWZdVvs1qxKiqwU39/trUdAWpY4ERpjxA5P4ZwiAdN+DVT0NLAZWXsaofrNRYx
         cFQg==
X-Gm-Message-State: AOJu0YynL9I3ibSXrSnIgZoS4mf3228HkLWsxZ/KLrdxVBNOi/g7Vdbr
	/gULedCQkTLD0RO2JpG3KJvF4qV8jtUxMEItBA2y5hfpLYRSLDauT8rFDzMedX6to10jVYhl5Zm
	IimQeuErEW4DRYzUx2QL61Y8TeowpyFrUog==
X-Gm-Gg: ASbGnct20OIpqY2dMcCDwcqheXgQ+X3rJVu4gwFMRwhtsd93SnACXDUJdySbMya9wWR
	KWf7V2vKmjAcPO0TIFn5e4ubUmP50WwrtYuvt9dElVG0ZJ2DSHVArhACvp25yfDnyYMU9hUlziR
	/YjBcnKFWSCl09SdkbTu6e2BHG/oxvtWxTew==
X-Google-Smtp-Source: AGHT+IE8y8ucRnw3apBwtQDRoQK9MN8n3LP1qOdqRQB82nO34cS2nNnBuxO+WoqNI7IT+apr5qJVJz1263VjxqxxMIY=
X-Received: by 2002:ad4:5f8e:0:b0:6f4:c602:806e with SMTP id
 6a1803df08f44-6f8b087ca7fmr385535656d6.13.1747909618038; Thu, 22 May 2025
 03:26:58 -0700 (PDT)
MIME-Version: 1.0
References: <dKmM.1747900559708910814.bgCt@lists.yoctoproject.org>
In-Reply-To: <dKmM.1747900559708910814.bgCt@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 22 May 2025 12:26:46 +0200
X-Gm-Features: AX0GCFvAqkWYgLguGbIQnDt92IiX32MflCvFVOQTv8ds4Ez8iyAD9JPNDBkeRRE
Message-ID: <CANNYZj-kZ8JHWVCcgQENsyOgPPB_BZF4vAD3jdKJzLrKmFZz0w@mail.gmail.com>
Subject: Re: [yocto] sstate-cache: Ignore ERROR_QA entry for local build
To: yocto@lists.yoctoproject.org, Joshua.Schueler@tesat.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 May 2025 10:27:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65392

I'm not sure I understand the issue. bitbake-diffsigs per se won't
tell you if something is in the sstate or not, it only tells you how
two sstate signatures differ.

If you're building from a source revision that has not been previously
built and placed into the cache, then bitbake has to perform a full
build.

If you're building from a source revision that is in the cache, then
bitbake will take that.

Alex

On Thu, 22 May 2025 at 09:56, Joshua Sch=C3=BCler via
lists.yoctoproject.org
<Joshua.Schueler=3Dtesat.de@lists.yoctoproject.org> wrote:
>
> Hi,
>
> We use a shared sstate-cache which is populated by our CI pipeline. Our d=
eveloper machines have read-only access to this cache.
> For my local builds, I like to set ERROR_QA:remove =3D "version-going-bac=
kwards" as I'm jumping around git branches a lot. However, this invalidates=
 the shared cache (verified by bitbake-diffsigs).
> I tried to remedy this with
>
> ERROR_QA:remove =3D "version-going-backwards"
> ERROR_QA[vardepvalue] =3D "${ERROR_QA} version-going-backwards"
>
> But it does not seem to get picked up correctly, the shared cache is stil=
l not used. Am I misunderstanding vardepvalue or the parsing order?
>
> Regards
> Joshua
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#65391): https://lists.yoctoproject.org/g/yocto/messag=
e/65391
> Mute This Topic: https://lists.yoctoproject.org/mt/113243676/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

