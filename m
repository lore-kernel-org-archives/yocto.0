Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
 by mx.groups.io with SMTP id smtpd.web09.14794.1621443882632730394
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 May 2021 10:04:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@deserted-net.20150623.gappssmtp.com header.s=20150623 header.b=KCsCTA6g;
 spf=none, err=permanent DNS error (domain: deserted.net, ip: 209.85.216.54, mailfrom: joe@deserted.net)
Received: by mail-pj1-f54.google.com with SMTP id g6-20020a17090adac6b029015d1a9a6f1aso3813655pjx.1
        for <yocto@lists.yoctoproject.org>; Wed, 19 May 2021 10:04:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=deserted-net.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=E0M4QAeyolFoPWclscBEAa1nnOkm0Nci+hq2Ir0lbTg=;
        b=KCsCTA6gdqTUdO4jXSeg9KrmQMkBscn82/j4YTgKr3J0BcKnNkYPGms25c725TUawM
         TpG8oEpSSXhZnORluO4Pc7VdZnRf0RD6pYzDwgPmm9jJqjJYJuS8gjPZ/nblx9nzRxvW
         vDkFjlReyG9xZ3m88b9GYvp6CEUlWl+ydl4WRcIOxMsxVMWRK7ADW5x/kmkDV04SSALU
         iY0XOApFLt0deW5PdSm+bsk1hwjRTu6Th1FcikoSPME0qtI02bh1ta4BDu3ejMAaSSBJ
         uoZcPMRWBJhqHwyvgpZZlTsCJMYFeRVIOcEmU+MyeyhdFL5klbwoPh14RN9Uo1V92PS7
         33Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=E0M4QAeyolFoPWclscBEAa1nnOkm0Nci+hq2Ir0lbTg=;
        b=tJq473vjsHaw4jRHJMyF9HnqilOnIA4oJyI3I8ywRTOUv+YyGsykeNtHQM6dakqEYE
         2yhprnAzJ0n96YmJos/KfesqyHLL/D+KOgqGMwhPE4+kvDSLhZXvoCZdeQ3qDdlVnjVK
         gEAi/DsiCCqPQVuiAkpJYnrX8kbLgr3RDh6ZbCvyKcttG3CMSDf80L4QhI5Fxkd2hRrc
         UmY5NFw3SwhgzwrlgNdxXQ7GFMsQO5+N5q20F5AzPLXGY2GB8welv/GQ6gGNXBnC16Cx
         VrfaxJWHhjqrUATvn98CgC/jx481sTs07GBIQLxN02KY3bPlTDTM8cSVRoHOU0t/ikvh
         TX0Q==
X-Gm-Message-State: AOAM530B/6Hm1iMQKud0FGKNmm4BevwDtsOU8ptu/JSxudrBJoRtvz/4
	bAVpQvnXPLx4Y4o6NGM7yX/PvPWhePoGL1VqEQGF4Q==
X-Google-Smtp-Source: ABdhPJypwWog25XK2F4wjAi9wQtCY9AC2X+srhMRfUhKtsl3Mxe1eqSNOMEhIHCtjzHvDc61N0xocaYE0yQZyV85g9c=
X-Received: by 2002:a17:902:b616:b029:ee:c73b:163d with SMTP id
 b22-20020a170902b616b02900eec73b163dmr601779pls.30.1621443881994; Wed, 19 May
 2021 10:04:41 -0700 (PDT)
MIME-Version: 1.0
References: <a95d66fd6c9ec4a1549f243a47a2b10ac05a99ee.camel@iris-sensing.com> <CAP71WjzNEnp58WzeP_VrXMdfY45kFREFPe5FcKYvcHVOEX5WqQ@mail.gmail.com>
In-Reply-To: <CAP71WjzNEnp58WzeP_VrXMdfY45kFREFPe5FcKYvcHVOEX5WqQ@mail.gmail.com>
From: "Joe MacDonald" <joe@deserted.net>
Date: Wed, 19 May 2021 13:04:31 -0400
Message-ID: <CANBf+V3pUz1G+NVfX4PMP2AHyZp=6e4tqTpjW37a9YdXdec_Lw@mail.gmail.com>
Subject: Re: [yocto] hostile freenode takeover
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Jasper Orschulko <Jasper.Orschulko@iris-sensing.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000009c213a05c2b1d21e"

