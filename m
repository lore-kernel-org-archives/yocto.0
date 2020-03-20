Received: from mail-qk1-f196.google.com (mail-qk1-f196.google.com [209.85.222.196])
 by mx.groups.io with SMTP id smtpd.web11.1037.1584718166113026565
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Mar 2020 08:29:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kiyncIXT;
 spf=pass (domain: gmail.com, ip: 209.85.222.196, mailfrom: easmith5555@gmail.com)
Received: by mail-qk1-f196.google.com with SMTP id j4so7169529qkc.11
        for <yocto@lists.yoctoproject.org>; Fri, 20 Mar 2020 08:29:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=content-transfer-encoding:from:mime-version:subject:date:message-id
         :references:cc:in-reply-to:to;
        bh=yrEsUUNTiydjBRbo+chTv4GBhvYue/PBD7MUVZV3UsA=;
        b=kiyncIXT4TOKZeeIThnb6ut0xpnLEW/Kh4cfrSUoMV/GD1iSQkPxDmsU7OnpMfsPlp
         9X33WhW+tYpbYYia5lBdJISmnRddaV8gcR70znij3ajzE1QZi3id13sJofizhYmj9NlL
         qmzCu3KcEQVvFjhtADF9kKkku0XWeSQPXlhhHYwnzHeJCutUApeS9UdZbXs0qDzwyjeJ
         UysfZa5HRxVPT6PocS3zX04jhh5jJJuGwJYIfw5n0u2h0MAwVnBz1T4JcBr/AfUXOciW
         mU6dw9OGShCTWPGL/QTXibqSlsXv8Qtb8L+oQA1cTbfjCJOHSRJ1t/ZkcnvkSLqJSJ50
         1ZnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:content-transfer-encoding:from:mime-version
         :subject:date:message-id:references:cc:in-reply-to:to;
        bh=yrEsUUNTiydjBRbo+chTv4GBhvYue/PBD7MUVZV3UsA=;
        b=tQxzAd1tNiYCralAl8ydrMdqYr4+DjS2Mt8PUzrrDLaXeJR5UlDq7dsm47erScCEJj
         u4QMyIyr/3m9xeCCa6J8DgvnDSEEQm7m7gp+FwhQReASM6poCacgjM1UT7TAbrwU1UI0
         Ght+T+fEM7ldyq///iHI3wKT3uR5HhhjYrXgknLbNsFjtl6kY1anDstXszTpiPbIogXo
         JknAaGs2ZukrKXnYjw7p/mTcB+GOIUjfnwrJXvWXZ2zplsyEi+WeoXCCeYUsdYoqJw8+
         AHPvZOJfdK+IuFiS3EKMV4lZplBP7gxg/EO80MQisGRsIRkGdRq37N6512BUN0EY1bON
         PUhA==
X-Gm-Message-State: ANhLgQ09/J+o4CeyAElVKt/KRcyUPJJmCSvKEnDjXQKnok44sKarEI/r
	sR/FoBiSUFhJ9tI2+Lqd5+zp3sHievk=
X-Google-Smtp-Source: ADFU+vu0MoJ4qkQIDgwiblt4kXj0R9S5y/IS8gEGBHqN7orZea0VPySsrrWUMc3HsaaX5R/rzPKxFg==
X-Received: by 2002:a37:58f:: with SMTP id 137mr8276760qkf.245.1584718165048;
        Fri, 20 Mar 2020 08:29:25 -0700 (PDT)
Return-Path: <easmith5555@gmail.com>
Received: from [10.150.33.185] ([128.135.98.187])
        by smtp.gmail.com with ESMTPSA id u49sm5028667qtb.52.2020.03.20.08.29.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 08:29:24 -0700 (PDT)
