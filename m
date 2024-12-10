Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2D5DCE7717F
	for <webhook@archiver.kernel.org>; Tue, 10 Dec 2024 23:40:48 +0000 (UTC)
Received: from mail-oi1-f175.google.com (mail-oi1-f175.google.com [209.85.167.175])
 by mx.groups.io with SMTP id smtpd.web11.7577.1733874041631701438
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Dec 2024 15:40:41 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=jd06MoJf;
 spf=pass (domain: gmail.com, ip: 209.85.167.175, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-oi1-f175.google.com with SMTP id 5614622812f47-3eb8559b6b0so169746b6e.1
        for <yocto@lists.yoctoproject.org>; Tue, 10 Dec 2024 15:40:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1733874040; x=1734478840; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7gH2nAv6f2Kxaj48BOrqD792eGmTOkzV/r5QzMsVwws=;
        b=jd06MoJfbqQg5g94NI2YcTwWhh2ZZDOicPeAk4j0QPaig7VPoePKeQ4U8w/vHt6Ex2
         ha+jy/buLCyugCvxESu8u2oLe42mRwrdvb3W8XmDa2q8gPqiLi33BSSyaKym2+9WJo0r
         LxFyTpF8h0z8uZpKX+k/UEN8JHvuXAbbVqafENnulENC8Q9OTaJqarrgiYawUDk0rru4
         j4MqzJQcEEVGdAqmytvgybyMTsbretIdgaofyb+1jNJbMhkS92XDmv92u13CpA9ndBz0
         mBdt/8fec86k5Cqt4h7MdJKuQ7I8avVIib03fI31ia0aoLmuIsZ2gaTaNTBeokUZuFNL
         TjGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733874040; x=1734478840;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7gH2nAv6f2Kxaj48BOrqD792eGmTOkzV/r5QzMsVwws=;
        b=JHh9Q7kcJwa5jeoDVy+rQSk0up2ZoifcKcctoTGMqhMFbhytMx6OtL8hJeOGxZRnBV
         5BSf2THlVWjvMdKZBbstEZAf6HCXFUD+JXgmgejMSt8+A1p9wLSZ5h7t8NVW4iUa3QQK
         V1Dg4yX6XdIIXOnbXladrnoEVDxQjNK1wvtkV9AEw23sAKT/Gow+Wl3qgzm1Q1Auow51
         bSSDouw890l4EInba3tjZwyJk+ByX4eO0ZKFMEd9vTsuTW+svwr1TlhDtCwa2EsqMvgU
         8sNic18A1Ac2V5+X99+hxL552SBQmNkXj758n8dXF6AXUPR5wDkAIY4tcRarogAJTeDP
         WLzw==
X-Gm-Message-State: AOJu0YwBy+I2F1Enshd9zYjBvdGDJbDbMrBrr5f4W7GELxGQBgqC1xrZ
	7JXzHOjbnobVTZWIF3SZb8tsMH/FbAYeNJSAK9y/RK70HCTDQU8iUyGInxh9CTc3n/rDTYSlzef
	rkmwfsRNslN5C+XJ+qe6Wv1deaOk6svSO
X-Gm-Gg: ASbGncvSzIjmgU4CSxguDKkIYsGl29LYa/Ua8v8bGkiFB/bZ4nROYNfioRhAdMJMWTj
	QNAJNSOQDSSkoGLLpX7EHzAA4EZp86LlQQIIG
X-Google-Smtp-Source: AGHT+IF78HwgyuTq4JRgUyGD6q9MR6Hs2cxPJdcAKUqcHaYa+QM1VOJU3Gi9E83/caoCarjChpEOavkf3BJTGhXRyfw=
X-Received: by 2002:a05:6808:1886:b0:3e7:b9be:52cc with SMTP id
 5614622812f47-3eb85acf1c9mr641707b6e.6.1733874040357; Tue, 10 Dec 2024
 15:40:40 -0800 (PST)
MIME-Version: 1.0
References: <8dcaa41d-8fac-4d4b-8e3b-fd10dab0898b@skf.com>
In-Reply-To: <8dcaa41d-8fac-4d4b-8e3b-fd10dab0898b@skf.com>
From: Adrian Freihofer <adrian.freihofer@gmail.com>
Date: Wed, 11 Dec 2024 00:40:29 +0100
Message-ID: <CAB3asfie1fB0bZQPoPgvCahNgTYnWXer2GBTj+36iA4fJeBVFg@mail.gmail.com>
Subject: Re: [yocto] UBOOT_ENV causes dependency loop
To: yocto@lists.yoctoproject.org, pelle.windestam@skf.com
Content-Type: multipart/related; boundary="00000000000043296f0628f30221"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 10 Dec 2024 23:40:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64428

--00000000000043296f0628f30221
Content-Type: multipart/alternative; boundary="00000000000043296e0628f30220"

--00000000000043296e0628f30220
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Pelle

Yes, that's unfortunately broken. The loop looks like this:

[image: image.png]

The problematic line is here:
https://git.yoctoproject.org/poky/tree/meta/classes-recipe/kernel-fitimage.=
bbclass#n45

There are some discussions ongoing about how the fitimage creation could be
improved and simplified. Fixing the recipes and classes in poky is one
approach. Another but quite different approach is this class here:
https://github.com/openembedded/meta-openembedded/blob/master/meta-oe/class=
es/fitimage.bbclass
.

Sorry, I do not have a solution, but at least I confirm that the issue
seems to be real.

Regards,
Adrian


Am Di., 10. Dez. 2024 um 20:29 Uhr schrieb Pelle Windestam via
lists.yoctoproject.org <pelle.windestam=3Dskf.com@lists.yoctoproject.org>:

> Hello everyone,
>
> I am facing a dependency loop that I'm having trouble understanding how
> to break. The issue appeared when I tried to move the u-boot boot script
> into the kernel fitImage as part of improving secure boot. Before this
> dependency loop I had a working secure boot configuration which looked
> something like this:
> SPL + dtb (signed by NXP tool) -> U-boot + DTB (signed and verified by
> SPL) -> Linux kernel + DTB + optee (signed and verified by U-boot).
>
> [U-Boot + DTB] and [Linux kernel + DTB + optee] are both stored in
> fitImages. As far as I can understand u-boot has a dependency on the
> Linux kernel since it will re-sign the kernel and add the public key to
> the U-boot DTB-file (this is how I interpret what is going on in
> uboot-sign.bbclass). I believe what happens next when I try to put the
> u-boot script inside the kernel fitImage is that I get a dependency from
> the Linux-kernel (the do_assemble_fitimage task specifically) to the
> do_populate_sysroot task of u-boot. This is due to the kernel requiring
> to have access to the boot-script file to put it int he fitImage. This
> makes bitbake unhappy since there cannot be a mutual dependency between
> U-boot and Linux kernel. Not sure if I am missing something obvious
> here, it seems like this must be a fairly common setup when using secure
> boot?
>
> //Pelle
> The information contained in this email is intended solely for the use of
> the individual or entity to whom it is addressed and may contain
> information that is confidential. Please delete and notify the sender if
> received in error. SKF does not accept liability for any damage arising
> from this email.
>
> For information on SKF=E2=80=99s processing of your personal data, please=
 visit
> SKF=E2=80=99s Privacy Policy available via www.skf.com<https://www.skf.co=
m/privacy
> >.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64427):
> https://lists.yoctoproject.org/g/yocto/message/64427
> Mute This Topic: https://lists.yoctoproject.org/mt/110031442/4454582
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> adrian.freihofer@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000043296e0628f30220
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Pelle</div><div><br></div><div>Yes, that&#39;s unf=
ortunately broken. The loop looks like this:</div><div><br></div><div><img =
src=3D"cid:ii_m4j3jqbz0" alt=3D"image.png" width=3D"377" height=3D"578"><br=
></div><div><br></div><div>The problematic line is here: <a href=3D"https:/=
/git.yoctoproject.org/poky/tree/meta/classes-recipe/kernel-fitimage.bbclass=
#n45">https://git.yoctoproject.org/poky/tree/meta/classes-recipe/kernel-fit=
image.bbclass#n45</a></div><div><br></div><div>There are some discussions o=
ngoing about how the fitimage creation could be improved and simplified. Fi=
xing the recipes and classes in poky is one approach. Another but quite dif=
ferent approach is this class here: <a href=3D"https://github.com/openembed=
ded/meta-openembedded/blob/master/meta-oe/classes/fitimage.bbclass">https:/=
/github.com/openembedded/meta-openembedded/blob/master/meta-oe/classes/fiti=
mage.bbclass</a>.</div><div><br></div><div>Sorry, I do not have a solution,=
 but at least I confirm that the issue seems to be real.</div><div><br></di=
