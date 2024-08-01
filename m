Return-Path: <mcorbin@lunarenergy.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4C035C3DA4A
	for <webhook@archiver.kernel.org>; Thu,  1 Aug 2024 10:29:26 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
 by mx.groups.io with SMTP id smtpd.web10.65028.1722508160928636170
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Aug 2024 03:29:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@lunarenergy.com header.s=google header.b=OS9iCiAD;
 spf=pass (domain: lunarenergy.com, ip: 209.85.208.45, mailfrom: mcorbin@lunarenergy.com)
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5a3b866ebc9so9538369a12.3
        for <yocto@lists.yoctoproject.org>; Thu, 01 Aug 2024 03:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lunarenergy.com; s=google; t=1722508159; x=1723112959; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=RwVdqtYicunX0+Yl+e+TDsbn3xBf3J4ocGn2lQk87OI=;
        b=OS9iCiADHefRYKlcxlmPb18xwgR3rmZyTf8suMG6ASPoWZ8/VCeIOKUDX/kkYoOkIH
         zCrG7mXSAxDKy1Z4zpsjLM58FLaztPnwhdbDrMr8zat7iLXsxt51noflWP0vxdR+6iYU
         C9jlgMJdM+IPCJ5wXSTGseYfv6aARjlQh/SpXwgLFYK9Pl2Ic3lCseonmAnmCqJeanFv
         /L42W5lObHc45PQxDYLHgrA+uUCGgYATCRLyHXdD4vLTpECFMXS36knhpOEQl6jJpAQU
         cn2Q0K2R2XzlG8nbLu0QgOxKWe0KMDWzDzQXTp11zJt/gZchKPYYGpDERBUggnETbv5v
         64TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722508159; x=1723112959;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=RwVdqtYicunX0+Yl+e+TDsbn3xBf3J4ocGn2lQk87OI=;
        b=cIt/a/39tg7sTlLHufO2EKtQTtZa5H7JD8pkdVdAdFt6twjYT6d8G8r+XNzJdd/g6g
         vzQx2HHwMAIO0ojTZZfjPicbibxYhOVtLwEIe0i5UfXxOpPfyUug++7r9oZF2NAC9Ko0
         T+mp1Lvz8KWZ1SkjFC0TLdKklgz4WfJ8oqv4BSjFYOrDZShEkZfphmkxcYBa7LZhqI+2
         4c6VbHo8TkcaSvidBEN/HkGYJJ+gnifnJJhOymWmpAQIxsHtyi3woBeLzczxeYbiHORH
         8Tq2eAU5B5J0K1RKU7bV/5mTohtdDUUWpYEZiXUwV+sOXdklV9/t/tFKVLmPTRUuidkG
         axJg==
X-Gm-Message-State: AOJu0YxabS2MfgWW+ZuvisuKCLV1l6FquQ9d6Cxa99TdNSMk7BTdhBXh
	BXu7HdoZinSluUOcPsKV0G7rpsWmwPvPn6OT5pjWCW8S9LfQ8WETdUYaWkxDK9camaRXFIREo63
	IJ5o5qW0tHSl3Dlx13b+Zgh+6lyctzVzXhS9lTm2CRlfuzzORFtb28uVQ6KOKxwFiRz8AwhFbik
	mhf969SQ4lfJiYYjkMfNUvTcMUYq+n3w==
X-Google-Smtp-Source: AGHT+IF8YVX/ysaWHtPCKWFZm4/bnZcsdQ1sHr06SX9CqG80x9wPYmH1XrtXnsfMCOE1rTzVQipwDGkV6qy/wUIljEk=
X-Received: by 2002:aa7:c394:0:b0:5a2:7f47:c729 with SMTP id
 4fb4d7f45d1cf-5b6fed07de8mr1245663a12.9.1722508159079; Thu, 01 Aug 2024
 03:29:19 -0700 (PDT)
MIME-Version: 1.0
References: <CAPfD7wkdkC3Wsu92gcPa9RtQs=hWyxXgKbH4kPfOmEfqhzmJNw@mail.gmail.com>
 <CAGAf8LyJirHKKfw2Rh9Xf64WdkrnqFAEZkxGGGaGu2K+K0g4bg@mail.gmail.com>
In-Reply-To: <CAGAf8LyJirHKKfw2Rh9Xf64WdkrnqFAEZkxGGGaGu2K+K0g4bg@mail.gmail.com>
From: Mark Corbin <mcorbin@lunarenergy.com>
Date: Thu, 1 Aug 2024 11:29:08 +0100
Message-ID: <CAPfD7wn0EwEzfH43E7euaTaHE8hRD4yMVxgFqsTjBfSd8AzOqA@mail.gmail.com>
Subject: Re: [yocto] Using sshd with a non-bash shell
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f1fc5f061e9cae43"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Aug 2024 10:29:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63639

