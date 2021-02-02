Received: from mail-lf1-f42.google.com (mail-lf1-f42.google.com [209.85.167.42])
 by mx.groups.io with SMTP id smtpd.web12.50203.1612261801371952538
 for <yocto@lists.yoctoproject.org>;
 Tue, 02 Feb 2021 02:30:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@burtonini-com.20150623.gappssmtp.com header.s=20150623 header.b=RlkAxcGX;
 spf=pass (domain: burtonini.com, ip: 209.85.167.42, mailfrom: ross@burtonini.com)
Received: by mail-lf1-f42.google.com with SMTP id q12so27163671lfo.12
        for <yocto@lists.yoctoproject.org>; Tue, 02 Feb 2021 02:30:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=burtonini-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=PhFJRCPEo58S3H/BuaLfs58XAU4Hlls2zeN4WzArqS8=;
        b=RlkAxcGX+7WDp1xzmg2BSvjvlNHMU1w8QH9x3mD3Dl7BTfs88mtB2R5DliYbUW+9vi
         HPm/lzShsk1xcB63nK8cp+49LhwSz62JGgnu5ipiCRZ96pErwB7j9gN2mGvXehSiaAF1
         U99rzHcdhVfrjcoycCcrBodqrX3CXIbSVQrtcjHTLUtTQZOrYOGx3PIrNNOguJAt8lQf
         maS8ZG5UPx+rHTFPLNEpmJAdxb+7daQ5Y2XRjzvrjliqLsN4xl4rKE2GuSs4EqK0aOY6
         uYWQPCH13OmHMnyy5lSpn0z01NU/SHpMY4d251mvfzl8iw0KtVXrL85Wm6w6ajg+7/9P
         0JnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=PhFJRCPEo58S3H/BuaLfs58XAU4Hlls2zeN4WzArqS8=;
        b=gcGgs024la95wuh3XpHhRE0px/OHjA7EeHOUEyE1ALshsP1BK6DSUzee5FDTWyIHeq
         ZCXIFFCcp+FMtxuPHD5LTVK9p0CoAJemIHCZn2EJjXrnQosQleovS6pHeWZddjNLy7/S
         KALPiav73Ns8NE5HqWF9Cq3gNllVjz7wptY8twP0duy2y4ZPmcJXMF5knn08fhEUtDt9
         YLtRcxmVsXzOQ3oNZcXk8TD4Hn/xACgcCeiPLDv22lJ94uwE4Dn/QUllgtPImSpBQmlU
         C6ImauP4zkxEeKFi4UT6BniZVWrqrIsFZSEV+5J/p1tfa5Orem1EuVenjSMfV6iDBvsW
         RjNQ==
X-Gm-Message-State: AOAM531zWCtWMSvmafFzM+S8I764WBgEhUx7fVl0gAZlSuHRaXULWBWw
	KGiT2DHTD2SBvUbM1975rs6CtWRaKRMuyvQ3kvE7vQ==
X-Google-Smtp-Source: ABdhPJz3zkKwPYwWlFDfS+o/vwdTlz+GxUenyomPmVm0EBnhJODDSCJAT3KyWUy63LTCAUJCeAMspYVHp7TbHwfF2Tg=
X-Received: by 2002:ac2:4114:: with SMTP id b20mr10827161lfi.180.1612261799382;
 Tue, 02 Feb 2021 02:29:59 -0800 (PST)
MIME-Version: 1.0
References: <CAOx=Z6HG7nG4eC0mU=iDvkz=jtOp_OCeDmacAvF69=X_FqMZfg@mail.gmail.com>
 <CANx9H-DvpKkPpQnMMnFBSnVEvFXiWMHOmxT1iaCUeigp51yTmA@mail.gmail.com>
In-Reply-To: <CANx9H-DvpKkPpQnMMnFBSnVEvFXiWMHOmxT1iaCUeigp51yTmA@mail.gmail.com>
From: "Ross Burton" <ross@burtonini.com>
Date: Tue, 2 Feb 2021 10:29:48 +0000
Message-ID: <CAAnfSTuyR1bE0jaPdNSp6g0u7dRfKtRHr2gnd0ZgLNyQjdu8zQ@mail.gmail.com>
Subject: Re: [yocto] [meta-zephyr] bitbake zephyr-helloworld configure failure
To: Tim Orling <ticotimo@gmail.com>
Cc: Peter Smith <salerio@gmail.com>, yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I sent a patch to meta-oe yesterday: there was a missing dependency in
python3-kwalify and missing class extend in the ruamel recipe.

Ross

On Thu, 28 Jan 2021 at 05:49, Tim Orling <ticotimo@gmail.com> wrote:
>
>
>
> On Wed, Jan 27, 2021 at 12:51 AM Peter Smith <salerio@gmail.com> wrote:
>>
>> Using master branch
>>
>> MACHINE=3D96b_nitrogen bitbake zephyr-helloworld creates a configure er=
ror due to a failure for native python to import ruamel.
>>
>> I fixed this temporarily by creating a python3-ruamel-yaml_%.bbappend t=
hat includes the required BBEXTEND and adding python3-ruamel-yaml-native to=
 zephyr-kernel-common.inc.
>>
>> I don't know (not enough experience) if this is actually a problem in t=
he meta-openembedded recipe or meta-zephyr?
>
>
>
> BBEXTEND =3D =E2=80=9Cnative=E2=80=9D is a perfectly fine patch to submi=
t to meta-python. We tend to only make those changes when needed (as in you=
r use case) rather than universally. Please submit a patch :)
>>
>>
>> Best Regards
>> Peter
>>
>>
>>
>
>=20
>
