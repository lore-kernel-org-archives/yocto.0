Return-Path: <chuckwolber@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52E42C4828D
	for <webhook@archiver.kernel.org>; Thu,  1 Feb 2024 22:52:14 +0000 (UTC)
Received: from mail-il1-f174.google.com (mail-il1-f174.google.com [209.85.166.174])
 by mx.groups.io with SMTP id smtpd.web10.9881.1706827925262555132
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Feb 2024 14:52:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LdxztEGP;
 spf=pass (domain: gmail.com, ip: 209.85.166.174, mailfrom: chuckwolber@gmail.com)
Received: by mail-il1-f174.google.com with SMTP id e9e14a558f8ab-3639aa6a54fso5662425ab.1
        for <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 14:52:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706827924; x=1707432724; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=z6UvKxnE+LZeK9Qr5EyqBZElw2Noa4ZDpOV03D1U1O0=;
        b=LdxztEGPoRfO+0l7XElP23tKcF0EPoL1vaxXNZKIuI7FuwI6l/Q/kt9Xq3MwvppD1I
         hvndwqNNJdOMLWax0GRRVxMin38uGTkgTLZr2XCf6fVxC4O+MZpq7D/FjlusNmi7hP8a
         VtOGnyNhap13vltFPJgnMqvkFF09evvo6t+MZ6AFCfnE07Tr+k0vIRUFFTbUtJCu+/qk
         FnTsuAA+nr9QGmExSq7kiwbCmt2xEfdPoWsYZGEBbAoVOYafz97CTCeR3Fd06CPU8zKF
         cNAGtEs/mEkt/1+nSwnBcdWwQvY+oSMFNkcbfKFjoh/Ie2FZM7HILH7WnHaFy7ikAQ1o
         UTxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706827924; x=1707432724;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z6UvKxnE+LZeK9Qr5EyqBZElw2Noa4ZDpOV03D1U1O0=;
        b=TRnwYiDLVyh2vmysQsDfqCeSyR+Spaqo5Lp/PgmTq3BA3vENWCfD8X+qK1YzGfoTEK
         5oDSPGeMX24z1OZ2HVq0IikgZbL8tkDgHZDNvGLHVoP6vz+ZBa7CAEBCuBmQAZTB5NFe
         6XD+Y8xLSsh7h9N7NNAD0IgLRyShXSTEpgqZaijkdwAfwjBTGBoQLTnatyQ21NHKtPpx
         oybmVI51DrfVDpdM4EtYyWm/oXVAZT5QPfvh7OcBwlJq4nVsFt8xPItbZigYdBgX5aIV
         C4/g/UvcnWZei8rG+xnc4otpvr+AOqt66H6Y16Fk6pT1NtUxoQ3R+gnXumdmeKaCcTcg
         6bYw==
X-Gm-Message-State: AOJu0YxQMu+fm7mdvR98GDxVuWR2udkVaXneh1cJF4BaucIJt9dVLjKh
	EBfXIAcNVf4r9b1B6G127wMXzijTFtEixu56mykJdddcMI0PyunTShnJpm6ynXldX9k2UYKV5CN
	ZWS1H92LdyEu6VSFTU0eRMFlntvU=
X-Google-Smtp-Source: AGHT+IGhlPyxNmismfBR9ORdy/GllmnSwVJkaNLilFebyhLdPGMgwPtOO1YlNFq2m7s/jap0OnByh7cbQqeij5VNcAk=
X-Received: by 2002:a05:6e02:681:b0:363:777b:77da with SMTP id
 o1-20020a056e02068100b00363777b77damr285680ils.17.1706827924354; Thu, 01 Feb
 2024 14:52:04 -0800 (PST)
MIME-Version: 1.0
References: <MW4PR16MB50871DC44FDB421C1D679248BB432@MW4PR16MB5087.namprd16.prod.outlook.com>
 <CAB=6tBQ8Gv1vMEoKQsWUMyFmd22S-n9y_o=qreKK7XEZyScDAw@mail.gmail.com> <MW4PR16MB50874711642795418CD90D96BB432@MW4PR16MB5087.namprd16.prod.outlook.com>
In-Reply-To: <MW4PR16MB50874711642795418CD90D96BB432@MW4PR16MB5087.namprd16.prod.outlook.com>
From: Chuck Wolber <chuckwolber@gmail.com>
Date: Thu, 1 Feb 2024 14:51:52 -0800
Message-ID: <CAB=6tBTR_e8pfLgnN8px93pxvgsu=fF81qqeADdPLjTF4jJVHg@mail.gmail.com>
Subject: Re: [yocto] Correctly packaging projects into systemd_system_unitdir
 with CMake's GNUInstallDirs module
To: Logan Grosz <Logan.Grosz@b9c.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000001fbd5f061059d84c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 22:52:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62376

--0000000000001fbd5f061059d84c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 1, 2024 at 2:39=E2=80=AFPM Logan Grosz <Logan.Grosz@b9c.com> wr=
ote:

> Thanks for the response, Chuck
>
> SystemD seems to have no qualms respecting both directories on the system
> at runtime. I was hoping the same behavior would be supported in the Yoct=
o
> toolchain. If not, that's ok. I can just create a task between do_install
> and do_package which moves everything from /usr/lib/systemd/system to
> /lib/system/system and that should work for now - or at least until I
> decide if usrmerge is something I'd like to enable.
>

Or avoid potentially unnecessary recipe level customization and maintain
some symlinks at
the image level. That is how Debian (and probably others) are handling the
migration, and you
will avoid other breakage as everything slowly migrates from
/{bin,sbin,lib} to
/usr/{bin,sbin,lib}.

..Ch:W..

--=20
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--0000000000001fbd5f061059d84c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Feb 1, 2024 at 2:39=E2=80=AFPM Lo=
gan Grosz &lt;<a href=3D"mailto:Logan.Grosz@b9c.com">Logan.Grosz@b9c.com</a=
>&gt; wrote:</div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div class=3D"msg-8548181371886173506">




<div dir=3D"ltr">
<span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontService,Cal=
ibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">Thanks for the r=
esponse, Chuck</span>
<div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServic=
e,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)"><br>
</span></div>
<div><span style=3D"font-family:Aptos,Aptos_EmbeddedFont,Aptos_MSFontServic=
e,Calibri,Helvetica,sans-serif;font-size:12pt;color:rgb(0,0,0)">SystemD see=
ms to have no qualms respecting both directories on the system at runtime.
 I was hoping the same behavior would be supported in the Yocto toolchain. =
If not, that&#39;s ok. I can just create a task between do_install and do_p=
ackage which moves everything from /usr/lib/systemd/system to /lib/system/s=
ystem and that should work for now -
 or at least until I decide if <code>usrmerge</code> is something I&#39;d l=
ike to enable.</span></div></div>

</div></blockquote></div><div><br></div><div>Or avoid potentially unnecessa=
ry recipe level customization and maintain some symlinks at</div><div>the i=
mage level. That is how Debian (and probably others) are handling the migra=
tion, and you</div><div>will avoid other breakage as everything slowly migr=
ates from /{bin,sbin,lib} to<br>/usr/{bin,sbin,lib}.</div><div><br></div>..=
Ch:W..<br><div><div><br></div><span class=3D"gmail_signature_prefix">-- </s=
pan><br><div dir=3D"ltr" class=3D"gmail_signature"><div dir=3D"ltr"><div><b=
><span style=3D"font-family:monospace">&quot;Perfection must be reached by =
degrees; she requires the slow hand of time.&quot; - Voltaire</span></b></d=
iv></div></div></div></div>

--0000000000001fbd5f061059d84c--

