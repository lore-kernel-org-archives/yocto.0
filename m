Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web09.10469.1624884585117308136
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Jun 2021 05:49:45 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@linuxfoundation.org header.s=google header.b=IhwKwCCd;
 spf=softfail (domain: linuxfoundation.org, ip: 198.145.29.25, mailfrom: richard.purdie@linuxfoundation.org)
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 8FF9838C084E
	for <yocto@yoctoproject.org>; Mon, 28 Jun 2021 12:49:44 +0000 (UTC)
Received: by mail-wm1-f41.google.com with SMTP id w13so11389318wmc.3
        for <yocto@yoctoproject.org>; Mon, 28 Jun 2021 05:49:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linuxfoundation.org; s=google;
        h=message-id:subject:from:to:date:in-reply-to:references:user-agent
         :mime-version:content-transfer-encoding;
        bh=a+ffIls1u7cY02MNZL/HQudKl22QcT73uuDyG6hZE3I=;
        b=IhwKwCCdVUDEwYW+DqBug8hMylQQLyVzVEpLcXw+Hazd2laOqDU1pkGkKZ1Ql/qwdD
         +4FAls5tTJPBJIHG8pp5rK9PY4Rki9YJJkapSG4n02ocxs3uC4mE6OdGGY79sAfQGsY2
         g9BJR/sKpBvQkN9PlVoJrGLIvCkRcmMm5J1+U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=a+ffIls1u7cY02MNZL/HQudKl22QcT73uuDyG6hZE3I=;
        b=RiTsek59B0Nz8aAzkUGq3d5s8fBLyGLm8BOQBjx+pgvK7UgMP0Rl5n6rvzkPDIiNT1
         cvqueJrBznvV8UrS0qlb6JfM7HsJLxjjvyTuIRpcGW6KoKDPT0U9pa1+huiZUUN+D9Cx
         EjeTexEagdWZ6wmUpqYNwLDJuINjP89PaQVFfzaDc3P0VM0pkjbhzKvcrZS54gLMFNCa
         Dhe8jZok88hTQ4Ytuv1GHX0TBiD5ZvOTrBn/p3EgNtS5VoqCsLwV+0vexFIszo5BWvrv
         POwGuMGPv9D6CUVOwWmbPo+Mwmhijjx4NtKXJVuoITAmbX5dHT0xkUpN++EKPAK0vedD
         AP8A==
X-Gm-Message-State: AOAM533zHKuUR1zstyv6bLQajmf9zixv1/IP9OiAWtKxs9VQfmUbSArP
	lQnwl3MFeo+10+lyeDdrxMPcyXF+SbhqNw==
X-Google-Smtp-Source: ABdhPJzxQGct5gBP3p8ae6pqQ9fa+PR7ZVRzc89WayX3X7CEo960ZFJV5WDZ2rGemkFPTJ8WEQq+0A==
X-Received: by 2002:a1c:b3d7:: with SMTP id c206mr26590435wmf.148.1624884583064;
        Mon, 28 Jun 2021 05:49:43 -0700 (PDT)
Received: from ?IPv6:2001:8b0:aba:5f3c:6f48:4aa9:490d:a26? ([2001:8b0:aba:5f3c:6f48:4aa9:490d:a26])
        by smtp.gmail.com with ESMTPSA id t64sm13368529wma.44.2021.06.28.05.49.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Jun 2021 05:49:42 -0700 (PDT)
Message-ID: <c48956c8a5358d081fb9e8b9b04cf27848bde756.camel@linuxfoundation.org>
Subject: Re: [OE-core] Hardknott (GCC10) Compiler Issues
From: "Richard Purdie" <richard.purdie@linuxfoundation.org>
To: Chuck Wolber <chuckwolber@gmail.com>, 
	openembedded-core@lists.openembedded.org, Yocto-mailing-list
	 <yocto@yoctoproject.org>
Date: Mon, 28 Jun 2021 13:49:41 +0100
In-Reply-To: <CAB=6tBQR1S=2niGMojS_55-JebtQX4LybA2aEh_6YNtXf_3yNA@mail.gmail.com>
References: 
	<CAB=6tBQR1S=2niGMojS_55-JebtQX4LybA2aEh_6YNtXf_3yNA@mail.gmail.com>
User-Agent: Evolution 3.40.0-1 
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 2021-06-24 at 21:48 -0700, Chuck Wolber wrote:
> All,
>=20
> Please accept my apologies in advance for the detailed submission. I th=
ink=C2=A0
> it is warranted in this case.
>=20
> There is something... "odd" about the GCC 10 compiler that is delivered=
 with=C2=A0
> Hardknott. I am still chasing it down, so I am not yet ready to declare=
 a=C2=A0
> root cause or submit a bug, but I am posting what I have now in case an=
yone=C2=A0
> has some insights to offer.

The issue you describe does sound strange. I was a little unclear about e=
xactly
which combinations were passing/failing. Are you saying that some version=
s of=C2=A0
buildtools let the system work but some do not? We now have gcc 11 in mas=
ter=C2=A0
so it would be interesting to know how things worked there and if any=C2=A0
regression was fixed.

I have also heard reports of issues with bison segfaulting from other sou=
rces
but I don't have anything I can point to specifically about it.

The target system should be independent of buildtools version and the tar=
get
system should also be binary reproducible so if that were changing throug=
h
changing buildtools tarball, that would be worrying in itself.

> P.P.S. For the sake of completeness, I had to add the following files t=
o the buildtools-extended
> sysroot to fully complete the build of our images:
>=20
> /usr/include/magic.h -> util-linux "more" command requires this.
> /usr/include/zstd.h -> I do not recall which recipe required this.
> /usr/bin/free -> The OpenJDK 8 build scripts need this.
> /usr/include/sys/* -> openjdk-8-native
> /lib/libcap.so.2 -> The binutils "dir" command quietly breaks the build=
 without this. I am not a fan of the
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 lack of error checking in the binutils build...
> /usr/include/sensors/error.h and sensors.h -> mesa-native
> /usr/include/zstd_errors.h -> qemu-system-native

It is great to have this list, outside the non-jdk issues are probably is=
sues we=C2=A0
should look at fixing in OE-Core. Do you mean binutils above for the dir =
command?

Cheers,

