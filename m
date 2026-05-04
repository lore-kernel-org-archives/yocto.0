Return-Path: <cleiton.bueno@b2open.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90115CD3430
	for <webhook@archiver.kernel.org>; Mon,  4 May 2026 13:39:49 +0000 (UTC)
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.14851.1777901978040711837
 for <yocto@lists.yoctoproject.org>;
 Mon, 04 May 2026 06:39:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@b2open-com.20251104.gappssmtp.com header.s=20251104 header.b=0hN3jrhR;
 spf=pass (domain: b2open.com, ip: 209.85.167.173, mailfrom: cleiton.bueno@b2open.com)
Received: by mail-oi1-f173.google.com with SMTP id 5614622812f47-463a0e14abfso2038339b6e.2
        for <yocto@lists.yoctoproject.org>; Mon, 04 May 2026 06:39:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1777901977; cv=none;
        d=google.com; s=arc-20240605;
        b=LdVuMg90jDcHPd67SmxRLe9RrOgmbp5G3pzDCRwKOfaJBcDpe8C+5xuOBvEgPWxN/i
         /02qnvI4zrg38xwJYJMtMzd7I/R+DawOQVq5Rbqi/dOV2vvngFoJdQLd36fAstQhINxA
         AsCDyqgRWT36qtMM/KudwGkc4qSbrKgHJwUrZi6i2cpEZyvz3Ot/eDJicoAfaWAQOiXQ
         R9y7yzQRCZtuhPy/G3RkBbIdNsWncrGLKthRNDyivolNe1BP0brLjriJSB8uMmQCtLc/
         8mssYAoqdoJxz0JyMHMklVPC5WmVMSX0uWx/2R8gNewjLsW3Jf9EmMtRghQg8fS+2228
         4NLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=UAZODRMX8J6mklBFpaux0jfiCCXE+QSlJ2euHNfzyd4=;
        fh=5iiDD7PKLnuToHDdu6NcllAjArDk7rDtEqLmuedhjEY=;
        b=F2D8yxVwa8Jr88vScbWvQ7mefGZICNYGien6HXT7VxY4zgohjzXttnxVsAp1niTTNm
         8h0FszKWkmrjA87dxe1KC4Pxop42pKgOTZYHiCHo7EGVyV92ETmiJIjVMZRtli92d/w2
         2fAU3qczOcpffTJ9BfJZAhO4T9bU5EqEt14XFkMTjoV+GV/ix460/BGlXXQitCrDyQ6M
         yeB9wXV54bvawKJF6IBPyKBijqTDZY2OFFZoCb9LhGYqXypmeYjiZlOo6QmF4usMpxYW
         KxTfY+Cnvag6/j3JjbZ/sHzcu+DALFEjLGOMzIzeKhUjo2fwF5fnrPpET5eTclsrmakI
         yMPw==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=b2open-com.20251104.gappssmtp.com; s=20251104; t=1777901977; x=1778506777; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UAZODRMX8J6mklBFpaux0jfiCCXE+QSlJ2euHNfzyd4=;
        b=0hN3jrhR3pAkKZM97hgEx7Le6On2hTxCCc7OJcq9Qr+qRpJNdLCX99I14Kzs0cvj8+
         EzQMHUyz/E1Z4wi49m7dgNKku+tJpwZs9r249FD1889NSqGesRw4OT9bU1nND2NqzVav
         5r3EaE88KwcYQRLnsA6m1rUw3FKIh4p8rNAl1O0WxAHktll/5EkKZM6aFmlcBR8BUSCr
         QM2FnEgaagtQ2gStkJe48XfTHq5n0QohqPZHdvdUO0Yors1rOqv9V6ljNHcpNisWPuRz
         MKo7eEQ/YNeIhanGqGi/9wK7i6q8YbhFzknGkiwvqEsXhd6wpFNp3NBluUVe4Zf2qv6S
         0LAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1777901977; x=1778506777;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UAZODRMX8J6mklBFpaux0jfiCCXE+QSlJ2euHNfzyd4=;
        b=nCSE3NXreEAiRxfwBKH7k+817tBez0yGJpYj8a+MeyZd0GxKIJgh3Fl9TH2yjZOKwp
         DAfrEVOYzGIGNZwaiKqYtz3ctzxiAj5/iIMKJ3AATlaGCXJpyd1kjS1wd1srpqvGqrDX
         5IN/0MTdUVw5M3sMQTp8S7H7Lrk6d7Ope8bAap9niEC4h8LKGPDMPHpsc1Gg5cDJlSRL
         C2IigeS1hknw7UG6I7NUWPJkzg+a4hXbvLnsNd0CUvtVuqtkTAOlT1P9lXWaiDcL2GYg
         IAoRRWuqeqJEdQZ/5G2KcRyH4DrNl6alw7ROnqQr6Qpfui1/NAIb/QCQXpbBAyae6rTi
         5tTA==
