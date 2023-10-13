Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1DEA2CDB482
	for <webhook@archiver.kernel.org>; Fri, 13 Oct 2023 09:36:19 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web11.34770.1697189772128533533
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Oct 2023 02:36:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KU94LNsL;
 spf=pass (domain: gmail.com, ip: 209.85.208.173, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2b9338e4695so23927001fa.2
        for <yocto@lists.yoctoproject.org>; Fri, 13 Oct 2023 02:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697189770; x=1697794570; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=LlKrriSNAUxnmTO5YHzVvwZMAH45NQmL4Wn1xXDEnBI=;
        b=KU94LNsL9NKkt2VK3jR6LXwdWSlzhGk9/hTKRNC0fSr0CV8/KqRdL8QY7nA0UFCStH
         qy5PLFKFkrEtxbXy2bT0xC0lEi/83Nri0Djtt2/PQlvkZVyumDliM3Lg8OscfKXdqxZI
         0lKNj0y77zYOgg4sUqav/EDBHEKKU36eZl5c/oQ5tWxWwhz/Dny93jzcrv98qG3ZI8ge
         6HWCluCqKxIHCreM290js1R0LB0M6pEnL+9KfTX6Ygkj4oW8It/Z0R9Nk/0ClgnsW26Q
         l+3LlhNu9gqDAK8YDykV2UC2chq2OQIxW0V7kF79JlH/ZwWfxnMUgm9HCKX6VFFNwsn1
         0pxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697189770; x=1697794570;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LlKrriSNAUxnmTO5YHzVvwZMAH45NQmL4Wn1xXDEnBI=;
        b=c/fVQPGm60ovbxSAdx44YJzUOPM0xz4ksuTHlgnajst/pG3SmIEH+NgVGmKd+g9cwI
         l7+AXEVOZ5f6N+dXkaEq7XPAWT+oyWt8pbA3S6Hf/OES//DHHPVOefIu/uws+Z3fRFnX
         lT9Fk6XbazR3PqDS65mO394ge2a+9Pwt3LrhmbZ8lgS8Vq7DSG+yYzDEAh3wd90tTLXu
         mesfUMtwyJNhZQikFcgKLuBmNOC2jFsTvylfIIKkMY493SNYQdXs6E+fslaDgpJIK8YN
         x1mXBN4eyFogx3klEZlCKrk+JsvSQDFzVYZah0eqvzwjhAoW94EhVnbC21hveRAn27LO
         yp4g==
X-Gm-Message-State: AOJu0Yw9wob7OwerXmu0XA+G482FP+Vm4HBw44ZMaIE0OPTpOV8VpuY+
	3Dgvd/5DcRCiiDZ2+pSqXw5j26+QWXevqqPz1Ao=
X-Google-Smtp-Source: AGHT+IGq5/PE67znzKD7UboSuH7EsshUvv0zVVBZHTxBAr6FBRdqzMNTwHsSH4i5m0ncoswgBQbiuyt1OMYJr53wYqs=
X-Received: by 2002:a2e:8816:0:b0:2bc:db99:1775 with SMTP id
 x22-20020a2e8816000000b002bcdb991775mr21936357ljh.26.1697189769804; Fri, 13
 Oct 2023 02:36:09 -0700 (PDT)
MIME-Version: 1.0
References: <63138cbc-ccf3-d4c7-fcc7-5f6e87744e74@crashcourse.ca>
 <CAEt6NwqCT9nkdXrg8RRthVHke1adMpbzp4Nhv93XkY8A8aMFbw@mail.gmail.com> <943d42b1-8628-e247-77b1-692f5ada7d5f@crashcourse.ca>
In-Reply-To: <943d42b1-8628-e247-77b1-692f5ada7d5f@crashcourse.ca>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 13 Oct 2023 11:35:59 +0200
Message-ID: <CANNYZj92WJ_j-Et35s6i6bfeSxH5p3h_rx=n6t+Q9AKGdBhg7Q@mail.gmail.com>
Subject: Re: [yocto] are there any plans for a RISC-V reference board?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Josef Holzmayr <jester@theyoctojester.info>, 
	Yocto discussion list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000587d92060795c995"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Oct 2023 09:36:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61328

--000000000000587d92060795c995
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Can you clarify please what LTS means here?

Alex

On Fri 13. Oct 2023 at 9.09, Robert P. J. Day <rpjday@crashcourse.ca> wrote=
:

> On Tue, 10 Oct 2023, Josef Holzmayr wrote:
>
> > Hi Robert,
>
> > It has been discussed at numerous occasions. The main blocker is: we
> > need a commitment for the maintenance. So if a high-ranking member
> > decides to push forwards with this and allocate resources, or a new
> > member from the RISC-V ecosystem steps up to make it happen, then
> > the project is all ears.
> >
> > Greetz,
> > Josef
>
>    Ask and ye shall receive. I just got the following private note
> from jiaqi.dong@starfivetech.com, who obviously saw my earlier post
> (and agreed to let me reproduce his response to me to the list):
>
> > I think VisionFive 2 is an appropriate reference board. We offer
> > Long Term Support for JH7110 and VisionFive 2. After being upgraded,
> > VisionFive 2 with big improvements in the processor work frequency,
> > multimedia processing capabilities, and scalability. Since August of
> > last year, we have continued to promote the ecosystem of VF2, it has
> > successively adapted to Deepin OS, Ubuntu OS, UEFI EDK2, OpenWrt,
> > PPSSPP=E2=80=A6you can check out the RVspace forum. So we would like to=
 work
> > with the developers and provide LTS if there are specific project
> > requirements.
>
>   Sound promising?
>
> rday
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61327):
> https://lists.yoctoproject.org/g/yocto/message/61327
> Mute This Topic: https://lists.yoctoproject.org/mt/101869785/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000587d92060795c995
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Can you clarify please what LTS means here?</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Alex</div><div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri 13. Oct 2023 at 9.09,=
 Robert P. J. Day &lt;<a href=3D"mailto:rpjday@crashcourse.ca">rpjday@crash=