--0000000000009c213a05c2b1d21e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

OFTC is very good, IMO. It's been reliable, well managed, provides a good
selection of services, provides a web client for anyone not particularly
familiar with IRC clients,  and supports SSL + CertFP in addition to
standard auth mechanisms.

-J.

On Wed, May 19, 2021 at 12:56 PM Nicolas Dechesne <
nicolas.dechesne@linaro.org> wrote:

>
>
> On Wed, May 19, 2021 at 6:49 PM Jasper Orschulko <
> Jasper.Orschulko@iris-sensing.com> wrote:
>
>> -----BEGIN PGP SIGNED MESSAGE-----
>> Hash: SHA256
>>
>> Dear all,
>>
>> there have been recent reports of a hostile takeover of the freenode
>> service, as described in
>> https://gist.github.com/joepie91/df80d8d36cd9d1bde46ba018af497409
>>
>> The Yocto Project should verify these reports and take the necessary
>> actions, in order to protect its users.
>>
>
> Thanks for your email. We are aware, and have started to look into that.
>
> It looks like some open source communities have started to move to
> https://www.oftc.net/ or https://libera.chat/.. If anyone wants to bring
> any insights or recommendations... feel free!
>
>
>>
>> - --
>> With best regards
>>
>> Jasper Orschulko
>> DevOps Engineer
>>
>> Tel. +49 30 58 58 14 265
>> Fax +49 30 58 58 14 999
>> Jasper.Orschulko@iris-sensing.com
>>
>> =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =
=E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=
=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=
=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2
>>
>> iris-GmbH
>> infrared & intelligent sensors
>> Ostendstra=C3=9Fe 1-14 | 12459 Berlin
>>
>> https://iris-sensing.com/
>>
>>
>>
>> -----BEGIN PGP SIGNATURE-----
>>
>> iQEzBAEBCAAdFiEE4WyPMIC5Ap4+Ooo1Ygqew07VMNUFAmClQWsACgkQYgqew07V
>> MNUqVgf/awf7Sy5zSw1m5hZJTk7qQHQD3mMhLCH6UWnJoi3RtcF+Le8ZGTquEOGs
>> fQREEASj2ydMn7PI5RdLzVZRW9AoOShJ7SbscsD2FsjAVn1AI77KC8XHed8kp1Bx
>> 6QNsxiOaLGVdGRRteArSmj2CH8An0X/36Aj5eGRcoiWRTES6xuBcttfeQfahvNld
>> HJWoT5FjDF7pYdsLBxIHrw/rCAZnScyE6+BiRok0tv6dI5FGqoL4vo0PsT/3hX+C
>> AI/P5ORyl96XDnxFkc/8J08tIJaOuMYjMVc7XosQ3BAVcg2I9bdEIj/ZSideZaGe
>> DkW7vIolZaxaj5cO6/koVH9V1gVMnA=3D=3D
>> =3DHI7v
>> -----END PGP SIGNATURE-----
>>
>>
>>
>>
>=20
>
>

--=20
Joe MacDonald
:wq

--0000000000009c213a05c2b1d21e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">OFTC is very good, IMO. It&#39;s been reliable, well manag=
ed, provides a good selection of services, provides a web client for anyone=
 not particularly familiar with IRC clients,=C2=A0 and supports=C2=A0SSL + =
