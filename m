Return-Path: <logan.grosz@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 04512C001B0
	for <webhook@archiver.kernel.org>; Thu, 13 Jul 2023 19:17:55 +0000 (UTC)
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
 by mx.groups.io with SMTP id smtpd.web11.1498.1689275867614075165
 for <yocto@lists.yoctoproject.org>;
 Thu, 13 Jul 2023 12:17:47 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=O+uXFvj4;
 spf=pass (domain: gmail.com, ip: 209.85.221.48, mailfrom: logan.grosz@gmail.com)
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-31441dfbf97so1281903f8f.1
        for <yocto@lists.yoctoproject.org>; Thu, 13 Jul 2023 12:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689275866; x=1691867866;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9Wq3wvCuJ75pxDvRT4Xji57TIPmEjneLAkXZCCb6spo=;
        b=O+uXFvj4qtXZ/5i5YkngsxZwe9BqEak8G2qu0Xbt6G+X9lTKWyNwTb/yka2R62WpP2
         On3mtJ0PV1k+KFsiGoGZ+8RHrbiH/gKq1bfi4aYXm+YwT/6bTv865ys/yp85EBAzLseU
         CRCz3vlmFtmsZMakhlbwg4qSi7j0ZJMN+xSyB3y3YXbT96QrfPQP1r4M59v16VljExV1
         r3+HW22FJhdrPuYSwVFy3qRuqrqxLC81JVw8G6ME+qQIJ6F9zK+GiiqvB5PiUCkHz4jL
         LnkTk9MU3c8vUjGHU60nPj8Qw1ns/AFdpd+uqtd4sD1h3s9HybMi37Z0nOT/khukPnrV
         h2HQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689275866; x=1691867866;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9Wq3wvCuJ75pxDvRT4Xji57TIPmEjneLAkXZCCb6spo=;
        b=eY7duZyPtOFXu2WFwP5xxH44xIQ6RDgVNjO4IA4PfM86DZrmc54ZqL1uLLoGK29C/F
         L9MvuuOdsk2tpN9+S+Em/2zpkdPsM/ny7Bc4EM/tj0D9EJSqo3FzfglMpvcCn3XnRjKs
         WlZo+QJHB0rd/MfasrzXLvSv/T3uDNwzErRajPlGCy1cIxsbjvxAtikzaxc7K3FIgOwR
         3bjxuqLK8ynnEFqTiQA2jCZcEGcMzdPGlpocVkga8sGIoqbLeK8Ze/+Ze1h/kzWpT08W
         6zdlfRMyPt5VlpoPFIx1p5k742ySlniFPN2+3V+3MvLTAfmpgKBVYEFxKYQIKC/Rvju7
         15/Q==
X-Gm-Message-State: ABy/qLZ+pahy3ghJagTgDv8G6b6kKyJ5RrY2RMqTyZYcU7zxK0FK8kpw
	7dlC5+QH+DxiCezytf4tQ1Ux6ENArqNlWBITrTg=
X-Google-Smtp-Source: APBJJlGfiKZ53RNhTCElp2RWlYnbgahseqv0V5z5JKb4Dta1HFLXiIme8fRfkIE/6c0rkN9b7gQVN34EDjKKFm0nxqY=
X-Received: by 2002:adf:fd4a:0:b0:313:e161:d013 with SMTP id
 h10-20020adffd4a000000b00313e161d013mr2469316wrs.15.1689275865505; Thu, 13
 Jul 2023 12:17:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv36X38BbBj3KecvgcPzw2smFU-CQcLfBm2sLdX--iC4F4w@mail.gmail.com>
 <15873.1689240705555939886@lists.yoctoproject.org>
In-Reply-To: <15873.1689240705555939886@lists.yoctoproject.org>
From: Logan Grosz <logan.grosz@gmail.com>
Date: Thu, 13 Jul 2023 13:17:33 -0600
Message-ID: <CANn=KGhL7XzFQNXA7win-PgKnCf0RWGf-SAYVd7kCOT0xPzLUA@mail.gmail.com>
Subject: Re: [yocto] wic cp doesn't work with ext4 partition
To: Markus.Lehmann@duagon.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e4240d0600632f9e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 13 Jul 2023 19:17:55 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60570

--000000000000e4240d0600632f9e
Content-Type: text/plain; charset="UTF-8"

I am having a similar problem with `wic cp` and ext4. Though, my problem is
a file cannot be copied to a specific path with `wic cp <src>
<image>:<part><path>. No matter what I put, the file gets put at the root.

```
$ wic cp test ./my.wic:1/etc/
$ wic ls test ./my.wic:1/etc/
.
..
$ wic ls ./my.wic:1
.
..
/etc
test
```

I am unsure if this is related, but I thought I'd mention it since I am
experiencing issues with the same command.

Logan

On Thu, Jul 13, 2023, 3:51 AM Markus via lists.yoctoproject.org
<Markus.Lehmann=duagon.com@lists.yoctoproject.org> wrote:

> Hi Marek,
>
> thx for your answer but partition 3 is completely empty, so nothing can be
> deleted here ...
> Is there a special option needed in the *.wks.in file to be able to copy
> something with wic?
>
> Cheers, Markus
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60567):
> https://lists.yoctoproject.org/g/yocto/message/60567
> Mute This Topic: https://lists.yoctoproject.org/mt/61339516/7581472
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> logan.grosz@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000e4240d0600632f9e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I am having a similar problem with `wic cp` and ext4. Tho=
ugh, my problem is a file cannot be copied to a specific path with `wic cp =
&lt;src&gt; &lt;image&gt;:&lt;part&gt;&lt;path&gt;. No matter what I put, t=
he file gets put at the root.<div dir=3D"auto"><br></div><div dir=3D"auto">=
```</div><div dir=3D"auto">$ wic cp test ./my.wic:1/etc/</div><div dir=3D"a=
uto">$ wic ls test ./my.wic:1/etc/</div><div dir=3D"auto">.</div><div dir=
=3D"auto">..</div><div dir=3D"auto">$ wic ls ./my.wic:1</div><div dir=3D"au=
to">.</div><div dir=3D"auto">..</div><div dir=3D"auto">/etc</div><div dir=
=3D"auto">test</div><div dir=3D"auto">```</div><div dir=3D"auto"><br></div>=
<div dir=3D"auto">I am unsure if this is related, but I thought I&#39;d men=
tion it since I am experiencing issues with the same command.</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Logan</div></div><br><div class=3D"gm=
ail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Jul 13, 2023, 3:51=
 AM Markus via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject=
.org</a> &lt;Markus.Lehmann=3D<a href=3D"mailto:duagon.com@lists.yoctoproje=
ct.org">duagon.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><p>Hi Marek,</p>

<p>thx for your answer but partition 3 is completely empty, so nothing can =
be deleted here ... <br>
Is there a special option needed in the *.<a href=3D"http://wks.in" target=
=3D"_blank" rel=3D"noreferrer">wks.in</a> file to be able to copy something=
 with <code>wic</code>?</p>

<p>Cheers,
Markus</p>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60567): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60567" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/60567</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/61339516/7581=
472" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopro=
ject.org/mt/61339516/7581472</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:logan.grosz@gmail.com" target=3D"_bla=
nk" rel=3D"noreferrer">logan.grosz@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000e4240d0600632f9e--

