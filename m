Return-Path: <ayoub.zaki@googlemail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DD5BFC27C53
	for <webhook@archiver.kernel.org>; Fri,  7 Jun 2024 09:36:18 +0000 (UTC)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
 by mx.groups.io with SMTP id smtpd.web10.37685.1717752971857660457
 for <yocto@lists.yoctoproject.org>;
 Fri, 07 Jun 2024 02:36:12 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@googlemail.com header.s=20230601 header.b=l5mWUuY8;
 spf=pass (domain: googlemail.com, ip: 209.85.128.182, mailfrom: ayoub.zaki@googlemail.com)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-62a087c3a92so19337827b3.2
        for <yocto@lists.yoctoproject.org>; Fri, 07 Jun 2024 02:36:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1717752971; x=1718357771; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WeiqLprm+Vp5qYO5PTmv8RL5Lt04mspiPULad93Wu/4=;
        b=l5mWUuY8It6a+pgRgJMOEg+5ufva1DgdRtap+Ihv7s6kiOhWo+tVPA/UI478wHeQml
         ik1VKlLyHisq3Vq1Bz8xdOCaqH4Q5a30DyU3HiXnlGbnjrtfavB6EJ5+k1xyzFCXxUbd
         EhsUlg3UJTjr8/U0J93au4Zl1rkW6XILu/XHcL/uTu2B5dAkwHUQue3OatPQB6vtQQMY
         wuWFcbzwpIfdgB8e6iIwpCIdb3wd7MyG971oMDm+N25WLCasyi9r/B+AsCaM8Eqh3FaS
         cDAK+9oO1sE0hcdmlQS6/jjQ+BpDGU5pB2+U7KhjteKwQv2VTlO7z3os3gAmXcmtCxMG
         Omjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717752971; x=1718357771;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WeiqLprm+Vp5qYO5PTmv8RL5Lt04mspiPULad93Wu/4=;
        b=RMUT1XXH2KbEMhNBT/+qrQTwevvWKY6hv6/HKbmZFh8EGSa1Bu/7rYlv0A1eEjztSr
         wIHhI6t7p+oq9Hpq9kzeOjb77aaq2mMhNMjrwwk6UqjRbHpNeAHRi8BXEdgLwoaqCFei
         CzPsCKasq+5jnU836DWJ5+47MaW7qhYdPu4UsKllCXOeQx+I4XuaQiwp8Qfh7QKZid2w
         VOIYGXEWulIoPYKZseDQiB26Kx+/4wasz/qCc9Yn51Kc87piQfWDo394IunujjfxL2mp
         lh3eo6Ttpld6e4c57WSmoODcb646GdNWUWerOGXA1J3OR03cbPLmGrjQoFbngD8LVE0S
         WJhA==
X-Gm-Message-State: AOJu0YyC8pCo/p8auBk3DqVARz5IcKvxFaDOHMFK4/rOGLy9VxeifNRc
	YtAy6zWepoykI7yGJvCRqxJVOCGLouZ4UEDSTo73G2e3jroQq/uuCqJ7CIGfMrQp9SmmF4wHTLc
	hWVvzygAKPiqtgYh426+uolQyqIs=
X-Google-Smtp-Source: AGHT+IF3a0B8Nm6aCQ5iPCD6No8yKTTuFUew/KnvEcUJEupSJBVGN4YTI+i1aXzBlISbuzHNxJtemyDIQJrkEq95aeQ=
X-Received: by 2002:a25:db8c:0:b0:dfa:fd9b:ad1d with SMTP id
 3f1490d57ef6-dfafd9bb513mr1007332276.9.1717752970702; Fri, 07 Jun 2024
 02:36:10 -0700 (PDT)
