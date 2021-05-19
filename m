Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
 by mx.groups.io with SMTP id smtpd.web12.14619.1621443379914627837
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 May 2021 09:56:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=sIPU6YLr;
 spf=pass (domain: linaro.org, ip: 209.85.218.45, mailfrom: nicolas.dechesne@linaro.org)
Received: by mail-ej1-f45.google.com with SMTP id k14so17504340eji.2
        for <yocto@lists.yoctoproject.org>; Wed, 19 May 2021 09:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7LMFxLgcPyqfwR6oF0eCh8b73knaKCvm0iAnVFOPIF8=;
        b=sIPU6YLrvAKyEFkrGn5XxomOJ8wR/pSbxlcUGk0DbS17H7CaFO2HpLG+hvwv8BPiaA
         spZpw+y1eYjIHpjAFo/mbYAXn3iab4mdNoGjfwHXcE+6dxmjslckDnR9H02c2HHhPM+E
         ufcWXCn6M3sONFUhPv3QnHPY1zOXb+BoDONN5LMoyfH0Okm8jykUUS3SGK9AZBdW3sRj
         kVsnkZZOh10CFgNZ97/s5hhs2a89/4QrfALCmk2J0ispx05X01C8/RuxOCYNSFVB40pe
         INLWiSlshpALFYEiqd1JizT1GiXcsBw70iYkFdipObwl5DM01JDJ49LdOECvR/+4+dXM
         SNWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7LMFxLgcPyqfwR6oF0eCh8b73knaKCvm0iAnVFOPIF8=;
        b=kuqxBxTlTOcAKobgQnSOlK2WpyzDNakXcXCjQ9+mmZ/SunbwcXJ4uJIv66nUNr97IQ
         vhkwmsQaEHOmejrvlH7y1bv9I+BHMYtTZn0BX+aDiuhv1S05b6wB3kAuPqP+X6dQKehs
         PlgmgOTZ8FC8FF0Uk2C/el9K6Ilmiea0019p7x0cyrJfoasjcPF3QdqG16HsN460v4Tk
         Z58niWSahEVhfKIm89v15t1JX5Brd9M3bKVUlCyxT3u+66tdMf5AFccj+qGxZB//r6PF
         s5BJOg+D55WhRVpjeS9mfbR0gclLjrZKmU6K7CAFY4b83LPgzA0Ecmvl/EdkP5BlY26M
         UVzQ==
X-Gm-Message-State: AOAM5324FM7wAk4Nr9qwThZffNPh2yoSJ2fK42iW26IalqQyZtD+vHNu
	E8ZA3xxD4rgqz+jlETySG2KU684/Qb9QOJXHUo0UVA==
X-Google-Smtp-Source: ABdhPJw/Aodo5CWzvJuEzPUMAzNdMdHY09jl5f5x5E4V1FUiYUafuM89nI/HLGCponajqiUimT5FittkLUJxP8ll/7c=
X-Received: by 2002:a17:906:c0c6:: with SMTP id bn6mr123407ejb.436.1621443378311;
 Wed, 19 May 2021 09:56:18 -0700 (PDT)
MIME-Version: 1.0
References: <a95d66fd6c9ec4a1549f243a47a2b10ac05a99ee.camel@iris-sensing.com>
In-Reply-To: <a95d66fd6c9ec4a1549f243a47a2b10ac05a99ee.camel@iris-sensing.com>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Wed, 19 May 2021 18:56:07 +0200
Message-ID: <CAP71WjzNEnp58WzeP_VrXMdfY45kFREFPe5FcKYvcHVOEX5WqQ@mail.gmail.com>
Subject: Re: [yocto] hostile freenode takeover
To: Jasper Orschulko <Jasper.Orschulko@iris-sensing.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000096893505c2b1b450"

--00000000000096893505c2b1b450
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 19, 2021 at 6:49 PM Jasper Orschulko <
Jasper.Orschulko@iris-sensing.com> wrote:

> -----BEGIN PGP SIGNED MESSAGE-----
> Hash: SHA256
>
> Dear all,
>
> there have been recent reports of a hostile takeover of the freenode
> service, as described in
> https://gist.github.com/joepie91/df80d8d36cd9d1bde46ba018af497409
>
> The Yocto Project should verify these reports and take the necessary
> actions, in order to protect its users.
>

Thanks for your email. We are aware, and have started to look into that.

It looks like some open source communities have started to move to
https://www.oftc.net/ or https://libera.chat/.. If anyone wants to bring
any insights or recommendations... feel free!


>
> - --
> With best regards
>
> Jasper Orschulko
> DevOps Engineer
>
> Tel. +49 30 58 58 14 265
> Fax +49 30 58 58 14 999
> Jasper.Orschulko@iris-sensing.com
>
> =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =
=E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=
=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=
=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2 =E2=80=A2
>
> iris-GmbH
> infrared & intelligent sensors
> Ostendstra=C3=9Fe 1-14 | 12459 Berlin
>
> https://iris-sensing.com/
>
>
>
> -----BEGIN PGP SIGNATURE-----
>
> iQEzBAEBCAAdFiEE4WyPMIC5Ap4+Ooo1Ygqew07VMNUFAmClQWsACgkQYgqew07V
> MNUqVgf/awf7Sy5zSw1m5hZJTk7qQHQD3mMhLCH6UWnJoi3RtcF+Le8ZGTquEOGs
> fQREEASj2ydMn7PI5RdLzVZRW9AoOShJ7SbscsD2FsjAVn1AI77KC8XHed8kp1Bx
> 6QNsxiOaLGVdGRRteArSmj2CH8An0X/36Aj5eGRcoiWRTES6xuBcttfeQfahvNld
> HJWoT5FjDF7pYdsLBxIHrw/rCAZnScyE6+BiRok0tv6dI5FGqoL4vo0PsT/3hX+C
> AI/P5ORyl96XDnxFkc/8J08tIJaOuMYjMVc7XosQ3BAVcg2I9bdEIj/ZSideZaGe
> DkW7vIolZaxaj5cO6/koVH9V1gVMnA=3D=3D
> =3DHI7v
> -----END PGP SIGNATURE-----
>
>=20
>
>

--00000000000096893505c2b1b450
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, May 19, 2021 at 6:49 PM Jaspe=
r Orschulko &lt;<a href=3D"mailto:Jasper.Orschulko@iris-sensing.com">Jasper=
.Orschulko@iris-sensing.com</a>&gt; wrote:<br></div><blockquote class=3D"gm=
ail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,=
204,204);padding-left:1ex">-----BEGIN PGP SIGNED MESSAGE-----<br>
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
 have started to move to=C2=A0<a href=3D"https://www.oftc.net/">https://www=
.oftc.net/</a> or=C2=A0<a href=3D"https://libera.chat/">https://libera.chat=
/</a>.. If anyone wants to bring any insights or recommendations... feel fr=
ee!=C2=A0</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"=
margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-lef=
t:1ex">
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

--00000000000096893505c2b1b450--
