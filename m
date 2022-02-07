Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC55FC433F5
	for <webhook@archiver.kernel.org>; Mon,  7 Feb 2022 10:46:53 +0000 (UTC)
Received: from mail-lf1-f44.google.com (mail-lf1-f44.google.com
 [209.85.167.44])
 by mx.groups.io with SMTP id smtpd.web10.20728.1644230813028568162
 for <yocto@lists.yoctoproject.org>;
 Mon, 07 Feb 2022 02:46:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=G6zD7bIR;
 spf=pass (domain: gmail.com, ip: 209.85.167.44,
 mailfrom: quaresma.jose@gmail.com)
Received: by mail-lf1-f44.google.com with SMTP id u14so25875074lfo.11
        for <yocto@lists.yoctoproject.org>;
 Mon, 07 Feb 2022 02:46:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uEXTm0JCpR9r7ADTJ7YOwU0cvzQZFHQuwvwa14iorCs=;
        b=G6zD7bIRbCMh4o7gf82Y9IT6Qbgi6Lc27jpsQNmX6ybp4kMI/nzENd1bhssEYWxFT5
         HCrI/QnAivZfVzIasgGXgrFahnwB5IMosOYg4TJO6Ctc942BpEcpk+Vel9bswKRNo0Aq
         fx9GaCq183bweI2aYpyGPQWn7D2w/SY1mLgrBzATPjOts/X8E3fHsx3M6CE41okAwv75
         yIQj3aUXSUAiQ2J1GVkCwtGZiKcqY+lWwXWGVBbgf298RI4Ae5PZmpVJ4S1inEQkwjno
         h8KRbnNiDqmSKsoqUUlbSNy7MZ9TNqxSJD596kNneu9ih9+/YP5uKorwxAJzeL4/0AaT
         on/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uEXTm0JCpR9r7ADTJ7YOwU0cvzQZFHQuwvwa14iorCs=;
        b=CZhPJFIyh6oa4D5pXFeKweczImvrpsVsAtaf9a1KU6Mkt5d2XOhEDjXT9iQbCDswMc
         +B6ku0gyjRWLupZvn6y6q8uiMpqbQfO35h/kD85eV4rZgtIbxmDTvj7orMgS43GUgO+W
         jf7mzcrzHlhPiKYU9mJwPMkSojG4rXbrM/GJKh8LpOnYgn64vt7AIcgqruqEnj2RJ1a3
         uuLyrRaYpjV4HvIdU03hiVMckZFiCYwUb/wUYBrOn2rs27eqgb+YKwJsG6lO6Rc2Mvk9
         CVV8SY36E2OLLhDDthf0sd6kdmn0G4QoZ1/6oRIZJNTfKAg8Ux6aVhaKjKQctZpdtRza
         j7Iw==
X-Gm-Message-State: AOAM5328EgPFEm/6NbxEL91r0OzEABEfMitMGNPvZQzmDwp5fXcNYGmJ
	WqHF2O2fjPZMNlozm/hcZgnKRLjPwxxoCsz041w=
X-Google-Smtp-Source: 
 ABdhPJzWE8MlPGSsMVTrFW5RpzFpyKd4zSVrfSsYFGqpMXXZV9K534Zj4PgFXTp9egxuAjTTWAmPzBmn0vIYVvZMtsI=
X-Received: by 2002:ac2:5c4d:: with SMTP id s13mr7961800lfp.324.1644230810982;
 Mon, 07 Feb 2022 02:46:50 -0800 (PST)
MIME-Version: 1.0
References: 
 <AM0PR10MB3107C0B665A754CEEF1D9C82992C9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
In-Reply-To: 
 <AM0PR10MB3107C0B665A754CEEF1D9C82992C9@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Mon, 7 Feb 2022 10:46:39 +0000
Message-ID: 
 <CANPvuRm9rP3SCKSSGeP+NyYYViWm6f6gH_gwavzV7_LacRd0dw@mail.gmail.com>
Subject: Re: [yocto] gpsd autostart with systemd?
To: Matthias Klein <matthias.klein@optimeas.de>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000006adccf05d76b5159"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 07 Feb 2022 10:46:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56093

--0000000000006adccf05d76b5159
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Matthias,

You need to add the systemd service, the socket service is already there.

SYSTEMD_SERVICE:${PN} +=3D "${BPN}.service"


Matthias Klein <matthias.klein@optimeas.de> escreveu no dia segunda,
7/02/2022 =C3=A0(s) 08:19:

> Hello,
>
> what needs to be in a bbapped so that gpsd is started automatically at
> boot time, and not only when the first accesses the gpsd socket?
>
>
> http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-navig=
ation/gpsd/gpsd_3.23.1.bb
>
> Best regards,
> Matthias
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56092):
> https://lists.yoctoproject.org/g/yocto/message/56092
> Mute This Topic: https://lists.yoctoproject.org/mt/88967559/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--0000000000006adccf05d76b5159
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi=C2=A0Matthias,</div><div><br></div><div>You need t=
o add the systemd service, the socket service is already there.</div><div><=
br></div><div><pre style=3D"padding:0px;margin-top:0px;margin-bottom:0px;co=
lor:rgb(0,0,0);font-size:13.3333px"><span class=3D"gmail-nv" style=3D"color=
:rgb(51,102,153)">SYSTEMD_SERVICE</span><span class=3D"gmail-p">:</span><sp=
an class=3D"err" style=3D"color:rgb(166,23,23);background-color:rgb(227,210=
,210)">${</span><span class=3D"gmail-nv" style=3D"color:rgb(51,102,153)">PN=
</span><span class=3D"err" style=3D"color:rgb(166,23,23);background-color:r=
gb(227,210,210)">}</span> +<span class=3D"gmail-o">=3D</span> <span class=
=3D"gmail-s2" style=3D"color:rgb(221,34,0);background-color:rgb(255,240,240=
)">&quot;${BPN}.service&quot;</span></pre></div><br><div class=3D"gmail_quo=
te"><div dir=3D"ltr" class=3D"gmail_attr">Matthias Klein &lt;<a href=3D"mai=
lto:matthias.klein@optimeas.de">matthias.klein@optimeas.de</a>&gt; escreveu=
 no dia segunda, 7/02/2022 =C3=A0(s) 08:19:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">Hello,<br>
<br>
what needs to be in a bbapped so that gpsd is started automatically at boot=
 time, and not only when the first accesses the gpsd socket?<br>
<br>
<a href=3D"http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/reci=
pes-navigation/gpsd/gpsd_3.23.1.bb" rel=3D"noreferrer" target=3D"_blank">ht=
tp://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-navigatio=
n/gpsd/gpsd_3.23.1.bb</a><br>
<br>
Best regards,<br>
Matthias<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56092): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56092" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56092</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/88967559/5052=
612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/88967559/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Best regards,<div><br>Jos=C3=A9=
 Quaresma</div></div></div></div>

--0000000000006adccf05d76b5159--

