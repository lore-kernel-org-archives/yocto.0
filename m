Return-Path: <ticotimo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9357EC47DD9
	for <webhook@archiver.kernel.org>; Sat, 23 Mar 2024 00:12:56 +0000 (UTC)
Received: from mail-yb1-f173.google.com (mail-yb1-f173.google.com [209.85.219.173])
 by mx.groups.io with SMTP id smtpd.web11.10435.1711152773597143518
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Mar 2024 17:12:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JgZHD++p;
 spf=pass (domain: gmail.com, ip: 209.85.219.173, mailfrom: ticotimo@gmail.com)
Received: by mail-yb1-f173.google.com with SMTP id 3f1490d57ef6-dcc84ae94c1so2656932276.1
        for <yocto@lists.yoctoproject.org>; Fri, 22 Mar 2024 17:12:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1711152773; x=1711757573; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hMlDxD3vKvzKMIrBrMl3HOXGtvJKSuA4D9MwM6CUMTQ=;
        b=JgZHD++pjrFdX+5+fznhkeBI+w0hTy8YcjSdecQHjrxrDnpPXZdxKcKdRfezLnOYFq
         g9n4uZh7W2DEBZFTVy5QmdTaS76kIA2GrlxtenJLSgbqE/PWUS8bNywFpbW5xwSw1ZtL
         YBlv4r2aR+cM78A2+ENSsQL500GUsXzP618oOW40OHlsPt4GdPLguitbTsf/dlVMk7gG
         ytJecKmEROdDSSh3bqK9UmkvaiIuklxLjCTdnCT8zt5ziunHqIQmNSKOcxzaeQB+p5fK
         D7D7OklCnZwbWKNtXtKsobtFizxUTP/7DPNIKUSf5VgMh+5ngirat3culzzSv6+GyAw4
         FwiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711152773; x=1711757573;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hMlDxD3vKvzKMIrBrMl3HOXGtvJKSuA4D9MwM6CUMTQ=;
        b=UNFPJeu4GayNbPequ0MUQo+hVyLzHMy3DEgN1HL/USpCyrFMh4lScmNZX6678ETJEo
         KNh65DH0+I1losB1T54AZYUTKHAJ1vfD3lg2ymjeVEZGiPIJ2wIGTza+1V2c/89HPMan
         t/mC9RiiuCuN4IzljyMKuegHHakfRJxJ4hR9jbsbBBR1AoUSpcy4jFTS+GqCo9wYKf04
         S++fhlhX7MiA1Lo6L3bkiC0JpMB70zggvaFD4NWM1SiUpRvT+EqhroeAqQGLj7ELS2pr
         nEpLNPxbCOHnWkRPHzMmw/Zcol12EuotMTYCt6o9szhgpKill3HDJNl4RfobK9ehY616
         w2dg==
X-Forwarded-Encrypted: i=1; AJvYcCUM8Ih0/1rlZ5A1erM7jf5jtT/yRiO6Yo7EGpeWT+2PuJdWLfIxt5n2ov6pAkHpGVpQpMFrhseACIu4c8MGoZlstSFmWQRBV/HSH+c4
X-Gm-Message-State: AOJu0Yyq8OZ3SDWg7XzZ9WpRInaoaHhaoicsURPQB+3TO59meNc6bQxk
	mtwp+76dFLlD/TeRrY0589ZUIvTmFOCX/70Gaf5pKiGw7J6SrCr7BXSlb8mnxgwoCQmZ5kYaA1n
	MQ+3ELwbWdtUpE8yfX9BhJKw8bnk=
X-Google-Smtp-Source: AGHT+IEYjJ+bSZnY8nlejan5pH9jXtEyfjJrLo1fRQog8Tbuy4RNn8jwgR60CwiouJOf75sk64V6pLwkcmEZYIqhUhM=
X-Received: by 2002:a5b:b86:0:b0:dda:a4ba:2a5 with SMTP id l6-20020a5b0b86000000b00ddaa4ba02a5mr691874ybq.63.1711152772704;
 Fri, 22 Mar 2024 17:12:52 -0700 (PDT)
MIME-Version: 1.0
References: <CAOSpxdb=_8337e_QyL_mgMdXKgAjEkp3W5VxEK_kk+p+7ZGzaA@mail.gmail.com>
 <5367.1711114785536349162@lists.yoctoproject.org>
In-Reply-To: <5367.1711114785536349162@lists.yoctoproject.org>
From: Tim Orling <ticotimo@gmail.com>
Date: Fri, 22 Mar 2024 17:12:41 -0700
Message-ID: <CANx9H-DnRaOrC_hHY5THrOCzc8taWb9ak3wX0Bs=23UCyCN+Eg@mail.gmail.com>
Subject: Re: [yocto] Final dunfell release build on April 15, 2024
To: mlynch@hi-techniques.com, yocto@lists.yoctoproject.org
Cc: Steve Sakoman <steve@sakoman.com>
Content-Type: multipart/alternative; boundary="0000000000002c7383061448cdcd"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 23 Mar 2024 00:12:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62827

--0000000000002c7383061448cdcd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Mar 22, 2024 at 6:39=E2=80=AFAM <mlynch@hi-techniques.com> wrote:

> Does Dunfell EOL mean builds for TI platforms that actually build and boo=
t
> can be done using a newer branch?  E.G.  As of yet, I have been unable to
> build for TI "beagle" platforms that will boot using any branch other tha=
n
> Dunfell.  I tried both master and kirkstone, a few weeks ago, and neither
> produces anything bootable for the "beagle" platforms.
>

You should really ask on the meta-ti mailing list. Unless you mean the
beagle-yocto BSP support in poky/meta-poky-bsp.


>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62824):
> https://lists.yoctoproject.org/g/yocto/message/62824
> Mute This Topic: https://lists.yoctoproject.org/mt/105069080/924729
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> ticotimo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000002c7383061448cdcd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Mar 22, 2024 at 6:39=E2=80=AFAM &lt;<a href=3D"mail=
to:mlynch@hi-techniques.com">mlynch@hi-techniques.com</a>&gt; wrote:<br></d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-colo=
r:rgb(204,204,204)"><p>Does Dunfell EOL mean builds for TI platforms that a=
ctually build and boot can be done using a newer branch?=C2=A0 E.G.=C2=A0 A=
s of yet, I have been unable to build for TI &quot;beagle&quot; platforms t=
hat will boot using any branch other than Dunfell.=C2=A0 I tried both maste=
r and kirkstone, a few weeks ago, and neither produces anything bootable fo=
r the &quot;beagle&quot; platforms.</p></blockquote><div dir=3D"auto"><br><=
/div><div dir=3D"auto">You should really ask on the meta-ti mailing list. U=
nless you mean the beagle-yocto BSP support in poky/meta-poky-bsp.</div><di=
v dir=3D"auto"><br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-lef=
t:1ex;border-left-color:rgb(204,204,204)"><p dir=3D"auto"></p>
<p>=C2=A0</p>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62824): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62824" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62824</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/105069080/924=
729" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/105069080/924729</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:ticotimo@gmail.com" target=3D"_blank">ticotimo@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000002c7383061448cdcd--