X-Gm-Message-State: AOJu0Yz11823NBzRkJOCLDVmmi3oRdW3yj6uybyoLwwfsZc1x/rWh1H9
	oluUvoevAu08Qn5LyEQQzi3eZM+OUTc/6xrgr3/u3aQmk0J7l/rGrqp8ziCgDTNSMBp7lV+fqY7
	uVpR3uSpA+r/wCxpuM5/sHPjDHBW8KXAekAoV0VaLcTJjJ0n2s9zXbEU3AQ==
X-Gm-Gg: AeBDieuQ0YirIOO1DN/6gJ09NyENd2iv5cxuottDyQVg4CqXuhzf8CofUSo3/zAoprP
	AJBPcKb13kVFEBGuLnnJwT41ybcPUBc9Euk7PFhgGX8Z74P5JfhRhtTEB2OVeVS0C4cG9jPkrKe
	XCrmrMlJ90ShXHSXkb/xeoeH7PHn5fEREvkA3rBr1e9qvIdbvlhUDilqR7k048aHeY5gMKQQnDA
	dV9trvnPSRInK2J9IeqDO8zhnDp6QpmPcT8WmZvZZSMF9za+ahpHvny2kffWnR0+VDNWl1tAwMh
	Ie5iybFkL3pDtBKmew6AK07tk5zhy25f2T8WJndo8bkKmyFQ193zkIFsIlW7wA6Hi+B0d1YJ27T
	+t2O9nHtEeiIht0t4uuUrW8Xx1+vBTRLfhZlxNMuEcViWniKPGxQ5T3e8kxCo4JUOhKLb
X-Received: by 2002:a05:6808:1983:b0:460:f435:2a70 with SMTP id
 5614622812f47-47c8933833bmr5663998b6e.47.1777901976848; Mon, 04 May 2026
 06:39:36 -0700 (PDT)
MIME-Version: 1.0
References: <9e2ba2a4-9aee-4676-b623-c811a0a7292a@rootcommit.com>
 <fe2c7d25-c2dd-47ca-a08b-e0115c3648b4@cherry.de> <cfb57d23-982a-4dd8-bc24-ff36904ec2ba@rootcommit.com>
In-Reply-To: <cfb57d23-982a-4dd8-bc24-ff36904ec2ba@rootcommit.com>
From: Cleiton Bueno <cleiton.bueno@b2open.com>
Date: Mon, 4 May 2026 10:39:00 -0300
X-Gm-Features: AVHnY4KUN3giY9PZ-heWjHqZQrc42k-ACvjIzMYGfv40y26owz6VMY8P-RNmdmw
Message-ID: <CAA-i2Lw6FS=b6UkJjq42RHR-aHtvqqeULxL0e3UxMNuVhZCx2g@mail.gmail.com>
Subject: Re: [yocto] Simple solution to create a non-root partition image?
To: yocto@lists.yoctoproject.org, michael.opdenacker@rootcommit.com
Content-Type: multipart/alternative; boundary="000000000000c6977d0650fe0fff"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 04 May 2026 13:39:49 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66473

--000000000000c6977d0650fe0fff
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Wouldn't enabling the TEZI_DATA_ENABLED variable and using this extra
partition work?

https://git.toradex.com/meta-toradex-bsp-common.git/tree/classes/image_type=
_tezi.bbclass?h=3Dscarthgap-7.x.y#n37