CertFP in addition to standard auth mechanisms.<div><br></div><div>-J.</div=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Wed, May 19, 2021 at 12:56 PM Nicolas Dechesne &lt;<a href=3D"mailto:ni=
colas.dechesne@linaro.org">nicolas.dechesne@linaro.org</a>&gt; wrote:<br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div=
 dir=3D"ltr"><br></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Wed, May 19, 2021 at 6:49 PM Jasper Orschulko &lt;<a hr=
ef=3D"mailto:Jasper.Orschulko@iris-sensing.com" target=3D"_blank">Jasper.Or=
schulko@iris-sensing.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">-----BEGIN PGP SIGNED MESSAGE-----<br>
Hash: SHA256<br>
<br>
Dear all,<br>
<br>
there have been recent reports of a hostile takeover of the freenode<br>
service, as described in<br>
<a href=3D"https://gist.github.com/joepie91/df80d8d36cd9d1bde46ba018af4974=
09" rel=3D"noreferrer" target=3D"_blank">https://gist.github.com/joepie91/d=
f80d8d36cd9d1bde46ba018af497409</a><br>
<br>
The Yocto Project should verify these reports and take the necessary<br>
actions, in order to protect its users.<br></blockquote><div><br></div><di=
v>Thanks for your email. We are aware, and have started to look into that.=
=C2=A0</div><div><br></div><div>It looks like some open source communities=
 have started to move to=C2=A0<a href=3D"https://www.oftc.net/" target=3D"_=
blank">https://www.oftc.net/</a> or=C2=A0<a href=3D"https://libera.chat/" t=
arget=3D"_blank">https://libera.chat/</a>.. If anyone wants to bring any in=
sights or recommendations... feel free!=C2=A0</div><div>=C2=A0</div><blockq=
uote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1p=
x solid rgb(204,204,204);padding-left:1ex">
<br>
- -- <br>
With best regards<br>
<br>
Jasper Orschulko<br>
DevOps Engineer<br>
<br>
Tel. +49 30 58 58 14 265<br>
Fax +49 30 58 58 14 999<br>
<a href=3D"mailto:Jasper.Orschulko@iris-sensing.com" target=3D"_blank">Jas=
per.Orschulko@iris-sensing.com</a><br>
<br>
=E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=
=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=
=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =
=
=E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2<br>
<br>
iris-GmbH<br>
infrared &amp; intelligent sensors<br>
Ostendstra=C3=9Fe 1-14 | 12459 Berlin<br>
<br>
<a href=3D"https://iris-sensing.com/" rel=3D"noreferrer" target=3D"_blank"=
>https://iris-sensing.com/</a><br>
<br>
<br>
<br>
-----BEGIN PGP SIGNATURE-----<br>
<br>
iQEzBAEBCAAdFiEE4WyPMIC5Ap4+Ooo1Ygqew07VMNUFAmClQWsACgkQYgqew07V<br>
MNUqVgf/awf7Sy5zSw1m5hZJTk7qQHQD3mMhLCH6UWnJoi3RtcF+Le8ZGTquEOGs<br>
fQREEASj2ydMn7PI5RdLzVZRW9AoOShJ7SbscsD2FsjAVn1AI77KC8XHed8kp1Bx<br>
6QNsxiOaLGVdGRRteArSmj2CH8An0X/36Aj5eGRcoiWRTES6xuBcttfeQfahvNld<br>
HJWoT5FjDF7pYdsLBxIHrw/rCAZnScyE6+BiRok0tv6dI5FGqoL4vo0PsT/3hX+C<br>
AI/P5ORyl96XDnxFkc/8J08tIJaOuMYjMVc7XosQ3BAVcg2I9bdEIj/ZSideZaGe<br>
DkW7vIolZaxaj5cO6/koVH9V1gVMnA=3D=3D<br>
=3DHI7v<br>
-----END PGP SIGNATURE-----<br>
<br>
<br>
<br>
</blockquote></div></div>
<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr=
" class=3D"gmail_signature">Joe MacDonald<br>:wq</div>

--0000000000009c213a05c2b1d21e--
