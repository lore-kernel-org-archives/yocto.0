Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95CB7D3C524
	for <webhook@archiver.kernel.org>; Thu, 17 Oct 2024 16:45:42 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web11.2799.1729183532592137141
 for <yocto@lists.yoctoproject.org>;
 Thu, 17 Oct 2024 09:45:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=cmO/VGvv;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2fb3da341c9so12521591fa.2
        for <yocto@lists.yoctoproject.org>; Thu, 17 Oct 2024 09:45:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1729183531; x=1729788331; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EgGK5d7+tV+iZ1SrxX+hlB7MOKb9udel0AFMahNEDig=;
        b=cmO/VGvvpQWjwKRg7CV2RW0G6sNMIAVTfPNkzGpsJeWS20Dpm3L407AdWQC+qsztGO
         mcV8EBa8mPP8FopmGLm3SoxpPQyKZn5nw9uLn21uj72/6dU5n6pGA1XzF2aBgX279Oyq
         kMXKVU8MJCq364vQU4pewOup2QIDdCd4w7VzLYWonYB+BChiApF964cMEN8HzlTZQ0SU
         +YUl1VJ9tOTSlwIphSaD41eiQAUecd/NnmMwKxMCaHR2i13uSTRBH3+7c1WbNveHecbG
         qb24EJI9VJrh2HECES4/Erzl1t89QonbedEt0mCt2Xj54i8xKTLygO5WwZJ0XTFe+vKS
         ifYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729183531; x=1729788331;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EgGK5d7+tV+iZ1SrxX+hlB7MOKb9udel0AFMahNEDig=;
        b=SgqTGDnsnXtok48iBIiGm6YlLXW8qOszOas4OumZoIyfS27UU+BCx0KRsbnDqKBGEM
         JT4HDY2ipKRcdQrTUGNByocXaOh1CCtAejLUbnbXFxBjX+e5/0TwI5Vin22ciCOKJa3y
         dfKemzlBcI5MD5l4T8R+NyzI9cLknIPRT8GKRZriebYDtUVVyJSrm+isN3IVK7k8UaOy
         h9LgRBu7rAWr4MHcpo6qKuNJjdSZ5bjwdFzVUGDmhghiB0GrAD0C4nYev7nefMelcsGB
         hl6OjUqPdpqNfXimqRtc9/Rw7GmzTxUZ70N1Ps84z75usdLfoiazzaTnsUuM+ZCLumyy
         cXdg==
X-Gm-Message-State: AOJu0YzrKWip3H5ozAVNQMaBTsrfOvABr9Aef6FsBWwE087xQdiRuORk
	TaudYcywyH+o9HkDamWwhW74o9+1csanWMfHfJYYbD3LWmgMGgSVU96dvGYy+83N8tJu76jZQEz
	ILC9vyp7e7VwV+RJzbiGGoCKMkTtGy2Jq
X-Google-Smtp-Source: AGHT+IG1TYQ2FOA1s5HnByWYF4J/tqE2bdcDPY7Ja1lZP69uzTnpvgOsGlTjPpch4d0PXEFXYK2Zt96pbBZe3e6qyR0=
X-Received: by 2002:a2e:a591:0:b0:2fa:fc41:cf80 with SMTP id
 38308e7fff4ca-2fb3f31e05cmr102520971fa.43.1729183530442; Thu, 17 Oct 2024
 09:45:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBnjrjU785=2-+YPqZ9r8Ao8mP4hyNKsH3G30oSD7-rrqqg@mail.gmail.com>
In-Reply-To: <CAPJWBnjrjU785=2-+YPqZ9r8Ao8mP4hyNKsH3G30oSD7-rrqqg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 17 Oct 2024 18:45:18 +0200
Message-ID: <CANNYZj_cPLHqvX7uV-RvGXWDyN+D5aqb7tiwLRsWZejcctxrtQ@mail.gmail.com>
Subject: Re: [yocto] dhcp package missing for yocto kirkstone
To: yocto@lists.yoctoproject.org, hassanchattarki@gmail.com
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 17 Oct 2024 16:45:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64046

On Thu, 17 Oct 2024 at 15:57, MOHAMMED HASSAN via
lists.yoctoproject.org
<hassanchattarki=gmail.com@lists.yoctoproject.org> wrote:
> I notice that the dhcp package is not available from the poky/meta/recipes-connectivity/ directory. I confirmed this on the poky gitlab page and it seems like it's gonna be that way for future actions.
>
> Is the package deprecated and no longer available? In such a case do you think I can pull files from the dunfell tree and append here, will it work?

dhcp is EOL.
You can simply use kea, the intended replacement:
https://www.isc.org/dhcp/

Alex