v><div>Regards,</div><div>Adrian</div><div><br></div></div><br><div class=
=3D"gmail_quote gmail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr=
">Am Di., 10. Dez. 2024 um 20:29=C2=A0Uhr schrieb Pelle Windestam via <a hr=
ef=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;pelle.w=
indestam=3D<a href=3D"mailto:skf.com@lists.yoctoproject.org">skf.com@lists.=
yoctoproject.org</a>&gt;:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">Hello everyone,<br>
<br>
I am facing a dependency loop that I&#39;m having trouble understanding how=
<br>
to break. The issue appeared when I tried to move the u-boot boot script<br=
>
into the kernel fitImage as part of improving secure boot. Before this<br>
dependency loop I had a working secure boot configuration which looked<br>
something like this:<br>
SPL + dtb (signed by NXP tool) -&gt; U-boot + DTB (signed and verified by<b=
r>
SPL) -&gt; Linux kernel + DTB + optee (signed and verified by U-boot).<br>
<br>
[U-Boot + DTB] and [Linux kernel + DTB + optee] are both stored in<br>
fitImages. As far as I can understand u-boot has a dependency on the<br>
Linux kernel since it will re-sign the kernel and add the public key to<br>
the U-boot DTB-file (this is how I interpret what is going on in<br>
uboot-sign.bbclass). I believe what happens next when I try to put the<br>
u-boot script inside the kernel fitImage is that I get a dependency from<br=
>
the Linux-kernel (the do_assemble_fitimage task specifically) to the<br>
do_populate_sysroot task of u-boot. This is due to the kernel requiring<br>
to have access to the boot-script file to put it int he fitImage. This<br>
makes bitbake unhappy since there cannot be a mutual dependency between<br>
U-boot and Linux kernel. Not sure if I am missing something obvious<br>
here, it seems like this must be a fairly common setup when using secure<br=
>
boot?<br>
<br>
//Pelle<br>
The information contained in this email is intended solely for the use of t=
he individual or entity to whom it is addressed and may contain information=
 that is confidential. Please delete and notify the sender if received in e=
