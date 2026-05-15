Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7B17CD343F
	for <webhook@archiver.kernel.org>; Fri, 15 May 2026 16:19:04 +0000 (UTC)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.38679.1778861940198539745
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 May 2026 09:19:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=UmzfXx32;
 spf=pass (domain: smile.fr, ip: 209.85.128.50, mailfrom: yoann.congal@smile.fr)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-488b8bc6bc9so59370795e9.3
        for <yocto@lists.yoctoproject.org>; Fri, 15 May 2026 09:18:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1778861938; cv=none;
        d=google.com; s=arc-20240605;
        b=Qx+gdmx51FhvRDHao4Sw7dOXX3ouSS7K4Rgo3KxbhVZtSlDr4/VPrO0LrKmI9OKzRG
         yE26isIV8aM0E4T6zPouv4wL1Lkc1EFEMR6YB7YPBvHGvY7bo0Q6pUPhmQIXYfW4Uzw3
         8TH6XObzX+hX5BwM43djLIux7lCemUYmJzHb5fTYeXE26iThFGpUF7zXCATOGqoN1Lv9
         XVgqhouX3Ukq6h1ZJ/4FyvQKStcVwfxJuXlQR3zk8OvanTGpvl3LrLw+/DudAcfquR/G
         n0b0S3EPt7RY+mzsrAWg5dgHdYDOv73otN1boJPBipFWjPaQrmg8yYsdjpXrltW1AgrO
         Nhcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=lhhWkijzBGwOwVk0L/JHiBMJHOeZtgc80MtbUi2/+0U=;
        fh=r7QkqVpJSSW7LSGqRnafKryHXNILKqsM1lqYJ4w0Fgs=;
        b=Nwlp3/GN9oXJGW0LHQ6CU8QLbUwcY9oLFDn9oMyt1E2hNzYMWFjU/REOBMor+M9OLq
         c/E7wF77b9OC8WQAEYE+jKpuEmXIDTXIEKSzVq7pezFMSxhPUiNg4vsJ645eDzGizvzz
         4WE3kmpbaSYd4pP6nP4A30LIIGRIX5T2xhiPVm/sJ931/49V7ODVocAbtsAYs73XPVRR
         Fn5yplafyLVpWjMejYAvVVXGFBg2rSBubiWwE+vfdSjwzkz7R7Ui9Qz38JqAneZYXARq
         EWpWimWGMrw37F7Mo2Xl4i0LDuQ8nebCYjVdUCzx1dicm1K8MWcDQzqX1jO33/Wu+M2A
         2ciw==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1778861938; x=1779466738; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lhhWkijzBGwOwVk0L/JHiBMJHOeZtgc80MtbUi2/+0U=;
        b=UmzfXx32oGoh/U03bq9OOziFog4qmsT1evxTl78utZ7jsppI926W1zHWLhQ82YyYZH
         LcucnshPyjWAq5wYMsnhUn28a0T90p1lRqqhiQkCd7bi0l/MkAl3cevvACds3xBpIClN
         nVHCp+0n485y7fjvIBzJ9GDZR1RI+CQ5j4fdg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1778861938; x=1779466738;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lhhWkijzBGwOwVk0L/JHiBMJHOeZtgc80MtbUi2/+0U=;
        b=VYGQr8kXtdeFKwYHp168FEJGWlEeVsPDqHt3UA8RdRusjafKXrcFuKWvRaAQUmA3Sf
         bJetgE1htO39Bgk/f74QcC+7v1d5FXcYhDQwCen2NgJIens0rAjxGe1V3TJFjWOtjyK+
         BVJ7V626wJWdZjTkOKRe/iqFiplbLeSaIx2ifxV0uLSyZOP4emiiKsgfH994Qf7rpTtx
         Mz9ChgkSR88dqVjqUbtV/IZy8KYy+fME1/kYpGDnnmSWDJf5kXVw3o8yv9uAMZJmTdqa
         8d8fItN0IxwoHKolDd81uWkcR5Ltqw/cmx7wfhfH5oPry5Xo7t+f/ioCrUakV5iSbYX3
         iHXw==
X-Gm-Message-State: AOJu0Yz7HhISJB3VSdtDymeOb82Zu1OSAytnPKVhmn06WlQSpveDTQ3o
	073qlKpswZcQ+CIurH8/YCry3cI7QGmVgnC80SwaBbzkHx7JGWtXX04htaPSBClnInBvwVVkq2P
	JQJyyOaoSsTnIZLQMIcHTE/NZ/cSNOnbVn7K14bVwvUv7c4hlMdCC
