Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A849CFDEE47
	for <webhook@archiver.kernel.org>; Thu, 23 Apr 2026 19:51:57 +0000 (UTC)
Received: from mail-yx1-f44.google.com (mail-yx1-f44.google.com [74.125.224.44])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.6256.1776973913421049376
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Apr 2026 12:51:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20251104 header.b=fP//V6SR;
 spf=pass (domain: gmail.com, ip: 74.125.224.44, mailfrom: raj.khem@gmail.com)
Received: by mail-yx1-f44.google.com with SMTP id 956f58d0204a3-651bf695701so5590760d50.2
        for <yocto@lists.yoctoproject.org>; Thu, 23 Apr 2026 12:51:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1776973912; cv=none;
        d=google.com; s=arc-20240605;
        b=YXcnYB6I/VksFLeP8T294ryU0ZT7BcTVlACNYef5m+BfbeXSeeTBJ4OOjMxY13y7Ws
         kQ/ukqouBATsDap6DA6pm5QhyEBVSUgXy7q9x9hVsIPasgAwGS4LKca5G6E6v11LOCvJ
         m2YM+BWHIucBbUVajKuXLkrJZ6iO9/7Doq3Kby/75CBCJuRN43XeHHCNnUeou0Jmy3O4
         IhSXhWkqI+rYpCWNqIsiJD8/kvsrAfM7wmnWg+ReW3RDzbSNMHMW5a/XNPzMFoz4VV8j
         W55TMKa2C7IFSDsxFbhMjucDzZMz1+U5c1kAplKpCtIVLaaThWvLblD9cu2N4Mscxb+o
         Ah7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=lo0m0+y45u/uiJzaTjwozgq1A+aVm+GQ6K89jQaSXWY=;
        fh=O/6BWJuwE67FMO0JqmYFQbsacVZmA2okAEK0iT1OAT4=;
        b=jszlJ2fac5H7d48YmEGKLd9vZHYV8z6du8lw8pbssTE9NnaNNRjHEmTTpb2ANZTnaE
         l+TucDlH+usuepYiPyeKs1AIgbQTzL8vJUZ/ByQWDcq9AfZqAoCu3fNAYdw7eYjIWT1L
         XGEYmCZfYd42iuoAh+dMYUqN2AIt9mcH8qCRcQnPPJ8pgDFVgY292G03cDeYwIMXoR4W
         Ot7khpMstDmdhv+lmo629pOt50Dl9tO+OIMMh+u6SBbD7NFQbswQObVU5KQ3oMKdzmzz
         uGSCpgq1v1gIDil6Ythu9HC3qgdGhmvnNZ2dioQhG51QFB1rmep10c/a3b8dvCFM7e7L
         8+7g==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1776973912; x=1777578712; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lo0m0+y45u/uiJzaTjwozgq1A+aVm+GQ6K89jQaSXWY=;
        b=fP//V6SRGY9DTXcZHmUurNNiwblVGiJJOklnqXGYoaHCtjNCIakWNw/JsNuzzPdEwf
         CEZpYCkbRm47Gqhk5hrTYtlfNScZ2EolrCu2Z4yCFNxbSD3ZTdz5V9lgeYg63OKEE3ma
         ocUdCO72Sdu7VOgtrE8reH5Imkmh0ZM+Mg8LqYGyqdrZVwIypohWU5yLwjIq5Ry8R+EV
         sy5/aPxSqIZE13u/IB9RtOAyOwtiTnpdUJR/2Xgktnpy3FYgHb+sWMsTgnx0BL2dTAnj
         CFlazV+kQTh548N7hqstgSimon+phOgZrQZtNFa46T8GC89eA5mKUK5YMHNgC7sGKzOt
         0+jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776973912; x=1777578712;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=lo0m0+y45u/uiJzaTjwozgq1A+aVm+GQ6K89jQaSXWY=;
        b=FN+8QhzhykIrCCD5s0bI0nG++l+Zvo6334NsMUZ/nLGu/VDI7MqwgxAIrKFsYbS/NB
         IbUST1S7SSXiL+ovv3KAaN6zoTmNvU88dKN5mI1oTIqEBFLe7WcDcqW9Gzrw20/+l/6y
         2OYq3kCUpDXCn0mLrlWPVLujl214ScdMIKQPqt+N2357vxFwdMzpE8iGQLBoTVZqLKzm
         XwLdEbhTGUYWktnxzq6Bu79/juA+XUB/BAi/nMlbq6ztmyXWveJHNklqQjqkRV6Ek1vE
         tlGXsZxSyLxnUmv5vpp8thcm3O8Z7Pn+TIGsT7TurvrUytojFzCDgkBTcBUMNA1NkH1c
         /cZg==