I already needed to create a class for a client with 2 additional
partitions and I made a copy of image_type_tezi.bbclass and customized it
for my client.

And create an .ext4 file and put it in this partition?

Em seg., 4 de mai. de 2026 =C3=A0s 10:08, Michael Opdenacker via
lists.yoctoproject.org <michael.opdenacker=3D
rootcommit.com@lists.yoctoproject.org> escreveu:

> Hi Quentin,
>
> Thanks a lot for the tip!
>
> On 5/4/26 10:47 AM, Quentin Schulz wrote:
> > Do you need to generate an image for that partition or can you simply
> > have what will be part of that partition be generated along with the
> > "root partition" image?
> >
> > As far as I remember, wic can split files/directories into a separate
> > partition from the rootfs, so that would be an option that doesn't
> > require hacking things around.
> Interesting! Unfortunately, I'm not using Wic but Toradex Easy Installer
> on this project. Therefore I do need to generate a partition image
> beforehand.
> Thanks anyway! I good to know for another time.
> Cheers
> Michael.--
>
> Root Commit
> Embedded Linux Training and Consulting
> https://rootcommit.com
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66470):
> https://lists.yoctoproject.org/g/yocto/message/66470
> Mute This Topic: https://lists.yoctoproject.org/mt/119133286/10388955
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> cleiton.bueno@b2open.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Cleiton Bueno
B2Open Systems

--000000000000c6977d0650fe0fff
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Wouldn&#39;t enabling the TEZI_DATA_ENABL=
ED variable and using this extra partition work?<br><br><a href=3D"https://=
git.toradex.com/meta-toradex-bsp-common.git/tree/classes/image_type_tezi.bb=
class?h=3Dscarthgap-7.x.y#n37">https://git.toradex.com/meta-toradex-bsp-com=
mon.git/tree/classes/image_type_tezi.bbclass?h=3Dscarthgap-7.x.y#n37</a><br=
><br>I already needed to create a class for a client with 2 additional part=
itions and I made a copy of image_type_tezi.bbclass and customized it for m=
y client.<br><br>And create an .ext4 file and put it in this partition?</di=
v><br><div class=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" cla=
ss=3D"gmail_attr">Em seg., 4 de mai. de 2026 =C3=A0s 10:08, Michael Opdenac=
ker via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a=
> &lt;michael.opdenacker=3D<a href=3D"mailto:rootcommit.com@lists.yoctoproj=
ect.org">rootcommit.com@lists.yoctoproject.org</a>&gt; escreveu:<br></div><=
blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-l=
eft:1px solid rgb(204,204,204);padding-left:1ex">Hi Quentin,<br>
<br>
Thanks a lot for the tip!<br>
<br>
On 5/4/26 10:47 AM, Quentin Schulz wrote:<br>
&gt; Do you need to generate an image for that partition or can you simply =
<br>
&gt; have what will be part of that partition be generated along with the <=
br>
&gt; &quot;root partition&quot; image?<br>
&gt;<br>
&gt; As far as I remember, wic can split files/directories into a separate =
<br>
&gt; partition from the rootfs, so that would be an option that doesn&#39;t=
 <br>
&gt; require hacking things around.<br>
Interesting! Unfortunately, I&#39;m not using Wic but Toradex Easy Installe=
r <br>
on this project. Therefore I do need to generate a partition image <br>
beforehand.<br>
Thanks anyway! I good to know for another time.<br>
Cheers<br>
Michael.--<br>
<br>
Root Commit<br>
Embedded Linux Training and Consulting<br>
<a href=3D"https://rootcommit.com" rel=3D"noreferrer" target=3D"_blank">htt=
ps://rootcommit.com</a><br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#66470): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/66470" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/66470</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/119133286/103=
88955" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/=
mt/119133286/10388955</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:cleiton.bueno@b2open.com" target=3D"_blank">clei=
ton.bueno@b2open.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature"><div>Cleiton Bueno</div><div>B2Open Systems</div></div></div>

--000000000000c6977d0650fe0fff--

