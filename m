Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web12.2404.1620262244149033066
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 May 2021 17:50:44 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=oeKEFMVd;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: raj.khem@gmail.com)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 6FFE838C0625
	for <yocto@yoctoproject.org>; Thu,  6 May 2021 00:50:43 +0000 (UTC)
Received: by mail-pj1-f47.google.com with SMTP id t2-20020a17090a0242b0290155433387beso1852026pje.1
        for <yocto@yoctoproject.org>; Wed, 05 May 2021 17:50:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:references:from:organization:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=P7dvhOrCJwwn5hl3xMW28XWxMaY1gagLel875wDVif0=;
        b=oeKEFMVdr3abSooRYIbHpeVDvqoDBbdOrMvzDy9TvM5aFFw3A7L6pj6qsiW3p6DrhI
         MGH526Qc+i3iScOWueBzPfS9TQ4wW9DRKJzfBEbOUW40y4yQWiJQjPPZ1yIE6SQTVot0
         3j/m7p47FpNaKbua4hs5XpPVo+XGPsmvG3vELZZLhQ1Ub7pGYOVjN8ynRkHQKyMom09T
         e0sEOpDQK/65lcd0sv8wpkmiIvTIoCwAgENPSnfhPPHUe8hADkQkbDW44u4tlMYmo4d5
         ddZAIX8xRpJEz86WH0GYyFj/Ez1XqM19YAEAW61Q8Usq8okn8HDSBAfLsLa7XzZkGU58
         1dPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=P7dvhOrCJwwn5hl3xMW28XWxMaY1gagLel875wDVif0=;
        b=moeAvTAEwqCBMQ3OoQ8NplT8EpneXD4kwymvMGnvUOUEUoVXk3KpUNxXk7Fe2TvqDw
         AI/ni/xFlr8+tPIUOzTcaWnXZgsZlNxfD7mO1Z273LymxwRInIgN4DcHX6MGuh5VoPl4
         R/iSgkBghHzvqar1H6F2I0JLSeDRz8dEsMpasa8ztuiYPhogN3QPL/QG2nxxi+qBykqf
         a4snQK1GcDgP3qS0COmNPgp3hyoIXwQN6d6VoFwnDjH/DuvDq/PY7374JWBuAUf+AVGq
         jKR+GQ4Rj53oSaMRUlz7fcifzIZ70G/U33BWPAArF+3ZDdss6wDJIQmMQp4byC+VdzL4
         fW4Q==
X-Gm-Message-State: AOAM532sAuc0XRWDfFcncsZWoGOXSzZIHqxX69Ae3gP5fTFxQsMvJU6M
	YkWkdXtVw/H+yDYqjC710vrS+TIqelZN7A==
X-Google-Smtp-Source: ABdhPJw9hrWQsdmb4yWucxTjFBQyajnT11hw3WGPP5FL4znmLMiV0gGI46gogBi0ebC5Gx21UGKjBQ==
X-Received: by 2002:a17:90b:4ad2:: with SMTP id mh18mr1445777pjb.148.1620262242401;
        Wed, 05 May 2021 17:50:42 -0700 (PDT)
Received: from ?IPv6:2601:646:9200:a0f0:c0f3:6794:1988:a526? ([2601:646:9200:a0f0:c0f3:6794:1988:a526])
        by smtp.gmail.com with ESMTPSA id n30sm361258pfv.52.2021.05.05.17.50.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 05 May 2021 17:50:42 -0700 (PDT)
Subject: Re: [yocto] Recipe Grep'ing
To: Chuck Wolber <chuckwolber@gmail.com>,
 Yocto-mailing-list <yocto@yoctoproject.org>
References: <CAB=6tBTGiMBH+g-uy3sr1jKA-j1EkSDt0B+8DLb4_iMSaMax6Q@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Organization: HIMVIS LLC
Message-ID: <55052749-a440-214d-84b7-4b3e5923ee72@gmail.com>
Date: Wed, 5 May 2021 17:50:40 -0700
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:78.0)
 Gecko/20100101 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <CAB=6tBTGiMBH+g-uy3sr1jKA-j1EkSDt0B+8DLb4_iMSaMax6Q@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable



On 5/5/21 5:41 PM, Chuck Wolber wrote:
> I was pondering putting some work in to a fairly large patch set aimed=
=20
> at making recipes easier to grep through, and wanted to get some=20
> feedback before I put time and effort into it.
>=20
> I have often found that the following pattern cleanly describes the=20
> "what" and the "why" when grep'ing through recipes to search for things:
>=20
> FOO +=3D "item1"
> FOO +=3D "item2"
>=20
> Whereas this pattern gives us the "what", but not the "why":
>=20
> FOO =3D "item1 \
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 item2 \
>  =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 "
>=20
> After discussing this with Richard Purdie on IRC, I also understand that=
=
=20
> the latter pattern benefits some forms of build output. In addition, for=
=
=20
> SRC_URI, the "why" is normally fairly obvious from context clues.
>=20
> So, is there any interest in accepting a patch set of that nature for=20
> Yocto and OE repositories? If so, what variables and situations should=
=20
> be considered "off limits" to a change like that?

I think it is a good idea, however, to make it persistent it would be=20
nice to have a linter, which can do such checks and perhaps we can=20
enable this in autobuilders so we can keep such cleansups maintained

>=20
> ..Ch:W..
>=20
>=20
> --=20
> *"Perfection must be reached by degrees; she requires the slow hand of=
=20
> time." - Voltaire*
>=20
>=20
>=20
>=20