MIME-Version: 1.0
References: <CA+-BmJZxdiOzpTs9j+WFWNnn-wtAH1zdUZdQQq9HniMhFij1+A@mail.gmail.com>
 <CANNYZj8Q5gGPAjcftrJJ4w601b26s65eVc0d4BhiK2Hwkbe+=g@mail.gmail.com>
 <CAGAf8Lz0_XwW=BOnQJYdFBUwe8ecuk658gjXQeUMH65fuMwCeQ@mail.gmail.com>
 <CA+-BmJYEVSJxzxqQ3K4PU_UztRe4BzEufLRDsUcS_RkLv-mq+A@mail.gmail.com>
 <CAGAf8Lw4+XNTj24zLe61qY=11pvCQH8GFW-iMKaE5-OWeiv9Cg@mail.gmail.com>
 <CAGAf8LzCFhs0qVchNuHQP32O7hVBLg+vUHsxuU2Putfor8dgBg@mail.gmail.com>
 <CA+-BmJb33KhdbxSQREBnUtqLjNnPSMRbTXFN2w6yq9K_+krSPw@mail.gmail.com>
 <CA+-BmJbT9gnVoL9W6-KcpJ7oSS4=XFMEAB89yZa_OW8211m1bg@mail.gmail.com> <CA+-BmJYhD2906FW+jbwrj-kObghQO55Hkk17LLyX_gZmosdUfg@mail.gmail.com>
In-Reply-To: <CA+-BmJYhD2906FW+jbwrj-kObghQO55Hkk17LLyX_gZmosdUfg@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
Date: Fri, 7 Jun 2024 11:35:59 +0200
Message-ID: <CA+-BmJYhvF08WLQXVh85S7HNi9hnrRpRkaVcXgNyRc7TkOe=BQ@mail.gmail.com>
Subject: Re: [yocto] Systemd resolv.conf
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Alexander Kanavin <alex.kanavin@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000a17942061a49875f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 07 Jun 2024 09:36:18 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63293

--000000000000a17942061a49875f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I set in my distro config VIRTUAL-RUNTIME_initscripts =3D "" to disable
initscripts to be pulled in my image, thus the volatile config described
above is gone.

This is new in Scarthgap and causing conflict with systemd, it should be
documented somewhere.




On Tue, Jun 4, 2024 at 3:41=E2=80=AFPM Ayoub Zaki <ayoub.zaki@googlemail.co=
m> wrote:

