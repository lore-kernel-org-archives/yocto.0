Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E0BDC02182
	for <webhook@archiver.kernel.org>; Wed, 22 Jan 2025 05:25:58 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
 by mx.groups.io with SMTP id smtpd.web10.36272.1737523549043770376
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jan 2025 21:25:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=aBU/d3n4;
 spf=pass (domain: gmail.com, ip: 209.85.208.53, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-5d9f0a6adb4so13211335a12.1
        for <yocto@lists.yoctoproject.org>; Tue, 21 Jan 2025 21:25:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737523547; x=1738128347; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=q8UkkLe4aidxeOuv0RGirPXXuLSw96dxGZaPcvZ51zE=;
        b=aBU/d3n46SzkPcHvq64pocvMUcCYa7Gy44K267R2uZn0KNkPMZIRmhHzXcWpyV5hR/
         pNiq+sMRZ0d769HSMy4Cf3kruK63NPNCNg1Tc5XcMKLsECdOy5Zn9in78OVqQ77N0CFj
         GksvGDSPfyF+JUK/No9XYF1ShvHmrvPL5s/mBzNv/tNwEfa4bIurNyxjHYU1u9uQiBzX
         Z7uGPlOu0eu3zeL4OzFs8xcb+rHyKs5BX6AZerWWvO+fJgqOpimnJmuCRJe8VTAj2F/Z
         QEFkQMbz2qm6SpBxayvx9aE31tv4RvfkoETxWbiudnYlI4Fu5S6KrQF4N1iRpnbR3aVA
         HCtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737523547; x=1738128347;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=q8UkkLe4aidxeOuv0RGirPXXuLSw96dxGZaPcvZ51zE=;
        b=Bsm/o0wQgAoi4rJhCKNoejd/fPY3h55a0oIdW61OMIEqt7Bt77J0PpnVdZpvL223zr
         tTMDliodixgx46i844b9w+vSn8CyDPtBmJuTk3+4XcOQt1D+/kdwaEGJSHfPwKuCE4dJ
         f0Ceo1pLvbAENMgqS/Ep1de8APDpmQx7Td8wkRJcMy+cxljsChSfB31l8bkSDuZrHG6j
         BsX8qb9I9c28lS1ZTArbtpI1MvZZ1eBnhcxKJFAmYCph0a0tJHIkGq5pxqe6dj4Q5/Za
         EnvCzkEQX0NN531imcdzsB/WwqhrpxLjUw6GtNlHzNstUkidcDX0STZaVwD6pQshqZPt
         ij9Q==
X-Gm-Message-State: AOJu0YzSghoHv+EgQrLRsCRsntXhH/zFXVkRFLgCuaAlFSoBSNSXKRgS
	+PcFHYUqtl1EFKq7mjRn2Ne2btm9abCkAkEEF6f+hqSMepFstu44GgEoXsACVOOIKh0/Zev0tlx
	rBaTSPaGZvrWjJxYj5gb9IOgR5Zjybg==
X-Gm-Gg: ASbGncsT3VeCKtbrEx6VJFeznTZLS48PGkTSorN8+LnASRZXXtYYjGy6ThOT27FbX6T
	E28LS/nLXnX8vBTYB3oV19+cSMuXQTVolgsJvZnHNNQCIL1JG
X-Google-Smtp-Source: AGHT+IG9B6fKMo+Y7Rc5xZXlqafBmX5IAbnTtDiVWi4Y9xEiRgcOH8+FdvyDtfq3lyFOWjH2KdK2c9/LGjkRtCeF7hE=
X-Received: by 2002:a17:906:d542:b0:aaf:123a:d8b7 with SMTP id
 a640c23a62f3a-ab38b10ce73mr1495713166b.17.1737523546741; Tue, 21 Jan 2025
 21:25:46 -0800 (PST)
MIME-Version: 1.0
References: <181CEC047B932C4D.27121@lists.yoctoproject.org>
In-Reply-To: <181CEC047B932C4D.27121@lists.yoctoproject.org>
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Wed, 22 Jan 2025 10:55:34 +0530
X-Gm-Features: AbW1kvYQlb_KxWeDwb9cHVCi06a2OzQ8MU-14Oh5OyjZzU80yUv6oD7xDJIguOM
Message-ID: <CAPJWBniB2fmcPsjLYNjq5LCJ3wBqPeZoUAsPHwG-rQgdD_vM_g@mail.gmail.com>
Subject: Re: [yocto] glib-2.0 addition to yocto kirkstone image
To: yocto@lists.yoctoproject.org, hassanchattarki@gmail.com
Content-Type: multipart/alternative; boundary="000000000000cae2c4062c44b915"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Jan 2025 05:25:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64608

--000000000000cae2c4062c44b915
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

An update,
I notice the files are not being added in my image recipe. I have called it
correctly but can't see it. Do I need to set any packageconfig variables?




On Wed, Jan 22, 2025 at 10:47=E2=80=AFAM MOHAMMED HASSAN via lists.yoctopro=
ject.org
<hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:

> Hi guys,
> I am facing an issue with the glib-2.0 library. I have added the package
> to my image baserootfs as *glib-2.0 . On *manually verifying the image
> folder under work directory I can see the /usr/lib and other system libra=
ry
> file present. But they are not getting added in my final image. i.e I can
> see them on my target device. What should I do?
>
> The build is successful and I don't see any errors so dont know what to
> share with you guys.
>
> Regards,
> Hassan
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64607):
> https://lists.yoctoproject.org/g/yocto/message/64607
> Mute This Topic: https://lists.yoctoproject.org/mt/110748308/7559147
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> hassanchattarki@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000cae2c4062c44b915
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">An update,<div>I notice the files are not being added in m=
y image recipe. I have called it correctly but can&#39;t=C2=A0see it. Do I =
need to set any packageconfig variables?</div><div><br></div><div><br></div=
><div><br></div></div><br><div class=3D"gmail_quote gmail_quote_container">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 22, 2025 at 10:47=E2=80=
=AFAM MOHAMMED HASSAN via <a href=3D"http://lists.yoctoproject.org">lists.y=
octoproject.org</a> &lt;hassanchattarki=3D<a href=3D"mailto:gmail.com@lists=
.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">Hi=C2=
=A0guys,<br><div>I am facing an issue with the glib-2.0 library. I have add=
ed the package to my image baserootfs as <b>glib-2.0 . On=C2=A0</b>manually=
 verifying the image folder under work directory=C2=A0I can see the /usr/li=
b and other system library file present. But they are not getting added in =
my final image. i.e I can see them on my target device. What should I do?</=
div><div><br></div><div>The build is successful and I don&#39;t see any err=
ors so dont know what to share=C2=A0with you guys.</div><div><br></div><div=
>Regards,</div><div>Hassan</div><div><br></div><div><br></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64607): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64607" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64607</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/110748308/755=
9147" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/110748308/7559147</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:hassanchattarki@gmail.com" target=3D"_blank">has=
sanchattarki@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000cae2c4062c44b915--

