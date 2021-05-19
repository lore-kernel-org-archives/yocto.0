Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com [209.85.222.171])
 by mx.groups.io with SMTP id smtpd.web10.14855.1621444179278810280
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 May 2021 10:09:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=CBHas+su;
 spf=pass (domain: gmail.com, ip: 209.85.222.171, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f171.google.com with SMTP id c20so13450252qkm.3
        for <yocto@lists.yoctoproject.org>; Wed, 19 May 2021 10:09:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=X9MURhKMpoztnA6vjGX/vInk/+4JFQY4KR7ByiP7DGs=;
        b=CBHas+suAHDQiSISqZVMQS89b6PnSlAayjL8gWB9mi3hoh5q8Fj91nXwaJX98VTRKT
         RAAupx4EAtnXzZIUcIH6Dznc5FyKbuQDjt+2IRpJYUcgoGWBpTwG9P6GXNZddMIJXOEi
         pG9TxOHpzd1FP+OK865nH1LanRCbF5hy8QdwSmwxse6Go8QDKg7SH4/2Q0itU0iv0bFr
         YUUsJe4wTTBcxXNY41umC/v6BDiQLPCF0sd7+IpCcd2oGxfhXoBEJJlRg+jb/OHaUnSp
         mLrgdT04kumcRi1T5F5s27KyfSgRkFiuD3EBCpwudA83DQrh10I0dz/aVM33/GGfklZt
         S6KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=X9MURhKMpoztnA6vjGX/vInk/+4JFQY4KR7ByiP7DGs=;
        b=oQEcw0MPCKPMTsKY4yi/G6mv5TeGuhdbIr+kDs03TDqWcFCxC7KBkVOrg4cGvPtjny
         qS4HQswppDrjtSLpnU5D3DpMPtsaIKiXpx6hYPu77eOIeLUJebEKNUTC691IfOABsp1e
         m80K5c7ZblTUdQdpAKxocf04UTnDufz4Y0QedHFd0zuhr5IWER5XyWGwXXA1+NupI/40
         fjvozSf4J48BL++5UXRC1FPxVyR4VFo7Vna6Ak+79JjDxj38sqkM8zVf6fduT1/2m9b8
         HL/uppYwzQ3aTiFUU1YoWf6dKUaEgRLzK3T4txV5/T8dG7BoT2eIEhmTbqAMRAEWhSSK
         ooHA==
X-Gm-Message-State: AOAM533Y+sVFD0t5sutZM+s7q5ztHIoeduc2kHkcTF8KXNLC1/KSRSXF
	7TlOu5zm0RmDN4mf1/Hi7ZDurswI8EPLsIxSsbw=
X-Google-Smtp-Source: ABdhPJwXqtYEB8MOQ4y8plr2sQG38jcIJxUCGoWCOpfqbnjjUcYlQ1xl77M1jbu4wAKHLIQhTypNt6LLwvKVAP0QQkI=
X-Received: by 2002:a37:270d:: with SMTP id n13mr388786qkn.146.1621444178337;
 Wed, 19 May 2021 10:09:38 -0700 (PDT)
MIME-Version: 1.0
References: <a95d66fd6c9ec4a1549f243a47a2b10ac05a99ee.camel@iris-sensing.com> <CAP71WjzNEnp58WzeP_VrXMdfY45kFREFPe5FcKYvcHVOEX5WqQ@mail.gmail.com>
In-Reply-To: <CAP71WjzNEnp58WzeP_VrXMdfY45kFREFPe5FcKYvcHVOEX5WqQ@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Wed, 19 May 2021 10:09:12 -0700
Message-ID: <CAMKF1srcOQwH41Z9g00ZRgaLuN=JS9D1wVNv-+3TP2c=GWOxYA@mail.gmail.com>
Subject: Re: [yocto] hostile freenode takeover
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Jasper Orschulko <Jasper.Orschulko@iris-sensing.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, May 19, 2021 at 9:56 AM Nicolas Dechesne
<nicolas.dechesne@linaro.org> wrote:
>
>
>
> On Wed, May 19, 2021 at 6:49 PM Jasper Orschulko <Jasper.Orschulko@iris-=
sensing.com> wrote:
>>
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
>
>
> Thanks for your email. We are aware, and have started to look into that.
>
> It looks like some open source communities have started to move to https=
://www.oftc.net/ or https://libera.chat/.. If anyone wants to bring any ins=
ights or recommendations... feel free!

perhaps good time to consider matrix

>
>>
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
>
>=20
>