> I added in my layer:
>
> recipes-core/initscripts/initscripts_%.bbappend
>
>
> do_install:append() {
>
>     sed -i '/.*resolv.conf*/d' ${D}${sysconfdir}/default/volatiles/00_cor=
e
> }
>
> but this solves the problem only for my use case, I think something more
> generic should be done here.
>
>
> On Tue, Jun 4, 2024 at 3:16=E2=80=AFPM Ayoub Zaki <ayoub.zaki@googlemail.=
com>
> wrote:
>
>> @alex.kanavin@gmail.com it looks like a serious regression in Yocto
>> project.
>> I cannot provide a patch right now, since I don't understand the
>> background those latest changes introduced by enforcing smylinking of
>> /etc/resolv.conf even for systemd
>>
>> On Tue, Jun 4, 2024 at 3:11=E2=80=AFPM Ayoub Zaki <ayoub.zaki@googlemail=
.com>
>> wrote:
>>
>>> No worries. thanks for checking
>>>
>>> On Tue, Jun 4, 2024 at 3:06=E2=80=AFPM Zoran Stojsavljevic <
>>> zoran.stojsavljevic@gmail.com> wrote:
>>>
>>>> U R correct, Ayoub. I missed a yocto list.
>>>>
>>>> My bad. :-(
>>>>
>>>> Regards,
>>>> Zee
>>>>
>>>> ---------- Forwarded message ---------
>>>> From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
>>>> Date: Tue, Jun 4, 2024 at 2:37=E2=80=AFPM
>>>> Subject: Re: [yocto] Systemd resolv.conf
>>>> To: Ayoub Zaki <ayoub.zaki@googlemail.com>
>>>>
>>>> I did not know that you were talking about a target?!
>>>>
>>>> You should clearly point out what target platform U R using and talk
>>>> 'bout, and try to describe the problem in detail.
>>>>
>>>> At least I am trying not to focus on my inner self when I post, rather
>>>> on the outside public view since people reading your @ are not sure
>>>> what is going on and where is the problem?
>>>>
>>>> Zee
>>>> _______
>>>>
>>>> On Tue, Jun 4, 2024 at 2:16=E2=80=AFPM Ayoub Zaki <ayoub.zaki@googlema=
il.com>
>>>> wrote:
>>>> >
>>>> > I don't get your point ! you are pinging from your host ! What does
>>>> this have to do with the described problem ?!
>>>> >
>>>> > On Mon, Jun 3, 2024 at 6:09=E2=80=AFPM Zoran Stojsavljevic <
>>>> zoran.stojsavljevic@gmail.com> wrote:
>>>> >>
>>>> >> Interesting...
>>>> >> _______
>>>> >>
>>>> >> vuser@fedora40-ssd-2TB:~/projects2/yocto/yocto_test2/bbb-yocto/poky=
/build$
>>>> git status
>>>> >> On branch scarthgap
>>>> >> Your branch is up to date with 'origin/scarthgap'.
>>>> >>
>>>> >> Changes not staged for commit:
>>>> >>   (use "git add <file>..." to update what will be committed)
>>>> >>   (use "git restore <file>..." to discard changes in working
>>>> directory)
>>>> >>     modified:   ../meta/recipes-core/images/core-image-base.bb
>>>> >>     modified:   ../meta/recipes-core/images/core-image-minimal.bb
>>>> >>     modified:
>>>>  ../meta/recipes-extended/cracklib/cracklib/0001-packlib.c-support-dic=
tionary-byte-order-dependent.patch
>>>> >>
>>>> >> Untracked files:
>>>> >>   (use "git add <file>..." to include in what will be committed)
>>>> >>     ../meta/recipes-core/images/core-image-base.bb.genesis
>>>> >>     ../meta/recipes-core/images/core-image-minimal.bb.genesis
>>>> >>
>>>> >> no changes added to commit (use "git add" and/or "git commit -a")
>>>> >>
>>>> >> vuser@fedora40-ssd-2TB:~/projects2/yocto/yocto_test2/bbb-yocto/poky=
/build$
>>>> ping yocto.org
>>>> >> PING yocto.org (217.160.0.14) 56(84) bytes of data.
>>>> >> 64 bytes from 217-160-0-14.elastic-ssl.ui-r.com (217.160.0.14):
>>>> icmp_seq=3D1 ttl=3D57 time=3D16.2 ms
>>>> >> 64 bytes from 217-160-0-14.elastic-ssl.ui-r.com (217.160.0.14):
>>>> icmp_seq=3D2 ttl=3D57 time=3D14.6 ms
>>>> >> 64 bytes from 217-160-0-14.elastic-ssl.ui-r.com (217.160.0.14):
>>>> icmp_seq=3D3 ttl=3D57 time=3D14.8 ms
>>>> >> ^C
>>>> >> --- yocto.org ping statistics ---
>>>> >> 3 packets transmitted, 3 received, 0% packet loss, time 2002ms
>>>> >> rtt min/avg/max/mdev =3D 14.617/15.214/16.188/0.694 ms
>>>> >>
>>>> >> vuser@fedora40-ssd-2TB:~/projects2/yocto/yocto_test2/bbb-yocto/poky=
/build$
>>>> ls -l /etc/resolv.conf
>>>> >> lrwxrwxrwx. 1 root root 39 Jul 18  2022 /etc/resolv.conf ->
>>>> ../run/systemd/resolve/stub-resolv.conf
>>>> >>
>>>> >> Zee
>>>> >> _______
>>>> >>
>>>> >>
>>>> >> On Mon, Jun 3, 2024 at 4:52=E2=80=AFPM Alexander Kanavin via
>>>> lists.yoctoproject.org <alex.kanavin=3Dgmail.com@lists.yoctoproject.or=
g>
>>>> wrote:
>>>> >>>
>>>> >>> Yes please; can you send a patch for master?
>>>> >>>
>>>> >>> Alex
>>>> >>>
>>>> >>> On Mon, 3 Jun 2024 at 16:48, Ayoub Zaki via lists.yoctoproject.org
>>>> >>> <ayoub.zaki=3Dgooglemail.com@lists.yoctoproject.org> wrote:
>>>> >>> >
>>>> >>> > Hello,
>>>> >>> >
>>>> >>> > after upgrading to scarthgap, I noticed that the name resolution
>>>> doesn't work anymore:
>>>> >>> >
>>>> >>> > ~ # ping yocto.org
>>>> >>> > ping: bad address 'yocto.org'
>>>> >>> > ~ #
>>>> >>> >
>>>> >>> > ~ # ping 217.160.0.14
>>>> >>> > PING 217.160.0.14 (217.160.0.14): 56 data bytes
>>>> >>> > 64 bytes from 217.160.0.14: seq=3D0 ttl=3D57 time=3D24.174 ms
>>>> >>> > 64 bytes from 217.160.0.14: seq=3D1 ttl=3D57 time=3D19.452 ms
>>>> >>> >
>>>> >>> > --- 217.160.0.14 ping statistics ---
>>>> >>> > 2 packets transmitted, 2 packets received, 0% packet loss
>>>> >>> > round-trip min/avg/max =3D 19.452/21.813/24.174 ms
>>>> >>> >
>>>> >>> >
>>>> >>> > ~ # ls -l /etc/resolv.conf
>>>> >>> > lrwxrwxrwx    1 root     root            20 Mar  9  2018
>>>> /etc/resolv.conf -> /var/run/resolv.conf
>>>> >>> > ~ # cat /var/run/resolv.conf
>>>> >>> > cat: can't open '/var/run/resolv.conf': No such file or director=
y
>>>> >>> >
>>>> >>> >
>>>> >>> >
>>>> >>> > After linking manually :
>>>> >>> >
>>>> >>> > ~ # ln -sf /etc/resolv-conf.systemd /etc/resolv.conf
>>>> >>> > ~ #
>>>> >>> > ~ #
>>>> >>> > ~ # ping yocto.org
>>>> >>> > PING yocto.org (217.160.0.14): 56 data bytes
>>>> >>> > 64 bytes from 217.160.0.14: seq=3D0 ttl=3D57 time=3D17.577 ms
>>>> >>> > 64 bytes from 217.160.0.14: seq=3D1 ttl=3D57 time=3D18.716 ms
>>>> >>> > ^C
>>>> >>> > --- yocto.org ping statistics ---
>>>> >>> > 2 packets transmitted, 2 packets received, 0% packet loss
>>>> >>> > round-trip min/avg/max =3D 17.577/18.146/18.716 ms
>>>> >>> >
>>>> >>> >
>>>> >>> > shouldn't be that added in the systemd recipe :
>>>> >>> >
>>>> >>> >
>>>> https://git.yoctoproject.org/poky/tree/meta/recipes-core/systemd/syste=
md_255.4.bb?h=3Dscarthgap#n352
>>>> >>> >
>>>> >>> > Best regards
>>>> >>> >
>>>> >>> >
>>>> >>> >
>>>> >>>
>>>> >>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>>> >>> Links: You receive all messages sent to this group.
>>>> >>> View/Reply Online (#63261):
>>>> https://lists.yoctoproject.org/g/yocto/message/63261
>>>> >>> Mute This Topic:
>>>> https://lists.yoctoproject.org/mt/106463010/3618681
>>>> >>> Group Owner: yocto+owner@lists.yoctoproject.org
>>>> >>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>>>> zoran.stojsavljevic@gmail.com]
>>>> >>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>>> >>>
>>>>
>>>

--000000000000a17942061a49875f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I set in my distro config=C2=A0<span style=3D"color:rgb(23=
,43,77);font-family:ui-monospace,SFMono-Medium,&quot;SF Mono&quot;,&quot;Se=
goe UI Mono&quot;,&quot;Roboto Mono&quot;,&quot;Ubuntu Mono&quot;,Menlo,Con=
solas,Courier,monospace;font-size:12px">VIRTUAL-RUNTIME_initscripts =3D &qu=
ot;&quot; to disable initscripts to be pulled in my image, thus the volatil=
e config described above is gone.</span><div><font color=3D"#172b4d" face=
=3D"ui-monospace, SFMono-Medium, SF Mono, Segoe UI Mono, Roboto Mono, Ubunt=
u Mono, Menlo, Consolas, Courier, monospace"><span style=3D"font-size:12px"=
><br></span></font></div><div><font color=3D"#172b4d" face=3D"ui-monospace,=
 SFMono-Medium, SF Mono, Segoe UI Mono, Roboto Mono, Ubuntu Mono, Menlo, Co=