course.ca</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;=
padding-left:1ex;border-left-color:rgb(204,204,204)">On Tue, 10 Oct 2023, J=
osef Holzmayr wrote:<br>
<br>
&gt; Hi Robert,<br>
<br>
&gt; It has been discussed at numerous occasions. The main blocker is: we<b=
r>
&gt; need a commitment for the maintenance. So if a high-ranking member<br>
&gt; decides to push forwards with this and allocate resources, or a new<br=
>
&gt; member from the RISC-V ecosystem steps up to make it happen, then<br>
&gt; the project is all ears.<br>
&gt;<br>
&gt; Greetz,<br>
&gt; Josef<br>
<br>
=C2=A0 =C2=A0Ask and ye shall receive. I just got the following private not=
e<br>
from <a href=3D"mailto:jiaqi.dong@starfivetech.com" target=3D"_blank">jiaqi=
.dong@starfivetech.com</a>, who obviously saw my earlier post<br>
(and agreed to let me reproduce his response to me to the list):<br>
<br>
&gt; I think VisionFive 2 is an appropriate reference board. We offer<br>
&gt; Long Term Support for JH7110 and VisionFive 2. After being upgraded,<b=
r>
&gt; VisionFive 2 with big improvements in the processor work frequency,<br=
>
&gt; multimedia processing capabilities, and scalability. Since August of<b=
r>
&gt; last year, we have continued to promote the ecosystem of VF2, it has<b=
r>
&gt; successively adapted to Deepin OS, Ubuntu OS, UEFI EDK2, OpenWrt,<br>
&gt; PPSSPP=E2=80=A6you can check out the RVspace forum. So we would like t=
o work<br>
&gt; with the developers and provide LTS if there are specific project<br>
&gt; requirements.<br>
<br>
=C2=A0 Sound promising?<br>
<br>
rday<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#61327): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61327" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61327</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/101869785/168=
6489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/101869785/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000587d92060795c995--

