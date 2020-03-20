Received: from mail-qk1-f193.google.com (mail-qk1-f193.google.com [209.85.222.193])
 by mx.groups.io with SMTP id smtpd.web10.9707.1584711743311038778
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Mar 2020 06:42:23 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=sbfkkVdu;
 spf=pass (domain: gmail.com, ip: 209.85.222.193, mailfrom: easmith5555@gmail.com)
Received: by mail-qk1-f193.google.com with SMTP id t17so6783861qkm.6
        for <yocto@lists.yoctoproject.org>; Fri, 20 Mar 2020 06:42:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=KB1q3ajgyiHors4bc9PYtfy6XeLFztD7bciJ6mTJ73Q=;
        b=sbfkkVduGk9/SDk8zi7SeJbmGi53Th4XoczSFYmjFuK1VjdvMvKytcVrwX7l1ncPM+
         hXyAL8wrzn5TKpJLeGATKrEGFRAjQUPoW3k+B9Wd25CbL6qj4R/zoEilh4KZWG8onGXu
         j20nksqJ8zTFh90NHsUqUWLBreIj5OibJP6GL5BeY7f5L4TeDJDBKOWv7bd0ZJWI3o7W
         XUxJrLt8tE4O3jHDfke53iFIEBKQeifphyMTkUhutA9lcON1SwExOtQ7REQyombmAGD9
         S1VY2oCv54tToCC3UPk5XKkJvGv/Z+wziI84jO43Bzlqs2TmvIGO86N/4JzH7J1mvP/Z
         lICw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=KB1q3ajgyiHors4bc9PYtfy6XeLFztD7bciJ6mTJ73Q=;
        b=P6CqF6P6OnI8CsxoEHkCSwPI45F5dhzD7WJfJu7ng3+oYmgrcS9hVgkIA7gX2gJcPt
         OJ8gxJeJleowr4TieJUoUd1VNjpJKeih4vRuifDfulX8TjuG5YISgOSo+66FukvoCJk8
         O6ElkwPCeyUhFguzoRkMBZ4TNrl65W24cy6JikhTO4YWeetTT1gm0V2l69bYtBWp9hl4
         VYNMOlAi1ab7cqvJbbGHwyUYJhknAPWfxaieOhKqycH1UDmLl4o4riSN/oACOKV/RMhv
         a9AHGC0T/w6VrFCfl6fQMoPVsXQc3YT0kwrbofxHJ8rCJ9gr16G495CE0O59LaHt3n4q
         F4mA==
X-Gm-Message-State: ANhLgQ25Ud+e6uD1gex2FW9fJa0+DgSXzCNCnxQn1OYd7ZR4b+iYPMaD
	3xtIA3PGzmJ3enlagYDXNjheAVPV
X-Google-Smtp-Source: ADFU+vv4B8ur6xWl20ZQPXxWfJ/4G0dXfza4lXYH3dc8G6/j6IUE/im0jha1LXPniZ49E/obdYKrbA==
X-Received: by 2002:a05:620a:2f1:: with SMTP id a17mr8219489qko.438.1584711742013;
        Fri, 20 Mar 2020 06:42:22 -0700 (PDT)
Return-Path: <easmith5555@gmail.com>
Received: from [192.168.0.147] (c-73-36-170-176.hsd1.il.comcast.net. [73.36.170.176])
        by smtp.gmail.com with ESMTPSA id s49sm4744137qtc.29.2020.03.20.06.42.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 06:42:21 -0700 (PDT)
From: "Emily" <easmith5555@gmail.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [yocto] Patching submodules
Date: Fri, 20 Mar 2020 08:42:20 -0500
Message-Id: <63025A48-D336-42FE-98E8-404F36751E69@gmail.com>
References: <CAM9ZRVsQ=76WUDkWpU4ssSVTd-F4cR+G3hzzop3TXH9ScdQ8vA@mail.gmail.com>
Cc: yocto@lists.yoctoproject.org
In-Reply-To: <CAM9ZRVsQ=76WUDkWpU4ssSVTd-F4cR+G3hzzop3TXH9ScdQ8vA@mail.gmail.com>
To: Paul Barker <pbarker@konsulko.com>
X-Mailer: iPhone Mail (17C54)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Paul -

I=E2=80=99m not sure what you mean by =E2=80=9Cinclude all the necessary cha=
nges to the submodule in the patch=E2=80=9D, because anytime I change someth=
ing in the submodule then the git diff for the main repo just shows a change=
 to the submodule as a whole, not a specific file inside the submodule.=20

I don=E2=80=99t have complete control over the source but maybe I=E2=80=99ll=
 see if I can make a change to the submodule itself, that seems to be the ea=
siest.=20

Thanks,
Emily=20

> On Mar 20, 2020, at 6:18 AM, Paul Barker <pbarker@konsulko.com> wrote:
>=20
> =EF=BB=BFOn Fri, 20 Mar 2020 at 04:10, Emily <easmith5555@gmail.com> wrote=
:
>>=20
>> Hi all -
>>=20
>> I have a recipe that I'd like to patch - the source is in a repo which ha=
s a submodule, and the patch occurs in the submodule. Is there a way I can a=
pply this patch without getting an error? I do kind of understand why it's a=
 problem - the patch is changing the pointer of the submodule to a commit wh=
ich doesn't actually exist. Do I need to build the submodule as a separate r=
ecipe and patch it separately maybe?
>>=20
>> I used devtool for the patch and if I don't run the devtool reset command=
, then everything builds, but I think this is just because the workspace cre=
ated by devtool was added as a layer, which probably isn't a good long term s=
olution.
>>=20
>> The error I get (pasted below) says I can "enforce with -f" but I'm not s=
ure where that option goes exactly. Thanks for the help!
>>=20
>> Emily
>>=20
>> Error on build:
>> ERROR: opc-ua-server-gfex-1.0+gitAUTOINC+921c563309-r0 do_patch: Command E=
rror: 'quilt --quiltrc /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/=
aarch64-poky-linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sy=
sroot-native/etc/quiltrc push' exited with 0  Output:
>> Applying patch 0001-Update-Poverty-to-point-to-boost-python3.patch
>> File Poverty is not a regular file -- refusing to patch
>> 1 out of 1 hunk ignored -- rejects in file
>> Patch 0001-Update-Poverty-to-point-to-boost-python3.patch does not apply (=
enforce with -f)
>> ERROR: opc-ua-server-gfex-1.0+gitAUTOINC+921c563309-r0 do_patch: Function=
 failed: patch_do_patch
>=20
> The issue appears to be that patches are applied using quilt which
> doesn't understand a patch like this. I don't know of a good solution
> to this other than making a new commit in the top level repository and
> updating SRCREV.
>=20
> Perhaps it's better to carry the diff within the submodule as a patch
> - so you leave the submodule commit pointer where it is and instead
> include all the necessary changes to the submodule in the patch. Would
> that work for you?
