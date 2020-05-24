Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.18284.1590344461355848100
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 May 2020 11:21:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=w61XwHGx;
 spf=softfail (domain: linaro.org, ip: 140.211.169.56, mailfrom: anibal.limon@linaro.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AC0BE01C08; Sun, 24 May 2020 11:21:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.128.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E44B4E01C06
	for <yocto@yoctoproject.org>; Sun, 24 May 2020 11:20:57 -0700 (PDT)
Received: by mail-wm1-f53.google.com with SMTP id c71so2941243wmd.5
        for <yocto@yoctoproject.org>; Sun, 24 May 2020 11:20:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hChvmngKRXErSBEkY+qeicgfEXbXpkJ4atM9wDkbM6A=;
        b=w61XwHGxmlrnF4x1VuPCeW5on+D+fZ7EoBRRFvzTGxw3yMKYedQWg8QC4/Nh0O7Qmf
         nCBCxE3uoNBvv+837pPkiQY+AEmYjDb8FHtgkcHJe4cyETe+yAT0mTT1mkMmTHo/ziuM
         NfU0RFUxG1C8tJcTKUMLeo23t8VNumBAQiQ4K57PoSAeAAq95Qg92f65CMpzMqh/syEe
         DJTkUflxV5K510pg1I4yi6Q7MIC88ICCofMA4muHVeLKN5uDMO+8+iv33oupbWx5CIuc
         mHnZczS7dyXbLgr6AN5zRf6nVP/ePEqUdpFNmFugtymYZLRndy/JbPlSpOoGr1E0gPyt
         /3Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hChvmngKRXErSBEkY+qeicgfEXbXpkJ4atM9wDkbM6A=;
        b=lJIVljATlmaHwc9sM9n93reCJUClWBopuh90gCkYBCoIGp+M7rSV6ZXU7EnVgefDBa
         30nV/7jA2s8DmO9ZutxebEfL60DoyWOx3CMB3uoFqXIHMJ8iaEnA0hJEW0ps7ZURXrI5
         YF/yU9IWd78WN7RFcsE16bhKN0jl6EgtumCdISQ6yH0fqYa2NjI9k3GQREx2TtKWsBUG
         Dvw6M84n3rRJlDGqz6gl5Pl+B3Rm55GDbbNveO8LzheZjgTfPaO9uvmpryat0a5iOCcU
         1H69+p3dkTRIpPpEknBd5PQkkxhZiycrFedgYteEmeCut5lmxbZ0PeV/AUxVIgzEGq94
         kPIw==
X-Gm-Message-State: AOAM532nQicu+PTkdwISsCX8Pqu3LLozc7S25vtHRJc6Ra97iKLMNDyl
	2qwzope0tcww7ZpQJj5n7Cl7qgkZZ8fMPwRi5ZtT1w==
X-Google-Smtp-Source: ABdhPJwZUzurEFnN15nrL85AkD38lXD9kP1XYTV0rLIwVTr7BmotijWcI9jYcbTbVeHeGFMNcVPdUwHpHqsyat54QzY=
X-Received: by 2002:a05:600c:29a:: with SMTP id 26mr2790566wmk.76.1590344456836;
 Sun, 24 May 2020 11:20:56 -0700 (PDT)
MIME-Version: 1.0
References: <1590152009-5052-1-git-send-email-zangrc.fnst@cn.fujitsu.com>
 <CANNYZj9VT3M1-nP18j6b5zZk9NMxAAZ2TnLoPptdZabwt=VbjA@mail.gmail.com>
 <CAM9ZRVtS4tKmrBb9Z+L+wjAcd3pwAj5wfTYmueTsg=CW6BXdUQ@mail.gmail.com>
 <CAAnfSTsEXz13ngzs3=8oqWmdLcLH-dX8gPjtkW9Gb-GDA4yc0Q@mail.gmail.com>
 <CAM9ZRVtN371hZaR1-b8sdPcxfHSo=QkuHdvin8xgNvicAcqMHQ@mail.gmail.com> <CAAnfSTuZJqF67pw28Z8pv-dgYDAtDjagvHwiuZgfkb+xC5Durw@mail.gmail.com>
In-Reply-To: <CAAnfSTuZJqF67pw28Z8pv-dgYDAtDjagvHwiuZgfkb+xC5Durw@mail.gmail.com>
From: "Anibal Limon" <anibal.limon@linaro.org>
Date: Sun, 24 May 2020 13:20:45 -0500
Message-ID: <CA+_AqitjL-1cEjnxCZYqoM7gXn2up5x8Kw_xx2JpAU-S=pu30A@mail.gmail.com>
Subject: Re: [yocto] [ptest-runner] Added output processing to pytest
To: Ross Burton <ross@burtonini.com>
Cc: Paul Barker <pbarker@konsulko.com>, Alexander Kanavin <alex.kanavin@gmail.com>, 
	zangrc <zangrc.fnst@cn.fujitsu.com>, Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000006bb2dc05a668ec9c"

--0000000000006bb2dc05a668ec9c
Content-Type: text/plain; charset="UTF-8"

On Fri, 22 May 2020 at 08:37, Ross Burton <ross@burtonini.com> wrote:

> On Fri, 22 May 2020 at 14:31, Paul Barker <pbarker@konsulko.com> wrote:
> > > We could have a recipe in oe-core with this in, or just drop it into
> > > the python recipe directly.
> >
> > It's packaged on pypi: https://pypi.org/project/betatest/
> >
> > I need to do a new release as I tidied a few things up and added a
> > subtest wrapper after I published v0.1.0. This gives me a kick to get
> > that done :)
>
> Awesome.  I endorse a pypi recipe shipping that, which recipes can then
> re-use.
>
> The next question is how to integrate that runner with pytest.
>