--000000000000f1fc5f061e9cae43
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

>
> Why ash (used in u-boot shell), not bash???
>

To avoid GPLv3.

On Thu, 1 Aug 2024 at 06:52, Zoran Stojsavljevic <
zoran.stojsavljevic@gmail.com> wrote:

> Hello Mark,
>
> Just one question out of my curiosity?
>
> Why ash (used in u-boot shell), not bash???
>
> Thank you,
> Zee
> _______
>
>
> On Wed, Jul 31, 2024 at 5:55=E2=80=AFPM Mark Corbin via lists.yoctoprojec=
t.org
> <mcorbin=3Dlunarenergy.com@lists.yoctoproject.org> wrote:
> >
> > Hello
> >
> > I was wondering whether anybody has any experience of running sshd
> successfully on a system with a 'non-bash' shell?
> >
> > We're using kirkstone 4.0.12 which has openssh 8.9p1 and systemd 250.5.
> > Both ssh and scp work as expected with '/bin/sh -> bash.bash' on the
> target, but with '/bin/sh -> busybox.nosuid' (ash shell) the connections
> fail.
> >
> > The sshd logs on the target show:
> > Jul 31 15:24:56 hc sshd[17826]: Connection from UNKNOWN port 65535 on
> 192.168.12.246 port 65535
> > Jul 31 15:24:56 hc sshd[17826]: debug1: kex_exchange_identification:
> write: Broken pipe
> > Jul 31 15:24:56 hc sshd[17826]: banner exchange: Connection from UNKNOW=
N
> port 65535: Broken pipe
> >
> > Some extra debug messages that I've added to both systemd and sshd show
> that the incoming socket gets closed somewhere between the handover from
> the systemd socket service to the systemd sshd service. This results in
> sshd being unable to get any peer details.
> >
> > I can't see anything obvious in either the systemd source or sshd sourc=
e
> that suggest a dependency on bash.
> >
> > Any ideas gratefully appreciated.
> >
> > Regards
> >
> > Mark
> >
> > --
> >
> > Mark Corbin
> > Senior Software Engineer  |   lunarenergy.com   |  LinkedIn  |
> Instagram
> >
> > C2:Restricted unless otherwise stated.
> >
> > Lunar Energy Limited is a company registered in England and Wales,
> authorised and regulated by the Financial Conduct Authority under referen=
ce
> number 767876. Company registration number: 05631091. Registered office: =
55
> Baker Street, London, England, W1U 7EU
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > View/Reply Online (#63634):
> https://lists.yoctoproject.org/g/yocto/message/63634
> > Mute This Topic: https://lists.yoctoproject.org/mt/107648648/3618681
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> zoran.stojsavljevic@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>


--=20

*Mark Corbin *
Senior Software Engineer  |   lunarenergy.com <https://www.lunarenergy.com>
  |  LinkedIn <https://www.linkedin.com/company/lunarenergyinc/>  |
Instagram <https://www.instagram.com/lunarenergyinc/>
[image: Lunar Energy Logo]

--=20
C2:Restricted unless otherwise stated.

--=20








Lunar Energy Limited is a company registered in England and Wales,=C2=A0
authorised and regulated by the Financial Conduct Authority under reference=
=20
number 767876. Company registration number: 05631091. Registered office: 55=
=20
Baker Street, London, England, W1U 7EU

--000000000000f1fc5f061e9cae43
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Why ash =
(used in u-boot shell), not bash???<br></blockquote><div><br></div><div>To =
avoid GPLv3.=C2=A0</div></div><br><div class=3D"gmail_quote"><div dir=3D"lt=
r" class=3D"gmail_attr">On Thu, 1 Aug 2024 at 06:52, Zoran Stojsavljevic &l=
t;<a href=3D"mailto:zoran.stojsavljevic@gmail.com">zoran.stojsavljevic@gmai=
l.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex">Hello Mark,<br>
<br>
Just one question out of my curiosity?<br>
<br>
Why ash (used in u-boot shell), not bash???<br>
<br>
Thank you,<br>
Zee<br>
_______<br>
<br>
<br>
On Wed, Jul 31, 2024 at 5:55=E2=80=AFPM Mark Corbin via <a href=3D"http://l=
ists.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproj=
ect.org</a><br>
&lt;mcorbin=3D<a href=3D"mailto:lunarenergy.com@lists.yoctoproject.org" tar=
get=3D"_blank">lunarenergy.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt;<br>
&gt; Hello<br>
&gt;<br>
&gt; I was wondering whether anybody has any experience of running sshd suc=
cessfully on a system with a &#39;non-bash&#39; shell?<br>
&gt;<br>
&gt; We&#39;re using kirkstone 4.0.12 which has openssh 8.9p1 and systemd 2=
50.5.<br>
&gt; Both ssh and scp work as expected with &#39;/bin/sh -&gt; bash.bash&#3=
9; on the target, but with &#39;/bin/sh -&gt; busybox.nosuid&#39; (ash shel=
l) the connections fail.<br>
&gt;<br>
&gt; The sshd logs on the target show:<br>
&gt; Jul 31 15:24:56 hc sshd[17826]: Connection from UNKNOWN port 65535 on =
192.168.12.246 port 65535<br>
&gt; Jul 31 15:24:56 hc sshd[17826]: debug1: kex_exchange_identification: w=
rite: Broken pipe<br>
&gt; Jul 31 15:24:56 hc sshd[17826]: banner exchange: Connection from UNKNO=
WN port 65535: Broken pipe<br>
&gt;<br>
&gt; Some extra debug messages that I&#39;ve added to both systemd and sshd=
 show that the incoming socket gets closed somewhere between the handover f=
