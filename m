Received: from mail.yoctoproject.org (mail.yoctoproject.org [198.145.29.25])
 by mx.groups.io with SMTP id smtpd.web08.1282.1625529042262016009
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Jul 2021 16:50:42 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@gmail.com header.s=20161025 header.b=s55auiGh;
 spf=softfail (domain: gmail.com, ip: 198.145.29.25, mailfrom: akuster808@gmail.com)
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
	by mail.yoctoproject.org (Postfix) with ESMTPS id 5466F38C031F
	for <yocto@yoctoproject.org>; Mon,  5 Jul 2021 23:50:41 +0000 (UTC)
Received: by mail-pl1-f179.google.com with SMTP id m15so6316685plx.7
        for <yocto@yoctoproject.org>; Mon, 05 Jul 2021 16:50:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language;
        bh=kNHUapNqybH5pNA4YdH87vMlxuoEi9ZOy2oUx2BAmVI=;
        b=s55auiGh1kgX9kK1zBWK3va20smHciElNQZN7+zgjfBauG3o29DzJAqNCkJT8I4KWS
         mqwdarUzILNcanLurb0qv0W8FpF+SqjtQeNA83G9dfNJ9Bfh4uFl8gPJ5AbmEpZ1OteL
         zn6p+z5wU7LkIlsCWDXhRee42bey9XpK2XeGXxWMdw/OLFGE5Cq9ajAhZ9D03XzkzzX9
         6EpMfYZ/1TFVIlBAhUjjpMZ2ARcs0TSR9DNRS5VnqLZ5nYjISdLd3G3N2R2oRSaByXUE
         JFOGDgsf7Lyc0UZ+HnaarE3UNKoujgCJLetMVLitmiig0VAbTFJPaDhsh3CCdDl50Wlx
         obZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language;
        bh=kNHUapNqybH5pNA4YdH87vMlxuoEi9ZOy2oUx2BAmVI=;
        b=h3Dem5tOJw8AOZz1KP6pvJNO7xlej82afMUirNJ2stjonpzhy7NqTn8jsavY9gz94b
         FDa4+9hdpc2+q+ZLVTpC+SIbPI7IIDeb2jgd4FjGjsyTEg7xTIdaNfmhi94f2bpF/L8y
         fejtVL3rE9e0kHuWVSiCnsK0XTwGGwarPryCuU+vr3M78z6IsmJvfanBs8IpA4YEtX+I
         49MHXAjkyRAsdMxoAFSyGKFmXT3ZBK3YbTuibhB+rW+SLq7wcc1dhObEzIPGimhok9H9
         huvQNL1Yx3QRM99FkcgMSuFhLI9kJzYy+ZHR1wP9DxuY+u6SesYUnQWGQ6KM4sQumGdJ
         c1oQ==
X-Gm-Message-State: AOAM533KTqVn3YhXVhvC1IcRhZYBpAG4RWSbzyXOiSEVbw2vd82rdYLD
	XHaZBNJm+x0P1KfSkawumxM=
X-Google-Smtp-Source: ABdhPJy1OHtE5tE2BZIhub8gEqzlXmE+MYqWWATeW3cRrYYKLyIu2iYJ+BF5ifOUDIF315nK57yYjw==
X-Received: by 2002:a17:90a:de17:: with SMTP id m23mr1403955pjv.195.1625529039747;
        Mon, 05 Jul 2021 16:50:39 -0700 (PDT)
Received: from ?IPv6:2601:202:4180:a5c0:37df:273f:1e4f:b167? ([2601:202:4180:a5c0:37df:273f:1e4f:b167])
        by smtp.gmail.com with ESMTPSA id p6sm534953pjk.37.2021.07.05.16.50.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jul 2021 16:50:39 -0700 (PDT)
Subject: Re: [yocto] meta-parsec build failure
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
 Anton Antonov <Anton.Antonov@arm.com>
References: <f3333619-005e-02f7-e26a-bd7d3e810e58@gmail.com>
 <CAMKF1sqSkPjtfaOH=mF4Vzp4o+pQgaSy48_XDPRG+TKLVWVX=g@mail.gmail.com>
From: "Armin Kuster" <akuster808@gmail.com>
Message-ID: <8bfb3511-b2b6-1ad1-7271-b72c00cecf3c@gmail.com>
Date: Mon, 5 Jul 2021 16:50:38 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1sqSkPjtfaOH=mF4Vzp4o+pQgaSy48_XDPRG+TKLVWVX=g@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable



On 7/5/21 4:15 PM, Khem Raj wrote:
> yeah perhaps try using -DMBEDTLS_FATAL_WARNINGS=3DOFF
I would love to try that out, Where would I apply that?
=C2=A0mbedtls is a dependent create to a dependent create to parsec-servic=
e
recipe.=C2=A0 The Rust paradigm in OE=C2=A0 does make my head hurt.

-armin
>
> On Mon, Jul 5, 2021 at 1:57 PM Armin Kuster <akuster808@gmail.com> wrote=
:
>> The parsec-service in meta-parsec has been failing ever since gcc 11 wa=
s
>> merged into core.
>>
>> https://errors.yoctoproject.org/Errors/Build/123537/
>>
>> I have already opened an issue with upstream:
>> https://github.com/parallaxsecond/rust-psa-crypto/issues/85
>>
>> If anyone is interested in this package, I could use an extra set of
>> eye's on progress of this build failure.
>>
>> regards,
>> Armin
>>
>>=20
>>