nsolas, Courier, monospace"><span style=3D"font-size:12px">This is new in S=
carthgap=C2=A0and causing conflict with systemd, it should be documented so=
mewhere.</span></font></div><div><font color=3D"#172b4d" face=3D"ui-monospa=
ce, SFMono-Medium, SF Mono, Segoe UI Mono, Roboto Mono, Ubuntu Mono, Menlo,=
 Consolas, Courier, monospace"><span style=3D"font-size:12px"><br></span></=
font><span style=3D"color:rgb(23,43,77);font-family:ui-monospace,SFMono-Med=
ium,&quot;SF Mono&quot;,&quot;Segoe UI Mono&quot;,&quot;Roboto Mono&quot;,&=
quot;Ubuntu Mono&quot;,Menlo,Consolas,Courier,monospace;font-size:12px"></s=
pan><div><pre class=3D"gmail-code-component" style=3D"margin-top:0px;margin=
-bottom:0px;padding:0px 8px;height:20px;width:1254px;box-sizing:border-box;=
font-family:ui-monospace,SFMono-Medium,&quot;SF Mono&quot;,&quot;Segoe UI M=
ono&quot;,&quot;Roboto Mono&quot;,&quot;Ubuntu Mono&quot;,Menlo,Consolas,Co=
urier,monospace;font-size:12px;line-height:20px;color:rgb(23,43,77)"><span =
class=3D"gmail-code-diff" aria-label=3D"Added: VIRTUAL-RUNTIME_initscripts =
=3D &quot;&quot;" style=3D"display:inline-block"><ins style=3D"padding:3px =
0px;text-decoration-line:none;display:inline"><br></ins></span></pre><pre c=
lass=3D"gmail-code-component" style=3D"margin-top:0px;margin-bottom:0px;pad=
ding:0px 8px;height:20px;width:1254px;box-sizing:border-box;font-family:ui-=
monospace,SFMono-Medium,&quot;SF Mono&quot;,&quot;Segoe UI Mono&quot;,&quot=
;Roboto Mono&quot;,&quot;Ubuntu Mono&quot;,Menlo,Consolas,Courier,monospace=
;font-size:12px;line-height:20px;color:rgb(23,43,77)"><span class=3D"gmail-=
code-diff" aria-label=3D"Added: VIRTUAL-RUNTIME_initscripts =3D &quot;&quot=
;" style=3D"display:inline-block"><ins style=3D"padding:3px 0px;text-decora=
tion-line:none;display:inline"><br></ins></span></pre></div></div></div><br=
><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, J=
un 4, 2024 at 3:41=E2=80=AFPM Ayoub Zaki &lt;<a href=3D"mailto:ayoub.zaki@g=
ooglemail.com">ayoub.zaki@googlemail.com</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px s=
olid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr">I added in my laye=
r:<div><br></div><div>recipes-core/initscripts/initscripts_%.bbappend<br><d=
iv><br></div><div><br></div><div>do_install:append() {<br><br>=C2=A0 =C2=A0=
 sed -i &#39;/.*resolv.conf*/d&#39; ${D}${sysconfdir}/default/volatiles/00_=
core<br>}<br></div></div><div><br></div><div>but this solves the problem on=
ly for my use case, I think something more generic should be done here.</di=
v><div><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Tue, Jun 4, 2024 at 3:16=E2=80=AFPM Ayoub Zaki &lt;<a h=
ref=3D"mailto:ayoub.zaki@googlemail.com" target=3D"_blank">ayoub.zaki@googl=
email.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">@<a href=3D"mailto:alex.kanavin@gmail.com" targ=
et=3D"_blank">alex.kanavin@gmail.com</a> it looks like a serious=C2=A0regre=
ssion in Yocto project.<div>I cannot provide a patch right=C2=A0now, since =
I don&#39;t=C2=A0understand the background=C2=A0those latest changes=C2=A0i=
ntroduced=C2=A0by enforcing smylinking of /etc/resolv.conf even for systemd=
</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Tue, Jun 4, 2024 at 3:11=E2=80=AFPM Ayoub Zaki &lt;<a href=3D"mail=
to:ayoub.zaki@googlemail.com" target=3D"_blank">ayoub.zaki@googlemail.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><d=
iv dir=3D"ltr">No worries. thanks for checking<br></div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jun 4, 2024 at 3:=
06=E2=80=AFPM Zoran Stojsavljevic &lt;<a href=3D"mailto:zoran.stojsavljevic=
@gmail.com" target=3D"_blank">zoran.stojsavljevic@gmail.com</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex">U R correct, Ayo=
ub. I missed a yocto list.<br>
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

--000000000000a17942061a49875f--

