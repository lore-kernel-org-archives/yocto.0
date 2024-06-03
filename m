Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62429C25B76
	for <webhook@archiver.kernel.org>; Mon,  3 Jun 2024 16:20:38 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web10.87782.1717430989838590204
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Jun 2024 09:09:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=jwEyxvQo;
 spf=pass (domain: gmail.com, ip: 209.85.216.44, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-2c24115469bso637156a91.0
        for <yocto@lists.yoctoproject.org>; Mon, 03 Jun 2024 09:09:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717430989; x=1718035789; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PoGfyRUz3/uZsXgUHM4fGjINRwWcqV2ZN7G7xrYoeoU=;
        b=jwEyxvQoh+hTHJ6VvBuLczqRV6f2NYUqAX6wevYIqhOS4G4VGTrgg9h6lKXH2upXQd
         KIyJfqmKuTBIvmfiHRU1Jv3vQVZdKIJBUMMXf4R3jx5OvfowzfUkcwDY0zlJevysJyGd
         3OgcFs56lF6BD8IATh+xbXYgpUQQw6G7q/WDL1MKhJxwRVNt5e/QJg1F71XkYdIrVba+
         qRozFFXtO85QZM0S3cMk1c8QDHF/8TlVT5TairbOXcCLrgQBlOw0mS7Ep3a8L0qg9C4I
         /dMseVRF4l8rKcEaO8O95s6h/dSkw03RiCjyunPRM3b6d4SLMFhrp7edgk65+x3wbvYx
         NKHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717430989; x=1718035789;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PoGfyRUz3/uZsXgUHM4fGjINRwWcqV2ZN7G7xrYoeoU=;
        b=chz44xVSIreG/ax9eDfqSiFv/Th7ifWBAnxqQ9msUoAYqJt9ssDrVfUvgX6gGOj7tw
         F5yt+HC7jtEFeP5ixVPRaHyLp46DaY1R9sCXn7MKcXWvFmW8NFqsQ8/oBxokikKKRvJb
         z4DM3y2ImIiHV897eh7IDgor0Y6EPPFNJgTEIN2QDEUXUtuynnWsgqB1/73drTA9vAuk
         Bj7WISFSjROe7ePWYt9qgV7ricCfzs+xz25jvLsQJsw4VMN/cAopAsQx0KdiI1iZ8SES
         pweRDC12rhJChE1qjAFbIj+1eZmD+mAmz2M17khcPtAR1MRKVPNGWaUZLpJ+IM0Ynnoa
         8pog==
X-Gm-Message-State: AOJu0Yz3PvFuMg3tYQj0en93vVP4Kzd5sGhDGtT2pUQ4jaGrE1cqcgv8
	9wjwyK7MeGr5MwGPPWZAB18MGGd9QCjThzg/0xSmGMFWZ8WuA7qh5McdOcaZQJCGq4uXU+5ALBE
	jAUJXboeGKILnA8fVKKwsDKGC4gFhNpCH
X-Google-Smtp-Source: AGHT+IELAohXuPS1pFaVoPndDMaYSEUK3hwhlz5Lso3JRfTihTbG6xLao9cdkomM/c+krNDdN8nfIVweE5o5UMjHhgk=
X-Received: by 2002:a17:90b:3647:b0:2bd:f4ba:fc3 with SMTP id
 98e67ed59e1d1-2c2530786b4mr143477a91.7.1717430988397; Mon, 03 Jun 2024
 09:09:48 -0700 (PDT)
MIME-Version: 1.0
References: <CA+-BmJZxdiOzpTs9j+WFWNnn-wtAH1zdUZdQQq9HniMhFij1+A@mail.gmail.com>
 <CANNYZj8Q5gGPAjcftrJJ4w601b26s65eVc0d4BhiK2Hwkbe+=g@mail.gmail.com>
In-Reply-To: <CANNYZj8Q5gGPAjcftrJJ4w601b26s65eVc0d4BhiK2Hwkbe+=g@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Mon, 3 Jun 2024 18:09:35 +0200
Message-ID: <CAGAf8Lz0_XwW=BOnQJYdFBUwe8ecuk658gjXQeUMH65fuMwCeQ@mail.gmail.com>
Subject: Re: [yocto] Systemd resolv.conf
To: yocto@lists.yoctoproject.org, alex.kanavin@gmail.com
Cc: ayoub.zaki@googlemail.com
Content-Type: multipart/alternative; boundary="000000000000fd654e0619fe8fd3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Jun 2024 16:20:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63262

--000000000000fd654e0619fe8fd3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Interesting...
_______

vuser@fedora40-ssd-2TB:~/projects2/yocto/yocto_test2/bbb-yocto/poky/build$
git status
On branch scarthgap
Your branch is up to date with 'origin/scarthgap'.

Changes not staged for commit:
  (use "git add <file>..." to update what will be committed)
  (use "git restore <file>..." to discard changes in working directory)
    modified:   ../meta/recipes-core/images/core-image-base.bb
    modified:   ../meta/recipes-core/images/core-image-minimal.bb
    modified:
../meta/recipes-extended/cracklib/cracklib/0001-packlib.c-support-dictionar=
y-byte-order-dependent.patch

Untracked files:
  (use "git add <file>..." to include in what will be committed)
    ../meta/recipes-core/images/core-image-base.bb.genesis
    ../meta/recipes-core/images/core-image-minimal.bb.genesis

no changes added to commit (use "git add" and/or "git commit -a")

vuser@fedora40-ssd-2TB:~/projects2/yocto/yocto_test2/bbb-yocto/poky/build$
ping yocto.org
PING yocto.org (217.160.0.14) 56(84) bytes of data.
64 bytes from 217-160-0-14.elastic-ssl.ui-r.com (217.160.0.14): icmp_seq=3D=
1
ttl=3D57 time=3D16.2 ms
64 bytes from 217-160-0-14.elastic-ssl.ui-r.com (217.160.0.14): icmp_seq=3D=
2
ttl=3D57 time=3D14.6 ms
64 bytes from 217-160-0-14.elastic-ssl.ui-r.com (217.160.0.14): icmp_seq=3D=
3
ttl=3D57 time=3D14.8 ms
^C
--- yocto.org ping statistics ---
3 packets transmitted, 3 received, 0% packet loss, time 2002ms
rtt min/avg/max/mdev =3D 14.617/15.214/16.188/0.694 ms

vuser@fedora40-ssd-2TB:~/projects2/yocto/yocto_test2/bbb-yocto/poky/build$
ls -l /etc/resolv.conf
lrwxrwxrwx. 1 root root 39 Jul 18  2022 /etc/resolv.conf ->
../run/systemd/resolve/stub-resolv.conf

Zee
_______


On Mon, Jun 3, 2024 at 4:52=E2=80=AFPM Alexander Kanavin via lists.yoctopro=
ject.org
<alex.kanavin=3Dgmail.com@lists.yoctoproject.org> wrote:

> Yes please; can you send a patch for master?
>
> Alex
>
> On Mon, 3 Jun 2024 at 16:48, Ayoub Zaki via lists.yoctoproject.org
> <ayoub.zaki=3Dgooglemail.com@lists.yoctoproject.org> wrote:
> >
> > Hello,
> >
> > after upgrading to scarthgap, I noticed that the name resolution doesn'=
t
> work anymore:
> >
> > ~ # ping yocto.org
> > ping: bad address 'yocto.org'
> > ~ #
> >
> > ~ # ping 217.160.0.14
> > PING 217.160.0.14 (217.160.0.14): 56 data bytes
> > 64 bytes from 217.160.0.14: seq=3D0 ttl=3D57 time=3D24.174 ms
> > 64 bytes from 217.160.0.14: seq=3D1 ttl=3D57 time=3D19.452 ms
> >
> > --- 217.160.0.14 ping statistics ---
> > 2 packets transmitted, 2 packets received, 0% packet loss
> > round-trip min/avg/max =3D 19.452/21.813/24.174 ms
> >
> >
> > ~ # ls -l /etc/resolv.conf
> > lrwxrwxrwx    1 root     root            20 Mar  9  2018
> /etc/resolv.conf -> /var/run/resolv.conf
> > ~ # cat /var/run/resolv.conf
> > cat: can't open '/var/run/resolv.conf': No such file or directory
> >
> >
> >
> > After linking manually :
> >
> > ~ # ln -sf /etc/resolv-conf.systemd /etc/resolv.conf
> > ~ #
> > ~ #
> > ~ # ping yocto.org
> > PING yocto.org (217.160.0.14): 56 data bytes
> > 64 bytes from 217.160.0.14: seq=3D0 ttl=3D57 time=3D17.577 ms
> > 64 bytes from 217.160.0.14: seq=3D1 ttl=3D57 time=3D18.716 ms
> > ^C
> > --- yocto.org ping statistics ---
> > 2 packets transmitted, 2 packets received, 0% packet loss
> > round-trip min/avg/max =3D 17.577/18.146/18.716 ms
> >
> >
> > shouldn't be that added in the systemd recipe :
> >
> >
> https://git.yoctoproject.org/poky/tree/meta/recipes-core/systemd/systemd_=
255.4.bb?h=3Dscarthgap#n352
> >
> > Best regards
> >
> >
> >
>
>=20
>
>

--000000000000fd654e0619fe8fd3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Interesting...</div><div><font size=3D"1">_______</fo=
nt></div><div><br></div>vuser@fedora40-ssd-2TB:~/projects2/yocto/yocto_test=
2/bbb-yocto/poky/build$ git status<br>On branch scarthgap<br>Your branch is=
 up to date with &#39;origin/scarthgap&#39;.<br><br>Changes not staged for =
commit:<br>=C2=A0 (use &quot;git add &lt;file&gt;...&quot; to update what w=
ill be committed)<br>=C2=A0 (use &quot;git restore &lt;file&gt;...&quot; to=
 discard changes in working directory)<br>=C2=A0 =C2=A0 modified: =C2=A0 ..=
/meta/recipes-core/images/<a href=3D"http://core-image-base.bb">core-image-=
base.bb</a><br>=C2=A0 =C2=A0 modified: =C2=A0 ../meta/recipes-core/images/<=
a href=3D"http://core-image-minimal.bb">core-image-minimal.bb</a><br>=C2=A0=
 =C2=A0 modified: =C2=A0 ../meta/recipes-extended/cracklib/cracklib/0001-pa=
cklib.c-support-dictionary-byte-order-dependent.patch<br><br>Untracked file=
s:<br>=C2=A0 (use &quot;git add &lt;file&gt;...&quot; to include in what wi=
ll be committed)<br>=C2=A0 =C2=A0 ../meta/recipes-core/images/core-image-ba=
se.bb.genesis<br>=C2=A0 =C2=A0 ../meta/recipes-core/images/core-image-minim=
al.bb.genesis<br><br><div>no changes added to commit (use &quot;git add&quo=
t; and/or &quot;git commit -a&quot;)</div><div><br></div>vuser@fedora40-ssd=
-2TB:~/projects2/yocto/yocto_test2/bbb-yocto/poky/build$ ping <a href=3D"ht=
tp://yocto.org">yocto.org</a><br>PING <a href=3D"http://yocto.org">yocto.or=
g</a> (217.160.0.14) 56(84) bytes of data.<br>64 bytes from <a href=3D"http=
://217-160-0-14.elastic-ssl.ui-r.com">217-160-0-14.elastic-ssl.ui-r.com</a>=
 (217.160.0.14): icmp_seq=3D1 ttl=3D57 time=3D16.2 ms<br>64 bytes from <a h=
ref=3D"http://217-160-0-14.elastic-ssl.ui-r.com">217-160-0-14.elastic-ssl.u=
i-r.com</a> (217.160.0.14): icmp_seq=3D2 ttl=3D57 time=3D14.6 ms<br>64 byte=
s from <a href=3D"http://217-160-0-14.elastic-ssl.ui-r.com">217-160-0-14.el=
astic-ssl.ui-r.com</a> (217.160.0.14): icmp_seq=3D3 ttl=3D57 time=3D14.8 ms=
<br>^C<br>--- <a href=3D"http://yocto.org">yocto.org</a> ping statistics --=
-<br>3 packets transmitted, 3 received, 0% packet loss, time 2002ms<br>rtt =
min/avg/max/mdev =3D 14.617/15.214/16.188/0.694 ms<br><div><br></div><div>v=
user@fedora40-ssd-2TB:~/projects2/yocto/yocto_test2/bbb-yocto/poky/build$ l=
s -l /etc/resolv.conf</div><div>lrwxrwxrwx. 1 root root 39 Jul 18 =C2=A0202=
2 /etc/resolv.conf -&gt; ../run/systemd/resolve/stub-resolv.conf</div><div>=
<br></div><div>Zee</div><div>_______</div></div><br><br><div class=3D"gmail=
_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 3, 2024 at 4:52=
=E2=80=AFPM Alexander Kanavin via <a href=3D"http://lists.yoctoproject.org"=
>lists.yoctoproject.org</a> &lt;alex.kanavin=3D<a href=3D"mailto:gmail.com@=
lists.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">Yes please; can you=
 send a patch for master?<br>
<br>
Alex<br>
<br>
On Mon, 3 Jun 2024 at 16:48, Ayoub Zaki via <a href=3D"http://lists.yoctopr=
oject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a><=
br>
&lt;ayoub.zaki=3D<a href=3D"mailto:googlemail.com@lists.yoctoproject.org" t=
arget=3D"_blank">googlemail.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello,<br>
&gt;<br>
&gt; after upgrading to scarthgap, I noticed that the name resolution doesn=
&#39;t work anymore:<br>
&gt;<br>
&gt; ~ # ping <a href=3D"http://yocto.org" rel=3D"noreferrer" target=3D"_bl=
ank">yocto.org</a><br>
&gt; ping: bad address &#39;<a href=3D"http://yocto.org" rel=3D"noreferrer"=
 target=3D"_blank">yocto.org</a>&#39;<br>
&gt; ~ #<br>
&gt;<br>
&gt; ~ # ping 217.160.0.14<br>
&gt; PING 217.160.0.14 (217.160.0.14): 56 data bytes<br>
&gt; 64 bytes from <a href=3D"http://217.160.0.14" rel=3D"noreferrer" targe=
t=3D"_blank">217.160.0.14</a>: seq=3D0 ttl=3D57 time=3D24.174 ms<br>
&gt; 64 bytes from <a href=3D"http://217.160.0.14" rel=3D"noreferrer" targe=
t=3D"_blank">217.160.0.14</a>: seq=3D1 ttl=3D57 time=3D19.452 ms<br>
&gt;<br>
&gt; --- 217.160.0.14 ping statistics ---<br>
&gt; 2 packets transmitted, 2 packets received, 0% packet loss<br>
&gt; round-trip min/avg/max =3D 19.452/21.813/24.174 ms<br>
&gt;<br>
&gt;<br>
&gt; ~ # ls -l /etc/resolv.conf<br>
&gt; lrwxrwxrwx=C2=A0 =C2=A0 1 root=C2=A0 =C2=A0 =C2=A0root=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 20 Mar=C2=A0 9=C2=A0 2018 /etc/resolv.conf -&gt=
; /var/run/resolv.conf<br>
&gt; ~ # cat /var/run/resolv.conf<br>
&gt; cat: can&#39;t open &#39;/var/run/resolv.conf&#39;: No such file or di=
rectory<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; After linking manually :<br>
&gt;<br>
&gt; ~ # ln -sf /etc/resolv-conf.systemd /etc/resolv.conf<br>
&gt; ~ #<br>
&gt; ~ #<br>
&gt; ~ # ping <a href=3D"http://yocto.org" rel=3D"noreferrer" target=3D"_bl=
ank">yocto.org</a><br>
&gt; PING <a href=3D"http://yocto.org" rel=3D"noreferrer" target=3D"_blank"=
>yocto.org</a> (217.160.0.14): 56 data bytes<br>
&gt; 64 bytes from <a href=3D"http://217.160.0.14" rel=3D"noreferrer" targe=
t=3D"_blank">217.160.0.14</a>: seq=3D0 ttl=3D57 time=3D17.577 ms<br>
&gt; 64 bytes from <a href=3D"http://217.160.0.14" rel=3D"noreferrer" targe=
t=3D"_blank">217.160.0.14</a>: seq=3D1 ttl=3D57 time=3D18.716 ms<br>
&gt; ^C<br>
&gt; --- <a href=3D"http://yocto.org" rel=3D"noreferrer" target=3D"_blank">=
yocto.org</a> ping statistics ---<br>
&gt; 2 packets transmitted, 2 packets received, 0% packet loss<br>
&gt; round-trip min/avg/max =3D 17.577/18.146/18.716 ms<br>
&gt;<br>
&gt;<br>
&gt; shouldn&#39;t be that added in the systemd recipe :<br>
&gt;<br>
&gt; <a href=3D"https://git.yoctoproject.org/poky/tree/meta/recipes-core/sy=
stemd/systemd_255.4.bb?h=3Dscarthgap#n352" rel=3D"noreferrer" target=3D"_bl=
ank">https://git.yoctoproject.org/poky/tree/meta/recipes-core/systemd/syste=
md_255.4.bb?h=3Dscarthgap#n352</a><br>
&gt;<br>
&gt; Best regards<br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
<br>
<br>
</blockquote></div>

--000000000000fd654e0619fe8fd3--

