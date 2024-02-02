Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4EC1C47258
	for <webhook@archiver.kernel.org>; Fri,  2 Feb 2024 06:31:06 +0000 (UTC)
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
 by mx.groups.io with SMTP id smtpd.web11.17461.1706855461002534212
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Feb 2024 22:31:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=c9nJQZD+;
 spf=pass (domain: gmail.com, ip: 209.85.208.180, mailfrom: marek.belisko@gmail.com)
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-2d061f1e2feso21245861fa.1
        for <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 22:31:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706855459; x=1707460259; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ap9cJpNlgjRJ8tBWF3sC9yPJfei7BIjVWekcLJ7PSaQ=;
        b=c9nJQZD+TK4l873riNfur7vRFaIyxOHzpDKMQKVaINGPoVecTC+HRLTnFjDtuWz5ul
         EjN5ILAygy4ELyls4viFdQ7HfIl0PbLfFY7bcn+5PWnujmZTL5ry/fk+sF5IDf/EaAt0
         TDOUS72yBbHesIR61ySTsib92795h8SB5ywtpcEOx96UcKi6Joiwf/wi3wx/rpMu5Eq6
         2musY7RE0z5RfnyhUcjIFWgolemZ6gTJOyl8wAAwI7QjRoT01RD4uBI+fBM447Ka0gfJ
         20pFsGcaXhrygiZZzSub+6LMtZkEfkf/kzSKVmmmSg7Ee+e5yZAASZoJ5xgYbkmdxkzv
         NmGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706855459; x=1707460259;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ap9cJpNlgjRJ8tBWF3sC9yPJfei7BIjVWekcLJ7PSaQ=;
        b=DHD27mS3d9XWy9N4T+jdaaveE1IafCXHIfYvnvFV2uYpTnWdgF5ZY1W6SWtSZHWUj1
         Cscmh3zXTCWFCFfI0UdWiXozI8wdLYbD1u3Zgikz/SpBN+0VgM78eZdEVLqCjM0ZYkgW
         Q1HAlN2W1o/AMSjjVJriQT+gXj3/7roxY5nFroPIY9Htk1ug90MNCQT2hHppHelM1oP5
         BPlKNNHl9bikmUzZRjtQVSfkRB9HMwkZjELUrF2Myi49pwcSlA6qbyl3jwkChuaWyV0K
         tjYuy/eU78QGnzRoOUXH/Dw/QuYlu/MgziIkkyPRNEV7LROi2vN+f/Q0ziXULRSdUWAz
         ZqwA==
X-Gm-Message-State: AOJu0Yw/olr4oTk2hSiZLuWGADMV4cyQDppXaVoDN3S2nZpCgaCCXhRI
	5NkGzDBApPhnzK8ijIVv2hLX+i6F5ydCtLZ2wacjCSUrU+Df40FSO0GRxTBRQF9XKVGXQTvz+Jn
	522D+9RxcjmSaCdjjZGPRl3grJCw=
X-Google-Smtp-Source: AGHT+IH0YZty5eavdmL6GMT053ohpwM8tbPxdobW8muN3TQtVmHEMAW0ZY8aMvLu2QuOQb0QvZknXJWqyNnobAXH9Jw=
X-Received: by 2002:a2e:9b46:0:b0:2cf:555f:1c6e with SMTP id
 o6-20020a2e9b46000000b002cf555f1c6emr451271ljj.23.1706855458576; Thu, 01 Feb
 2024 22:30:58 -0800 (PST)
MIME-Version: 1.0
References: <CAAfyv35xxBau9cj1e6d-a-ggoQmvg=5Fjw2pxm9MXY6Z4hhZgQ@mail.gmail.com>
 <CAMKF1sqDg45WYkrp8QSOpd7oV70oT_CYxpO7thOizykV0SVcsg@mail.gmail.com>
