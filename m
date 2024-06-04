Return-Path: <ayoub.zaki@googlemail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56060C25B78
	for <webhook@archiver.kernel.org>; Tue,  4 Jun 2024 13:11:21 +0000 (UTC)
Received: from mail-yw1-f169.google.com (mail-yw1-f169.google.com [209.85.128.169])
 by mx.groups.io with SMTP id smtpd.web10.21161.1717506674466062608
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jun 2024 06:11:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@googlemail.com header.s=20230601 header.b=IoL+0LPs;
 spf=pass (domain: googlemail.com, ip: 209.85.128.169, mailfrom: ayoub.zaki@googlemail.com)
Received: by mail-yw1-f169.google.com with SMTP id 00721157ae682-62a087c3a92so10502047b3.2
        for <yocto@lists.yoctoproject.org>; Tue, 04 Jun 2024 06:11:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1717506673; x=1718111473; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=YWJiMGlAoM9QC8DQRBC+mZXRNPWSryxStf0BNqYz5BY=;
        b=IoL+0LPsC0upYVvMva2Ty6gz4fTJpsvyqbWtEuNpsPxyWCeU2Bdi0gb9a4mI/nqfIo
         Q2YchMsnjrZC97wwMBBpWsL0tTiLXHeca/6O3I4G+d2sMdAWzsgx2GtrN41UG/RnMokB
         a4UqoVqqluGOk1Pp258om5NQ6D/yhlKusAcZhkoHeuvhWfFjU+H91K+3x1XFrCm+o9K7
         vKDBRiAAGqB1hkTsx6/3ym/kMCJFXwHO6vW0hK5H1MQfYDI1HrGPxe/1wJ3Zf4l22SwY
         nZsoORK4KzhL503d7z3zP3yHherLMlb39aS5dDOjwPOiA62w01EehBlPphcbPaL5MWX2
         syOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717506673; x=1718111473;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=YWJiMGlAoM9QC8DQRBC+mZXRNPWSryxStf0BNqYz5BY=;
        b=bHASNjs3gkL6jmAH37ZFGIskP5PLzVmI1CIxK8qUC79wiPgnDmVeJYSF8OCUtQ1WAk
         iePp37ILNvWeov2Gc+o/cAlFkWYIvwn40a6Vkp9uXLPB3m5hrwJd9J49DpcPXSf8GKv/
         lbIbXzWm35VbREml1RAdhkHjFlJiJyGzqdWkioyI4IGGDRbnuuz91Xh0+FPoZBugqTNB
         VSelJmHb+8F8yWVvlgsBnDqfXKJYc8UOc6A183nzJB7rYwnsxfwOlBI1Iljm23HoNBX1
         S3neP/90rsWC8Ukzs1lLUpiFHcP8vNL+sAeW6Fs/8C5hIjN5RycbbM/wU63EqVAhVmrz
         6pNQ==
X-Gm-Message-State: AOJu0Yyg3e3EN2pWQeEtrfMnC6CqPnm8gr7GAiMPD0eiNeanGHEv3Va6
	hBcP6Nbzni0B/csktSQvAF36/komrZmoUvHrz5gCuZSN3IWzVUctEy/CaXLbPgJptubvGfDEZxU
	d1LH7sN592z6Osjm41r6aezwnOHe/BA==
X-Google-Smtp-Source: AGHT+IFNa2gUCuF1IKsU5+hFEcD/CPrp3PPPhYZzXkXoxFIJ3J/tZd+bEycXQwMtdkN7ofGw//ksjwg5lEY7nql5TZk=
X-Received: by 2002:a81:b810:0:b0:61b:e62e:82a2 with SMTP id
 00721157ae682-62c79777788mr112213317b3.34.1717506673304; Tue, 04 Jun 2024
 06:11:13 -0700 (PDT)