X-Gm-Gg: Acq92OHuqorwCg67501bVnJ8EDzONl5wtDBDLkvXnU4m3HLnbo3uQBksKigwyURMbh3
	4N2vYh09BpYfWc6ZeOjKE0TnSjscYRHIRSudPaPJXeVCw/yfPv58TIGE4KwT9pixq/7P9F0lHaf
	6OjK2M42cA3Rv7DDtopRhQmdL7FIiX860+//wpXtsOX3iBkLKBDwa8l6p+KNrGTRFuvk8ygO0z+
	VVBYeOO01s2xqdVUOoYTWjSZe6dyWSvkvNIH4sOKlOUJS9tQpWQhKFEhndF+9/GWFGPhiGonHoO
	svuing==
X-Received: by 2002:a05:600c:4e87:b0:48a:768b:eea9 with SMTP id
 5b1f17b1804b1-48fe60e51bamr71746375e9.4.1778861938241; Fri, 15 May 2026
 09:18:58 -0700 (PDT)
MIME-Version: 1.0
References: <0101019e2c6a472c-e8f433d6-8561-4b8f-a64d-9901c9195493-000000@us-west-2.amazonses.com>
In-Reply-To: <0101019e2c6a472c-e8f433d6-8561-4b8f-a64d-9901c9195493-000000@us-west-2.amazonses.com>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Fri, 15 May 2026 18:18:44 +0200
X-Gm-Features: AVHnY4Ly_5hX-iaXVkq66Dqs-tLYtLSmNTYLqn4FX5eqtVFFcRcxD6Bs7t6Efms
Message-ID: <CAMSfU+40b2banPRZnnNsEGAjHPLUV18WTpqurmKYeLD8+9p90g@mail.gmail.com>
Subject: Re: [qa-build-notification] QA notification for completed autobuilder
 build (yocto-5.0.18.rc4)
To: qa-build-notification@lists.yoctoproject.org
Cc: Yocto Mailing list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ef085e0651dd91a3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 May 2026 16:19:04 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66567

--000000000000ef085e0651dd91a3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le ven. 15 mai 2026, 18:13, Pokybuild User via lists.yoctoproject.org
<pokybuild=3Dyoctoproject.org@lists.yoctoproject.org> a =C3=A9crit :

>
>     A build flagged for QA (yocto-5.0.18.rc4) was completed on the
> autobuilder and is available at:
>
>
>         https://valkyrie.yocto.io/pub/releases/yocto-5.0.18.rc4
>
>
>     Build URL:
> https://autobuilder.yoctoproject.org/valkyrie/#/builders/29/builds/3834
>
>     Build hash information:
>
>     bitbake: 82abbfcdbda949851a03bb2cb2049ea689564ad6
> meta-agl: 5116ec52656f7c7dd78b2f60326a0bdb984aa663
> meta-arm: a81c19915b5b9e71ed394032e9a50fd06919e1cd
> meta-aws: 437d3207ee2ca178a98531b34c0d9623154aa059
> meta-clang: 5bce7e26a38a58bb52242494e54ab2af40009574
> meta-intel: 5d153e35b4e752505efeae368f188fac5e31cf33
> meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f
> meta-openembedded: ae7dfb12245c7f9b9a353499e2688015bd4e6413
> meta-qcom: ec80a36bce11d8182b4bb2a6fa0359adfeccde0a
> meta-virtualization: 8409bc0c8b9209327add72d8fa72571cdeb5521e
> meta-yocto: ca5a51aadaf651881d640688dc3e1e123aa30bf6
> oecore: ece80784b493c8b7493478fa2ba0dc1d6d80aa79
> poky: 44dcf08572ce391d7c0df4f8c7510af5e096baca
> yocto-docs: 1c5e7f136d7460fa5ad4c8a49ab1de31bd670e59
>

This is a green build. QA can proceed.

Regards,

