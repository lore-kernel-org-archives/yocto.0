Return-Path: <ayoub.zaki@googlemail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 009C2C27C53
	for <webhook@archiver.kernel.org>; Fri,  7 Jun 2024 09:42:29 +0000 (UTC)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
 by mx.groups.io with SMTP id smtpd.web11.37816.1717753348283678981
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Jun 2024 02:42:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@googlemail.com header.s=20230601 header.b=S5UQEBBK;
 spf=pass (domain: googlemail.com, ip: 209.85.219.172, mailfrom: ayoub.zaki@googlemail.com)
Received: by mail-yb1-f172.google.com with SMTP id 3f1490d57ef6-dfaff6bf125so342841276.3
        for <yocto@lists.yoctoproject.org>; Fri, 07 Jun 2024 02:42:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1717753347; x=1718358147; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=O+xutMJaZq9L7Roj1IgLpSz88IhEGCVJN8RmF50kYJI=;
        b=S5UQEBBKZnt2twacKq4mXThso1WZsgASmgwGs7CDIAlnyQCJqLN/tyKMS9+jGG5zLL
         vJUjGKafLogGkSAZVm4WbxRaNzdEZVi3bIjaDz1wgX1t2N1ccJRM6Bje+cuJYNfVBQCk
         ZrlOOFKKT5MKfb7IYRPvI3IhGQp4RuFi5VruWd+qIXGwBJTytujoG7a3SoI0PWMAAKiF
         wPkPscb/bBcIfkJ+iVAK02V6AynTfftehq+/vBaNAQcZcgNWoNkXmIvL1+wPDCxyPe+P
         XAiz03TgosxzTEhIYRkfOWLb+JLMGWxLfk4Chm76jIS7XhLQGNFSWmj9mXOfp7Yy6xiK
         /FGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717753347; x=1718358147;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=O+xutMJaZq9L7Roj1IgLpSz88IhEGCVJN8RmF50kYJI=;
        b=e6FzMuEx+t7pNmAMVgdSbqX2qqkrQmdFOWbt0zWJ5jwqGdkoBBabLboUbluVUeN68h
         ByyIjFk+O+wKYk4mVFyWeonUnU4FIXIE4Gs2K8+EsHF6jzVABFXiOTiSeU81Bmz0pzWU
         GVgLpLtjmhRsnPEXTQ6LqtxglST1h1OhNiWpZeY9mj64AmHbspSTg6r6Cose4DvASohw
         +W5Mrxbo2VK7QrQ3fPrzbhEe6WwXktNsL6qy6ytdA4741fezdqERDhhx5VWCsj5o6YG/
         7sKhNZkmyinKMGe6Km4QI1Ey3a//NTmgQ8yt0a2DiefYpuK4/zeyr7Cm8K7Tdif2T84X
         ljTQ==
X-Gm-Message-State: AOJu0Yx+Ie915igv65lrH+AxlrIi3uowgUT7RcwoYra0omtdmL3NprAx
	XEXfwFvT+XdbM+9QjKn/9PXNVcpGYQWeg7djl3v28XXHbsAKSlgB5nZr3pZFh5I+r5R4gbCohaK
	sh7OSmgd1u44uEj/VqdjnIclV/sU=
X-Google-Smtp-Source: AGHT+IFEO4ilQVYznQ5rSWcWD2QkA1WY0ZO4bJ2D81WLGRwaYXRlLaYQsaQFhY9/ep+XqxV12uEJZGKWFBB/MATj3rM=
X-Received: by 2002:a25:6907:0:b0:dfa:7798:ef80 with SMTP id
 3f1490d57ef6-dfaf670a9aamr1880760276.59.1717753347267; Fri, 07 Jun 2024
 02:42:27 -0700 (PDT)
MIME-Version: 1.0
References: <CA+-BmJZxdiOzpTs9j+WFWNnn-wtAH1zdUZdQQq9HniMhFij1+A@mail.gmail.com>
 <CANNYZj8Q5gGPAjcftrJJ4w601b26s65eVc0d4BhiK2Hwkbe+=g@mail.gmail.com>
 <CAGAf8Lz0_XwW=BOnQJYdFBUwe8ecuk658gjXQeUMH65fuMwCeQ@mail.gmail.com>
 <CA+-BmJYEVSJxzxqQ3K4PU_UztRe4BzEufLRDsUcS_RkLv-mq+A@mail.gmail.com>
 <CAGAf8Lw4+XNTj24zLe61qY=11pvCQH8GFW-iMKaE5-OWeiv9Cg@mail.gmail.com>
 <CAGAf8LzCFhs0qVchNuHQP32O7hVBLg+vUHsxuU2Putfor8dgBg@mail.gmail.com>
 <CA+-BmJb33KhdbxSQREBnUtqLjNnPSMRbTXFN2w6yq9K_+krSPw@mail.gmail.com>
 <CA+-BmJbT9gnVoL9W6-KcpJ7oSS4=XFMEAB89yZa_OW8211m1bg@mail.gmail.com>
 <CA+-BmJYhD2906FW+jbwrj-kObghQO55Hkk17LLyX_gZmosdUfg@mail.gmail.com> <CA+-BmJYhvF08WLQXVh85S7HNi9hnrRpRkaVcXgNyRc7TkOe=BQ@mail.gmail.com>
