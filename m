Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web11.286.1617740933702129091
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Apr 2021 13:28:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=I7hu6n8j;
 spf=pass (domain: gmail.com, ip: 209.85.222.175, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id z10so16359452qkz.13
        for <yocto@lists.yoctoproject.org>; Tue, 06 Apr 2021 13:28:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=wdWy5NU/pnhoD0qBCRhPkp6ynpSHUHLM1qQcy3dBqJM=;
        b=I7hu6n8jPy9j8GqWymLlrKHQQy1InRo3iQTm16rPJu6ILUPFU0fq57Ot9aHUhaCFHg
         oGfWSlX3wMmmqRhGPSeVyvVQ0vYJ6mTVIN77VwlElO7E67w8JuONASA/KEKRjlFTAnwH
         DBDmqhqgnoJlxBRqBLmzBfha4DtqyGDNEny7JZzfg0sEAuzefYAdQ+DQOICefusj0rIZ
         8xf0PczfVTdgrvNETM4gcuM4MUokERVzgh+2nphoQFBQvPv0b1aPi+FnDGiV86QHngxH
         tzqb2U2I+KD43ZWcxS8qUGD3m3Y86MCAKeTZY+MSXnHoifBlZuNIRNvPghuvDqu0ynEU
         03MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=wdWy5NU/pnhoD0qBCRhPkp6ynpSHUHLM1qQcy3dBqJM=;
        b=q873QgP/lhyfCZJdoFl43csnLMjOF90m8Wjeqn2X5brWW5UOidOk+fbNzIgpiF67eA
         aXuIDoaU1Rn7cl5eSXJLOyhJge9O+bZrdgq5ksYyklQ0HZ+ZFqzI/1ftfiBPKkbWDVMT
         Vm/taeun0xAKfnmUYnFxB7l+PoJFW75Qrtn1D9TGqknprQ8vq8o6PbWmrs23XxhdjMeX
         TpMxLaUcSmG71pNUujdtPhDwUzwoM0hU7EbiqSDHAvl4fWjzVUXSeQLWbPVyoomNPG2o
         n7T2iaj7350lxZMqDWI2b/pFoM6OiDtqOdIWFR6Gkihq+0nCe7hL+PIP0osXG2bgNHNF
         1XWQ==
X-Gm-Message-State: AOAM530ieq238abhSBFSrN85VaCtnTXKEgF6ZZLxw6wqCx6RhjRPQNK4
	be6akiwe9IlH1RVt8WT/RinHoMQRCiW+q05cuxw=
X-Google-Smtp-Source: ABdhPJx2jZt7r0ybqLOOTGTbHBgOgekGuO3b39KDpqw28OfjoKBVnxme64ckEoiaBDG41tHFKES3xChtLnDvgbBHdXw=
X-Received: by 2002:a37:a350:: with SMTP id m77mr30622424qke.146.1617740932775;
 Tue, 06 Apr 2021 13:28:52 -0700 (PDT)
MIME-Version: 1.0
References: <MADEUP.16735C8B32B53852.3072@lists.yoctoproject.org>
In-Reply-To: <MADEUP.16735C8B32B53852.3072@lists.yoctoproject.org>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 6 Apr 2021 13:28:26 -0700
Message-ID: <CAMKF1sp_TH9YPYcznhDZH6C9ma7zzrRMF7Rh4B3XH7_uLSRJFQ@mail.gmail.com>
Subject: Re: [yocto] #yocto #sdk -XILINX/vivado dependencies
To: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

there is KERNEL_MODULE_AUTOLOAD which could be used to load modules on
boot, don't know if that suffices to what you need but worth looking
into.

On Tue, Apr 6, 2021 at 12:47 PM Monsees, Steven C (US) via
lists.yoctoproject.org
<steven.monsees=3Dbaesystems.com@lists.yoctoproject.org> wrote:
>
>
>
> Working with zeus, aarch64, with Xilinx vivado dependencies=E2=80=A6
>
> Kerenl image and bootapp build and run correctly, need to be able to bui=
ld EXT SDK,,,
>
>
>
> How do I incorporate the dependencies of the low level Xilinx FPGA suppo=
rt  (i.e. =E2=80=9Cvivado=E2=80=9D) into the Ext SDK build env ?
>
>
>
> Is there a way to build in support so that the =E2=80=9Cmodule load=E2=
=80=9D command would be usable from the =E2=80=9C.conf=E2=80=9D or  the en=
v-setup script, (i.e. =E2=80=9Cmodule load vivado=E2=80=A6=E2=80=9D ?
>
>
>
> Thanks,
>
> Steve
>
>
>
>
>=20
>