MIME-Version: 1.0
References: <CA+-BmJZxdiOzpTs9j+WFWNnn-wtAH1zdUZdQQq9HniMhFij1+A@mail.gmail.com>
 <CANNYZj8Q5gGPAjcftrJJ4w601b26s65eVc0d4BhiK2Hwkbe+=g@mail.gmail.com>
 <CAGAf8Lz0_XwW=BOnQJYdFBUwe8ecuk658gjXQeUMH65fuMwCeQ@mail.gmail.com>
 <CA+-BmJYEVSJxzxqQ3K4PU_UztRe4BzEufLRDsUcS_RkLv-mq+A@mail.gmail.com>
 <CAGAf8Lw4+XNTj24zLe61qY=11pvCQH8GFW-iMKaE5-OWeiv9Cg@mail.gmail.com> <CAGAf8LzCFhs0qVchNuHQP32O7hVBLg+vUHsxuU2Putfor8dgBg@mail.gmail.com>
In-Reply-To: <CAGAf8LzCFhs0qVchNuHQP32O7hVBLg+vUHsxuU2Putfor8dgBg@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
Date: Tue, 4 Jun 2024 15:11:02 +0200
Message-ID: <CA+-BmJb33KhdbxSQREBnUtqLjNnPSMRbTXFN2w6yq9K_+krSPw@mail.gmail.com>
Subject: Re: [yocto] Systemd resolv.conf
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Alexander Kanavin <alex.kanavin@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000296e2f061a102f77"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jun 2024 13:11:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63275

--000000000000296e2f061a102f77
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

No worries. thanks for checking