rom the systemd socket service to the systemd sshd service. This results in=
 sshd being unable to get any peer details.<br>
&gt;<br>
&gt; I can&#39;t see anything obvious in either the systemd source or sshd =
source that suggest a dependency on bash.<br>
&gt;<br>
&gt; Any ideas gratefully appreciated.<br>
&gt;<br>
&gt; Regards<br>
&gt;<br>
&gt; Mark<br>
&gt;<br>
&gt; --<br>
&gt;<br>
&gt; Mark Corbin<br>
&gt; Senior Software Engineer=C2=A0 |=C2=A0 =C2=A0<a href=3D"http://lunaren=
ergy.com" rel=3D"noreferrer" target=3D"_blank">lunarenergy.com</a>=C2=A0 =
=C2=A0|=C2=A0 LinkedIn=C2=A0 |=C2=A0 Instagram<br>
&gt;<br>
&gt; C2:Restricted unless otherwise stated.<br>
&gt;<br>
&gt; Lunar Energy Limited is a company registered in England and Wales, aut=
horised and regulated by the Financial Conduct Authority under reference nu=
mber 767876. Company registration number: 05631091. Registered office: 55 B=
aker Street, London, England, W1U 7EU<br>
&gt;<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; View/Reply Online (#63634): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/63634" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/63634</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/10764864=
8/3618681" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/mt/107648648/3618681</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:zoran.stojsavljevic@gmail.com" target=3D"_bla=
nk">zoran.stojsavljevic@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv><div><br><span style=3D"color:rgb(38,77,116);line-height:1.6;font-size:1=
0pt;font-family:&quot;IBM Plex Sans&quot;,sans-serif"><strong>Mark Corbin <=
/strong></span><br><span style=3D"color:rgb(38,77,116);line-height:1.4;font=
-size:10pt;font-family:&quot;IBM Plex Sans&quot;,sans-serif"> Senior Softwa=
re Engineer=C2=A0=C2=A0|=C2=A0=C2=A0 <a href=3D"https://www.lunarenergy.com=
" target=3D"_blank">lunarenergy.com </a>=C2=A0=C2=A0|=C2=A0=C2=A0<a href=3D=
"https://www.linkedin.com/company/lunarenergyinc/" target=3D"_blank">Linked=
In</a>=C2=A0=C2=A0|=C2=A0=C2=A0<a href=3D"https://www.instagram.com/lunaren=
ergyinc/" target=3D"_blank">Instagram</a><br></span><img style=3D"padding-t=
op: 5px;" src=3D"https://storage.googleapis.com/lunarenergy/email-sigs/luna=
renergy-logo.png" alt=3D"Lunar Energy Logo" width=3D"100"></div></div></div=
>

<br>
<font size=3D"1">C2:Restricted unless otherwise stated.</font><br>
<br>






<p><font size=3D"1">Lunar Energy Limited is a company registered in England=
 and Wales,=C2=A0authorised and regulated by the Financial Conduct Authorit=
y under reference number 767876. Company registration number: 05631091. Reg=
istered office: 55 Baker Street, London, England, W1U 7EU</font><br></p>
--000000000000f1fc5f061e9cae43--

