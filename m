Return-Path: <ayoub.zaki@googlemail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F0AD6C25B78
	for <webhook@archiver.kernel.org>; Tue,  4 Jun 2024 12:16:50 +0000 (UTC)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
 by mx.groups.io with SMTP id smtpd.web11.19784.1717503400646087848
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jun 2024 05:16:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@googlemail.com header.s=20230601 header.b=Vdm7LFA2;
 spf=pass (domain: googlemail.com, ip: 209.85.219.179, mailfrom: ayoub.zaki@googlemail.com)
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-dfa71ded97bso2998559276.1
        for <yocto@lists.yoctoproject.org>; Tue, 04 Jun 2024 05:16:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1717503400; x=1718108200; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OYpKbngqzU4ulArEP/LdF7zz1lSP2NbUH09h4bQyQUM=;
        b=Vdm7LFA2R0TPf6mtLYPKWAVh9Sx+asNWFqxaiikd33vnUppLZ+MsL5Ex/EBPg2e50k
         JjyUxEKEaWeuIqLLYf85En9TKAJ54SjsHdJ/ketdb9IAjxf+0dtGXqf32XNijVmSDu1G
         YNs5ePZ1AgSgpj0886awWlB6wTvQvgJpM6cxqcUZQRJhIJhG2MHdGhklRE3VSkx+Iggk
         urq9TGK3THy2+VazcpvL5IZyWhZbU83j+1jyxdcnmLqYG2AhR/CrBUKdl5KOZaVUFv07
         0EViZpZ5bDFZhpx3Gf8keCavAEFow5xCIywxpxLuR1r9P178VSpO2jC9/n57CA3BcWCz
         lLKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717503400; x=1718108200;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OYpKbngqzU4ulArEP/LdF7zz1lSP2NbUH09h4bQyQUM=;
        b=H4rX8nLJPTecld5ohLHPUyQkhKEOxhKuoWe8jvIJb6AJPvsDRkw5371qtozX5rIsWl
         qPa1tds9Xbs5ry2NZS0oJ2683YGJLykiVOL3DeFbcP6URa0xjuv+ocoYbz/a0x04hH1f
         L9rbUYUfefZAaWJUDvwF+l3+fQKjrQUzJdYWFQin1ZP7ZF3u6hcubjoEV6Y2LOSsvA1o
         cV2zCcbM1l1BzZoohkknqPZGyVaOaTg8OazXqYghwequHzB1qtOyNI92TLE2yhMsUSqJ
         JjbNzWtmnTdSatAZujcIGdzho5UjyRa3oVuiPAgyVzaLsbZoJzZBrUwPemUcYpzutWf1
         pZpA==
X-Forwarded-Encrypted: i=1; AJvYcCUMjmVn02t3H3qwqp5P5SMnv1BYI5YDxxnBEw25hhE47VzcnXnBk4Tba2aPuAQEfzHE6WqFWcMJ+LTCWIRZjLkJXPqo7vCgeXBh6mbg
X-Gm-Message-State: AOJu0YwKMTXDCmd5IjiGJbhndFeL0bjlq19DHrc9819G+fB+6NWndjNQ
	bMcejFj17JxQnRxHDQ8q9C82Dw4kbx7K0aSbErhNMXGMNR2NuhWq7rC6R27k6IWM0oXJ69005cX
	4v8t1YYYfYteSYSuT9mLrTsx2hA8=
X-Google-Smtp-Source: AGHT+IEQ1/jByIuHvQdL3Gua5XeXOiUtovRMxVgjnIwR02DLhq5ijg45Gx77SydvYTml0EJ332yZhJefiwam1sKndTg=
X-Received: by 2002:a25:31d5:0:b0:dc6:c670:c957 with SMTP id
 3f1490d57ef6-dfab8b463b7mr1613325276.32.1717503399547; Tue, 04 Jun 2024
 05:16:39 -0700 (PDT)
MIME-Version: 1.0
References: <CA+-BmJZxdiOzpTs9j+WFWNnn-wtAH1zdUZdQQq9HniMhFij1+A@mail.gmail.com>
 <CANNYZj8Q5gGPAjcftrJJ4w601b26s65eVc0d4BhiK2Hwkbe+=g@mail.gmail.com> <CAGAf8Lz0_XwW=BOnQJYdFBUwe8ecuk658gjXQeUMH65fuMwCeQ@mail.gmail.com>
In-Reply-To: <CAGAf8Lz0_XwW=BOnQJYdFBUwe8ecuk658gjXQeUMH65fuMwCeQ@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
Date: Tue, 4 Jun 2024 14:16:27 +0200
Message-ID: <CA+-BmJYEVSJxzxqQ3K4PU_UztRe4BzEufLRDsUcS_RkLv-mq+A@mail.gmail.com>
Subject: Re: [yocto] Systemd resolv.conf
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000007ddab061a0f6c6e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jun 2024 12:16:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63273

--00000000000007ddab061a0f6c6e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I don't get your point ! you are pinging from your host ! What does this
have to do with the described problem ?!

