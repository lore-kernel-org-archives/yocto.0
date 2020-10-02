Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
 by mx.groups.io with SMTP id smtpd.web11.8260.1601619898020321971
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Oct 2020 23:24:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dyQg2p3T;
 spf=pass (domain: gmail.com, ip: 209.85.222.170, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f170.google.com with SMTP id d20so345852qka.5
        for <yocto@lists.yoctoproject.org>; Thu, 01 Oct 2020 23:24:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SvZ7AezLEJVGmGDAEJi7zRMTzIIguULTOV2mpfjRibg=;
        b=dyQg2p3TVVCEgciDQreEk8gTd+gFgGcdlGLpwN4IAJ8/GAFHr7Plb5YBOS+WAI+4vH
         E3+QIwEEDzEIei/sbnCBobVBr1leND9mFxMHAgABfroCyZ7FzK4zSilxusFHmUDI6w+2
         fLTR57Ymo3E3mpizwKBwNHLvJDqGiGeOIrgV/f1B3E+NJ5Snjiv9V9X4eeV/XwP3vqyt
         FnwxljMujnD/E1OgtZgsNYo2a/QDg4wEqrabP2tJJe/VyY1nu14NHfigWvqolpZq4xAC
         wkf+jtqQ9U4iSpJJ4DFwdFgsgMzKvb3cTPwxL4kkq5/qeORSbE2VEg8VUS1h0Yq4fynM
         uPXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SvZ7AezLEJVGmGDAEJi7zRMTzIIguULTOV2mpfjRibg=;
        b=VUMQ3iYy3d9tITgrFe2LjcLJ2Nlp4cLmJwbb/obWR4USPnPpU5KM7O2zRzbBZyV1rA
         PKweMszPU9qyWz7WF5IFeTvUIXiP0eFvpr2iWe6+kxppkrWshopYAFlmpK+VIzYQO4hp
         WyowjEG7lFse36bLzSCH+Z1zOZLwT5Lfcibx76RkP6jULWyrRBYPrfZCJaT1j61SYLss
         M9S7E5zohihzc7A3lC6RstkbizsUWBS338iS12J7kTegy8yTIH+NW40PtmhMgVCbClXi
         e9JCdht2N7BZ0+HDKxnylZvjmleXLEEkGcr8DznkJmQ4gduVstcPmBiMTkZQnCbtrDwq
         Hp5w==
X-Gm-Message-State: AOAM532nZHX2s/gLgi/sr3ZtRLgaVhRhsQ855e9dQuKZygx+vXTJk3A0
	fGq8s/oUTS+5bNTTL0XNnO2rHX8ROyC+cG/hxPc=
X-Google-Smtp-Source: ABdhPJxj5ZHLf45ltnwbOSGceIp5DDxpgN+eItpb6bUjyKNIGzS+Z+14cpIlHFfV/SMdvM4EVDBe/lWJ21kc9Grlerk=
X-Received: by 2002:a05:620a:13f6:: with SMTP id h22mr722740qkl.9.1601619897037;
 Thu, 01 Oct 2020 23:24:57 -0700 (PDT)
MIME-Version: 1.0
References: <MADEUP.1639E55C3AA99317.26131@lists.yoctoproject.org>
In-Reply-To: <MADEUP.1639E55C3AA99317.26131@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Thu, 1 Oct 2020 23:24:31 -0700
Message-ID: <CAMKF1soK5FAvvKmW+jAWWG8hgLmu7TDH8c7vBZkXKuECs9LyUQ@mail.gmail.com>
Subject: Re: [yocto] #yocto #sdk DRM and DRM_INTEL
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

On Thu, Oct 1, 2020 at 7:42 AM Monsees, Steven C (US) via
lists.yoctoproject.org
<steven.monsees=baesystems.com@lists.yoctoproject.org> wrote:
>
>
>
> Does Yocto support drm & drm_intel  ?, If so at what Yocto version was support added ?

drm_intel is in upstream kernel isn't it ? So just check your kernel
sources  for it
>
>
> Thanks,
>
> Steve
>
>
> 
>