In-Reply-To: <CAMKF1sqDg45WYkrp8QSOpd7oV70oT_CYxpO7thOizykV0SVcsg@mail.gmail.com>
From: Belisko Marek <marek.belisko@gmail.com>
Date: Fri, 2 Feb 2024 07:30:46 +0100
Message-ID: <CAAfyv37iuq_oW8BtuzNkbAOnU3yWQUdGps6S_p=t=gwvBhTWzw@mail.gmail.com>
Subject: Re: [yocto] kirkstone bus error golang
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000004aa170061060419a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 02 Feb 2024 06:31:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62379

--0000000000004aa170061060419a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Feb 1, 2024 at 11:47=E2=80=AFPM Khem Raj <raj.khem@gmail.com> wrote=
:

> Can you try compiling with -mno-unaligned-access
>
I have tried it and it is still failing.

>
> On Thu, Feb 1, 2024 at 6:34=E2=80=AFAM Marek Belisko <marek.belisko@gmail=
.com>
> wrote:
> >
> > Hi,
> >
> > I'm testing following code on rpi3 board (taken from
> https://github.com/golang/go/issues/58548) :
> > main.go:
> > package main
> >
> > func main() {
> > }
> >
> > main.c:
> > #include <stdio.h>
> > #include <stdlib.h>
> > #include <dlfcn.h>
> >
> > int main(int argc, char** argv)
> > {
> >     void *handle =3D dlopen("./libtest.so", RTLD_LAZY);
> >     if (!handle) {
> >         fprintf(stderr, "Error: %s\n", dlerror());
> >         return EXIT_FAILURE;
> >     }
> >
> >     dlclose(handle);
> >     return EXIT_SUCCESS;
> > }
> >
> > I'm cross compiling using yocto sdk:
> >
> > go build -buildmode=3Dc-shared -o libtest.so main.go
> > $ gcc -g main.c -o main
> > and when run main on target I'm hitting bus error:
> >
> > $ ./main
> >   389.087824] Alignment trap: not handling instruction f9420a1f at
> [<b6e5caa6>]
> > [  389.095171] 8<--- cut here ---
> > [  389.098249] Unhandled fault: alignment exception (0x811) at 0xbeaca3=
74
> > [  389.104881] pgd =3D d43e80f0
> > [  389.107602] [beaca374] *pgd=3Dbe8ba831
> > [  389.134496] audit: type=3D1701 audit(1706797456.639:2): auid=3D42949=
67295
> uid=3D0 gid=3D0 ses=3D4294967295 pid=3D2544 comm=3D"main" exe=3D"/home/ro=
ot/main" sig=3D7
> res=3D1
> > Bus error
> >
> > I've tried glibc2.34 and also 2.36 (in kirkstone is 2.35) as described
> in golang issu but no luck, it still behaves the same.
> >
> > Any ideas what else to check please? Updating to the latest poky is not
> the case unfortunately.
> >
> > BR,
> >
> > marek
> >
> >
> > --
> > as simple and primitive as possible
> > -------------------------------------------------
> > Marek Belisko - OPEN-NANDRA
> > Freelance Developer
> >
> > Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> > Tel: +421 915 052 184
> > skype: marekwhite
> > twitter: #opennandra
> > web: http://open-nandra.com
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#62367):
> https://lists.yoctoproject.org/g/yocto/message/62367
> > Mute This Topic: https://lists.yoctoproject.org/mt/104098375/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>

--0000000000004aa170061060419a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Thu, Feb 1, 2024 at 11:47=E2=80=AFPM K=
hem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&gt=
; wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">Can you try compiling with -mno-unaligned-access<br></b=
lockquote><div>I have tried it and it is still failing.=C2=A0</div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px=
 solid rgb(204,204,204);padding-left:1ex">
