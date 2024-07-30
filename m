Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 329B1C3DA4A
	for <webhook@archiver.kernel.org>; Tue, 30 Jul 2024 02:40:57 +0000 (UTC)
Received: from mail-oa1-f44.google.com (mail-oa1-f44.google.com [209.85.160.44])
 by mx.groups.io with SMTP id smtpd.web10.9178.1722307245284700527
 for <yocto@lists.yoctoproject.org>;
 Mon, 29 Jul 2024 19:40:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=bhSGqYMk;
 spf=pass (domain: gmail.com, ip: 209.85.160.44, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f44.google.com with SMTP id 586e51a60fabf-25e397c51b2so2682763fac.3
        for <yocto@lists.yoctoproject.org>; Mon, 29 Jul 2024 19:40:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722307244; x=1722912044; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=iFAi8TMIimHY0KTY+XRgtTZQf3OBVUtHJAwVL8rgL9Y=;
        b=bhSGqYMkwwK866xFV06LcnaZfarRXavQold9AUd2mbnYtJOrUYXV8yMsl4kPPOvPU/
         I7bQ3sP6+NtR4/Ccb7C2EKHLLz4eWCmZ0h6EmwFdilEtsVny3EVyidpsl4e7LmQDe9Nd
         mgiIKwQ9zcwTEu5f9OucsNG8qyzKpz5EPZ4jj5BRW0QrvVLggUgE9GETNcKm0Thr4Pza
         +2fId3454+te815r9YgW3PqAUzD2Que5PxjBekoRsMcO556cZVJGzXtM+4lKCW60Z26w
         fp2CwKSGLo8Od+P1KSWZFmUXmnv6+qMOneiIivn3qR71hGxwIPFXCgqkiw0gvQY+oPkg
         O0GQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722307244; x=1722912044;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iFAi8TMIimHY0KTY+XRgtTZQf3OBVUtHJAwVL8rgL9Y=;
        b=R+RzUf1PX9EKmaW0urnj1x+WCsXkkNUDA8sVRZeyn2KFyerb79HISUpz1fHn+uSy/m
         99cY+uYR081NXwaseyjb2zUK8NdUZ+kf4Fnj5QlWcrGjAxOnvmrSxeGvcXyyZ8QLxBRf
         f3Bgz2wNiViX/M4ZOKrUap/Ks0MR+RnXdQOz77++jNfo4WjH8F/JSug12PDT+HCdtMlF
         pppiuKdOwG61VINeCu3Ss4p2GTwXXDjMQ2LpAqpQnlQIkUeAtCRIlDvkqt7gFK2x2xQn
         xp1qT3d48gM9wd39Up7nTTj+gffv3smxlhaYc2Uga/gfGORqUBej8H7m6WhKcnpBUh0F
         ROpA==
X-Forwarded-Encrypted: i=1; AJvYcCVdcNhmShNsUELxJHVXvgGTGG0qWI7JzgjIV2EsGrsJa/ZDnyystXRrU4Bk4x5vmJSedz75zgv3VHNJFBQA3ORuZ6gm3KN7OE0bB9w6
X-Gm-Message-State: AOJu0YzOSjNTzdx1owH5yZ2DtGpJnk1u8iXO4jqevp1pycvE2GuqcOLS
	e+MviBF/P2tB2wj6iVs6EdUyVYuUD+ACZBZBXV5qiDOhwXSbVj+y2wozn4o+1ZruEb0aa7IKiLd
	FAvLeSYxL8b/UQqQLqsgrRuR3hEQ=
X-Google-Smtp-Source: AGHT+IEIaumbdFnYGJFKmcY7d8huWi5uW9Yks4tKYA+YktdHjGBk66nYcdm98RY7Z+nqC5yYt0ZSW6juhFl50kzB+II=
X-Received: by 2002:a05:6871:3a11:b0:261:17eb:a3f1 with SMTP id
 586e51a60fabf-267d4f1e104mr12135348fac.32.1722307244439; Mon, 29 Jul 2024
 19:40:44 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBnjOA=_vu+1uEq16Dtq_gGuVSdGWsRh88k9SK_1OZUwGFg@mail.gmail.com>
 <CANNYZj-SH92hn5goJ5N+kZq-3X8TNL9=azsqoVp+2fP6zfcp-w@mail.gmail.com> <CAPJWBng9ENBtLrT6tKx=bAevU_y87-a=zKNfeeXdkU-rgWP4KA@mail.gmail.com>
In-Reply-To: <CAPJWBng9ENBtLrT6tKx=bAevU_y87-a=zKNfeeXdkU-rgWP4KA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 29 Jul 2024 19:40:31 -0700
Message-ID: <CAMKF1sq5e+MrU1rWJvEs8gBD2-Bh9Y=VyTSQV-o-zAMc3G2DjQ@mail.gmail.com>
Subject: Re: [yocto] Update glib-2.0 from 2.7 to 2.8
To: hassanchattarki@gmail.com, yocto@lists.yoctoproject.org
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000007fbfc7061e6de778"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Jul 2024 02:40:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63593

--0000000000007fbfc7061e6de778
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, Jul 29, 2024 at 5:23=E2=80=AFPM MOHAMMED HASSAN via lists.yoctoproj=
ect.org
<hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:

> Well, I seem to be facing issue with the bluez stack. Though it builds
> well, functionality wise I think it doesn=E2=80=99t  work as intended. So=
 I wanted
> to try building it on the board using the source code. Now the source cod=
e
> wants glib-2 2.8 .
>
> Also, on a second thought how do you guys work your way around in case a
> particular package is outdated? Really curious!
>

This is subjective usually it=E2=80=99s best to keep using the version set =
that
comes with a given release even if it is not latest release because it is
integrated with the baseline of the packages from the given release and
usually maintained releases do get security fixes etc over the life of the
release so usually it ends up fine and you are with a large set of users so
any issue you run into you may find good support in community

On the other hand if you want to upgrade a recipe for a package to use
another major version older or newer will mean you will have to own the
integration part and there will be less users with such combinations so you
will be stuck on doing the work your self. In some cases it=E2=80=99s worth=
 it in
some not so much

Some leaf packages are easier to upgrade then some core libraries etc so
your mileage may vary


> Thanks
>
> On Tue, 30 Jul 2024 at 12:03=E2=80=AFAM, Alexander Kanavin <alex.kanavin@=
gmail.com>
> wrote:
>
>> You can try, but this is likely to unravel into a mass scale upgrade
>> of half of oe-core recipes, and you're on your own trying to make it
>> work. I would suggest simply moving to a tagged master milestone
>> rather.
>>
>> Where is the requirement coming from?
>>
>> Alex
>>
>> On Mon, 29 Jul 2024 at 06:46, MOHAMMED HASSAN via
>> lists.yoctoproject.org
>> <hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:
>> >
>> > Hi guys,
>> > I have kirkstone SDK with me that supports glib-2.0 version 2.70. I
>> currently require version 2.80 which I noticed is available in the main
>> branch of git. Do you think pulling the recipes and manually replacing t=
he
>> file will resolve my issue. Or any other good methods I can try?
>> >
>> > Thanks
>> > Hassan
>> >
>> >
>> >
>>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63591):
> https://lists.yoctoproject.org/g/yocto/message/63591
> Mute This Topic: https://lists.yoctoproject.org/mt/107603886/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000007fbfc7061e6de778
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Mon, Jul 29, 2024 at 5:23=E2=80=AFPM MOHAMMED HASSAN via=
 <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;h=
