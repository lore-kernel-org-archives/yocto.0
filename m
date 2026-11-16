Received: from mail-vs1-f50.google.com (mail-vs1-f50.google.com [209.85.217.50])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.22746.1794811006417344669
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Nov 2026 22:36:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sifive.com header.s=google header.b=aTDUP++o;
 spf=pass (domain: sifive.com, ip: 209.85.217.50, mailfrom: nylon.chen@sifive.com)
Received: by mail-vs1-f50.google.com with SMTP id ada2fe7eead31-7d2e1abf3eeso3736466137.1
        for <yocto@lists.yoctoproject.org>; Sun, 15 Nov 2026 22:36:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1794811005; cv=none;
        d=google.com; s=arc-20260327;
        b=NZXUC+MM+DceZOm8+usmjVvXCO1EmMk7AJijAgv7GsYIGkoChshVkzvPdExGZPwks8
         J+MRLkApTUbY1lbwcEYK/TKOLZhwnm87lt2HvuCNPJNwecfrbwC3z7HwXMzVeRe1UYGI
         g30IvvnVVSQBHdt4xxPZZrpeLYMHQKCq8tdMdGhnLjKkOUun3PBacQ/a14APdAu/LV47
         GlYrwh0sKMQNeXurQ5ViEkO+vWgUKGVsJP9U7M5mOc8bTQ4eyI3R7mNlUNeebsqTVuCm
         BLyB4mSqb+aifpvMv774UkOctInd7iIsfWbfolgfCqNX524sskNEeYKAUBHGTGSB86d9
         +9Wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20260327;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=ZKB4xyV84cWJjpN64KPUy7rUSyg4U0ADKuHauPrHYoE=;
        fh=dc/Sq0KReHTEWnmuq8ujukJBAYRMoaDbv4e1ncjx7/c=;
        b=hdkxY5ftoIYDa/MDMZlk1z+hhXwNe27TFuieNfmGufJXkkEz+LzFRd1v0qHmNoaypM
         eNMm/2S1nWjKTbyvffiYaf6NFZdJ/CrjFP7Sx6uZUTC9Kyk/fToOCDASgRQg0wv2eCfP
         GUt6vSxcHdW2r0JQQQlCMZ6CMqDAKPOKM3CqC93fJnpX903OxqZ+mu0Wg2NGpTXPiWcH
         aQRzKyQ4gYefTWSP06ckFIEPlBLSJ9WDLHdxaMDFYW1KO5GmXRE5swTfDRZl+cMA33tD
         6ZDbnBPFCfO2UAscpJ/rzlvDCEkZ0U2HyBrZD2N/ldnJfaMqDXAze0NPmoeYJQI2yaX7
         Q3GQ==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1794811005; x=1795415805; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:from:to:cc:subject
         :date:message-id:reply-to:content-type;
        bh=ZKB4xyV84cWJjpN64KPUy7rUSyg4U0ADKuHauPrHYoE=;
        b=aTDUP++o9Oos0X4cMQRShTG/ubw5diznjWc2r24Zk+4DHiTODiZXFvwcJGbDjqoA3m
         Q398vMGdmdX5eCd31w+O4Vv8Sg8mQi84zYfoPL9PPc6o2i/8mTolK97N/N5UFEoIanfI
         XmR1IX1uphel+5taHTFV40mgRYni8s3FacvWcVlLyBkpqAyHS85xov+wGS8uXtjeqiF5
         fn5uc0ch7P3rtCiKlcqLeYGVAf5AJ9sVVJSbOSIKaRuN1ngsVNqDXhEmZzKdLKzhn1Tu
         p8tTrN+L/TIseH+6cNKNAEVd1PBOMa5PDXk9fe3V7PQBUVuEdm8b0sg5dnp3Pie5b2uc
         VSow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794811005; x=1795415805;
        h=content-transfer-encoding:content-type:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=ZKB4xyV84cWJjpN64KPUy7rUSyg4U0ADKuHauPrHYoE=;
        b=nfeZA8fBCSxjntRQUBAVrE0jY1RZsyQ4qqpbw+xWRXP7ZKW+Bq2CoTY1OLKYZReZvj
         s0nyko2vSLhjZcGLcpnOn4rvt8Oe1Vyo8KHK/0A7BZWAE05oaRD4CARFzOR28OK90Low
         KUJ77N/xIjCG8LDxDp3YQ7HOqwCvGAVG9DpFfm3HV06LX5U6ty01D5uqeJoz9BKliQsL
         T12K/V/SeLiFppf5bBu7y/+Tx1Q6gTQLx7mzjBt4x81nBVd3nnPrFEYsPgf2KZfZpDk/
         Zs/GB/4q53R64QaIMPA/ZGgnMfyLE8w9pb5VdBPnIJ/zdrHz9kDV6fzpo4NtfWLvqSLQ
         EkKg==
