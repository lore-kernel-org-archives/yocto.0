Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
 by mx.groups.io with SMTP id smtpd.web11.12241.1586771894905071720
 for <yocto@lists.yoctoproject.org>;
 Mon, 13 Apr 2020 02:58:15 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@geontech-com.20150623.gappssmtp.com header.s=20150623 header.b=GzpUuv66;
 spf=pass (domain: geontech.com, ip: 209.85.160.176, mailfrom: btgoodwin@geontech.com)
Received: by mail-qt1-f176.google.com with SMTP id i3so6655959qtv.8
        for <yocto@lists.yoctoproject.org>; Mon, 13 Apr 2020 02:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=geontech-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:message-id:in-reply-to:references:subject:mime-version;
        bh=HthXsk587MfzSx0QMyMwNP4mWanqU2tXs+Q+JBrIbis=;
        b=GzpUuv66S/SbWTN6+g9CArhEQYg1eA0l496nERwfZBqGmJy7fir23OLr0iMaTtZ4Y9
         gRhqdrYOXYwGT4l0+QYg25zAPweLDZUSI/oUSrz8gIDAbGx0KaKUaijtA2VfbvBmf/Lc
         ZBhXcbaXniu7OJ8vn63w5TRac+g5ZhUnqhUc3D8eDuzbBFk9JOGGAM5qgLyJxcYku3GY
         vHa/43w6lKNZyUJOy/5tDny1Y++uuMFUbS9j71a/r8q1NOq0Asy5SL9pE5z2O3D7N6LE
         WbA39yGp0gnyxKNUIkXqSEviMi0StKOlCxh3vKy6nBfXBjnYXn0Upy7961Anvjl2U79Y
         RzZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:message-id:in-reply-to:references
         :subject:mime-version;
        bh=HthXsk587MfzSx0QMyMwNP4mWanqU2tXs+Q+JBrIbis=;
        b=gzc6Oh07dZhIUZHQ2RF0koryP7VwqZoZlvnshMNfHC1NiamF325/clW4XaaaCGdGIi
         a3FkeVDoETSdSA5wGdKcIYb+OGYa+tyDFssiKZjqmPceg4lRtVa5VMOOj6NwdAx2T1E+
         hvtbS00qYyWZe5KFkBO5nWQQ8XWf3ua/Lv3exW+bA+V9FhHvbQetoVWCkBv76aYIXh3+
         2dANszYSM+ZkgaHu1xqtVlNz0El1/EyIfPges9NFGFJibe+p9feLunLUxOLukD8PEt7e
         poSSDm09gMRVoitJ38ViYdW6hz9vpMSdGSHdNR8v8tkYkaS2TOqeE2Re0XsWsP7abdEM
         eocg==
X-Gm-Message-State: AGi0PuaB9YFeCcz5TaLA2CgEQwKdQ5RfYnjOCDel2QHEsnvQ+ltMJRJf
	DTemfWK+JVGdaPopaTu0xREw9QcBUq0=
X-Google-Smtp-Source: APiQypIe/uvOmg37VYAwDKNQqYWGgBjcOfxyPKGX0bA/YMAkF46vsVHtWpkwc2Ng6vpIz9hGlxltFA==
X-Received: by 2002:ac8:22ad:: with SMTP id f42mr10351335qta.292.1586771893740;
        Mon, 13 Apr 2020 02:58:13 -0700 (PDT)
Return-Path: <btgoodwin@geontech.com>
Received: from [192.168.1.18] (c-73-250-3-227.hsd1.md.comcast.net. [73.250.3.227])
        by smtp.gmail.com with ESMTPSA id a62sm7939085qkb.134.2020.04.13.02.58.13
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Apr 2020 02:58:13 -0700 (PDT)
Date: Mon, 13 Apr 2020 05:58:07 -0400
From: "Thomas Goodwin" <btgoodwin@geontech.com>
To: yocto@lists.yoctoproject.org, nus1998 <nus1998@yeah.net>
Message-ID: <7845fa3e-8795-4ef3-be23-7e0dc4a9fe9c@Spark>
In-Reply-To: <1bc0fffb.3be7.17171a9737f.Coremail.nus1998@yeah.net>
References: <1bc0fffb.3be7.17171a9737f.Coremail.nus1998@yeah.net>
Subject: Re: [yocto] What is the recommended method to patch a recipe?
X-Readdle-Message-ID: 7845fa3e-8795-4ef3-be23-7e0dc4a9fe9c@Spark
MIME-Version: 1.0
Content-Type: multipart/alternative; boundary="5e9437b4_cc1016f_7cd3"