I like the idea of format the output at level of pytest, in OEQA there is
OETestResult class that is where the changes need to be made to add the
option to use AM format.

https://git.openembedded.org/openembedded-core/tree/meta/lib/oeqa/core/runner.py#n38

Regards,
Anibal


>
> Ross
>

--0000000000006bb2dc05a668ec9c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Fri, 22 May 2020 at 08:37, Ross Bu=
rton &lt;<a href=3D"mailto:ross@burtonini.com">ross@burtonini.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Fri, 22=
 May 2020 at 14:31, Paul Barker &lt;<a href=3D"mailto:pbarker@konsulko.com"=
 target=3D"_blank">pbarker@konsulko.com</a>&gt; wrote:<br>
&gt; &gt; We could have a recipe in oe-core with this in, or just drop it i=
nto<br>
&gt; &gt; the python recipe directly.<br>
&gt;<br>
&gt; It&#39;s packaged on pypi: <a href=3D"https://pypi.org/project/betates=
t/" rel=3D"noreferrer" target=3D"_blank">https://pypi.org/project/betatest/=
</a><br>
&gt;<br>
&gt; I need to do a new release as I tidied a few things up and added a<br>
&gt; subtest wrapper after I published v0.1.0. This gives me a kick to get<=
br>
&gt; that done :)<br>
<br>
Awesome.=C2=A0 I endorse a pypi recipe shipping that, which recipes can the=
n re-use.<br>
<br>
The next question is how to integrate that runner with pytest.<br></blockqu=
ote><div><br></div><div>I like the idea of format the output at level of py=
test, in OEQA there is OETestResult class that is where the changes need to=
 be made to add the option to use AM format.</div><div><br></div><div><a hr=
ef=3D"https://git.openembedded.org/openembedded-core/tree/meta/lib/oeqa/cor=
e/runner.py#n38">https://git.openembedded.org/openembedded-core/tree/meta/l=
ib/oeqa/core/runner.py#n38</a><br></div><div><br></div><div>Regards,</div><=
div>Anibal</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D=
"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-le=
ft:1ex">
<br>
Ross<br>
</blockquote></div></div>

--0000000000006bb2dc05a668ec9c--