X-Gm-Message-State: AOJu0YxuGcfEDe+/efXqTsw0SJNXwQ009YevcDGSu2K1WfFFKPMgg03Y
	XTfwpvJMdkKLUQqdf6hm1SRfHVocJ140uOYahPgZwfsOXtpt2lhrEVDPWZWTtbpraOr46tMpKzi
	CweCR5C50SSOVvkD8M86UvCOkAcol613hZA==
X-Gm-Gg: AeBDieuRu2m/AS1N0Gl47/2YFCr+uVxfNHy6bOEiSt/OiS28eEGP8dSAQWRFmO1opwS
	AP0UoQ1MBIZ/MUujP8PnxQokxM7v1lo0MxUsEc1XLmgaOgMNXDfNLjWT1Y8hzejQl+NeqWtYHhx
	blLiXndx5oFmKMP22xhGP6nEmDwWtygKnPWLKIgV5IF166JVU/Hb9TtYUOW8jiy6rCmc0vxPJqM
	7zyx6ZjHtFa0IsOSOAa9CEz14OGJpE83Hn/ZrjViDVyFvWmTLzZYgqvrdP+egFOGRSLvz9Nq4xi
	hYLkLxjxfjA9eMIcE4cK1bRwUUg86UE3Qi5Vynioz117sIDG8rO95cFC51/M/II8jsK9V3w2dxZ
	oSfxtvfXRgUlAJtQKkz1zDXT5y2DFFhhesOZ96kRxo8s1rFy9r9FNcnGiCkctlu46OsjG6FoztH
	ICsVe+5cPK0zDXGyc=
X-Received: by 2002:a05:690e:4089:b0:654:acd4:9c10 with SMTP id
 956f58d0204a3-654acd4ab5emr3266341d50.13.1776973912122; Thu, 23 Apr 2026
 12:51:52 -0700 (PDT)
MIME-Version: 1.0
References: <CACxWsr7otZCPmzAPP=LE2XDyO+vmY_fnat-4fjG7KecTjN6NHg@mail.gmail.com>
In-Reply-To: <CACxWsr7otZCPmzAPP=LE2XDyO+vmY_fnat-4fjG7KecTjN6NHg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 23 Apr 2026 12:51:25 -0700
X-Gm-Features: AQROBzDi1g_ex9RG5lQQABzov7AQfb2e7Lj7S1OdvcoGSkNTcRcns4F1RZpAbjw
Message-ID: <CAMKF1spc7HA4AUcwk9v=kVZ4mKEbbv537snQNGf_YfF_q_dV3A@mail.gmail.com>
Subject: Re: [yocto] Handling sysroots
To: yocto@lists.yoctoproject.org, xaver.max.gruber@googlemail.com
Content-Type: multipart/alternative; boundary="000000000000cea901065025faea"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Apr 2026 19:51:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66437

--000000000000cea901065025faea
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Apr 23, 2026 at 11:04=E2=80=AFAM Xaver Gruber via lists.yoctoprojec=
t.org
<xaver.max.gruber=3Dgooglemail.com@lists.yoctoproject.org> wrote:

> Hey guys,
>
>
> Clang-native builds clang, however I have another native, let us call it
> native X, building clang as well. I get an error that it is duplicated in
> global sysroot. I only need clang-native to build native X. How do I make
> sure clang-native does not reach global sysroot, however still being
> available for native X?
>

Well, it will not be easy, you might need to carve out directories to put
the conflicting files in or rename files. why would you not be able to use
clang-native ?
we just started to use same llvm across clang, mesa and rust e.g. so we are
moving in towards consolidation, which makes your ask even harder


> Best regards,
> Xaver Gruber
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#66436):
> https://lists.yoctoproject.org/g/yocto/message/66436
> Mute This Topic: https://lists.yoctoproject.org/mt/118976274/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000cea901065025faea
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote g=
mail_quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 23,=
 2026 at 11:04=E2=80=AFAM Xaver Gruber via <a href=3D"http://lists.yoctopro=