On Mon, Jun 3, 2024 at 6:09=E2=80=AFPM Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> Interesting...
> _______
>
> vuser@fedora40-ssd-2TB:~/projects2/yocto/yocto_test2/bbb-yocto/poky/build=
$
> git status
> On branch scarthgap
> Your branch is up to date with 'origin/scarthgap'.
>
> Changes not staged for commit:
>   (use "git add <file>..." to update what will be committed)
>   (use "git restore <file>..." to discard changes in working directory)
>     modified:   ../meta/recipes-core/images/core-image-base.bb
>     modified:   ../meta/recipes-core/images/core-image-minimal.bb
>     modified:
> ../meta/recipes-extended/cracklib/cracklib/0001-packlib.c-support-diction=
ary-byte-order-dependent.patch
>
> Untracked files:
>   (use "git add <file>..." to include in what will be committed)
>     ../meta/recipes-core/images/core-image-base.bb.genesis
>     ../meta/recipes-core/images/core-image-minimal.bb.genesis
>
> no changes added to commit (use "git add" and/or "git commit -a")
>
> vuser@fedora40-ssd-2TB:~/projects2/yocto/yocto_test2/bbb-yocto/poky/build=
$
> ping yocto.org
> PING yocto.org (217.160.0.14) 56(84) bytes of data.
> 64 bytes from 217-160-0-14.elastic-ssl.ui-r.com (217.160.0.14):
> icmp_seq=3D1 ttl=3D57 time=3D16.2 ms
> 64 bytes from 217-160-0-14.elastic-ssl.ui-r.com (217.160.0.14):
> icmp_seq=3D2 ttl=3D57 time=3D14.6 ms
> 64 bytes from 217-160-0-14.elastic-ssl.ui-r.com (217.160.0.14):
> icmp_seq=3D3 ttl=3D57 time=3D14.8 ms
> ^C
> --- yocto.org ping statistics ---
> 3 packets transmitted, 3 received, 0% packet loss, time 2002ms
> rtt min/avg/max/mdev =3D 14.617/15.214/16.188/0.694 ms
>
> vuser@fedora40-ssd-2TB:~/projects2/yocto/yocto_test2/bbb-yocto/poky/build=
$
> ls -l /etc/resolv.conf
> lrwxrwxrwx. 1 root root 39 Jul 18  2022 /etc/resolv.conf ->
> ../run/systemd/resolve/stub-resolv.conf
>
> Zee
> _______
>
>
> On Mon, Jun 3, 2024 at 4:52=E2=80=AFPM Alexander Kanavin via
> lists.yoctoproject.org <alex.kanavin=3Dgmail.com@lists.yoctoproject.org>
> wrote:
>
>> Yes please; can you send a patch for master?
>>
>> Alex
>>
>> On Mon, 3 Jun 2024 at 16:48, Ayoub Zaki via lists.yoctoproject.org
>> <ayoub.zaki=3Dgooglemail.com@lists.yoctoproject.org> wrote:
>> >
>> > Hello,
>> >
>> > after upgrading to scarthgap, I noticed that the name resolution
>> doesn't work anymore:
>> >
>> > ~ # ping yocto.org
>> > ping: bad address 'yocto.org'
>> > ~ #
>> >
>> > ~ # ping 217.160.0.14
>> > PING 217.160.0.14 (217.160.0.14): 56 data bytes
>> > 64 bytes from 217.160.0.14: seq=3D0 ttl=3D57 time=3D24.174 ms
>> > 64 bytes from 217.160.0.14: seq=3D1 ttl=3D57 time=3D19.452 ms
>> >
>> > --- 217.160.0.14 ping statistics ---
>> > 2 packets transmitted, 2 packets received, 0% packet loss
>> > round-trip min/avg/max =3D 19.452/21.813/24.174 ms
>> >
>> >
>> > ~ # ls -l /etc/resolv.conf
>> > lrwxrwxrwx    1 root     root            20 Mar  9  2018
>> /etc/resolv.conf -> /var/run/resolv.conf
>> > ~ # cat /var/run/resolv.conf
>> > cat: can't open '/var/run/resolv.conf': No such file or directory
>> >
>> >
>> >
>> > After linking manually :
>> >
>> > ~ # ln -sf /etc/resolv-conf.systemd /etc/resolv.conf
>> > ~ #
>> > ~ #
>> > ~ # ping yocto.org
>> > PING yocto.org (217.160.0.14): 56 data bytes
>> > 64 bytes from 217.160.0.14: seq=3D0 ttl=3D57 time=3D17.577 ms
>> > 64 bytes from 217.160.0.14: seq=3D1 ttl=3D57 time=3D18.716 ms
>> > ^C
>> > --- yocto.org ping statistics ---
>> > 2 packets transmitted, 2 packets received, 0% packet loss
>> > round-trip min/avg/max =3D 17.577/18.146/18.716 ms
>> >
>> >
>> > shouldn't be that added in the systemd recipe :
>> >
>> >
>> https://git.yoctoproject.org/poky/tree/meta/recipes-core/systemd/systemd=
_255.4.bb?h=3Dscarthgap#n352
>> >
>> > Best regards
>> >
>> >
>> >
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> View/Reply Online (#63261):
>> https://lists.yoctoproject.org/g/yocto/message/63261
>> Mute This Topic: https://lists.yoctoproject.org/mt/106463010/3618681
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> zoran.stojsavljevic@gmail.com]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
>>

