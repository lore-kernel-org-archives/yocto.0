Received: from mail-ua1-f68.google.com (mail-ua1-f68.google.com [209.85.222.68])
 by mx.groups.io with SMTP id smtpd.web09.7851.1583380436161403081
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Mar 2020 19:53:56 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=StC8xj4V;
 spf=pass (domain: gmail.com, ip: 209.85.222.68, mailfrom: kent.dorfman766@gmail.com)
Received: by mail-ua1-f68.google.com with SMTP id 94so1584086uat.0
        for <yocto@lists.yoctoproject.org>; Wed, 04 Mar 2020 19:53:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=ULJMH9QITaVJbybqx+zTdA+4FdaV0mDUZWtfF8Gm4pc=;
        b=StC8xj4V9qJlxhmeE0Skj/6dYP4EgdCfdjtm2KvdV2NjxMPS+VgQYvaaqtQr5eto3d
         FXl+90iORnsoSfDH1zHD27Kivau5fpoA48OCKQj3fSSm9fxtJUIKXIj4rXXgoc0CgNFv
         aflT1eBnG038MVc1XptaP4SYevTk54CFBkWmtPjfKKhuW5nP6/wkmdqkb7BedxaEp1eB
         Hv6nMKUsCHpP6le6L48f8lV2ftjwjUnNPcVrUZIztq9U6TiRSOOIhLmEAhqsxx9DSX2S
         zP/V68M5OdaoEvulYCK2771cMLi1ZUUnzFp+j0fS3M9g9dj/84tEuQTeyVMVIOs0Oagc
         e4xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=ULJMH9QITaVJbybqx+zTdA+4FdaV0mDUZWtfF8Gm4pc=;
        b=kb3Gey/2D4/NT3fy6APrwt0jZ3uSecm+23Ji1/YDpmIVkC/0REocaEnME5gSUai/uk
         uuqRgFh7PB2oo4surRWjt8wvWNsI4MqyUmGt7AX0nEitS7Caas7/50x+OPu8grGs9atC
         qOYwFlVTq38vOH9z/6VaYkeV/EwG3BAbNhbP9mFWUv7vTgrSxo8jk3ggisMqH7bCfLFa
         U/ZJ7w9zLLmrp5nLBLficaz8cDXVeXJ2DvcaCkca/m7kY5tfrHbViqwVyiuhiksA6r2B
         0t7keiu48KDgEtcJIwYV3g+eWTaHd+h90sDJVlV3IGlAaqLHBmB3TCHui5vfZF52OAL9
         lAlQ==
X-Gm-Message-State: ANhLgQ2i5q3Z8nmzzK8IRlO+QSdtvX5WR3PEEvYmSUv7pltyP37brh4E
	qwlg80IVk6VSs0WPyWCXICviMCzbL1E9kKhv0Ria4IHE
X-Google-Smtp-Source: ADFU+vudo8HvdsktaWgNEI6mvDSvOjFnBLMA2Q+YaUpAj3gDORN0KzP9G0a6Fto8jkTz06ZHD4UlAQShTFqR8x0kWzA=
X-Received: by 2002:ab0:23c6:: with SMTP id c6mr3477831uan.49.1583380434958;
 Wed, 04 Mar 2020 19:53:54 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ab0:7455:0:0:0:0:0 with HTTP; Wed, 4 Mar 2020 19:53:54 -0800 (PST)
In-Reply-To: <CAFSZm+haWSQepkSYd5LwXZNyUJ_PQn5=mH65o7b1BW1DMPetxQ@mail.gmail.com>
References: <CAK4PFCU2vdL52FmU3pG3gARHGA0tLhdgGRr=7uH+FbP3_T9kyA@mail.gmail.com>
 <CAFSZm+iYmsh4GA1_CqDAw13EK2L7H0z-DxokgOZtrRfYP9S7PQ@mail.gmail.com>
 <CAK4PFCWYu4JwH7kD36OB_cRPuwxuwQL325wct4a8e6y4zA+fVg@mail.gmail.com> <CAFSZm+haWSQepkSYd5LwXZNyUJ_PQn5=mH65o7b1BW1DMPetxQ@mail.gmail.com>
From: "Kent Dorfman" <kent.dorfman766@gmail.com>
Date: Wed, 4 Mar 2020 22:53:54 -0500
Message-ID: <CAK4PFCU6bAiJMM9YjKxS0Yw=cnGkf1y+GEn1Fc6qCbmSebvRgA@mail.gmail.com>
Subject: Re: [yocto] way to make do_devshell changes permanent?
To: Aaron Cohen <aaron@assonance.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On 3/3/20, Aaron Cohen <aaron@assonance.org> wrote:
> The =E2=80=9Cgit commit=E2=80=9D step is just how you tell devtool about =
your changes. Each
> commit will result in a patch file in your layer (conversely, each patch
> file ends up as a commit in the sources directory after your initial
> =E2=80=9Cdevtool modify=E2=80=9D)
>
>> > using "bitbake <recipe>" or "bitbake <image containing recipe>"
>> > # Once satisfied with changes:
>> > 3) git add $BUILDDIR/workspace/sources/<recipe> && git commit -m "Adde=
d

Does the git add have to be done as specified above?  I made changes
and inside the directory where the changes occured I just did a git
add -am "my message", but it didn't save my changes when I rebuilt the
image.

Also, the devtool finish seems really horky.  devtool modify <recipe>
checks out the package, but why is it necessary to explicitly specify
a layer when you finish?  It's hard enough knowing what layer a recipe
is coming from in the first place, with all the inheritance, layer
priorities, and bbappends. D'oh!  In some ways seems needlessly
complex: ie flexibility at the expense of elegance.