rror. SKF does not accept liability for any damage arising from this email.=
<br>
<br>
For information on SKF=E2=80=99s processing of your personal data, please v=
isit SKF=E2=80=99s Privacy Policy available via <a href=3D"http://www.skf.c=
om" rel=3D"noreferrer" target=3D"_blank">www.skf.com</a>&lt;<a href=3D"http=
s://www.skf.com/privacy" rel=3D"noreferrer" target=3D"_blank">https://www.s=
kf.com/privacy</a>&gt;.<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64427): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64427" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/64427</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/110031442/445=
4582" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/110031442/4454582</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:adrian.freihofer@gmail.com" target=3D"_blank">ad=
rian.freihofer@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000043296e0628f30220--

--00000000000043296f0628f30221
Content-Type: image/png; name="image.png"
Content-Disposition: inline; filename="image.png"
Content-Transfer-Encoding: base64
Content-ID: <ii_m4j3jqbz0>
X-Attachment-Id: ii_m4j3jqbz0

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
vmT7sc36/SG3WctB7Fp1neOa2+y1ZYjtRBhIud3akvbtba937E6JbbeOVywvj0n8HOdUbL8Uy8vr
d+76wrnHIdTXUq9dWmXDVF/AaXW/txVbrddckwFm9J27td5FHh1PdlrlQB7lW51cdjYtdUeU62ip
O6klZUNvf6ZMbaO1X1Pl6/rP1dpOqtsv5MDQ+ms5TNWx9d6l229p/VW/Rl3naO1jaUn7TJWtnQow
LfXxndreqf1qyXMyvvdCZKrrEmKbZUhbsr5T9Z3a1/paWlI2RPnYPstNtfW9Rd1G1p0D4/ndOuKZ
ebRt+VXPdwgPDw/NCiyZS5Nl8/n4lCVlz7Wk7uGSOp3TfqfqV89tiN9jjlCo23jJ9us5C7Hef/75
Z7KZr1nXue6xzZ4l7RuWHLspca1++PDh+Xj/9ddfz+st5++Ucu5LXt/xnjhfcu5LWLK+dOo4tCy5
lpaUZVqcHyHHU66rG2DKRs+DwHnqwW2Ob9++NYstWVeWndPhLSl7K5fU6RrtV6uDZ/l7/e/lzN1+
vC/CSgx2X758+bnOd+/e1ZtfZEldr+WW25zbvumadcvJ27HOp6en5038/fffv0zWDVEuglYGmDjG
j4+Pv12Pc9d3iSXX0pKy9Akv65sMMCEv/PwLhr7orOqAEb/3OttTeuuK7WQoiQ4xtO7i5CcjcnBd
UjbUf+XGNlvbKfW2EfuSdyvmlA91/ZeqP7GVx6Jsvzlyn+r1hbx70lKXb20/2iTqk59+utS5db3E
km32zo8Q52n5iZ1T5rTvkrrNEf1geV1GnbMedX1CHNe4/mO//v3339/2b+n6pky1bX0tLSkbzukL
jirHyhw7WdHS519bfp53b/Vz5phTEcviWXh8zZXPzuOZcz5nz8l/0f7ls/fYRq4/l+d2o+wln0Iq
n7nnpMScJxKvxXbreQC9+mT5+plrr3zdlkssab+Q+9nTq2N+Wqhs47Bk+7nt/BRS6B3rNeo6xzXb
p9eWeZ3k+TW1r0vat7e93rE7Jc7faI+sZ3xvfYIqxevZZ8b7akvWd+5xaF1LvXZplS2PRbyv7gv4
YcSxse6PR7M4wKQRD9YtZEecHVNc7NnxxLJyAl8tO8Iol+GgfG/8XAeGkJ1oduzltmtLy+b2Y93l
QB3LWwEm65MdYa8d4vW0pE5zRL3iK9Y71X7ZEee5PHVO13WM9feOx9ztl22Vxy6+R9uU50Jup65n
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
Yyt4hN550itfDrSptY6l9Z7r1Plb652n6dT6zm3HJedLONVe5Tl+qmx9ThzNlseAuq8ajQBzA6Of
JNfQGlTCqQ67HtjzzkG9vDcwxPpj27VcT7y+tIOd6pByoC1Nle91/ueq76yE3EZ8rwfANKdMmNqX
PJblsWktC6eOe63Vrilfy+22zrWl9Z5r6X70ztN0an31eX+q/Cmt8yXMaa80p2xd7yOJ9tmqLddt
DnNgbiSeWbNc/emOFM/cLxFzEl6/fv08H+HUvIslevXtyfLn7E89pybOsX/++ee3TcXchw8fPjxv
I/7NkigX8xjK+TJzypTKORz5c84Hae3L0nZpeXh4aC1etO6l9d6aS9px7vlyrtHbdg36/XUJMDdg
Mtf9tAbTEBNO47UYFP/+++9uubVl/ZYOTBFAIqzEoPTly5fncyy+4h9Ua8lJtlHm6enpuUjsd7w/
zSmTcnut71G3NXz79q252t4xbmnVN5etVe8tWHq+TOm191HbtifDS7QL6xBgbiQv7vwrheuKIFJ3
rPF7a9CL5TlYR5CJ90YHX7+/5/Hx8fml8g5GiPfnXYhSr3zIT+4sHTxjO1Hv2I9T4SfOuXLfYlu5
3fw+p0zIfak/wRTyL/w11ccoj3G0xVQ73Lveqb6LFHWuz6M1LDlfQu+cbV1TW2nbrcg+Pvt8VjTn
ORPXN/qzx6Va8xLC0mf4vWf29VySeOYey1rbjWXlXJD4uTc3IepXl49153pzPbEsy9bHtle+rvMS
2W7RHjm/IOqS80HK/ct9y3LxPdsxJy/PKRN6+5ITo+tPVC09vr3yuV/xeu5bb39bx3xpvefq1ffU
8qhPnnd5XM65Hk5tJy05X6aOc6wnj0Vaq21HVF/7WzdafWsCzB3FyTP6CXRKDpS5r/E9luWAVy7P
Sablsiwf6uXRmZYysES5HOiy445l//nPf35ZR3S88VWvNwf1kB12GQhCvC8DSG978XqK8rHe7PzL
95wjt5/ri++xvbK9s31aZeO1MmzMKdPbl9h2tnfKwbls26jb0uXl/sR24v3lMS232zvXltR7rtb5
G/v6f/7P//ntfKrPg6x/7E8eg9b6pq6Hpe3YOr6986Vsr6lzvFSf361zYs/yPB9N1Htk/jPHDSgn
enleCmzZJRPP92QP/Xbsw8hjjjkwG1BOfsvnp+bKAPcSc11ac4pyDszSOVt7UPfNZb/NfQgwG1Ne
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
--00000000000043296f0628f30221--