--00000000000007ddab061a0f6c6e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I don&#39;t get your point ! you are pinging from your hos=
t ! What does this have to do with the described problem ?!</div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Jun 3, 2=
024 at 6:09=E2=80=AFPM Zoran Stojsavljevic &lt;<a href=3D"mailto:zoran.stoj=
savljevic@gmail.com">zoran.stojsavljevic@gmail.com</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>Int=
eresting...</div><div><font size=3D"1">_______</font></div><div><br></div>v=
user@fedora40-ssd-2TB:~/projects2/yocto/yocto_test2/bbb-yocto/poky/build$ g=
it status<br>On branch scarthgap<br>Your branch is up to date with &#39;ori=
gin/scarthgap&#39;.<br><br>Changes not staged for commit:<br>=C2=A0 (use &q=
uot;git add &lt;file&gt;...&quot; to update what will be committed)<br>=C2=
=A0 (use &quot;git restore &lt;file&gt;...&quot; to discard changes in work=
ing directory)<br>=C2=A0 =C2=A0 modified: =C2=A0 ../meta/recipes-core/image=
s/<a href=3D"http://core-image-base.bb" target=3D"_blank">core-image-base.b=
b</a><br>=C2=A0 =C2=A0 modified: =C2=A0 ../meta/recipes-core/images/<a href=
=3D"http://core-image-minimal.bb" target=3D"_blank">core-image-minimal.bb</=
a><br>=C2=A0 =C2=A0 modified: =C2=A0 ../meta/recipes-extended/cracklib/crac=
klib/0001-packlib.c-support-dictionary-byte-order-dependent.patch<br><br>Un=
tracked files:<br>=C2=A0 (use &quot;git add &lt;file&gt;...&quot; to includ=
e in what will be committed)<br>=C2=A0 =C2=A0 ../meta/recipes-core/images/c=
ore-image-base.bb.genesis<br>=C2=A0 =C2=A0 ../meta/recipes-core/images/core=
-image-minimal.bb.genesis<br><br><div>no changes added to commit (use &quot=
;git add&quot; and/or &quot;git commit -a&quot;)</div><div><br></div>vuser@=
fedora40-ssd-2TB:~/projects2/yocto/yocto_test2/bbb-yocto/poky/build$ ping <=
a href=3D"http://yocto.org" target=3D"_blank">yocto.org</a><br>PING <a href=
=3D"http://yocto.org" target=3D"_blank">yocto.org</a> (217.160.0.14) 56(84)=
 bytes of data.<br>64 bytes from <a href=3D"http://217-160-0-14.elastic-ssl=
.ui-r.com" target=3D"_blank">217-160-0-14.elastic-ssl.ui-r.com</a> (217.160=
.0.14): icmp_seq=3D1 ttl=3D57 time=3D16.2 ms<br>64 bytes from <a href=3D"ht=
tp://217-160-0-14.elastic-ssl.ui-r.com" target=3D"_blank">217-160-0-14.elas=
tic-ssl.ui-r.com</a> (217.160.0.14): icmp_seq=3D2 ttl=3D57 time=3D14.6 ms<b=
r>64 bytes from <a href=3D"http://217-160-0-14.elastic-ssl.ui-r.com" target=
=3D"_blank">217-160-0-14.elastic-ssl.ui-r.com</a> (217.160.0.14): icmp_seq=
=3D3 ttl=3D57 time=3D14.8 ms<br>^C<br>--- <a href=3D"http://yocto.org" targ=
et=3D"_blank">yocto.org</a> ping statistics ---<br>3 packets transmitted, 3=
 received, 0% packet loss, time 2002ms<br>rtt min/avg/max/mdev =3D 14.617/1=
5.214/16.188/0.694 ms<br><div><br></div><div>vuser@fedora40-ssd-2TB:~/proje=
cts2/yocto/yocto_test2/bbb-yocto/poky/build$ ls -l /etc/resolv.conf</div><d=
iv>lrwxrwxrwx. 1 root root 39 Jul 18 =C2=A02022 /etc/resolv.conf -&gt; ../r=
un/systemd/resolve/stub-resolv.conf</div><div><br></div><div>Zee</div><div>=
_______</div></div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Mon, Jun 3, 2024 at 4:52=E2=80=AFPM Alexander Kanavin v=
ia <a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctop=
roject.org</a> &lt;alex.kanavin=3D<a href=3D"mailto:gmail.com@lists.yoctopr=
oject.org" target=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Yes please; ca=
n you send a patch for master?<br>
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
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63261): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63261" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63261</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/106463010/361=
8681" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/106463010/3618681</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank"=
>zoran.stojsavljevic@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>
</blockquote></div>

--00000000000007ddab061a0f6c6e--

