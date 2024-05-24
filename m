Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E45C25B74
	for <webhook@archiver.kernel.org>; Fri, 24 May 2024 17:06:20 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web10.924.1716570373774886781
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 May 2024 10:06:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=CaiI2tVj;
 spf=pass (domain: gmail.com, ip: 209.85.167.45, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5295d509178so1177299e87.1
        for <yocto@lists.yoctoproject.org>; Fri, 24 May 2024 10:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716570372; x=1717175172; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aRaOwyY0jrG4g06zPpLyTmGtN6Hm1xBKzB276gUWVS4=;
        b=CaiI2tVjdqsInazIwvek59gNVx3vjKkRt8yQQOuHmuCNVNXGSdxrquwLr9Qqt2ISvf
         riHrDXRsDjz6z0bnXnMl4HASJ0uDqgORIcwiIFTvVY+wey97bkRTJ2Rfh1SB8vNxqdUK
         8ScWptbBRym0VPdN2HTGZ2CGnAv0bAdMmYqZ+ClBpA6GqNs0qnuLhbiSW1+APPtDVtb2
         AB4Mynp4k6mGcs12Q8eM0+Ewiv0BzcZcMARf1vq0vMGRmmK/+Uu2rkuBNJVnJB0JelFu
         2v87LDXmuMeMeK/mVCbpkothCoB7XiReAwfkk7GE26/FhhL1zGpnCQ0jPg1dMxf+tWRz
         75Zg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716570372; x=1717175172;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aRaOwyY0jrG4g06zPpLyTmGtN6Hm1xBKzB276gUWVS4=;
        b=ViP72bN1eiCl6wTJXD2p1NlLdA6hdStTPKLi7S0EuTXMkHVTe3pLLMINVoe50kot1g
         DTbfFUTi1UbVVUqTgSEf9+PBqr64FXimfKxjj6XvACUlL0niWgwAD3bVZU8423eL+X5w
         AVLlma7MZvYLkujy2GunHfo8SdkpNyVeifLM1d2/9bQdE3TLwVavQ36FgbcAhmCI54Q0
         S7v3/pAqQVLVdfbg+C4NsWwbok9Zte3gIIS9Mb8bqiPi/PRjQCm+/IJ/60spJ/Cbns0G
         upfyEKqTWuOf5owsKC/qf/6HTrzyFHM+1X1eZPpaOShAsthPBk2QWTXqsA6wL9XGhlNB
         2w6A==
X-Gm-Message-State: AOJu0YyswRnlgPK8Yi/6Z64h1D8A8/hnJ4j1QhmPAC5Du6DHCvjqGAY4
	XtgVQvioVzZcENgiaShUi7cv5QpjxL7km38kETAMpdK2MYJORkKvkHCRRj0tvxILVZVCnKdP6a7
	A1dN3v1S8Vdf7zIFi29zX5xeZTOw=
X-Google-Smtp-Source: AGHT+IGUTUS7iPh2f5xn+yFHF7lmfn+JCvIBCbQ4S0y5gjJmGNG63Zw0w9XDSil9HljSfAC354s5GRf94o08hV0aW6Q=
X-Received: by 2002:ac2:5a07:0:b0:520:11b7:6caf with SMTP id
 2adb3069b0e04-52967465dbdmr2112590e87.64.1716570371579; Fri, 24 May 2024
 10:06:11 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj_XF0cXbK-nVeK=xpd8_XC07j-FC8rovvips085M1OMHQ@mail.gmail.com>
 <18579.1716564818242640497@lists.openembedded.org>
In-Reply-To: <18579.1716564818242640497@lists.openembedded.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 24 May 2024 19:06:00 +0200
Message-ID: <CANNYZj9fgxKQ9w6c=KCJvUV5qkoppXt3AH==YC2FPr6Mevp_kA@mail.gmail.com>
Subject: Re: [bitbake-devel] Dependencies ?
To: mlynch@hi-techniques.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 May 2024 17:06:20 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63197

On Fri, 24 May 2024 at 17:33, Michael Lynch via lists.openembedded.org
<mlynch=3Dhi-techniques.com@lists.openembedded.org> wrote:
>
> For informational purposes the two recipes in question here are intel-com=
pute-runtime and intel-graphics-compiler.  Both are items needed to use Ope=
nCL with INTEL GPUs.
>
> Alex, it sounds like the "wrong" thing to do is to "rollback" the meta-cl=
ang layer back to the "mickledore" branch as was suggested?  Here's the wei=
rd thing, the layer compatibility for meta-clang in the "mickledore" branch=
 actually lists "scarthgap" in addition to "mickeldore" and one other.  Whe=
re as layer compatibility of meta-clang in the "scarthgap" branch is set to=
 "scarthgap" only.  Did someone maybe do the wrong thing with layer compati=
bility in meta-clang on the mickledore branch?  Just curious because it see=
med that mixing layer branches to make things build seemed a bit off of the=
 whole philosophy of how yocto/bitbake was intended to work but I thought m=
aybe that was just me not understanding everything completely.

Let's continue in the proper list.

This is the commit that added scarthgap compatibility to mickledore:
https://github.com/kraj/meta-clang/commit/8fbc4b443893ab3842063e65d8fe27a5d=
166bd3e

So this was intentional and not a mistake, but it's still problematic:
what if something else in your setup would require meta-clang to be at
scarthgap branch? You might get cryptic errors when that happens and
no easy way to resolve the conflict.

Sadly llvm 16 support in the intel items is a deeper issue than I
thought, and certainly not a trivial fix. Upstream will get to it, at
some point:
https://github.com/intel/intel-graphics-compiler/issues/289


Alex

