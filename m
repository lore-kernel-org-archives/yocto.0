Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F3616C36014
	for <webhook@archiver.kernel.org>; Tue,  1 Apr 2025 08:27:40 +0000 (UTC)
Received: from mail-qk1-f182.google.com (mail-qk1-f182.google.com [209.85.222.182])
 by mx.groups.io with SMTP id smtpd.web10.14139.1743496052886373999
 for <yocto@lists.yoctoproject.org>;
 Tue, 01 Apr 2025 01:27:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=F4Wi8Zmc;
 spf=pass (domain: gmail.com, ip: 209.85.222.182, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qk1-f182.google.com with SMTP id af79cd13be357-7c081915cf3so680561785a.1
        for <yocto@lists.yoctoproject.org>; Tue, 01 Apr 2025 01:27:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1743496052; x=1744100852; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=20IvTCbOpwNB7xAenn5NNGge5SkBvbgbafjqqOC6+E8=;
        b=F4Wi8ZmcWZCbruaCEdDFTV7dWu+SDk546x8ASRtfGC4vyqJrcyuZalEvrLbPG+ojG2
         Ydyy5tRK/FistkCl/62Vx44taOOdS8QYUJ/BsnrHMIIH4eh2e+4eAkpc4Wqql7ZfcsJ6
         +oR+mEyFM4y70qm7QTeP6uOcTR5goGxhFjbetPUUg8W8V2TXM0yekAQmnHgRKaJKrGjl
         bZLaHUceLiG7DgoEnPyO2sB0FKGdl/LHeY9i8ZX3MA/A3bk9RtX5YQm+IFZ1waZoOwaO
         26vrTQiICj/ub4/rAh3ao64xzPcqZEBlh1ZMHLpTEw6JaH9uyAd3FXibiB+Knn2nEZ5C
         X8rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743496052; x=1744100852;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=20IvTCbOpwNB7xAenn5NNGge5SkBvbgbafjqqOC6+E8=;
        b=gzdTppU+FTV4/QtF+OZJrtEM0QzReElBVCpwNJqtoXiOYHO37FkKuWgxiJxxs9U1Th
         G2WqcCeSnS2IgKOzmxmaAPstx6vlu9td1NRFkiVdfr3/fdnsWyQcgxLdXSLkjvSK6Qn6
         Y+urMdruCMi7mkkwpno3sk5fJWCJn4du9dPM+4VbhdfSANgwZVQdLN6c9jr+UL8nG/76
         /Ebx0LD+yZsbDTVj208s3VvNsr3F1g91MCbOfTNV1BSKgt54KlmxahQaSaNO5W5jqD8e
         S6ozkhppVTca8f5GHK/vCbDsGZUvW5UGweDPDEvI3WMNt18Ya+zzKdEDBHw2474lRCKM
         hMNA==
X-Gm-Message-State: AOJu0YzlsaIwxOVQb9C8cL06nCobmbOhaFzC4OscGhFmSLk0SImpJ1CB
	sm5IGQi3g7lXevKKg6bZ+jCIiK1liAvQrpXqZ9HeFkM8Jvk/03cMQfygusF07S0LT+ryMGnk2Kg
	LIvDWYgvWxIYHqQm9J2gjXecmw/oDZw==
X-Gm-Gg: ASbGncu7TnEZCsyeMX0z2VkiUANJ+tmXPWnQ3qOaiWcuMNWMY5Qu/AbDH6r4Wfxp3tQ
	QwZ+/KDbQ+/SBXlpy45QVY2ypy4Rj/+I0AEP6nRJRL1rYIpojuC1Z+2aYDgBed5psABv6qP9lNg
	cE69MywX28W15Nem+ph7PAvsq0jnBPKiUZhTCz9LYqDFmRnJGV7tcpa+bIViSa
X-Google-Smtp-Source: AGHT+IEXhd1Bios2AbkfdWfClH4V0ETmygAX4b4Crz8jHTqa+lV8I5dlrRYIgdspooUcBn4hIu9m/GM/MvkCKEsmBlE=
X-Received: by 2002:a05:6214:f22:b0:6e8:9d00:3d67 with SMTP id
 6a1803df08f44-6eed61c3611mr157385286d6.15.1743496051774; Tue, 01 Apr 2025
 01:27:31 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj9axQ4GmTvrUFPrRbQZzf5Fe6E+nZNAyeEQ6=B=dj5wKQ@mail.gmail.com>
 <16009.1743485014434686282@lists.yoctoproject.org>
In-Reply-To: <16009.1743485014434686282@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 1 Apr 2025 10:27:20 +0200
X-Gm-Features: AQ5f1Jo7aXwkYyR1ISW1yEoe9ZA5CMAPvzSz-8XG8BOZDCBwjpRLNrQMgF4fblg
Message-ID: <CANNYZj_wguctYZ6NvdxrwsVNXZOkS7hAJQb77Q6uRBbGsm46ng@mail.gmail.com>
Subject: Re: [yocto] Issue Booting Yocto Scarthgap (core-image-sato) Image on
 AIMB-288E (Intel based target board) #kirkstone #scarthgap #yocto
To: rajesh.d@mindteck.com
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 01 Apr 2025 08:27:40 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65047

Sadly I'm out of ideas right now. Do the same images boot ok on your
laptop or some other x86 hardware?

Alex

On Tue, 1 Apr 2025 at 07:23, Rajesh D via Lists.Yoctoproject.Org
<rajesh.d=3Dmindteck.com@lists.yoctoproject.org> wrote:
>
> "The core-image-minimal and core-image-weston  image boot process is show=
n in the videos below. I tried switching to different virtual terminals usi=
ng keyboard shortcut keys (Ctrl + Alt + F1=E2=80=93F6), but neither a conso=
le window nor a GUI appeared."

