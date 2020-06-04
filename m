Received: from mail-qv1-f48.google.com (mail-qv1-f48.google.com [209.85.219.48])
 by mx.groups.io with SMTP id smtpd.web11.10071.1591262347544886095
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 Jun 2020 02:19:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=WEpRMgfC;
 spf=pass (domain: gmail.com, ip: 209.85.219.48, mailfrom: requinham@gmail.com)
Received: by mail-qv1-f48.google.com with SMTP id fc4so2574567qvb.1
        for <yocto@lists.yoctoproject.org>; Thu, 04 Jun 2020 02:19:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=rDNMMpQIvF6qHnUp45fzL/oBu4a75lOPgOAvSPFeYEg=;
        b=WEpRMgfCykhBiquewMUifl/0AIw3jCJK+P68OOHhkm3yxQVAelaZ/pHZEl5+XbT53D
         NncbkP7MwXNox1GGp75I8ofF+wXFbBCM+5JpOE8W1TrCHpaEnqugi8FlBohmSePBYMbd
         FaSiLiH7QBHGEFGSGztFlsQjnuc/TTJuAlRSxpTsNIHSScrPYmN5PIAzNqgGOVThw4tG
         il/jpud3g5gvOHlu6UxIE8+SjzTiOHzRTLNoY3X+gNlsZt47O5yTTqsQ9UAOyVflcrLI
         SubWMBCoHrWKscQtxuZk+HHcmlAhVNBL3vWNc8nETnJB+HoYRisYZijl83T7gc1ACDk+
         GXCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=rDNMMpQIvF6qHnUp45fzL/oBu4a75lOPgOAvSPFeYEg=;
        b=FFQEi8SL1Qgqy89vmo8Dg5NDQuSu44540fq2vUPMTMl2ejMsDer/UwapAzt7Ze2/Fb
         iF0CC+alKCg37Y6UmlzVQOi9Lz1bU0y7qiVIYTv81rz5C3mEBWmtr1QOBfJKU2ZU0sZW
         5qzRIoZ7ShAhCPuw278aT+/a71e4x3U2ZkvNNWF+Zu39J/2yqosG6QYnTwJ61imF/G32
         F4eo2N6kv9u7ckp2Xp7u3tNNNksBeis5UxleASQg/m3veh2a6PQcbez2muzGtpoflBqQ
         AZ/4+OTK3X5Sk7gChc6CBGFkKJb0W55+Piww6EY4ep2gUNPKrt0bRoVFXVX/92s0pTG6
         c8rg==
X-Gm-Message-State: AOAM533mnb4/JW35ErCYf4eXiLoWTPCq4yq1JfQXoasBa+BFMMvw+kzO
	8i4n0hI9X1dFxm6i1+2jpvoavIh0+LxwqjbtE8k=
X-Google-Smtp-Source: ABdhPJx7zjeuyo4Ukyt67630k9mMAzdDAdQ1Ak2UVceO8oaqWCGmAvU8nGFm5Vkhe/k/kFR5PkaG1yPTPJkSTDsXqTE=
X-Received: by 2002:a05:6214:bc5:: with SMTP id ff5mr656662qvb.118.1591262346498;
 Thu, 04 Jun 2020 02:19:06 -0700 (PDT)
MIME-Version: 1.0
References: <3jcy.1591258723749216280.cuB3@lists.yoctoproject.org> <CANNYZj9jWU9xS3OwhA7Ag+RiM6C_aT-EiAESHQFDh2wrZSt=BA@mail.gmail.com>
In-Reply-To: <CANNYZj9jWU9xS3OwhA7Ag+RiM6C_aT-EiAESHQFDh2wrZSt=BA@mail.gmail.com>
From: requinham@gmail.com
Date: Thu, 4 Jun 2020 11:18:55 +0200
Message-ID: <CABMxt4gwV-nZZkWRD8ayiNZL67rEx_rcWYLzVH9Y5hzNL1epoQ@mail.gmail.com>
Subject: Re: [yocto] Why and when we need to migrate to newer #yocto version?
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks Alexander,

When you say "The versions of libraries and tools are not independent
from Yocto versions, in fact they are directly defined through oe-core
metadata that is in a specific Yocto version." This not concern Linux
kernel ? because Yocto wiki say "While tooling is provided to use any
Linux kernel you wish, the linux-yocto Linux kernel recipes are tested
with all the emulated targets, the core hardware BSPs, and some vendor
layers."
Then, you cited an important element for maintenance strategy : security i=
ssue .
Except the 3.1 LTS, each Yocto version is maintained for 2 releases so
for 1 year. Thus, for security fix, I think the normal way is to track
vulnerabilities and apply patch because migrating to newest Yocto
version every year represents a cost and an enormous effort whereas in
certain cases, all the evolution don't necessarily concern the system
which we uses.
Is my understanding correct?

Mohamed

On Thu, Jun 4, 2020 at 10:38 AM Alexander Kanavin
<alex.kanavin@gmail.com> wrote:
>
> The versions of libraries and tools are not independent from Yocto versi=
ons, in fact they are directly defined through oe-core metadata that is in =
a specific Yocto version.
>
> For examples, what version of openssl is in your yocto builds? Is it sup=
ported/maintained upstream? What are you going to do if a critical security=
 vulnerability is discovered in that version?
>
> This extends to all of the packages: it makes sense to use the most rece=
nt Yocto version for two primary reasons:
>
> - the stack is much less likely to contain security vulnerabilities
> - it is much easier to satisfy project requirements w.r.t. version compa=
tibility, or needed features, if those features are only available in recen=
t versions of the package.
>
> This mailing list gets horror stories all the time from people who are f=
or some reason using some ancient Yocto, then a customer requirement arrive=
s that can only be satisfied through updating to a newer Yocto, or backport=
ing a major component to the old Yocto; both impossible or nearly impossibl=
e tasks. You do not want to end up in that situation.
>
> Alex
>
> On Thu, 4 Jun 2020 at 10:18, <requinham@gmail.com> wrote:
>>
>> My question is about the #Yocto update and maintenance strategy. I have=
 several projects for different boards and different versions of Yocto (1.7=
 2.0 2.2) which includes their BSP.
>>
>> As an OS build system, especially GNU/Linux, I don't understand exactly=
 when should we necessarily migrate to a new version?
>>
>> In my understanding, the versions of the kernel, libraries and tools ar=
e independent from Yocto version. If you need to migrate to a new version o=
f the Linux kernel, you have to modify/add the right recipe without worryin=
g about the Yocto version.
>>
>> Thus, the maintenance work -security, bugs, optimization- should relate=
 to the recipes and not to Yocto itself.
>>
>> Updating Yocto may have sens for me when we need to use new bitbake fea=
ture or new architecture but not to use new version of package. I think we =
should keep in mind to manage a certain consistency and compatibility betwe=
en the different versions of the recipes in order for example to use the ri=
ght version of the openssl library with the right version of Qt or even bet=
ween the right version of the kernel and drivers, etc.
>> Thanks,
>> Mohamed
>>
>>=20