<br>
On Thu, Feb 1, 2024 at 6:34=E2=80=AFAM Marek Belisko &lt;<a href=3D"mailto:=
marek.belisko@gmail.com" target=3D"_blank">marek.belisko@gmail.com</a>&gt; =
wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; I&#39;m testing following code on rpi3 board (taken from <a href=3D"ht=
tps://github.com/golang/go/issues/58548" rel=3D"noreferrer" target=3D"_blan=
k">https://github.com/golang/go/issues/58548</a>) :<br>
&gt; main.go:<br>
&gt; package main<br>
&gt;<br>
&gt; func main() {<br>
&gt; }<br>
&gt;<br>
&gt; main.c:<br>
&gt; #include &lt;stdio.h&gt;<br>
&gt; #include &lt;stdlib.h&gt;<br>
&gt; #include &lt;dlfcn.h&gt;<br>
&gt;<br>
&gt; int main(int argc, char** argv)<br>
&gt; {<br>
&gt;=C2=A0 =C2=A0 =C2=A0void *handle =3D dlopen(&quot;./libtest.so&quot;, R=
TLD_LAZY);<br>
&gt;=C2=A0 =C2=A0 =C2=A0if (!handle) {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0fprintf(stderr, &quot;Error: %s\n&quo=
t;, dlerror());<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0return EXIT_FAILURE;<br>
&gt;=C2=A0 =C2=A0 =C2=A0}<br>
&gt;<br>
&gt;=C2=A0 =C2=A0 =C2=A0dlclose(handle);<br>
&gt;=C2=A0 =C2=A0 =C2=A0return EXIT_SUCCESS;<br>
&gt; }<br>
&gt;<br>
&gt; I&#39;m cross compiling using yocto sdk:<br>
&gt;<br>
&gt; go build -buildmode=3Dc-shared -o libtest.so main.go<br>
&gt; $ gcc -g main.c -o main<br>
&gt; and when run main on target I&#39;m hitting bus error:<br>
&gt;<br>
&gt; $ ./main<br>
&gt;=C2=A0 =C2=A0389.087824] Alignment trap: not handling instruction f9420=
a1f at [&lt;b6e5caa6&gt;]<br>
&gt; [=C2=A0 389.095171] 8&lt;--- cut here ---<br>
&gt; [=C2=A0 389.098249] Unhandled fault: alignment exception (0x811) at 0x=
beaca374<br>
&gt; [=C2=A0 389.104881] pgd =3D d43e80f0<br>
&gt; [=C2=A0 389.107602] [beaca374] *pgd=3Dbe8ba831<br>
&gt; [=C2=A0 389.134496] audit: type=3D1701 audit(1706797456.639:2): auid=
=3D4294967295 uid=3D0 gid=3D0 ses=3D4294967295 pid=3D2544 comm=3D&quot;main=
&quot; exe=3D&quot;/home/root/main&quot; sig=3D7 res=3D1<br>
&gt; Bus error<br>
&gt;<br>
&gt; I&#39;ve tried glibc2.34 and also 2.36 (in kirkstone is 2.35) as descr=
ibed in golang issu but no luck, it still behaves the same.<br>
&gt;<br>
&gt; Any ideas what else to check please? Updating to the latest poky is no=
t the case unfortunately.<br>
&gt;<br>
&gt; BR,<br>
&gt;<br>
&gt; marek<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; as simple and primitive as possible<br>
&gt; -------------------------------------------------<br>
&gt; Marek Belisko - OPEN-NANDRA<br>
&gt; Freelance Developer<br>
&gt;<br>
&gt; Ruska Nova Ves 219 | Presov, 08005 Slovak Republic<br>
&gt; Tel: +421 915 052 184<br>
&gt; skype: marekwhite<br>
&gt; twitter: #opennandra<br>
&gt; web: <a href=3D"http://open-nandra.com" rel=3D"noreferrer" target=3D"_=
blank">http://open-nandra.com</a><br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#62367): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/62367" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/62367</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/10409837=
5/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/mt/104098375/1997914</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khe=
m@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div><br clear=3D"all"><div><br></div><div dir=3D"ltr" class=
=3D"gmail_signature"></div></div>

--0000000000004aa170061060419a--