--5e9437b4_cc1016f_7cd3
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

As with a lot of things, I=E2=80=99m sure it all depends on the scope of th=
e change. =C2=A0Personally, if I =E2=80=98own=E2=80=99 the original bbappen=
d, then I consider if it=E2=80=99s worth establishing an override or some o=
ther similar mechanism within that bbappend, depending on what I=E2=80=99m =
developing (an image feature or something machine-specific). =C2=A0If it=E2=
=
=80=99s a one-off for a specific build that I can lump together with other=
 changes, then I go with a new layer specific those changes.

One thing to keep in mind is that if you create your own layer with a bbap=
pend ,then layer priority will impact which portions of your bbappend overw=
rite the others and the original recipe. =C2=A0You can use bitbake -e packa=
ge-name=C2=A0to get a view of how bitbake is overlaying all changes for it.

Cheers,

Thomas

On Apr 13, 2020, 4:20 AM -0400, nus1998 <nus1998@yeah.net>, wrote:
> Hi All,
>
> I googled some topics on how to patch a recipe, most of them recommend t=
o generate a corresponding <foo>.bbappend to apply the patch, I wonder if t=
here is already a bbappend file, shall I modify the bbappend file directly,=
 or create another layer to overwrite the bbappend file (and including the =
patchs in original bbappend file)?
>
> Thanks in advance
> Nus
>=20

--5e9437b4_cc1016f_7cd3
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<html xmlns=3D"http://www.w3.org/1999/xhtml">
<head>
<title></title>
</head>
<body>
<div name=3D"messageBodySection">
<div dir=3D"auto">As with a lot of things, I=E2=80=99m sure it all depends=
 on the scope of the change. &#160;Personally, if I =E2=80=98own=E2=80=99 t=
he original bbappend, then I consider if it=E2=80=99s worth establishing an=
 override or some other similar mechanism within that bbappend, depending o=
n what I=E2=80=99m developing (an image feature or something machine-specif=
ic). &#160;If it=E2=80=99s a one-off for a specific build that I can lump t=
ogether with other changes, then I go with a new layer specific those chang=
es.
<div dir=3D"auto"><br /></div>
<div dir=3D"auto">One thing to keep in mind is that if you create your own=
 layer with a bbappend ,then layer priority will impact which portions of y=
our bbappend overwrite the others and the original recipe. &#160;You can us=
e <i>bitbake -e package-name</i>&#160;to get a view of how bitbake is overl=
aying all changes for it.</div>
<div dir=3D"auto"><br /></div>
<div dir=3D"auto">Cheers,</div>
<div dir=3D"auto"><br /></div>
<div dir=3D"auto">Thomas</div>
<div dir=3D"auto"><br /></div>
</div>
</div>
<div name=3D"messageReplySection">On Apr 13, 2020, 4:20 AM -0400, nus1998 =
&lt;nus1998@yeah.net&gt;, wrote:<br />
<blockquote type=3D"cite" class=3D"spark_quote" style=3D"margin: 5px 5px; =
padding-left: 10px; border-left: thin solid #1abc9c;">
<div style=3D"line-height:1.7;color:#000000;font-size:14px;font-family:Ari=
al">
<div style=3D"margin:0;">Hi All,</div>
<div style=3D"margin:0;"><br /></div>
<div style=3D"margin:0;">I googled some topics on how to patch a recipe, m=
ost of them recommend to generate a corresponding &lt;foo&gt;.bbappend to a=
pply the patch, I wonder if there is already a bbappend file, shall I modif=
y the bbappend file directly, or create another layer to overwrite the bbap=
pend file (and including the patchs in original bbappend file)?</div>
<div style=3D"margin:0;"><br /></div>
<div style=3D"margin:0;">Thanks in advance</div>
<div style=3D"margin:0;">Nus<br /></div>
</div>
<br /></blockquote>
</div>
</body>
</html>

--5e9437b4_cc1016f_7cd3--
