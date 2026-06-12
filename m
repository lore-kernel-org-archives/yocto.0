Return-Path: <richard.purdie@linuxfoundation.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0F93CD8CA8
	for <webhook@archiver.kernel.org>; Fri, 12 Jun 2026 09:18:27 +0000 (UTC)
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.66535.1781255903117177944
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Jun 2026 02:18:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linuxfoundation.org header.s=google header.b=EdMqvFrQ;
 spf=pass (domain: linuxfoundation.org, ip: 209.85.128.46, mailfrom: richard.purdie@linuxfoundation.org)
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-490b8a97b11so8636845e9.0
        for <yocto@lists.yoctoproject.org>; Fri, 12 Jun 2026 02:18:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google; t=1781255901; x=1781860701; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=csQM0BzOVD86/bpo0B9T/ISDFAcesxGtJDd2VSGY0Vo=;
        b=EdMqvFrQTD56ERQQu66eiUJ6W9+x5VKgdN0r0Xu0hVFDoplxfb5mIIAYInwMkJKa3L
         rE3ROewwAhJDE5cWbJN/+Ca77qloh5D/5pE8rpEe8woxRaYcdAhuVmMbWTK42hZ0OcTm
         M4gZIiEQHC5ewpDlYYpGlss5iXAWD/e2gvIhY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781255901; x=1781860701;
        h=mime-version:user-agent:content-transfer-encoding:references
         :in-reply-to:date:to:from:subject:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=csQM0BzOVD86/bpo0B9T/ISDFAcesxGtJDd2VSGY0Vo=;
        b=J4KCI5OPlwmbK3zxXUS0ArB5uhTy1wwD0BOOPL3WZyy2gnGnB9VxfFD9mi3sc3m0DJ
         8oWzq9VZG7eqwxFxv9/iiIuo9gjmzI1hg4mNs3ALt1NRjWFynlMbZ+/vkmZDIPBAsGTg
         yp/80ypez3b64GgQbq54uAuDkqCZvgK6bkem7V79Pe3sVhVWJCE7YFrxlhJnCcf5cIlQ
         8NkiqVGB9N1pDWUmpZVhFnP4MmXm1MPOOnqzKq4SZdAhPpAJjSaG/aR/oGMP80OP+c+Z
         5fTOv8HBH2LmbSqgdwAm0Wc9JeeEnd7tNNFbRRybj2WYXiOFWC+vln6VIXjfMeYz3JU9
         9yHA==
X-Forwarded-Encrypted: i=1; AFNElJ+yhRaIWy7XmpcxegFyfl24z9JraOlUmnwmyzZuogWoY3g+4GPrcysIY5a0Hhg/UCEo+f+9Pw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0Yxf/rKiWywOFGkVhLX8t8QC/4LArSV52xlDo6fhIyZGdKqZ6yYj
	+S9A1KsdHCTzwIdMLLqP7emv8nAaZlwSWml/78YFOpxeL4zqgVd3jGMKHsccmLii757eo+VlpQ5
	kgmnH
X-Gm-Gg: Acq92OHaHznAVCeq/GXphHiNx98abTLQm/SN+7Cn6Wc4frZKBcsqeHsYU9qF3YC2ywT
	zcPNBC2p3E7LcWYdsz0GRbTqYodXulg7eR2WZ58SNVFrasoW/LXGwGO0VxCjGlkNTXcBkciOSLR
	FwYGyCP/4Rqa8XtUkhsLjDAaIOz6txfsbdY0UDjvYKAvBOeDTctOK+Bn7kWIQQYNA/StSJa0JzV
	/O1Iq0iNR1xzvxJtVFWjTbKc3tUfpkwQICIpvJG77vTFGSbQYR3qDG4epsgkLCLcbYpDnZYg54W
	wvF2ErQw/ipdKho/OrKZA1Awl4r5Eng2cFQbAiNkqYalS81rTIqSKwIG4KAVGq2OwAnKBS6ma23
	NM5qD2gZSO99R42t4AwztytzEq0zQ962yLc6Blux8M7L5xYoOJbWEUIc1einBy/wMwNq1+QnBYb
	GTYYsyGRiR//lDBjdW14x1VsD83iaYvWnMuHk4eOaxkCRA3Tet6zxcy3pitQcBFk7hf595X38Ud
	/TgBt9ivH2m+KPy
X-Received: by 2002:a05:600c:8012:b0:490:b9d3:a9ce with SMTP id 5b1f17b1804b1-490ec5047d3mr24385085e9.30.1781255901346;
        Fri, 12 Jun 2026 02:18:21 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:f50c:d0e7:6f94:47a9? ([2001:8b0:aba:5f3c:f50c:d0e7:6f94:47a9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4606f2dbfb1sm4190227f8f.35.2026.06.12.02.18.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 02:18:20 -0700 (PDT)
Message-ID: <0978cb5c5c2086ed0d5ffdcf8f4465b581769d00.camel@linuxfoundation.org>
Subject: Re: [qa-build-notification] QA notification for completed
 autobuilder build (yocto-6.1_M1.rc1)
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: qa-build-notification@lists.yoctoproject.org, 
	yocto@lists.yoctoproject.org
Date: Fri, 12 Jun 2026 10:18:19 +0100
In-Reply-To: <0101019eb3c283d7-332c2687-00f5-49b4-84f6-7ea02f2b99eb-000000@us-west-2.amazonses.com>
References: 
	<0101019eb3c283d7-332c2687-00f5-49b4-84f6-7ea02f2b99eb-000000@us-west-2.amazonses.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.56.2-9 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 Jun 2026 09:18:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66594

On Wed, 2026-06-10 at 22:58 +0000, Pokybuild User via lists.yoctoproject.or=
g wrote:
>=20
> =C2=A0=C2=A0=C2=A0 A build flagged for QA (yocto-6.1_M1.rc1) was complete=
d on the autobuilder and is available at:
>=20
>=20
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 https://valkyrie.yocto.io/pub/=
releases/yocto-6.1_M1.rc1
>=20
>=20
> =C2=A0=C2=A0=C2=A0 Build URL: https://autobuilder.yoctoproject.org/valkyr=
ie/#/builders/29/builds/3961
>=20
> =C2=A0=C2=A0=C2=A0 Build hash information:=20
>=20
> =C2=A0=C2=A0=C2=A0 bitbake: c687d42b81b17e7a2399099cab0f1a6aafcf6520
> meta-agl: 3c55b45bf920bec93938af02f2452cd698d3bacc
> meta-arm: 02d361b4359fde9b6646129980f1484f7aa5b09e
> meta-aws: 5e7cc95f7d55a0ba0ae6a7e6e43e6323811a140a
> meta-clang: 4b18f531a8d1047f49dd3097ddd00be870c0ed1e
> meta-intel: 55e0ff278f7040dff5e453c509357820e8ce4c9b
> meta-mingw: a4ba674d6a0a17e4c0bc4c11bbb9d0ea9de2b315
> meta-openembedded: 53cbcaba3f09cb50b72b91c2b33bdbd479da5f19
> meta-qcom: bc2df58da599d0ec0a6826736d2a7a2e1863ca5c
> meta-virtualization: 022f4356d4a9b389f51472d40a9330aa59f6bb9a
> meta-yocto: 59c41245ad231f5320defcb275477e3d25a2203e
> oecore: b5c24e1491dcb9ab0f782df6be6582fbd2151724
> yocto-docs: be424bf52cd3ac9c83a4617d0b06afe8cde055be

There was one failure in this build, a known intermittent qemuarm64
hang. We can proceed with QA, thanks!

Cheers,

Richard

