Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7E7CBC04FFE
	for <webhook@archiver.kernel.org>; Tue, 14 May 2024 08:33:50 +0000 (UTC)
Received: from mail-lj1-f175.google.com (mail-lj1-f175.google.com [209.85.208.175])
 by mx.groups.io with SMTP id smtpd.web11.10319.1715675623839888634
 for <yocto@lists.yoctoproject.org>;
 Tue, 14 May 2024 01:33:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=XdkB5yqw;
 spf=pass (domain: gmail.com, ip: 209.85.208.175, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f175.google.com with SMTP id 38308e7fff4ca-2e4939c5323so66090061fa.2
        for <yocto@lists.yoctoproject.org>; Tue, 14 May 2024 01:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715675622; x=1716280422; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ItWwOoP0qjedS14WBO4GbESFA7Z7frA7a+ff9T1mRWY=;
        b=XdkB5yqwIDuHynlzraS3Zmw6XXWGHABuPL8TgqtijKCBnwCVfhnTrmG+j8s3kz/TJT
         9As1nmILS0sD9hqnU9ZwdfqJ5DMfzK6UE/mEhOX18Hx+FuvgaJCJBKRHLqmDXvSxORNe
         xBmUTj8qz7A48aIfGafI06HY+RBH4R02swtOotR8gK+sCfReb0ajJAlFzpqXQqwbTx7N
         FtkcK/zVL83Xj7HQ1CkvtHrm1gZmH9dsH5XMHVxEBPmKvSh5ICB/VrHhmEwwtm22AIDW
         oKorSilz8CijwhrTuWKY3Uz9u2xrxysRI+TRhS3pZRS4n2fr524cTWnJ00IWVUbsNB9A
         mFNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715675622; x=1716280422;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ItWwOoP0qjedS14WBO4GbESFA7Z7frA7a+ff9T1mRWY=;
        b=iQvTkBt6VLS54yB1G8SriQlV2UgR9niN8W6NIPdJaWPxsUiL6tl6J7HmfFhDZgrylK
         cbza2gLbTOlWriGazySB0klpbb+DEwDBFKK9qLDclT4YRHfv1j6+b6UOEoEX/qym5hW9
         ztkD7efV2xwhI0tr1JrwWcnPGORvEIZFjoB4/luaev1RWXpsTmr3aETSv3QCbZg6TtAE
         bJQ5CM846HZhER2QtsdXeMFdBrxhGj9qeNtAumb2XH4V0dWBjtxWPhSHVpoVpe3zC/jI
         HSQ6TFWq7mJ6GdBZ0gppAZ3M1SUnmoPTzLribipkLw4IPGSujvy1+KQ8Ifrrt3B4wasR
         pXFw==
X-Forwarded-Encrypted: i=1; AJvYcCW5LysD9GsQbrjjzAQVi4oSpfiqTY2RmCj0nVkAqAQniq8pxy0I1PFomSXEMiE5uY8FHVP00wdMC8l7QoWs/FgJkQrBVXtejy8P1tPm
X-Gm-Message-State: AOJu0Yyqwn1PiAHOgV0+PXAKyJJu6ZgZL7nJVsJyr9abGoLnQg0UYYEq
	nTW69Kxu0RzUentxGTWO7dazYGEPEylikOdVjNbXDPZuWEVfv4oGAChhLNjO+1So3AabxRuOSyY
	lxM6IfiBTUxvrnqUZDL+AWu1XJwM=
X-Google-Smtp-Source: AGHT+IEXAvM7q9v67EIWDWe5xAgZWTa94RLM943H6gRDv3YI7pdPyXClnjno1aflzRGJuwo+GAyzp1FCSCiqFnJKVko=
X-Received: by 2002:a2e:4a19:0:b0:2df:7d44:d784 with SMTP id
 38308e7fff4ca-2e6d97300e9mr10491461fa.3.1715675621441; Tue, 14 May 2024
 01:33:41 -0700 (PDT)
MIME-Version: 1.0
References: <AqAx.1715673358859537428.AIQN@lists.yoctoproject.org>
In-Reply-To: <AqAx.1715673358859537428.AIQN@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 14 May 2024 10:33:30 +0200
Message-ID: <CANNYZj_nzmmCVt5U+pbHbCGCPBSxPAkDj3jowKOhAW8g_7aVLA@mail.gmail.com>
Subject: Re: [yocto] requires libsqlite3.so()(64bit), but no providers found
 in RDEPENDS:xxx? [file-rdeps] #kirkstone #yocto
To: Salahaldeen.Altous@leica-camera.com, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f74a6a061865dbad"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 14 May 2024 08:33:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63084

--000000000000f74a6a061865dbad
Content-Type: text/plain; charset="UTF-8"

Can you show the complete recipe?

Alex

On Tue 14. May 2024 at 9.56, Altous, Salahaldeen via lists.yoctoproject.org
<Salahaldeen.Altous=leica-camera.com@lists.yoctoproject.org> wrote:

> Hi All,
>
> I have one yocto recipe which is using libsqlite3, the compile task is OK
> but I got this error with do_package_qa
>
> /usr/lib/libexample.so.0.2.3 contained in package example requires
> libsqlite3.so()(64bit), but no providers found in RDEPENDS:example.?
> [file-rdeps]
>
>
>
> I have added this to the example recipe RDEPENDS but still the problem is
> not solved, any idea?
>
> DEPENDS += " sqlite3"
> RDEPENDS_${PN} += " libsqlite3.so()(64bit)"
>
>
>
> Regards,
>
> Salahaldeen
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63083):
> https://lists.yoctoproject.org/g/yocto/message/63083
> Mute This Topic: https://lists.yoctoproject.org/mt/106090753/1686489
> Mute #kirkstone:
> https://lists.yoctoproject.org/g/yocto/mutehashtag/kirkstone
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000f74a6a061865dbad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Can you show the complete recipe?</div><div dir=3D"auto">=
<br></div><div dir=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Tue 14. May 2024 at 9.56, Altous, S=
alahaldeen via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject=
.org</a> &lt;Salahaldeen.Altous=3D<a href=3D"mailto:leica-camera.com@lists.=
yoctoproject.org">leica-camera.com@lists.yoctoproject.org</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-=
color:rgb(204,204,204)"><p>Hi All,</p>
<p>I have one yocto recipe which is using libsqlite3, the compile task is O=
K but I got this error with do_package_qa</p>
<p>/usr/lib/libexample.so.0.2.3 contained in package example requires libsq=
lite3.so()(64bit), but no providers found in RDEPENDS:example.? [file-rdeps=
]</p>
<p>=C2=A0</p>
<p>I have added this to the example recipe RDEPENDS but still the problem i=
s not solved, any idea?</p>
<p>DEPENDS +=3D &quot; sqlite3&quot;<br>RDEPENDS_${PN} +=3D &quot; libsqlit=
e3.so()(64bit)&quot;</p>
<p>=C2=A0</p>
<p>Regards,</p>
<p>Salahaldeen</p>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63083): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63083" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63083</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/106090753/168=
6489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/106090753/1686489</a><br>
Mute #kirkstone:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehasht=
ag/kirkstone" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproje=
ct.org/g/yocto/mutehashtag/kirkstone</a><br>
Mute #yocto:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/y=
octo" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/mutehashtag/yocto</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000f74a6a061865dbad--