assanchattarki=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org">gmail.=
com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gma=
il_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-lef=
t:1ex"><div dir=3D"auto">Well, I seem to be facing issue with the bluez sta=
ck. Though it builds well, functionality wise I think it doesn=E2=80=99t =
=C2=A0work as intended. So I wanted to try building it on the board using t=
he source code. Now the source code wants glib-2 2.8 .=C2=A0</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Also, on a second thought how do you =
guys work your way around in case a particular package is outdated? Really =
curious!</div><div dir=3D"auto"></div></blockquote><div dir=3D"auto"><br></=
div><div dir=3D"auto">This is subjective usually it=E2=80=99s best to keep =
using the version set that comes with a given release even if it is not lat=
est release because it is integrated with the baseline of the packages from=
 the given release and usually maintained releases do get security fixes et=
c over the life of the release so usually it ends up fine and you are with =
a large set of users so any issue you run into you may find good support in=
 community=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">On the =
other hand if you want to upgrade a recipe for a package to use another maj=
or version older or newer will mean you will have to own the integration pa=
rt and there will be less users with such combinations so you will be stuck=
 on doing the work your self. In some cases it=E2=80=99s worth it in some n=
ot so much=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">Some le=
af packages are easier to upgrade then some core libraries etc so your mile=
age may vary=C2=A0</div><div dir=3D"auto"><br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-le=
ft:1ex"><div dir=3D"auto"><br></div><div dir=3D"auto">Thanks</div><div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 30=
 Jul 2024 at 12:03=E2=80=AFAM, Alexander Kanavin &lt;<a href=3D"mailto:alex=
.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-le=
ft-color:rgb(204,204,204)">You can try, but this is likely to unravel into =
a mass scale upgrade<br>
of half of oe-core recipes, and you&#39;re on your own trying to make it<br=
>
work. I would suggest simply moving to a tagged master milestone<br>
rather.<br>
<br>
Where is the requirement coming from?<br>
<br>
Alex<br>
<br>
On Mon, 29 Jul 2024 at 06:46, MOHAMMED HASSAN via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a><br>
&lt;hassanchattarki=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" t=
arget=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi guys,<br>
&gt; I have kirkstone SDK with me that supports glib-2.0 version 2.70. I cu=
rrently require version 2.80 which I noticed is available in the main branc=
h of git. Do you think pulling the recipes and manually replacing the file =
will resolve my issue. Or any other good methods I can try?<br>
&gt;<br>
&gt; Thanks<br>
&gt; Hassan<br>
&gt;<br>
&gt; <br>
&gt;<br>
</blockquote></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#63591): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63591" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63591</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/107603886/199=
7914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/107603886/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000007fbfc7061e6de778--

