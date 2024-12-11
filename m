Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4D29CE77182
	for <webhook@archiver.kernel.org>; Wed, 11 Dec 2024 17:56:45 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web11.1140.1733939795592844065
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Dec 2024 09:56:35 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Mx8CrSRI;
 spf=pass (domain: gmail.com, ip: 209.85.221.53, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-385e3621518so4442909f8f.1
        for <yocto@lists.yoctoproject.org>; Wed, 11 Dec 2024 09:56:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733939794; x=1734544594; darn=lists.yoctoproject.org;
        h=mime-version:user-agent:references:in-reply-to:date:to:from:subject
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=Jk6vV8Qp2xxeQe3et8i+W2gkCqN0OFQ/+G/riL+I63k=;
        b=Mx8CrSRIxOC9NYIiQ21oxF1NG0Yhh/LvSiTEyizQVmBDYSswtE2OXSfzcL5beMNUel
         28hPrUxn/XPi8D0vmL1j7+O9zbX62J6PwPudfQPEBuYMh3ohdoYOo4UWZk4WljyZ69lV
         NRaBvWBcjoGVBWKpdaRp8zKd7Wk+dN9OuefEHci6Z1StSA065y0wYkx5SJ3ppH//OMwJ
         6lxBm4Bhstm44tPfqT6ku0fQYZMF9qUabM1pZx3bEc0hjeOP0eJrtF58tbBmvKvA+bhI
         KVe6El7G/wl96qmPFbVIikgpp5JXTfg7NHzCuJrFa/bkcw2yVuj+H1cDtfxl0htlgb3r
         pe9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733939794; x=1734544594;
        h=mime-version:user-agent:references:in-reply-to:date:to:from:subject
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Jk6vV8Qp2xxeQe3et8i+W2gkCqN0OFQ/+G/riL+I63k=;
        b=LvjgFjMrr85JO6ViarjzK0zkJt6SuOwoNW8cSV+0FmYDRqj2OTOsZ9JkWu0Ptym9UJ
         GYfUYel0HRU7UWlTH+7G0RJb1vBjl4G5l3vZcKT63pEo6RBL69tZ5e0qDG7HNj8YZCIx
         40hyQea680+J6+tMB6ygk6UhR6evbBQwIBcwDbgXrHGRp1UxpUvK0BztpySpKEr5yq62
         SR8eg05cyacnCdM9mDaN3ORsl7rNzraiQfdtXhXX+8S4c7x8lq6vpm0l7jFUwpNZJM12
         9E6C8Yp4fn1bvNVZr83unatFrMYw8d1lPhDcf8rp9GHUY4vWAo5nDz7n5TQYoav6YagF
         c20g==
X-Forwarded-Encrypted: i=1; AJvYcCXZxnXTFAqIDEG78/0VJ54pMmBOXqymurXMeyc1bSTCHy4b4mrzwTzXgpSwYDpHd4ZfcDKrmw==@lists.yoctoproject.org
X-Gm-Message-State: AOJu0YwBYYaJTiSdN2DCGslcrXFW99GuOBQ9IPCd+on1uJmTvF6pybAM
	Jyo3Zk4ir4PNDpDk5m91HL22ipcAYvTgmuCK2nm+1bpbnpDoprJi
X-Gm-Gg: ASbGncvBOdccByKYwjf5qmrQOZc/OiL71d0qPhdPnIJkwzbAtDZtoZQU4CUmx9hbhAu
	yibwQCw65mI7jMIqg3T523Vqo284NJciMGYsDWW1KYKzFNIf2yUUf7FQXzDsH9lyne3R/cpISh6
	QaTzH7oF2X/CP2SOhGeSbcZOPYBWW9v0PKKSat7v1lC3ZlUk/ttJdjX6PaYZv4ymkn34HjeW4tv
	nu23AIbWyObb2Baz3M66cTvqu+M2HrtQ7PZuNKWNDiMwLk0UIKnFIiit91kj/9xE1RDA0uWlGIZ
	Gtni3Dly3WQ1+IzDK68KKed5QAY=
X-Google-Smtp-Source: AGHT+IFiL3QtznjjNYgN31jUXQP3PvDl8zGzvj+myBGAgk6e+WyY8cDG/46lZLOnNSNpG0fn7TCZrg==
X-Received: by 2002:a5d:59a6:0:b0:385:eda9:a8eb with SMTP id ffacd0b85a97d-38787695711mr433492f8f.29.1733939793668;
        Wed, 11 Dec 2024 09:56:33 -0800 (PST)
Received: from ?IPv6:2a02:169:59a6:0:55c4:f628:91f3:4287? ([2a02:169:59a6:0:55c4:f628:91f3:4287])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-387823f1606sm1834066f8f.0.2024.12.11.09.56.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Dec 2024 09:56:33 -0800 (PST)
Message-ID: <593466ebee3b6e68f64436d61d644f7d9260a3b8.camel@gmail.com>
Subject: Re: [yocto] UBOOT_ENV causes dependency loop
From: Adrian Freihofer <adrian.freihofer@gmail.com>
To: pelle.windestam@skf.com, yocto@lists.yoctoproject.org
Date: Wed, 11 Dec 2024 18:56:31 +0100
In-Reply-To: <23139.1733906031351852763@lists.yoctoproject.org>
References: 
	<CAB3asfie1fB0bZQPoPgvCahNgTYnWXer2GBTj+36iA4fJeBVFg@mail.gmail.com>
	 <23139.1733906031351852763@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="=-Illf8EyDjWIYCx2GQ4/k"
User-Agent: Evolution 3.54.2 (3.54.2-1.fc41app1) 
MIME-Version: 1.0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 11 Dec 2024 17:56:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64431

--=-Illf8EyDjWIYCx2GQ4/k
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Pelle

That's something where I did not yet look into all the details. But
this needs to be considered for new architecture. Would you mind to
document this aspect on this
bug=C2=A0https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12912? It's wh=
at
I tried to mention with

"However, signing u-boot and kernel might cause some tricky
dependencies which cannot be simplified. But understanding all these
details needs a PoC implementation, I guess."

in my comment from
today=C2=A0https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12912#c3. It
looks like you looked already deeper into this detail.

Adrian


On Wed, 2024-12-11 at 00:33 -0800, Pelle Windestam via
Lists.Yoctoproject.Org wrote:
> Thanks for the tips Adrian, I will look into that fitimage.bbclass. I
> was also thinking about the dependency between u-boot and linux
> kernel. It seems to be required since uboot-sign.bbclass "re-signs"
> the fitImage (and puts the public key in the u-boot dtb with the same
> command) and then does a verification to check that the key works.
> But is the re-signing really required? As far as I could tell trying
> to navigate the uboot-sign.bbclass the re-signed image is never used
> except for doing the verification. If one would skip the verification
> step, I think it would suffice to to put the public key into the u-
> boot dtb and thus be able drop the dependency on the kernel recipe?
> Doing the verification is of course a good idea to make sure you do
> not end up with a non-bootable fitImage, but it could work as a
> temporary work-around.


--=-Illf8EyDjWIYCx2GQ4/k
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html><head><style>pre,code,address {
  margin: 0px;
}
h1,h2,h3,h4,h5,h6 {
  margin-top: 0.2em;
  margin-bottom: 0.2em;
}
ol,ul {
  margin-top: 0em;
  margin-bottom: 0em;
}
blockquote {
  margin-top: 0em;
  margin-bottom: 0em;
}
</style></head><body><div>Hi Pelle</div><div><br></div><div>That's somethin=
g where I did not yet look into all the details. But this needs to be consi=
dered for new architecture. Would you mind to document this aspect on this =
bug&nbsp;<a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D129=
12">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D12912</a>? It's wha=
t I tried to mention with</div><div><br></div><div>"However, signing u-boot=
 and kernel might cause some tricky dependencies which cannot be simplified=
. But understanding all these details needs a PoC implementation, I guess."=
</div><div><br></div><div>in my comment from today&nbsp;<a href=3D"https://=
bugzilla.yoctoproject.org/show_bug.cgi?id=3D12912#c3">https://bugzilla.yoct=
oproject.org/show_bug.cgi?id=3D12912#c3</a>. It looks like you looked alrea=
dy deeper into this detail.</div><div><br></div><div>Adrian</div><div><br><=
/div><div><br></div><div>On Wed, 2024-12-11 at 00:33 -0800, Pelle Windestam=
 via Lists.Yoctoproject.Org wrote:</div><blockquote type=3D"cite" style=3D"=
margin:0 0 0 .8ex; border-left:2px #729fcf solid;padding-left:1ex"><div>Tha=
nks for the tips Adrian, I will look into that fitimage.bbclass. I was also=
 thinking about the dependency between u-boot and linux kernel. It seems to=
 be required since uboot-sign.bbclass "re-signs" the fitImage (and puts the=
 public key in the u-boot dtb with the same command) and then does a verifi=
cation to check that the key works. But is the re-signing really required? =
As far as I could tell trying to navigate the uboot-sign.bbclass the re-sig=
ned image is never used except for doing the verification. If one would ski=
p the verification step, I think it would suffice to to put the public key =
into the u-boot dtb and thus be able drop the dependency on the kernel reci=
pe? Doing the verification is of course a good idea to make sure you do not=
 end up with a non-bootable fitImage, but it could work as a temporary work=
-around.</div></blockquote><div><br></div><div><span></span></div></body></=
html>

--=-Illf8EyDjWIYCx2GQ4/k--

