Return-Path: <ycnakajsph@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4655C3DA7F
	for <webhook@archiver.kernel.org>; Wed,  7 Aug 2024 08:48:17 +0000 (UTC)
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
 by mx.groups.io with SMTP id smtpd.web11.29101.1723020490554631417
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Aug 2024 01:48:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=E/aC7hAK;
 spf=pass (domain: gmail.com, ip: 209.85.216.46, mailfrom: ycnakajsph@gmail.com)
Received: by mail-pj1-f46.google.com with SMTP id 98e67ed59e1d1-2cb566d528aso1172075a91.1
        for <yocto@lists.yoctoproject.org>; Wed, 07 Aug 2024 01:48:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1723020489; x=1723625289; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=PbvkPI6xVUl8osfYjtYugE99fs8rfBCOuzWcUlrdKF8=;
        b=E/aC7hAK9s8yIGNJZ+Ecx6upBFWQU2P9GTrAIojTUW4U6I40NiKAP53yHSPGwAOMM+
         aXtWIvWSxOoMwjMLk71eBKU48lPDyj1qq7xPBFjT01p+YFkFLoKuea2gKbrcGTKy56zm
         mWhjRA76M2VtZqeZoW+j4aUWoCOOt4NqSPB5ZKtOuR8efDAtQiZYe3oP6rIvymN9wwwj
         x4FTjkZqHc19OWdMxem/KJGCg7GdiZg5U8fRFpMAwHvYVNTsvUAlIohBk25joiYv1aLt
         AikNtyEb+ujOk3hmvY9lhUBQ8ZIFKjemgcmz1fMqOeLbdgAuzeVuL0XP5WvjdIOu+FNs
         prnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723020489; x=1723625289;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PbvkPI6xVUl8osfYjtYugE99fs8rfBCOuzWcUlrdKF8=;
        b=KurznW7P37P3098YwC7Pm2cEd/2NLUIf/6LF/c3rzIcq5yWVimThiAEcKY1Y/SBRXr
         m3L0JFg9RIVYf0dcnPRLQK2qBkcWyuZx8I1cPxYma4WNMYpTcgh6DcGyfDU7D4PTf6VM
         wh5k8qLmLFrZfC7MGlLFIp5bLgRRP/x4hvdx/V/dU8Ah1D5z2vPWN6vWGMCCWlzsLILd
         26kRjmROonyBEVsm4hlA9NPTUnw3R9CsAzkKz8XfoC3e400a4VUNmgWWF6HcPuRFBwKp
         29xqc+WcRdZJ62XGsLboCik69nW3IPbpNJ9H3Fjsxgu2KlEjRn+/sZxVQOPEGZ9NNxbC
         wibw==
X-Gm-Message-State: AOJu0YzM1ozSbPKedbpqpdhHbaZcO/Qw7p2E7VZusi2QUdoomrWruEMc
	+JjaaC860qpUfQd4kdwBZjbbV9cp0cUvQVGs+xv50Cj1+Ui7wHtd5VU182Vc29bCTWoQ+NiKx4T
	iys1y8ERgzMb4LaVHJxOsWZLjtgBj95el
X-Google-Smtp-Source: AGHT+IHPGHyAfeiuASC26mIRUbt4Dx69Fsmhho1qJju+UR1NjJhozCai1/tyXWX/C5vG18ypiItaIBM5jeXOWNo1K8s=
X-Received: by 2002:a17:90b:1e4c:b0:2c8:858:7035 with SMTP id
 98e67ed59e1d1-2cff948df14mr21430491a91.25.1723020488864; Wed, 07 Aug 2024
 01:48:08 -0700 (PDT)
MIME-Version: 1.0
From: Yann CARDAILLAC Pro <yann.cardaillac@gmail.com>
Date: Wed, 7 Aug 2024 10:47:57 +0200
Message-ID: <CAC3TgA+HFgXcckqxUVgUQsRfJySytZSAj3PtSRD6TLzT5_yDqg@mail.gmail.com>
Subject: [yocto][meta-openembedded] How to properly build a lib package
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002dfe9a061f13f841"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Aug 2024 08:48:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63669

--0000000000002dfe9a061f13f841
Content-Type: text/plain; charset="UTF-8"

Hi all,

I'm working on upgrading different yocto BSPs to scarthgap, I'm having an
error that I haven't seen. It's the one described here on stack overflow by
someone else:

https://stackoverflow.com/questions/64984897/yocto-package-requires-shared-library-but-no-providers-found-in-rdepends

I have a very simple C library package that provides a shared library.

My package is looking very close to:
meta-openembedded/meta-oe/recipes-extended/p7zip/p7zip_16.02.bb
<https://github.com/openembedded/meta-openembedded/blob/master/meta-oe/recipes-extended/p7zip/p7zip_16.02.bb>

I don't really understand why we need to add the lib7z.so()(64bit)? Is
there a "proper" way of avoiding that as it's not so common in other libs?

I'm also not comfortable adding :
INSANE_SKIP:${PN} += "dev-so"

If any, can you point me to a simple library build that doesn't require the
(64bit) that I don't really understand nor the INSANE_SKIP ? To sum up my
need is to have a simple recipe for a shared library.

Best regards,

Yann CARDAILLAC

--0000000000002dfe9a061f13f841
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I&#39;m working on u=
pgrading different yocto BSPs to scarthgap, I&#39;m having an error that I =
haven&#39;t seen. It&#39;s the one described here on stack overflow by some=
one else:<br><br><a href=3D"https://stackoverflow.com/questions/64984897/yo=
cto-package-requires-shared-library-but-no-providers-found-in-rdepends">htt=
ps://stackoverflow.com/questions/64984897/yocto-package-requires-shared-lib=
rary-but-no-providers-found-in-rdepends</a></div><div><br></div><div>I have=
 a very simple C library package that provides a shared library.</div><div>=
<br></div><div>My package is looking very close to: <a href=3D"https://gith=
ub.com/openembedded/meta-openembedded/blob/master/meta-oe/recipes-extended/=
p7zip/p7zip_16.02.bb">meta-openembedded/meta-oe/recipes-extended/p7zip/p7zi=
p_16.02.bb</a></div><div><br></div><div>I don&#39;t really understand why w=
e need to add the lib7z.so()(64bit)? Is there a &quot;proper&quot; way of a=
voiding that as it&#39;s not so common in other libs?</div><div><br></div><=
div>I&#39;m also not comfortable adding :<br>INSANE_SKIP:${PN} +=3D &quot;d=
ev-so&quot;</div><div><br></div><div>If any, can you point me to a simple l=
ibrary build that doesn&#39;t require the (64bit) that I don&#39;t really u=
nderstand nor the INSANE_SKIP ? To sum up my need is to have a simple recip=
e for a shared library.<br></div><div><br></div><div>Best regards,</div><di=
v><br></div><div>Yann CARDAILLAC<br></div></div>

--0000000000002dfe9a061f13f841--