On Tue, Jun 4, 2024 at 3:06=E2=80=AFPM Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> U R correct, Ayoub. I missed a yocto list.
>
> My bad. :-(
>
> Regards,
> Zee
>
> ---------- Forwarded message ---------
> From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
> Date: Tue, Jun 4, 2024 at 2:37=E2=80=AFPM
> Subject: Re: [yocto] Systemd resolv.conf
> To: Ayoub Zaki <ayoub.zaki@googlemail.com>
>
> I did not know that you were talking about a target?!
>
> You should clearly point out what target platform U R using and talk
> 'bout, and try to describe the problem in detail.
>
> At least I am trying not to focus on my inner self when I post, rather
> on the outside public view since people reading your @ are not sure
> what is going on and where is the problem?
>
> Zee
> _______
>
> On Tue, Jun 4, 2024 at 2:16=E2=80=AFPM Ayoub Zaki <ayoub.zaki@googlemail.=
com>
> wrote:
> >
> > I don't get your point ! you are pinging from your host ! What does thi=
s
> have to do with the described problem ?!
> >
> > On Mon, Jun 3, 2024 at 6:09=E2=80=AFPM Zoran Stojsavljevic <
> zoran.stojsavljevic@gmail.com> wrote:
> >>
> >> Interesting...
> >> _______
> >>
> >> vuser@fedora40-ssd-2TB:~/projects2/yocto/yocto_test2/bbb-yocto/poky/bu=
ild$
> git status
> >> On branch scarthgap
> >> Your branch is up to date with 'origin/scarthgap'.
> >>
> >> Changes not staged for commit:
> >>   (use "git add <file>..." to update what will be committed)
> >>   (use "git restore <file>..." to discard changes in working directory=
)
> >>     modified:   ../meta/recipes-core/images/core-image-base.bb
> >>     modified:   ../meta/recipes-core/images/core-image-minimal.bb
> >>     modified:
>  ../meta/recipes-extended/cracklib/cracklib/0001-packlib.c-support-dictio=
nary-byte-order-dependent.patch
> >>
> >> Untracked files:
> >>   (use "git add <file>..." to include in what will be committed)
> >>     ../meta/recipes-core/images/core-image-base.bb.genesis
> >>     ../meta/recipes-core/images/core-image-minimal.bb.genesis
> >>
> >> no changes added to commit (use "git add" and/or "git commit -a")
> >>
> >> vuser@fedora40-ssd-2TB:~/projects2/yocto/yocto_test2/bbb-yocto/poky/bu=
ild$
> ping yocto.org
> >> PING yocto.org (217.160.0.14) 56(84) bytes of data.
> >> 64 bytes from 217-160-0-14.elastic-ssl.ui-r.com (217.160.0.14):
> icmp_seq=3D1 ttl=3D57 time=3D16.2 ms
> >> 64 bytes from 217-160-0-14.elastic-ssl.ui-r.com (217.160.0.14):
> icmp_seq=3D2 ttl=3D57 time=3D14.6 ms
> >> 64 bytes from 217-160-0-14.elastic-ssl.ui-r.com (217.160.0.14):
> icmp_seq=3D3 ttl=3D57 time=3D14.8 ms
> >> ^C
> >> --- yocto.org ping statistics ---
> >> 3 packets transmitted, 3 received, 0% packet loss, time 2002ms
> >> rtt min/avg/max/mdev =3D 14.617/15.214/16.188/0.694 ms
> >>
> >> vuser@fedora40-ssd-2TB:~/projects2/yocto/yocto_test2/bbb-yocto/poky/bu=
ild$
> ls -l /etc/resolv.conf
> >> lrwxrwxrwx. 1 root root 39 Jul 18  2022 /etc/resolv.conf ->
> ../run/systemd/resolve/stub-resolv.conf
> >>
> >> Zee
> >> _______
> >>
> >>
> >> On Mon, Jun 3, 2024 at 4:52=E2=80=AFPM Alexander Kanavin via
> lists.yoctoproject.org <alex.kanavin=3Dgmail.com@lists.yoctoproject.org>
> wrote:
> >>>
> >>> Yes please; can you send a patch for master?
> >>>
> >>> Alex
> >>>
> >>> On Mon, 3 Jun 2024 at 16:48, Ayoub Zaki via lists.yoctoproject.org
> >>> <ayoub.zaki=3Dgooglemail.com@lists.yoctoproject.org> wrote:
> >>> >
> >>> > Hello,
> >>> >
> >>> > after upgrading to scarthgap, I noticed that the name resolution
> doesn't work anymore:
> >>> >
> >>> > ~ # ping yocto.org
> >>> > ping: bad address 'yocto.org'
> >>> > ~ #
> >>> >
> >>> > ~ # ping 217.160.0.14
> >>> > PING 217.160.0.14 (217.160.0.14): 56 data bytes
> >>> > 64 bytes from 217.160.0.14: seq=3D0 ttl=3D57 time=3D24.174 ms
> >>> > 64 bytes from 217.160.0.14: seq=3D1 ttl=3D57 time=3D19.452 ms
> >>> >
> >>> > --- 217.160.0.14 ping statistics ---
> >>> > 2 packets transmitted, 2 packets received, 0% packet loss
> >>> > round-trip min/avg/max =3D 19.452/21.813/24.174 ms
> >>> >
> >>> >
> >>> > ~ # ls -l /etc/resolv.conf
> >>> > lrwxrwxrwx    1 root     root            20 Mar  9  2018
> /etc/resolv.conf -> /var/run/resolv.conf
> >>> > ~ # cat /var/run/resolv.conf
> >>> > cat: can't open '/var/run/resolv.conf': No such file or directory
> >>> >
> >>> >
> >>> >
> >>> > After linking manually :
> >>> >
> >>> > ~ # ln -sf /etc/resolv-conf.systemd /etc/resolv.conf
> >>> > ~ #
> >>> > ~ #
> >>> > ~ # ping yocto.org
> >>> > PING yocto.org (217.160.0.14): 56 data bytes
> >>> > 64 bytes from 217.160.0.14: seq=3D0 ttl=3D57 time=3D17.577 ms
> >>> > 64 bytes from 217.160.0.14: seq=3D1 ttl=3D57 time=3D18.716 ms
> >>> > ^C
> >>> > --- yocto.org ping statistics ---
> >>> > 2 packets transmitted, 2 packets received, 0% packet loss
> >>> > round-trip min/avg/max =3D 17.577/18.146/18.716 ms
> >>> >
> >>> >
> >>> > shouldn't be that added in the systemd recipe :
> >>> >
> >>> >
> https://git.yoctoproject.org/poky/tree/meta/recipes-core/systemd/systemd_=
255.4.bb?h=3Dscarthgap#n352
> >>> >
> >>> > Best regards
> >>> >
> >>> >
> >>> >
> >>>
> >>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >>> Links: You receive all messages sent to this group.
> >>> View/Reply Online (#63261):
> https://lists.yoctoproject.org/g/yocto/message/63261
> >>> Mute This Topic: https://lists.yoctoproject.org/mt/106463010/3618681
> >>> Group Owner: yocto+owner@lists.yoctoproject.org
> >>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> zoran.stojsavljevic@gmail.com]
> >>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >>>
>

--000000000000296e2f061a102f77
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">No worries. thanks for checking<br></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 4, 2024 at =
3:06=E2=80=AFPM Zoran Stojsavljevic &lt;<a href=3D"mailto:zoran.stojsavljev=
ic@gmail.com">zoran.stojsavljevic@gmail.com</a>&gt; wrote:<br></div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">U R correct, Ayoub. I missed a y=
octo list.<br>
<br>
My bad. :-(<br>
<br>
Regards,<br>
Zee<br>
<br>
---------- Forwarded message ---------<br>
From: Zoran Stojsavljevic &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.c=
om" target=3D"_blank">zoran.stojsavljevic@gmail.com</a>&gt;<br>
Date: Tue, Jun 4, 2024 at 2:37=E2=80=AFPM<br>
Subject: Re: [yocto] Systemd resolv.conf<br>
To: Ayoub Zaki &lt;<a href=3D"mailto:ayoub.zaki@googlemail.com" target=3D"_=
blank">ayoub.zaki@googlemail.com</a>&gt;<br>
<br>
I did not know that you were talking about a target?!<br>
<br>
You should clearly point out what target platform U R using and talk<br>
&#39;bout, and try to describe the problem in detail.<br>
<br>
At least I am trying not to focus on my inner self when I post, rather<br>
on the outside public view since people reading your @ are not sure<br>
what is going on and where is the problem?<br>
<br>
Zee<br>
_______<br>
<br>
On Tue, Jun 4, 2024 at 2:16=E2=80=AFPM Ayoub Zaki &lt;<a href=3D"mailto:ayo=
ub.zaki@googlemail.com" target=3D"_blank">ayoub.zaki@googlemail.com</a>&gt;=
 wrote:<br>
&gt;<br>
&gt; I don&#39;t get your point ! you are pinging from your host ! What doe=
s this have to do with the described problem ?!<br>
&gt;<br>
&gt; On Mon, Jun 3, 2024 at 6:09=E2=80=AFPM Zoran Stojsavljevic &lt;<a href=
=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank">zoran.stojsavlj=
evic@gmail.com</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; Interesting...<br>
&gt;&gt; _______<br>
&gt;&gt;<br>
&gt;&gt; vuser@fedora40-ssd-2TB:~/projects2/yocto/yocto_test2/bbb-yocto/pok=
y/build$ git status<br>
&gt;&gt; On branch scarthgap<br>
&gt;&gt; Your branch is up to date with &#39;origin/scarthgap&#39;.<br>
&gt;&gt;<br>
&gt;&gt; Changes not staged for commit:<br>
&gt;&gt;=C2=A0 =C2=A0(use &quot;git add &lt;file&gt;...&quot; to update wha=
t will be committed)<br>
&gt;&gt;=C2=A0 =C2=A0(use &quot;git restore &lt;file&gt;...&quot; to discar=
d changes in working directory)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0modified:=C2=A0 =C2=A0../meta/recipes-core/imag=
es/<a href=3D"http://core-image-base.bb" rel=3D"noreferrer" target=3D"_blan=
k">core-image-base.bb</a><br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0modified:=C2=A0 =C2=A0../meta/recipes-core/imag=
es/<a href=3D"http://core-image-minimal.bb" rel=3D"noreferrer" target=3D"_b=
lank">core-image-minimal.bb</a><br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0modified:=C2=A0 =C2=A0../meta/recipes-extended/=
cracklib/cracklib/0001-packlib.c-support-dictionary-byte-order-dependent.pa=
tch<br>
&gt;&gt;<br>
&gt;&gt; Untracked files:<br>
&gt;&gt;=C2=A0 =C2=A0(use &quot;git add &lt;file&gt;...&quot; to include in=
 what will be committed)<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0../meta/recipes-core/images/core-image-base.bb.=
genesis<br>
&gt;&gt;=C2=A0 =C2=A0 =C2=A0../meta/recipes-core/images/core-image-minimal.=
bb.genesis<br>
&gt;&gt;<br>
&gt;&gt; no changes added to commit (use &quot;git add&quot; and/or &quot;g=
it commit -a&quot;)<br>
&gt;&gt;<br>
&gt;&gt; vuser@fedora40-ssd-2TB:~/projects2/yocto/yocto_test2/bbb-yocto/pok=
y/build$ ping <a href=3D"http://yocto.org" rel=3D"noreferrer" target=3D"_bl=
ank">yocto.org</a><br>
&gt;&gt; PING <a href=3D"http://yocto.org" rel=3D"noreferrer" target=3D"_bl=
ank">yocto.org</a> (217.160.0.14) 56(84) bytes of data.<br>
&gt;&gt; 64 bytes from <a href=3D"http://217-160-0-14.elastic-ssl.ui-r.com"=
 rel=3D"noreferrer" target=3D"_blank">217-160-0-14.elastic-ssl.ui-r.com</a>=
 (217.160.0.14): icmp_seq=3D1 ttl=3D57 time=3D16.2 ms<br>
&gt;&gt; 64 bytes from <a href=3D"http://217-160-0-14.elastic-ssl.ui-r.com"=
 rel=3D"noreferrer" target=3D"_blank">217-160-0-14.elastic-ssl.ui-r.com</a>=
 (217.160.0.14): icmp_seq=3D2 ttl=3D57 time=3D14.6 ms<br>
&gt;&gt; 64 bytes from <a href=3D"http://217-160-0-14.elastic-ssl.ui-r.com"=
 rel=3D"noreferrer" target=3D"_blank">217-160-0-14.elastic-ssl.ui-r.com</a>=
 (217.160.0.14): icmp_seq=3D3 ttl=3D57 time=3D14.8 ms<br>
&gt;&gt; ^C<br>
&gt;&gt; --- <a href=3D"http://yocto.org" rel=3D"noreferrer" target=3D"_bla=
nk">yocto.org</a> ping statistics ---<br>
&gt;&gt; 3 packets transmitted, 3 received, 0% packet loss, time 2002ms<br>
&gt;&gt; rtt min/avg/max/mdev =3D 14.617/15.214/16.188/0.694 ms<br>
&gt;&gt;<br>
&gt;&gt; vuser@fedora40-ssd-2TB:~/projects2/yocto/yocto_test2/bbb-yocto/pok=
y/build$ ls -l /etc/resolv.conf<br>
&gt;&gt; lrwxrwxrwx. 1 root root 39 Jul 18=C2=A0 2022 /etc/resolv.conf -&gt=
; ../run/systemd/resolve/stub-resolv.conf<br>
&gt;&gt;<br>
&gt;&gt; Zee<br>
&gt;&gt; _______<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; On Mon, Jun 3, 2024 at 4:52=E2=80=AFPM Alexander Kanavin via <a hr=
ef=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">l=
ists.yoctoproject.org</a> &lt;alex.kanavin=3D<a href=3D"mailto:gmail.com@li=
sts.yoctoproject.org" target=3D"_blank">gmail.com@lists.yoctoproject.org</a=
>&gt; wrote:<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Yes please; can you send a patch for master?<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; Alex<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; On Mon, 3 Jun 2024 at 16:48, Ayoub Zaki via <a href=3D"http://=
lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctopro=
ject.org</a><br>
&gt;&gt;&gt; &lt;ayoub.zaki=3D<a href=3D"mailto:googlemail.com@lists.yoctop=
roject.org" target=3D"_blank">googlemail.com@lists.yoctoproject.org</a>&gt;=
 wrote:<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Hello,<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; after upgrading to scarthgap, I noticed that the name res=
olution doesn&#39;t work anymore:<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; ~ # ping <a href=3D"http://yocto.org" rel=3D"noreferrer" =
target=3D"_blank">yocto.org</a><br>
&gt;&gt;&gt; &gt; ping: bad address &#39;<a href=3D"http://yocto.org" rel=
=3D"noreferrer" target=3D"_blank">yocto.org</a>&#39;<br>
&gt;&gt;&gt; &gt; ~ #<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; ~ # ping 217.160.0.14<br>
&gt;&gt;&gt; &gt; PING 217.160.0.14 (217.160.0.14): 56 data bytes<br>
&gt;&gt;&gt; &gt; 64 bytes from <a href=3D"http://217.160.0.14" rel=3D"nore=
ferrer" target=3D"_blank">217.160.0.14</a>: seq=3D0 ttl=3D57 time=3D24.174 =
ms<br>
&gt;&gt;&gt; &gt; 64 bytes from <a href=3D"http://217.160.0.14" rel=3D"nore=
ferrer" target=3D"_blank">217.160.0.14</a>: seq=3D1 ttl=3D57 time=3D19.452 =
ms<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; --- 217.160.0.14 ping statistics ---<br>
&gt;&gt;&gt; &gt; 2 packets transmitted, 2 packets received, 0% packet loss=
<br>
&gt;&gt;&gt; &gt; round-trip min/avg/max =3D 19.452/21.813/24.174 ms<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; ~ # ls -l /etc/resolv.conf<br>
&gt;&gt;&gt; &gt; lrwxrwxrwx=C2=A0 =C2=A0 1 root=C2=A0 =C2=A0 =C2=A0root=C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 20 Mar=C2=A0 9=C2=A0 2018 /etc/resol=
v.conf -&gt; /var/run/resolv.conf<br>
&gt;&gt;&gt; &gt; ~ # cat /var/run/resolv.conf<br>
&gt;&gt;&gt; &gt; cat: can&#39;t open &#39;/var/run/resolv.conf&#39;: No su=
ch file or directory<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; After linking manually :<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; ~ # ln -sf /etc/resolv-conf.systemd /etc/resolv.conf<br>
&gt;&gt;&gt; &gt; ~ #<br>
&gt;&gt;&gt; &gt; ~ #<br>
&gt;&gt;&gt; &gt; ~ # ping <a href=3D"http://yocto.org" rel=3D"noreferrer" =
target=3D"_blank">yocto.org</a><br>
&gt;&gt;&gt; &gt; PING <a href=3D"http://yocto.org" rel=3D"noreferrer" targ=
et=3D"_blank">yocto.org</a> (217.160.0.14): 56 data bytes<br>
&gt;&gt;&gt; &gt; 64 bytes from <a href=3D"http://217.160.0.14" rel=3D"nore=
ferrer" target=3D"_blank">217.160.0.14</a>: seq=3D0 ttl=3D57 time=3D17.577 =
ms<br>
&gt;&gt;&gt; &gt; 64 bytes from <a href=3D"http://217.160.0.14" rel=3D"nore=
ferrer" target=3D"_blank">217.160.0.14</a>: seq=3D1 ttl=3D57 time=3D18.716 =
ms<br>
&gt;&gt;&gt; &gt; ^C<br>
&gt;&gt;&gt; &gt; --- <a href=3D"http://yocto.org" rel=3D"noreferrer" targe=
t=3D"_blank">yocto.org</a> ping statistics ---<br>
&gt;&gt;&gt; &gt; 2 packets transmitted, 2 packets received, 0% packet loss=
<br>
&gt;&gt;&gt; &gt; round-trip min/avg/max =3D 17.577/18.146/18.716 ms<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; shouldn&#39;t be that added in the systemd recipe :<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; <a href=3D"https://git.yoctoproject.org/poky/tree/meta/re=
cipes-core/systemd/systemd_255.4.bb?h=3Dscarthgap#n352" rel=3D"noreferrer" =
target=3D"_blank">https://git.yoctoproject.org/poky/tree/meta/recipes-core/=
systemd/systemd_255.4.bb?h=3Dscarthgap#n352</a><br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt; Best regards<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt; &gt;<br>
&gt;&gt;&gt;<br>
&gt;&gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt;&gt; Links: You receive all messages sent to this group.<br>
&gt;&gt;&gt; View/Reply Online (#63261): <a href=3D"https://lists.yoctoproj=
ect.org/g/yocto/message/63261" rel=3D"noreferrer" target=3D"_blank">https:/=
/lists.yoctoproject.org/g/yocto/message/63261</a><br>
&gt;&gt;&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/=
106463010/3618681" rel=3D"noreferrer" target=3D"_blank">https://lists.yocto=
project.org/mt/106463010/3618681</a><br>
&gt;&gt;&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoprojec=
t.org" target=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt;&gt;&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto=
/unsub" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=
=3D"_blank">zoran.stojsavljevic@gmail.com</a>]<br>
&gt;&gt;&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;&gt;&gt;<br>
</blockquote></div>

--000000000000296e2f061a102f77--