ject.org">lists.yoctoproject.org</a> &lt;xaver.max.gruber=3D<a href=3D"mail=
to:googlemail.com@lists.yoctoproject.org">googlemail.com@lists.yoctoproject=
.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1=
ex"><div style=3D"font-size:inherit"><h3 style=3D"font-style:normal;letter-=
spacing:normal;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:1px;font-family:system-ui,&quot;segoe ui&quot;,roboto,&quot;helveti=
ca neue&quot;,&quot;noto sans&quot;,&quot;liberation sans&quot;,arial,sans-=
serif,&quot;apple color emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe =
ui symbol&quot;,&quot;noto color emoji&quot;;font-weight:500;line-height:1.=
1;margin-top:20px;margin-bottom:10px;font-size:inherit;background-color:rgb=
a(0,0,0,0);border-color:rgb(38,41,46);color:rgb(38,41,46)"><p style=3D"marg=
in:0px;font-size:15px;line-height:normal;font-family:system-ui,&quot;segoe =
ui&quot;,roboto,&quot;helvetica neue&quot;,&quot;noto sans&quot;,&quot;libe=
ration sans&quot;,arial,sans-serif,&quot;apple color emoji&quot;,&quot;sego=
e ui emoji&quot;,&quot;segoe ui symbol&quot;,&quot;noto color emoji&quot;;b=
ackground-color:rgba(0,0,0,0);border-color:rgb(0,0,0);color:rgb(0,0,0)"><sp=
an style=3D"font-family:uictfonttextstylebody;font-size:0.9375rem;backgroun=
d-color:rgba(0,0,0,0);border-color:rgb(0,0,0);color:rgb(0,0,0)">Hey guys,</=
span></p><p style=3D"margin:0px;font-size:15px;line-height:normal;font-fami=
ly:system-ui,&quot;segoe ui&quot;,roboto,&quot;helvetica neue&quot;,&quot;n=
oto sans&quot;,&quot;liberation sans&quot;,arial,sans-serif,&quot;apple col=
or emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;,&quot=
;noto color emoji&quot;;background-color:rgba(0,0,0,0);border-color:rgb(0,0=
,0);color:rgb(0,0,0)"><span style=3D"font-family:uictfonttextstylebody;back=
ground-color:rgba(0,0,0,0);border-color:rgb(0,0,0);color:rgb(0,0,0)"><br></=
span></p><p style=3D"margin:0px;font-size:15px;line-height:normal;font-fami=
ly:system-ui,&quot;segoe ui&quot;,roboto,&quot;helvetica neue&quot;,&quot;n=
oto sans&quot;,&quot;liberation sans&quot;,arial,sans-serif,&quot;apple col=
or emoji&quot;,&quot;segoe ui emoji&quot;,&quot;segoe ui symbol&quot;,&quot=
;noto color emoji&quot;;background-color:rgba(0,0,0,0);border-color:rgb(0,0=
,0);color:rgb(0,0,0)"><span style=3D"font-family:uictfonttextstylebody;font=
-size:0.9375rem;background-color:rgba(0,0,0,0);border-color:rgb(0,0,0);colo=
r:rgb(0,0,0)">Clang-native builds clang, however I have another native, let=
 us call it native X, building clang as well. I get an error that it is dup=
licated in global sysroot. I only need clang-native to build native X. How =
do I make sure clang-native does not reach global sysroot, however still be=
ing available for native X?</span></p></h3></div></blockquote><div><br></di=
v><div>Well, it will not be easy, you might need to carve out directories t=
o put the conflicting files in or rename files. why would you not be able t=
o use clang-native ?</div><div>we just started to use same llvm across clan=
g, mesa and rust e.g. so we are moving in towards consolidation, which make=
s your ask even harder</div><div>=C2=A0</div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><div style=3D"font-size:inherit"><span style=3D"font-si=
ze:inherit;font-style:normal;font-weight:400;letter-spacing:normal;text-ind=
ent:0px;text-transform:none;white-space:normal;word-spacing:1px;text-decora=
tion:none;float:none;background-color:rgba(0,0,0,0);border-color:rgb(0,0,0)=
;color:rgb(0,0,0);display:inline">Best regards,</span><div style=3D"font-si=
ze:inherit;font-style:normal;font-weight:400;letter-spacing:normal;text-ind=
ent:0px;text-transform:none;white-space:normal;word-spacing:1px;background-=
color:rgba(0,0,0,0);border-color:rgb(0,0,0);color:rgb(0,0,0)">Xaver Gruber<=
/div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#66436): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/66436" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/66436</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/118976274/199=
7914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/118976274/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000cea901065025faea--

