Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.12875.1590154300179463041
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 May 2020 06:31:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@konsulko.com header.s=google header.b=W07treFm;
 spf=softfail (domain: konsulko.com, ip: 140.211.169.56, mailfrom: paul.barker@konsulko.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF038E01BDF; Fri, 22 May 2020 06:31:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.167.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com [209.85.167.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6AE3CE01BC7
	for <yocto@yoctoproject.org>; Fri, 22 May 2020 06:31:30 -0700 (PDT)
Received: by mail-oi1-f180.google.com with SMTP id j145so9313533oib.5
        for <yocto@yoctoproject.org>; Fri, 22 May 2020 06:31:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=/Xi1TZi6hxqvS6tO9Pf4YtlqmkHE/Y9QOHu3FPoiUb8=;
        b=W07treFm9QiCo5rDtnP8jFBcASbH4kkhC+e++p3HFnVv/KXNfGShMDBwdIxxfilF8a
         gxZQOG+xxBituwKyrVRh6Eo48XANbxMhzElTXAfpnLG/UaJqm+QGZ9qbOAQHyHkhMLU9
         QUIsXyr225zscxWGbkj5m8C29Rofyl5tzVdDk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=/Xi1TZi6hxqvS6tO9Pf4YtlqmkHE/Y9QOHu3FPoiUb8=;
        b=Oq81tAqhhv1FRjXVI6fKtHLneN3oi9l5sjDlhAZPDaUFGYPsjuaW42mqjGkRnDCQ8j
         ItA5Wd+tToCSBl2lNwomqirN8897KgbacXcrnriA2CcPGfvNSN7TJSBklc7K0Mbdn2oU
         O4QLMHf/DuWPptpo+ByEMVWjCU/YmeaIekBM712fAU1NCwccdGkTiksYn8yWg2fZqtQ5
         pCL1du4Rho0CP2pbxszMv3Vod0wP2gunVMNxVnyl9XOqaaMJ91pIhlc6G5zPJcJT+ZKG
         M8MpFpjOWDFhvYp4oNZTT8s7EN3afDSaJUu7rprEY/oXaBs5g7UmtbxPNT8cD6sgmV2J
         4ONw==
X-Gm-Message-State: AOAM533oLl4NGjKGdlWebd07w0S+vbz+2X/cDvcXNdA/upKVPK1avhzK
	fo+YXHNJEBiDgU6SEO80mq23xz02WfTdyIhXGSqr6Q==
X-Google-Smtp-Source: ABdhPJxccfwIkXgHhCRJDV6lS9wN9ieWn4bxhXm/Ghiu4SIIi350h5YcKU9HfDx3pFScvhD54xg64SzdpUpRXDoWhWc=
X-Received: by 2002:aca:ea46:: with SMTP id i67mr2435873oih.152.1590154290016;
 Fri, 22 May 2020 06:31:30 -0700 (PDT)
MIME-Version: 1.0
References: <1590152009-5052-1-git-send-email-zangrc.fnst@cn.fujitsu.com>
 <CANNYZj9VT3M1-nP18j6b5zZk9NMxAAZ2TnLoPptdZabwt=VbjA@mail.gmail.com>
 <CAM9ZRVtS4tKmrBb9Z+L+wjAcd3pwAj5wfTYmueTsg=CW6BXdUQ@mail.gmail.com> <CAAnfSTsEXz13ngzs3=8oqWmdLcLH-dX8gPjtkW9Gb-GDA4yc0Q@mail.gmail.com>
In-Reply-To: <CAAnfSTsEXz13ngzs3=8oqWmdLcLH-dX8gPjtkW9Gb-GDA4yc0Q@mail.gmail.com>
From: "Paul Barker" <pbarker@konsulko.com>
Date: Fri, 22 May 2020 14:31:18 +0100
Message-ID: <CAM9ZRVtN371hZaR1-b8sdPcxfHSo=QkuHdvin8xgNvicAcqMHQ@mail.gmail.com>
Subject: Re: [yocto] [ptest-runner] Added output processing to pytest
To: Ross Burton <ross@burtonini.com>
Cc: Alexander Kanavin <alex.kanavin@gmail.com>, zangrc <zangrc.fnst@cn.fujitsu.com>, 
	Yocto discussion list <yocto@yoctoproject.org>, Anibal Limon <anibal.limon@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, 22 May 2020 at 14:25, Ross Burton <ross@burtonini.com> wrote:
>
> On Fri, 22 May 2020 at 10:29, Paul Barker <pbarker@konsulko.com> wrote:
> >
> > On Fri, 22 May 2020 at 10:26, Alexander Kanavin <alex.kanavin@gmail.com=
> wrote:
> > >
> > > On Fri, 22 May 2020 at 05:54, zangrc <zangrc.fnst@cn.fujitsu.com> wro=
te:
> > >>
> > >> +               char pytest_append[] =3D "| sed -e 's/\\[...%\\]//g'=
| sed -e 's/PASSED/PASS/g'| sed -e 's/FAILED/FAIL/g'|sed -e 's/SKIPPED/SKIP=
/g'| awk '{if ($NF=3D=3D\"PASS\" || $NF=3D=3D\"FAIL\" || $NF=3D=3D\"SKIP\" =
|| $NF=3D=3D\"XFAIL\" || $NF=3D=3D\"XPASS\"){printf \"%s: %s\\n\", $NF, $0}=
else{print}}'| awk '{if ($NF=3D=3D\"PASS\" || $NF=3D=3D\"FAIL\" || $NF=3D=
=3D\"SKIP\" || $NF=3D=3D\"XFAIL\" || $NF=3D=3D\"XPASS\") {$NF=3D\"\";print =
$0}else{print}}'";
> > >
> > >
> > > Is it possible to process the output directly, rather than tweak it v=
ia sed/awk shell pipelines that are very difficult to read?
> >
> > Another option could be to generate the output in the correct format
> > directly from Python using something like this module which I wrote a
> > few years back:
> > https://gitlab.com/b5/BetaTest/betatest/-/blob/master/betatest/amtest.p=
y
>
> Yes, this, please.
>
> I endorsed this approach on the oe-devel list when this first came up,
> and I'm really pleased you already implemented it.
>
> We could have a recipe in oe-core with this in, or just drop it into
> the python recipe directly.

It's packaged on pypi: https://pypi.org/project/betatest/

I need to do a new release as I tidied a few things up and added a
subtest wrapper after I published v0.1.0. This gives me a kick to get
that done :)

Thanks,

--=20
Paul Barker
Konsulko Group