In-Reply-To: <CA+-BmJYhvF08WLQXVh85S7HNi9hnrRpRkaVcXgNyRc7TkOe=BQ@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
Date: Fri, 7 Jun 2024 11:42:16 +0200
Message-ID: <CA+-BmJbTAbJd4tUxPZNfiRJ=9DmYyfCecz5XCjV4Ms78gwYNKA@mail.gmail.com>
Subject: Re: [yocto] Systemd resolv.conf
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Alexander Kanavin <alex.kanavin@gmail.com>
Content-Type: multipart/alternative; boundary="0000000000001366b0061a499e2f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Jun 2024 09:42:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63294

--0000000000001366b0061a499e2f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

This include file should be used instead:

include conf/distro/include/init-manager-systemd.inc


it looks like it set the right configuration

On Fri, Jun 7, 2024 at 11:35=E2=80=AFAM Ayoub Zaki <ayoub.zaki@googlemail.c=
om>
wrote:

> I set in my distro config VIRTUAL-RUNTIME_initscripts =3D "" to disable
> initscripts to be pulled in my image, thus the volatile config described
> above is gone.
>
> This is new in Scarthgap and causing conflict with systemd, it should be
> documented somewhere.
>
>
>
>
> On Tue, Jun 4, 2024 at 3:41=E2=80=AFPM Ayoub Zaki <ayoub.zaki@googlemail.=
com>
> wrote:
>
>> I added in my layer:
>>
>> recipes-core/initscripts/initscripts_%.bbappend
>>
>>
>> do_install:append() {
>>
>>     sed -i '/.*resolv.conf*/d' ${D}${sysconfdir}/default/volatiles/00_co=
re
>> }
>>
>> but this solves the problem only for my use case, I think something more
>> generic should be done here.
>>
>>
>> On Tue, Jun 4, 2024 at 3:16=E2=80=AFPM Ayoub Zaki <ayoub.zaki@googlemail=
.com>
>> wrote:
>>
>>> @alex.kanavin@gmail.com it looks like a serious regression in Yocto
>>> project.
>>> I cannot provide a patch right now, since I don't understand the
>>> background those latest changes introduced by enforcing smylinking of
>>> /etc/resolv.conf even for systemd
>>>
>>> On Tue, Jun 4, 2024 at 3:11=E2=80=AFPM Ayoub Zaki <ayoub.zaki@googlemai=
l.com>
>>> wrote:
>>>
>>>> No worries. thanks for checking
>>>>
>>>> On Tue, Jun 4, 2024 at 3:06=E2=80=AFPM Zoran Stojsavljevic <
>>>> zoran.stojsavljevic@gmail.com> wrote:
>>>>
>>>>> U R correct, Ayoub. I missed a yocto list.
>>>>>
>>>>> My bad. :-(
>>>>>
>>>>> Regards,
>>>>> Zee
>>>>>
>>>>> ---------- Forwarded message ---------
>>>>> From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
>>>>> Date: Tue, Jun 4, 2024 at 2:37=E2=80=AFPM
>>>>> Subject: Re: [yocto] Systemd resolv.conf
>>>>> To: Ayoub Zaki <ayoub.zaki@googlemail.com>
>>>>>
>>>>> I did not know that you were talking about a target?!
>>>>>
>>>>> You should clearly point out what target platform U R using and talk
>>>>> 'bout, and try to describe the problem in detail.
>>>>>
>>>>> At least I am trying not to focus on my inner self when I post, rathe=
r
>>>>> on the outside public view since people reading your @ are not sure
>>>>> what is going on and where is the problem?
>>>>>
>>>>> Zee
>>>>> _______
>>>>>
>>>>> On Tue, Jun 4, 2024 at 2:16=E2=80=AFPM Ayoub Zaki <ayoub.zaki@googlem=
ail.com>
>>>>> wrote:
>>>>> >
>>>>> > I don't get your point ! you are pinging from your host ! What does
>>>>> this have to do with the described problem ?!
>>>>> >
>>>>> > On Mon, Jun 3, 2024 at 6:09=E2=80=AFPM Zoran Stojsavljevic <
>>>>> zoran.stojsavljevic@gmail.com> wrote:
>>>>> >>
>>>>> >> Interesting...
>>>>> >> _______
>>>>> >>
>>>>> >> vuser@fedora40-ssd-2TB:~/projects2/yocto/yocto_test2/bbb-yocto/pok=
y/build$
>>>>> git status
>>>>> >> On branch scarthgap
>>>>> >> Your branch is up to date with 'origin/scarthgap'.
>>>>> >>
>>>>> >> Changes not staged for commit:
>>>>> >>   (use "git add <file>..." to update what will be committed)
>>>>> >>   (use "git restore <file>..." to discard changes in working
>>>>> directory)
>>>>> >>     modified:   ../meta/recipes-core/images/core-image-base.bb
>>>>> >>     modified:   ../meta/recipes-core/images/core-image-minimal.bb
>>>>> >>     modified:
>>>>>  ../meta/recipes-extended/cracklib/cracklib/0001-packlib.c-support-di=
ctionary-byte-order-dependent.patch
>>>>> >>
>>>>> >> Untracked files:
>>>>> >>   (use "git add <file>..." to include in what will be committed)
>>>>> >>     ../meta/recipes-core/images/core-image-base.bb.genesis
>>>>> >>     ../meta/recipes-core/images/core-image-minimal.bb.genesis
>>>>> >>
>>>>> >> no changes added to commit (use "git add" and/or "git commit -a")
>>>>> >>
>>>>> >> vuser@fedora40-ssd-2TB:~/projects2/yocto/yocto_test2/bbb-yocto/pok=
y/build$
>>>>> ping yocto.org
>>>>> >> PING yocto.org (217.160.0.14) 56(84) bytes of data.
>>>>> >> 64 bytes from 217-160-0-14.elastic-ssl.ui-r.com (217.160.0.14):
>>>>> icmp_seq=3D1 ttl=3D57 time=3D16.2 ms
>>>>> >> 64 bytes from 217-160-0-14.elastic-ssl.ui-r.com (217.160.0.14):
>>>>> icmp_seq=3D2 ttl=3D57 time=3D14.6 ms
>>>>> >> 64 bytes from 217-160-0-14.elastic-ssl.ui-r.com (217.160.0.14):
>>>>> icmp_seq=3D3 ttl=3D57 time=3D14.8 ms
>>>>> >> ^C
>>>>> >> --- yocto.org ping statistics ---
>>>>> >> 3 packets transmitted, 3 received, 0% packet loss, time 2002ms
>>>>> >> rtt min/avg/max/mdev =3D 14.617/15.214/16.188/0.694 ms
>>>>> >>
>>>>> >> vuser@fedora40-ssd-2TB:~/projects2/yocto/yocto_test2/bbb-yocto/pok=
y/build$
>>>>> ls -l /etc/resolv.conf
>>>>> >> lrwxrwxrwx. 1 root root 39 Jul 18  2022 /etc/resolv.conf ->
>>>>> ../run/systemd/resolve/stub-resolv.conf
>>>>> >>
>>>>> >> Zee
>>>>> >> _______
>>>>> >>
>>>>> >>
>>>>> >> On Mon, Jun 3, 2024 at 4:52=E2=80=AFPM Alexander Kanavin via
>>>>> lists.yoctoproject.org <alex.kanavin=3Dgmail.com@lists.yoctoproject.o=
rg>
>>>>> wrote:
>>>>> >>>
>>>>> >>> Yes please; can you send a patch for master?
>>>>> >>>
>>>>> >>> Alex
>>>>> >>>
>>>>> >>> On Mon, 3 Jun 2024 at 16:48, Ayoub Zaki via lists.yoctoproject.or=
g
>>>>> >>> <ayoub.zaki=3Dgooglemail.com@lists.yoctoproject.org> wrote:
>>>>> >>> >
>>>>> >>> > Hello,
>>>>> >>> >
>>>>> >>> > after upgrading to scarthgap, I noticed that the name resolutio=
n
>>>>> doesn't work anymore:
>>>>> >>> >
>>>>> >>> > ~ # ping yocto.org
>>>>> >>> > ping: bad address 'yocto.org'
>>>>> >>> > ~ #
>>>>> >>> >
>>>>> >>> > ~ # ping 217.160.0.14
>>>>> >>> > PING 217.160.0.14 (217.160.0.14): 56 data bytes
>>>>> >>> > 64 bytes from 217.160.0.14: seq=3D0 ttl=3D57 time=3D24.174 ms
>>>>> >>> > 64 bytes from 217.160.0.14: seq=3D1 ttl=3D57 time=3D19.452 ms
>>>>> >>> >
>>>>> >>> > --- 217.160.0.14 ping statistics ---
>>>>> >>> > 2 packets transmitted, 2 packets received, 0% packet loss
>>>>> >>> > round-trip min/avg/max =3D 19.452/21.813/24.174 ms
>>>>> >>> >
>>>>> >>> >
>>>>> >>> > ~ # ls -l /etc/resolv.conf
>>>>> >>> > lrwxrwxrwx    1 root     root            20 Mar  9  2018
>>>>> /etc/resolv.conf -> /var/run/resolv.conf
>>>>> >>> > ~ # cat /var/run/resolv.conf
>>>>> >>> > cat: can't open '/var/run/resolv.conf': No such file or directo=
ry
>>>>> >>> >
>>>>> >>> >
>>>>> >>> >
>>>>> >>> > After linking manually :
>>>>> >>> >
>>>>> >>> > ~ # ln -sf /etc/resolv-conf.systemd /etc/resolv.conf
>>>>> >>> > ~ #
>>>>> >>> > ~ #
>>>>> >>> > ~ # ping yocto.org
>>>>> >>> > PING yocto.org (217.160.0.14): 56 data bytes
>>>>> >>> > 64 bytes from 217.160.0.14: seq=3D0 ttl=3D57 time=3D17.577 ms
>>>>> >>> > 64 bytes from 217.160.0.14: seq=3D1 ttl=3D57 time=3D18.716 ms
>>>>> >>> > ^C
>>>>> >>> > --- yocto.org ping statistics ---
>>>>> >>> > 2 packets transmitted, 2 packets received, 0% packet loss
>>>>> >>> > round-trip min/avg/max =3D 17.577/18.146/18.716 ms
>>>>> >>> >
>>>>> >>> >
>>>>> >>> > shouldn't be that added in the systemd recipe :
>>>>> >>> >
>>>>> >>> >
>>>>> https://git.yoctoproject.org/poky/tree/meta/recipes-core/systemd/syst=
emd_255.4.bb?h=3Dscarthgap#n352
>>>>> >>> >
>>>>> >>> > Best regards
>>>>> >>> >
>>>>> >>> >
>>>>> >>> >
>>>>> >>>
>>>>> >>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>>>> >>> Links: You receive all messages sent to this group.
>>>>> >>> View/Reply Online (#63261):
>>>>> https://lists.yoctoproject.org/g/yocto/message/63261
>>>>> >>> Mute This Topic:
>>>>> https://lists.yoctoproject.org/mt/106463010/3618681
>>>>> >>> Group Owner: yocto+owner@lists.yoctoproject.org
>>>>> >>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>>>>> zoran.stojsavljevic@gmail.com]
>>>>> >>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>>>> >>>
>>>>>
>>>>

--0000000000001366b0061a499e2f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>This include file should be used inste=
ad:</div><div><br>include conf/distro/include/init-manager-systemd.inc<br><=
/div><div><br></div><div><br></div><div>it looks like it set the right conf=
iguration</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Jun 7, 2024 at 11:35=E2=80=AFAM Ayoub Zaki &lt;<a h=
ref=3D"mailto:ayoub.zaki@googlemail.com">ayoub.zaki@googlemail.com</a>&gt; =
wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=
=3D"ltr">I set in my distro config=C2=A0<span style=3D"color:rgb(23,43,77);=
font-family:ui-monospace,SFMono-Medium,&quot;SF Mono&quot;,&quot;Segoe UI M=
ono&quot;,&quot;Roboto Mono&quot;,&quot;Ubuntu Mono&quot;,Menlo,Consolas,Co=
urier,monospace;font-size:12px">VIRTUAL-RUNTIME_initscripts =3D &quot;&quot=
; to disable initscripts to be pulled in my image, thus the volatile config=
 described above is gone.</span><div><font color=3D"#172b4d" face=3D"ui-mon=
ospace, SFMono-Medium, SF Mono, Segoe UI Mono, Roboto Mono, Ubuntu Mono, Me=
nlo, Consolas, Courier, monospace"><span style=3D"font-size:12px"><br></spa=
n></font></div><div><font color=3D"#172b4d" face=3D"ui-monospace, SFMono-Me=
dium, SF Mono, Segoe UI Mono, Roboto Mono, Ubuntu Mono, Menlo, Consolas, Co=
urier, monospace"><span style=3D"font-size:12px">This is new in Scarthgap=
=C2=A0and causing conflict with systemd, it should be documented somewhere.=
</span></font></div><div><font color=3D"#172b4d" face=3D"ui-monospace, SFMo=
no-Medium, SF Mono, Segoe UI Mono, Roboto Mono, Ubuntu Mono, Menlo, Consola=
s, Courier, monospace"><span style=3D"font-size:12px"><br></span></font><sp=
an style=3D"color:rgb(23,43,77);font-family:ui-monospace,SFMono-Medium,&quo=
t;SF Mono&quot;,&quot;Segoe UI Mono&quot;,&quot;Roboto Mono&quot;,&quot;Ubu=
ntu Mono&quot;,Menlo,Consolas,Courier,monospace;font-size:12px"></span><div=
><pre style=3D"margin-top:0px;margin-bottom:0px;padding:0px 8px;height:20px=
;width:1254px;box-sizing:border-box;font-family:ui-monospace,SFMono-Medium,=
&quot;SF Mono&quot;,&quot;Segoe UI Mono&quot;,&quot;Roboto Mono&quot;,&quot=
;Ubuntu Mono&quot;,Menlo,Consolas,Courier,monospace;font-size:12px;line-hei=
ght:20px;color:rgb(23,43,77)"><span aria-label=3D"Added: VIRTUAL-RUNTIME_in=
itscripts =3D &quot;&quot;" style=3D"display:inline-block"><ins style=3D"pa=
dding:3px 0px;text-decoration-line:none;display:inline"><br></ins></span></=
pre><pre style=3D"margin-top:0px;margin-bottom:0px;padding:0px 8px;height:2=
0px;width:1254px;box-sizing:border-box;font-family:ui-monospace,SFMono-Medi=
um,&quot;SF Mono&quot;,&quot;Segoe UI Mono&quot;,&quot;Roboto Mono&quot;,&q=
uot;Ubuntu Mono&quot;,Menlo,Consolas,Courier,monospace;font-size:12px;line-=
height:20px;color:rgb(23,43,77)"><span aria-label=3D"Added: VIRTUAL-RUNTIME=
_initscripts =3D &quot;&quot;" style=3D"display:inline-block"><ins style=3D=
"padding:3px 0px;text-decoration-line:none;display:inline"><br></ins></span=
></pre></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Tue, Jun 4, 2024 at 3:41=E2=80=AFPM Ayoub Zaki &lt;<a=
 href=3D"mailto:ayoub.zaki@googlemail.com" target=3D"_blank">ayoub.zaki@goo=
glemail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">I added in my layer:<div><br></div><div>recipes=
-core/initscripts/initscripts_%.bbappend<br><div><br></div><div><br></div><=
div>do_install:append() {<br><br>=C2=A0 =C2=A0 sed -i &#39;/.*resolv.conf*/=
d&#39; ${D}${sysconfdir}/default/volatiles/00_core<br>}<br></div></div><div=
><br></div><div>but this solves the problem only for my use case, I think s=
omething more generic should be done here.</div><div><br></div></div><br><d=
iv class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun =
4, 2024 at 3:16=E2=80=AFPM Ayoub Zaki &lt;<a href=3D"mailto:ayoub.zaki@goog=
lemail.com" target=3D"_blank">ayoub.zaki@googlemail.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bo=
rder-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">@<a=
 href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmai=
l.com</a> it looks like a serious=C2=A0regression in Yocto project.<div>I c=
annot provide a patch right=C2=A0now, since I don&#39;t=C2=A0understand the=
 background=C2=A0those latest changes=C2=A0introduced=C2=A0by enforcing smy=
linking of /etc/resolv.conf even for systemd</div></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 4, 2024 at 3:=
11=E2=80=AFPM Ayoub Zaki &lt;<a href=3D"mailto:ayoub.zaki@googlemail.com" t=
arget=3D"_blank">ayoub.zaki@googlemail.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">No worries. than=
ks for checking<br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Tue, Jun 4, 2024 at 3:06=E2=80=AFPM Zoran Stojsavljev=
ic &lt;<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_blank">z=
oran.stojsavljevic@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">U R correct, Ayoub. I missed a yocto list.<br>
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
</blockquote></div>
</blockquote></div>
</blockquote></div>
</blockquote></div>

--0000000000001366b0061a499e2f--

