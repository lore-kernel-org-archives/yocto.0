Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA53CFD315
	for <webhook@archiver.kernel.org>; Tue, 25 Nov 2025 07:55:07 +0000 (UTC)
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
 by mx.groups.io with SMTP id smtpd.msgproc01-g2.12344.1764057302294146647
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Nov 2025 23:55:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=R4zAN9S1;
 spf=pass (domain: smile.fr, ip: 209.85.218.48, mailfrom: yoann.congal@smile.fr)
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-b7697e8b01aso444835966b.2
        for <yocto@lists.yoctoproject.org>; Mon, 24 Nov 2025 23:55:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1764057300; x=1764662100; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=hnLejo1gDckBWZnytWRyqiZdI+LDp6C9dkhdn4KMYDM=;
        b=R4zAN9S1jNwPxazc9mWfQheAqIBwE43kiD+RcM95byJ/mEcT8GROhH2tHmWvYrdEKQ
         gXoldkH93rZozro8kbAgW8XYaNTZ41duLQpqmbfBcwXcLkveAFkbJY1u+/+O9q5fkG/F
         DaRyQW3TT93YLNfHPzXCG5BqxDhyZzoZJHDto=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764057300; x=1764662100;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hnLejo1gDckBWZnytWRyqiZdI+LDp6C9dkhdn4KMYDM=;
        b=mj1I/9sUfyajUJZ3oRFHLo3ztpGWGfVPCVF4DrWgHKDOXpzgEQ4eGThaS3IsSSW6Zs
         KqAE3FxoCjPABJEV7q8feBfDSAJvDVVytwIQzvjhMt0kK1Z0zp928Kgwe4EiCqrRzzj3
         9OKXVoUDpgq3YCRDxcA65ifnjzm4GV/h2XWVqz8UuuTdEoMQYgRpk+97ykwho6RJdexD
         LauegE9SJGJStz1Y3x4zs49bB8yQb9cU5aAZP2SfzS29bIQfaTShTjUjPWpsyGUP+qTW
         5ol43y5x8ZeZpDbdRwq8g+8Xd64+E+ERgr4RxjmAHywoec4Nov/YDD3LiQmHK36Tf4QS
         o6nQ==
X-Gm-Message-State: AOJu0YzdFDzBRFx+4maiJBQLPPVIhYKN11+neO9l48nB6/wzsMW/NZRI
	cfEeG7JSZQ2Jn/wCnuWvIz/MvhmHvkNTJ2rcXF7oG110wIM0mxzEGnvqx1K7digbwZepJBohm/y
	VeDW07ite/+yAHhdoppjeLcAIdt7K0EZYLA4GkMxd2eZtBJeB+RYy9nTrPw==
X-Gm-Gg: ASbGncu6oqIHYmXtrcwtpBvqExPDEYKhU77zR6XcK3I3E3irOOAFnoZb6iFFi7rYZg5
	LHieWavWZqDyD/QaKz/ujcLN40LuVAYf4pMlROIIFR/KPi5WwroyOVHPGjIlrE2GbOpVEzA7A3T
	KOPsl9L51rh60pYArqueAdLKK2g4NfjfG/ai5AJUT1v9/xorS2CI5GtNgHJYpOW+FYRtb58lTd4
	FE5QIkIGnXPuTenCUpNoieHSFW8+f68SQNbiLtN9f08Hs93KpfQsXiKpYmtGVj143p8oVE1f0bu
	B1KbflDpZVTOE9Idwayo2CePp/OIIA==
X-Google-Smtp-Source: AGHT+IHvd2khm6z/aX3uN3OxabhRQxheMJVu4yQ1oxwIVduAQs8JMlpnswn7TwbQTGohJ6mdiC1WmAk4ZMEqo/b0FY4=
X-Received: by 2002:a17:907:1c25:b0:b72:5d08:486c with SMTP id
 a640c23a62f3a-b76715b02cbmr1587219166b.27.1764057300112; Mon, 24 Nov 2025
 23:55:00 -0800 (PST)