>
>
>
> This is an automated message from the Yocto Project Autobuilder
> Git: git://git.yoctoproject.org/yocto-autobuilder2
> Email: richard.purdie@linuxfoundation.org
>
>
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#710):
> https://lists.yoctoproject.org/g/qa-build-notification/message/710
> Mute This Topic: https://lists.yoctoproject.org/mt/119332379/4316185
> Group Owner: qa-build-notification+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/qa-build-notification/leave/14721440/431=
6185/830777862/xyzzy
> [yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>
>

Yoann Congal
Smile ECS

--000000000000ef085e0651dd91a3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"auto"><div><br><br><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">Le ven. 15 mai 2026, 18:13, Poky=
build User via <a href=3D"http://lists.yoctoproject.org" target=3D"_blank" =
rel=3D"noreferrer">lists.yoctoproject.org</a> &lt;pokybuild=3D<a href=3D"ma=
ilto:yoctoproject.org@lists.yoctoproject.org" target=3D"_blank" rel=3D"nore=
ferrer">yoctoproject.org@lists.yoctoproject.org</a>&gt; a =C3=A9crit=C2=A0:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
=C2=A0 =C2=A0 A build flagged for QA (yocto-5.0.18.rc4) was completed on th=
e autobuilder and is available at:<br>
<br>
<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 <a href=3D"https://valkyrie.yocto.io/pub/releas=
es/yocto-5.0.18.rc4" rel=3D"noreferrer noreferrer noreferrer" target=3D"_bl=
ank">https://valkyrie.yocto.io/pub/releases/yocto-5.0.18.rc4</a><br>
<br>
<br>
=C2=A0 =C2=A0 Build URL: <a href=3D"https://autobuilder.yoctoproject.org/va=
lkyrie/#/builders/29/builds/3834" rel=3D"noreferrer noreferrer noreferrer" =
target=3D"_blank">https://autobuilder.yoctoproject.org/valkyrie/#/builders/=
29/builds/3834</a><br>
<br>
=C2=A0 =C2=A0 Build hash information: <br>
<br>
=C2=A0 =C2=A0 bitbake: 82abbfcdbda949851a03bb2cb2049ea689564ad6<br>
meta-agl: 5116ec52656f7c7dd78b2f60326a0bdb984aa663<br>
meta-arm: a81c19915b5b9e71ed394032e9a50fd06919e1cd<br>
meta-aws: 437d3207ee2ca178a98531b34c0d9623154aa059<br>
meta-clang: 5bce7e26a38a58bb52242494e54ab2af40009574<br>
meta-intel: 5d153e35b4e752505efeae368f188fac5e31cf33<br>
meta-mingw: bd9fef71ec005be3c3a6d7f8b99d8116daf70c4f<br>
meta-openembedded: ae7dfb12245c7f9b9a353499e2688015bd4e6413<br>
meta-qcom: ec80a36bce11d8182b4bb2a6fa0359adfeccde0a<br>
meta-virtualization: 8409bc0c8b9209327add72d8fa72571cdeb5521e<br>
meta-yocto: ca5a51aadaf651881d640688dc3e1e123aa30bf6<br>
oecore: ece80784b493c8b7493478fa2ba0dc1d6d80aa79<br>
poky: 44dcf08572ce391d7c0df4f8c7510af5e096baca<br>
yocto-docs: 1c5e7f136d7460fa5ad4c8a49ab1de31bd670e59<br></blockquote></div>=
</div><div dir=3D"auto"><br></div><div dir=3D"auto">This is a green build. =
QA can proceed.</div><div dir=3D"auto"><br></div><div dir=3D"auto">Regards,=
</div><div dir=3D"auto"></div><div dir=3D"auto"><div class=3D"gmail_quote">=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
<br>
<br>
This is an automated message from the Yocto Project Autobuilder<br>
Git: git://<a href=3D"http://git.yoctoproject.org/yocto-autobuilder2" rel=
=3D"noreferrer noreferrer noreferrer" target=3D"_blank">git.yoctoproject.or=
g/yocto-autobuilder2</a><br>
Email: <a href=3D"mailto:richard.purdie@linuxfoundation.org" rel=3D"norefer=
rer noreferrer" target=3D"_blank">richard.purdie@linuxfoundation.org</a><br=
>
<br>
<br>
<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#710): <a href=3D"https://lists.yoctoproject.org/g/qa-bu=
ild-notification/message/710" rel=3D"noreferrer noreferrer noreferrer" targ=
et=3D"_blank">https://lists.yoctoproject.org/g/qa-build-notification/messag=
e/710</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/119332379/431=
6185" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">https://li=
sts.yoctoproject.org/mt/119332379/4316185</a><br>
Group Owner: <a href=3D"mailto:qa-build-notification%2Bowner@lists.yoctopro=
ject.org" rel=3D"noreferrer noreferrer" target=3D"_blank">qa-build-notifica=
tion+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/qa-build-notificat=
ion/leave/14721440/4316185/830777862/xyzzy" rel=3D"noreferrer noreferrer no=
referrer" target=3D"_blank">https://lists.yoctoproject.org/g/qa-build-notif=
ication/leave/14721440/4316185/830777862/xyzzy</a> [<a href=3D"mailto:yoann=
.congal@smile.fr" rel=3D"noreferrer noreferrer" target=3D"_blank">yoann.con=
gal@smile.fr</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
<br>
</blockquote></div></div></div>
<br><br><div data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><font face=
=3D"Raleway, regular">Yoann Congal</font><div><font face=3D"Raleway, regula=
r">Smile ECS</font></div></div></div></div>

--000000000000ef085e0651dd91a3--

