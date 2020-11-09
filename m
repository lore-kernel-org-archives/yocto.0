Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com [209.85.210.45])
 by mx.groups.io with SMTP id smtpd.web08.8987.1604912949809678001
 for <yocto@lists.yoctoproject.org>;
 Mon, 09 Nov 2020 01:09:10 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=LbcZZfQn;
 spf=pass (domain: konsulko.com, ip: 209.85.210.45, mailfrom: paul.barker@konsulko.com)
Received: by mail-ot1-f45.google.com with SMTP id j14so8263208ots.1
        for <yocto@lists.yoctoproject.org>; Mon, 09 Nov 2020 01:09:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Ah6YhxYTi8zAQhSp1dvKrEKb7+/NxXwVve4oqQCHqlc=;
        b=LbcZZfQnKiWJ1WoApttJMr6G+Srm7KQ2E3NBSUp156EdNEsbiMaLDps5NTsk618Dk2
         sPQUTKte7iggJMCV6yU1fk9R7xxhB40QDQXU8zSv/jQPOAJD/gridhzQRguKpcxMKqe2
         UfUXMWg2yL8JRbmKn/PIqjFscP3g/1zLK/dEI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Ah6YhxYTi8zAQhSp1dvKrEKb7+/NxXwVve4oqQCHqlc=;
        b=Yr1Xcv5aBRweV3HWvV6sW6GB9RRq7Emq3vaiGUIHq20mpEDXR3qUX+UKccoR4PEuTP
         3vmBnoua8alRZ/PGTdC7kQuixbadutKIlwLJq/5woZ/DAPQVkL2Gu1acqt+L1jET075o
         AG8Z2b6PuOn6zdmzKsBWW+zqz46KHtyHhxgSlHEFFY9M5pahV/xwBdUjyhXN4I3hhaVU
         8prv8dnIlTu/JEOuHSl+5vGizXuOF4/bURefAgS02niknwSLSw6dar+RfgfoZle/em8O
         YfBmT6nIL5dFQfh8YFzhMTrjFrDgreKjSblGhVZtEb/K2WRt6fq0VtArfCsFEXtEPOst
         NYBg==
X-Gm-Message-State: AOAM532r1NA4B0DpcEIcFN1ULHZrAPGHa8KDEelMryYsyaz5rsuJ3zIq
	WFu4O7pbjwpav2TScj7VsPCaOChlPrQv9dyzS6INog==
X-Google-Smtp-Source: ABdhPJxz5nisaau2FCsXXYee4w2ekwjdasXo4GZQSpUPN2DwExb3LOcKYkHmMjMEElYPJ4aelXBtP9xLXOCgKmg+Khs=
X-Received: by 2002:a05:6830:831:: with SMTP id t17mr10052789ots.92.1604912949152;
 Mon, 09 Nov 2020 01:09:09 -0800 (PST)
MIME-Version: 1.0
References: <CAJw=dJ9pQ+Xqs-UajoUcCHGNJANmaXagCW0ePx3YxBfq5SRyUw@mail.gmail.com>
In-Reply-To: <CAJw=dJ9pQ+Xqs-UajoUcCHGNJANmaXagCW0ePx3YxBfq5SRyUw@mail.gmail.com>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Mon, 9 Nov 2020 09:08:58 +0000
Message-ID: <CAM9ZRVuZSozpD8X4nOCkGeNEvOTmR170kU1cQMd+EhuWPN3+7g@mail.gmail.com>
Subject: Re: [yocto] Dependencies error while compiling .
To: NIKHIL PATIL <nikhilvp29@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Mon, 9 Nov 2020 at 05:12, NIKHIL PATIL <nikhilvp29@gmail.com> wrote:
>
> Hi team ,
>       while compiling a package i am getting following error :-
>
> Log data follows:
> | DEBUG: Executing python function extend_recipe_sysroot
> | NOTE: Direct dependencies are ['virtual:native:/data/nikhil/inti_dmsv/y=
octo_build/meta/recipes-devtools/pseudo/pseudo_git.bb:do_populate_sysroot',=
 '/data/nikhil/inti_dmsv/yocto_build/meta/recipes-devtools/quilt/quilt-nati=
ve_0.65.bb:do_populate_sysroot']
> | NOTE: Installed into sysroot: []
> | NOTE: Skipping as already exists in sysroot: ['pseudo-native', 'quilt-n=
ative']
> | DEBUG: Python function extend_recipe_sysroot finished
> | DEBUG: Executing shell function do_install
>
> if anyone knows , please help.

None of that output looks like an error to me. Could you share some
more context? E.g. the bitbake command you ran, the initial output
showing the layers, versions and key config values, what expected
result did you not get?

Thanks,

--=20
Paul Barker
Konsulko Group