MIME-Version: 1.0
References: <iRKs.1764055991245768371.SmVd@lists.yoctoproject.org>
In-Reply-To: <iRKs.1764055991245768371.SmVd@lists.yoctoproject.org>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Tue, 25 Nov 2025 08:54:27 +0100
X-Gm-Features: AWmQ_bn3or3xbTvR8bHDWU2jOY6PRbnTdZPyiAvWE5fbO3EPiG1AcGHJSXzliNY
Message-ID: <CAMSfU+6g-_6G+=RiVHDJVU=Tp12Ut8Sbo4xB+ax2vyMYYx7fDw@mail.gmail.com>
Subject: Re: [yocto] [Poky-Scarthgap][OpenSSL] Whether upgrade OpenSSL to
 3.5.x for Scarthgap.
To: yocto@lists.yoctoproject.org, mwen@ambarella.com
Cc: piotr.l.lewicki@hitachienergy.com
Content-Type: multipart/alternative; boundary="000000000000bca7f20644669809"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 25 Nov 2025 07:55:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66054

--000000000000bca7f20644669809
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mar. 25 nov. 2025 =C3=A0 08:33, Ming Wen via lists.yoctoproject.org <mwe=
n=3D
ambarella.com@lists.yoctoproject.org> a =C3=A9crit :

> Hi Yocto Community:
>
> As you know, OpenSSL 3.2.x is going to EOL by the end of 2025. Do you hav=
e
> a plan to upgrade it to OpenSSL 3.5.x for Scarthgap as you did for Poky
> master branch?
>
Hello,
This very question was asked recently:
https://lists.openembedded.org/g/openembedded-core/topic/116449512#msg22674=
1
(CC'ing the author)
Note the answer from Alexander Kanavin:
https://lists.openembedded.org/g/openembedded-core/message/226742

Regards,


> Best Regards
> Ming Wen
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66052):
> https://lists.yoctoproject.org/g/yocto/message/66052
> Mute This Topic: https://lists.yoctoproject.org/mt/116465760/4316185
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Yoann Congal
Smile ECS

--000000000000bca7f20644669809
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Le=C2=A0mar. 25 nov. 2025 =C3=A0=C2=A008:=
33, Ming Wen via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproje=
ct.org</a> &lt;mwen=3D<a href=3D"mailto:ambarella.com@lists.yoctoproject.or=
g">ambarella.com@lists.yoctoproject.org</a>&gt; a =C3=A9crit=C2=A0:</div><d=
iv class=3D"gmail_quote gmail_quote_container"><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex"><div>Hi Yocto Community:</div>
<div>=C2=A0</div>
<div>As you know, OpenSSL 3.2.x is going to EOL by the end of 2025. Do you =
have a plan to upgrade it to OpenSSL 3.5.x for Scarthgap as you did for Pok=
y master branch?</div></blockquote><div>Hello,</div><div>This very question=
 was asked recently:=C2=A0<a href=3D"https://lists.openembedded.org/g/opene=
mbedded-core/topic/116449512#msg226741">https://lists.openembedded.org/g/op=
enembedded-core/topic/116449512#msg226741</a></div><div>(CC&#39;ing the aut=
hor)</div><div>Note the answer from Alexander Kanavin:=C2=A0<a href=3D"http=
s://lists.openembedded.org/g/openembedded-core/message/226742">https://list=
s.openembedded.org/g/openembedded-core/message/226742</a></div><div><br></d=
iv><div>Regards,</div><div><br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div>=C2=A0</div>
<div>Best Regards</div>
<div>Ming Wen</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#66052): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/66052" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/66052</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/116465760/431=
6185" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/116465760/4316185</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:yoann.congal@smile.fr" target=3D"_blank">yoann.c=
ongal@smile.fr</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><font face=3D"Raleway, regular">Yoann Congal</font><div><fon=
t face=3D"Raleway, regular">Smile ECS</font></div></div></div></div>

--000000000000bca7f20644669809--

