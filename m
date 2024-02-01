Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 855EBC47DDF
	for <webhook@archiver.kernel.org>; Thu,  1 Feb 2024 11:52:11 +0000 (UTC)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
 by mx.groups.io with SMTP id smtpd.web11.13230.1706787121815524980
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Feb 2024 03:32:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cFsf6E6z;
 spf=pass (domain: gmail.com, ip: 209.85.167.170, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3bda741ad7dso717683b6e.1
        for <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 03:32:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706787120; x=1707391920; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UtmpCUEthiuXcRb++fpGM5WHHUMjEolyQvpqIZn0XE0=;
        b=cFsf6E6zfQUoY8IAHn/vyISEIQGXZTEMiv6kVmZbq2l8QsjpuxdMCIlmfjOWm8lLTV
         2bkOL0KDYIBFkOywFtCW9uJYsUhzlzdcEFXwHVbPJ0ZyUu0bgIBHNAM9XLjjgocCWGAx
         7Sj2/mmc0C84LhZuu1UaFLXz38RIWm5A7AbrOLZwcKPOCdWrw0BvtP2I7tikK2cXbx+H
         raEve97xoZhcOXsRAbwr5ATZch6XJlwwya2RZzKDytvUERpI/fQeGJyX/L414OsNKKoI
         HEW3BHSOniFZP9U44JvSrBnRkfDiM8UvzwMGqpUJ4hhSuiRGDBXYCrfw1DxCk07reTiR
         5zow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706787120; x=1707391920;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UtmpCUEthiuXcRb++fpGM5WHHUMjEolyQvpqIZn0XE0=;
        b=W9V4vQmIDRi6z/TF9qScrcye33h09SDLHn7Blrm9kIEg/Ps/+Ms4Q8pfPmTwGJZA9I
         gFR3hvP8h/R7w4VVWnWdVLmbYr73hgkGzmJBd8CLNQULky7CFX+ietWzSRBzS4Hwu818
         3u3zWvi0Ig6u/J03Kk8ahR2U/Gc2+MIptEw9InV+X0w4YNN30/M60wu5AMbN6lGScaN2
         BtbsG+OkN6PjC0REWy59vrswjT89MrSvUFfYzzMaitE+oij+fEqcEw/cUoiztBqGeHWJ
         rklCJ5VG9LIT6JLrBmIaoXZNTn04P27TCJkfNUhUEFEIUon8qqBgM5in3TPJ5vwEoF+E
         li0w==
X-Gm-Message-State: AOJu0YyeiWYkSw4Cmx0ARUSKZJT/FLmuzEFIa4FCz0hpyg+eEC7TgBjv
	sUgBU563uYWGmzSFwHOmou+XL7V5HvRNYd/9rZWCgyRjLhjTE5hhm3QyXnfVQJOKt4Jp9RcWOq/
	F7iUEIVHJoi9kzwdKSXMpZtDXDslSx1yTl+0=
X-Google-Smtp-Source: AGHT+IEqh7qe0dLnGm1IWnylcKBmN5CeslC3zstTWoSkUrjdI8m3bxWPGhjnaJmiXNXzlNzBMQbp3EDtz9BVqoFAIDM=
X-Received: by 2002:a05:6358:9494:b0:178:6dcb:b942 with SMTP id
 i20-20020a056358949400b001786dcbb942mr4537049rwb.28.1706787120543; Thu, 01
 Feb 2024 03:32:00 -0800 (PST)
MIME-Version: 1.0
References: <CADfgfobScqVYRtPjm5buBRVzROqWX++85inBmKqZ1MVLSWawMg@mail.gmail.com>
 <C108D62F-C44D-417A-8DBE-40956C60C5D4@gmail.com>
In-Reply-To: <C108D62F-C44D-417A-8DBE-40956C60C5D4@gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Thu, 1 Feb 2024 12:31:48 +0100
Message-ID: <CAGAf8LzdP0iK0MKt_CZk2USVMtdqy8nz=iJsLPGihAvAKFg14Q@mail.gmail.com>
Subject: Action Required: Confirm Your Groups.io Membership to Continue Receiving Group Emails
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, daspravee@gmail.com
Cc: mhalstead@linuxfoundation.org, 
	openembedded-core <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 11:52:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62355

I even do not understand this part:

> Please search your inbox for a message with the
> subject: "Action Required: Confirm Your Groups.io
> Membership to Continue Receiving Group Emails"
> from "@groups.io".

I have searched, no ever email with this heading in my gmail mail. Or
maybe I deleted it.

Please, advise?

Thank you,
Zee
_______

On Wed, Jan 31, 2024 at 2:09=E2=80=AFAM Kevin <daspravee@gmail.com> wrote:
>
> I
>
> On Jan 30, 2024, at 10:03=E2=80=AFAM, Michael Halstead <mhalstead@linuxfo=
undation.org> wrote:
>
> =EF=BB=BF
> Hello,
> Some mailing list users are being asked to confirm they actively want to =
continue receiving emails from our lists. Please search your inbox for a me=
ssage with the subject: "Action Required: Confirm Your Groups.io Membership=
 to Continue Receiving Group Emails" from "@groups.io". Reply to this email=
 to ensure you continue to receive listmail.
>
> Please let me know if you have any issues.
> --
> Michael Halstead
> Linux Foundation / Yocto Project
> Systems Operations Engineer
>
>
>
>
>=20
>