From: "Emily" <easmith5555@gmail.com>
Mime-Version: 1.0 (1.0)
Subject: Re: [yocto] Patching submodules
Date: Fri, 20 Mar 2020 10:29:23 -0500
Message-Id: <27EBB6D7-C22F-410E-B5E6-59A0BF47554F@gmail.com>
References: <7c93329edf06e5f9501357012151b4a76142dfc5.camel@delisys.ch>
Cc: yocto@lists.yoctoproject.org
In-Reply-To: <7c93329edf06e5f9501357012151b4a76142dfc5.camel@delisys.ch>
To: Nicolas Jeker <n.jeker@delisys.ch>
X-Mailer: iPhone Mail (17C54)
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi Nicolas -=20

The recipe is already in a custom layer entirely, I just don=E2=80=99t hav=
e full control over the source. So I don=E2=80=99t think I need a .bbappend=
 as I can just put it in the main recipe file.=20

Thanks,
Emily=20

> On Mar 20, 2020, at 10:06 AM, Nicolas Jeker <n.jeker@delisys.ch> wrote:
>=20
> =EF=BB=BFOn Thu, 2020-03-19 at 23:10 -0500, Emily wrote:
>> Hi all -=20
>>=20
>> I have a recipe that I'd like to patch - the source is in a repo
>> which has a submodule, and the patch occurs in the submodule. Is
>> there a way I can apply this patch without getting an error? I do
>> kind of understand why it's a problem - the patch is changing the
>> pointer of the submodule to a commit which doesn't actually exist. Do
>> I need to build the submodule as a separate recipe and patch it
>> separately maybe?=20
>=20
> Is there a reason why you don't use a bbappend file with your patch in
> it in a custom layer?
>=20
> Something like this:
>=20
> package_ver.bbappend
> --------------------
> FILESEXTRAPATHS_prepend :=3D "${THISDIR}/${PN}:"
> SRC_URI +=3D "file://abc.patch"
>=20
>=20
> With this directory structure:
>=20
> meta-custom-layer
> =E2=94=9C=E2=94=80=E2=94=80 package_ver.bbappend
> =E2=94=94=E2=94=80=E2=94=80 package
>    =E2=94=94=E2=94=80=E2=94=80 abc.patch
>=20
> Replace "package" and "ver" with the correct values (if you don't want
> to set the version you can use "%" as a wildcard).
>=20
> Maybe I missed something about your submodule situation and my advice
> is completely wrong, if so, just disregard it.
>=20
>> I used devtool for the patch and if I don't run the devtool reset
>> command, then everything builds, but I think this is just because the
>> workspace created by devtool was added as a layer, which probably
>> isn't a good long term solution.=20
>=20
> You should be able to get the above structure by using 'devtool finish
> recipe meta-custom-layer'. If that doesn't work you can do it manually
> as described above.
>=20
>> The error I get (pasted below) says I can "enforce with -f" but I'm
>> not sure where that option goes exactly. Thanks for the help!=20
>>=20
>> Emily
>>=20
>> Error on build:=20
>> ERROR: opc-ua-server-gfex-1.0+gitAUTOINC+921c563309-r0 do_patch:
>> Command Error: 'quilt --quiltrc
>> /local/d6/easmith5/rocko_bitbake/poky/build/tmp/work/aarch64-poky-
>> linux/opc-ua-server-gfex/1.0+gitAUTOINC+921c563309-r0/recipe-sysroot-
>> native/etc/quiltrc push' exited with 0  Output:
>> Applying patch 0001-Update-Poverty-to-point-to-boost-python3.patch
>> File Poverty is not a regular file -- refusing to patch
>> 1 out of 1 hunk ignored -- rejects in file
>> Patch 0001-Update-Poverty-to-point-to-boost-python3.patch does not
>> apply (enforce with -f)
>> ERROR: opc-ua-server-gfex-1.0+gitAUTOINC+921c563309-r0 do_patch:
>> Function failed: patch_do_patch
>=20
> I don't know why this error occurs, maybe someone else knows more.
>=20
>=20