X-Gm-Message-State: APuU4Z/ZWVa9rXOEttY/7jzlQpudDqNkH6o5vvDTxQCQK7vzKm45bYQ/
	HAMlnwOXfb6necD5CKwTUP+4VoDueOWa6pks01JHdvujKNwLWtuCRhUZxSxDk5PZyflaG/rcx0l
	e+nyf/kBTfozHWg3xQUoTSe0dXy3nt+k8WWfdkkzeZg==
X-Gm-Gg: AYBFou1IkpurVu+7T96VQOiA5rCgUlFLfGVMDMonsTqk7QPfK+F12OCqmgqVQttZroJ
	dhVCTBi6Z6DZF8J3yeuwe9SaT7uE5I4rBwdp9hQhqkFzZtMribV67lbKjDeQCgnAYcPOUlkwZNf
	IIxtcGPlyJMLypprdBU4mLPCIq0wzqeKeFQNdUALD8tgq1SyXGfyLiENScevQ9zrY/e+fBXlJRX
	YotKsEuSsmEtE5aoh1BgJovObTlwPrIdnKYT5G5scSIbHYEEMzMo1uvIEdEOjGSVkaXJrqqHRnB
	y8F6OBo07xL0xfsH5smsz88VAUv2eS/UfsR1aBLIkfTVKB+3v9V9qlslwn5Ceqz3C6u5InNfuEw
	bVGLYYCiPbFzcLxW7cU8FJQ8rCAhJK15nO3XqPrH1
X-Received: by 2002:a05:6102:4457:b0:7d2:d209:7af8 with SMTP id
 ada2fe7eead31-7d63178e144mr2397092137.19.1794811005214; Sun, 15 Nov 2026
 22:36:45 -0800 (PST)
MIME-Version: 1.0
References: <84f4a7735a6ba8af9dfd8d314c71ed02cf4ee7a5.camel@bootlin.com>
In-Reply-To: <84f4a7735a6ba8af9dfd8d314c71ed02cf4ee7a5.camel@bootlin.com>
From: Nylon Chen <nylon.chen@sifive.com>
Date: Mon, 16 Nov 2026 14:36:34 +0800
X-Gm-Features: Aa3M54pu_q2LXZrm7namNc91RHGHQGLADxg4f_rQSVu8TJNChdgzYMPRg8gZ6PA
Message-ID: <CAHh=Yk8qv8RTdfhoRuyE_pSDSUpqm-KpPnsshgfHNfjGgms=aA@mail.gmail.com>
Subject: Re: [RFC] Moving OP-TEE support from meta-arm to oe-core
To: Thomas Perrot <thomas.perrot@bootlin.com>
Cc: yocto@lists.yoctoproject.org, meta-arm@lists.yoctoproject.org, 
	peter.lin@sifive.com, Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
	Michelangelo De Simone <michelangelo.desimone@sifive.com>, Zong Li <zong.li@sifive.com>, 
	Greentime Hu <greentime.hu@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by lin-tor-korg-lkml-alma10-1 with HTTPS for <yocto@lists.yoctoproject.org>; Mon, 16 Nov 2026 06:36:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66802

Hi Thomas,

I would like to follow up on this RFC. Could you share if there has
been any recent progress or updates on moving OP-TEE support to
oe-core?

If there hasn't been much movement lately and no one is currently
working on it, I would be happy to take over and continue driving this
effort forward. Please let me know if that works for you or if there
is anything I can help with.

Best regards,
Nylon Chen

Thomas Perrot <thomas.perrot@bootlin.com> =E6=96=BC 2026=E5=B9=B43=E6=9C=88=
3=E6=97=A5=E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=8810:31=E5=AF=AB=E9=81=93=EF=
=BC=9A
>
> Hello,
>
> I'm following up on the RFC I sent in January [1] about moving OP-TEE
> support from meta-arm to oe-core.
>
> Thank you to everyone who participated in the discussion, Ross, Khem,
> Sumit, Rahul and John.
>
> OP-TEE is being adopted on RISC-V (non-ARM) platforms, and having it in
> oe-core would avoid duplication and fragmentation across layers,
> consolidate generic parts, and make it accessible without a dependency
> on the ARM BSP layer. This follows the same model as U-Boot, which was
> seen as a valid precedent.
>
> Please let us know if you have any remaining concerns or objections,
> then to move forward and maybe prepare a first patch series adding OP-
> TEE recipes to oe-core with support for qemuarm64 and qemuriscv64 as a
> first step.
>
> Kind Regards,
> Thomas Perrot
>
> [1]
> https://lore.kernel.org/all/39d5c5061d0c220d37a302b5669df66d04ca41c0.came=
l@bootlin.com/
>
> --
> Thomas Perrot, Bootlin
> Embedded Linux and kernel engineering
> https://bootlin.com
