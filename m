Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
 by mx.groups.io with SMTP id smtpd.web08.7817.1605784532637224213
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 03:15:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=HQa4Rf6r;
 spf=pass (domain: gmail.com, ip: 209.85.222.53, mailfrom: nikhilvp29@gmail.com)
Received: by mail-ua1-f53.google.com with SMTP id h26so1766717uan.10
        for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2020 03:15:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pgvJEr3Zj9TXrbJYdQcGvUkbUsLNvv2dbQKvaG1RjHc=;
        b=HQa4Rf6r2s9kKigMewzzMchLWEJSCnXkKc8xziKQkhYnzRgYatwHV24S5A4TdZILli
         5SFo9JpbZvJKx+ODdvLfPU955pHGRqTXR57bXjJYTFIrH7jgveQrGfkQNazALoDZxjJT
         q0U2AiHj21f8rJw3XDSxB/JzywZLJE21WxOBAT9N9aFijV4bJofFp26DluSEk6o1aZeN
         SUd2dFP3tsTbAemzhudSZWbmCutMLWp89U3KsI5+Lt85acykDlvBNqmkisIW3pH/9F5t
         I3kaHM1xqi3pF6xVuw8jbZJJj61ed0D24uqNQram/J5CFbcW8RGM+Y1H2oGfS4sSkRk+
         rtCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pgvJEr3Zj9TXrbJYdQcGvUkbUsLNvv2dbQKvaG1RjHc=;
        b=LnEE1EffPj7wyzHcJqv+t319IbBkCcdWc9Wh7joGTZWDY0p6fKYPCqI9Jg2hAAkgZA
         OzY9lzxyOs5ZRtevCJLayDTNA92n49vFvXpWcA3FaMOFmUHmZNBl9++cOI9ya8vBBzLF
         GevJo0AcjIjYeALjJtHKd6B35V60Ny7hqHhrepb2wRQhsMaqu0gzfUPcVF1bgaSLx/OU
         fmaToMOwBO2/GwiCOj/WkktdkLHr/sRd7KyB48zSdoHEHnNw2nH7hCT3xf9ausKYlWGh
         89RVzUwZyga4Hu5m7sKX93g/zVTl2/Gk6fUqChs7I1DWmblXljgadCoBV1QcqNP6+lch
         mz7A==
X-Gm-Message-State: AOAM532j8DvsQesLl66V92eM4XBpFWzBOOCM359v+r6aSk84yKs9xxph
	wYsmPx25YGqzIoeSqdnK+vIdv1XJKBaP7pzPvTTk4In7oNc=
X-Google-Smtp-Source: ABdhPJxitW/DccrsBbJI5VNTGHEfl0dJJwIai96KhvsIMUO5UDyhJODjIcMaebNaYUeNgow+FcsNiE0N4uT84qtMQ1I=
X-Received: by 2002:ab0:4a4a:: with SMTP id r10mr7364908uae.130.1605784531550;
 Thu, 19 Nov 2020 03:15:31 -0800 (PST)
MIME-Version: 1.0
References: <CAJw=dJ9E4e1g_V1NnZj6adf415GAK_DO1VNjS3EmnJXyTiEiQA@mail.gmail.com>
 <20201119091631.riqm2r2gtnou2cie@qschulz>
In-Reply-To: <20201119091631.riqm2r2gtnou2cie@qschulz>
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Thu, 19 Nov 2020 16:45:19 +0530
Message-ID: <CAJw=dJ9Yy8sBWDMT8mpnjDQBjd7AA_MBL5bNukvPXUjCeKmbdw@mail.gmail.com>
Subject: Re: [yocto] Enaable to add binary in /usr/bin using .bb file
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000096c90105b473d82c"

--00000000000096c90105b473d82c
Content-Type: text/plain; charset="UTF-8"

Hi ,
     Yours correct only , but the thing is we are taking* binary(obexpushd)*
from other source and only need to copy that binary into* /usr/bin* of our
platform(*intel board*).

     Hence how we can achieve these using .bb file ? is there any sample
example .

On Thu, Nov 19, 2020 at 2:46 PM Quentin Schulz <
quentin.schulz@streamunlimited.com> wrote:

> Hi,
>
> On Thu, Nov 19, 2020 at 01:13:43PM +0530, NIKHIL PATIL wrote:
> > Hi ,
> >     I want to add binary in /usr/bin , for these i made own .bb file (
> > obexpushtest.bb),      When i am compiling obexpushtest package
> separately
>
> You're not compiling a package, you're compiling a recipe named
> obexpushtest whose output is packages (one of which is named the same as
> the recipe, hence the confusion).
>
> > that time it is compiling fine  , but when i am adding obexpushtest in
> > local.conf as a IMAGE_INSTALL , i am getting error.
> >
>
> But here, you're adding a package into an image. Effectively, the first
> and second commands you ran don't do the same thing.
>
> > ## Error :-
> >
> >
> /data/nikhil/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-linux/core-image-intel/1.0-r0/oe-rootfs-repo
> > Last metadata expiration check: 0:00:01 ago on Thu 19 Nov 2020 05:57:19
> AM
> > UTC.
> > No match for argument: obexpushtest
> > Error: Unable to find a match
> >
> > ## obexpushtest.bb file :-
> >
> >     # file recipes-kernel/linux-firmware/linux-firmware_%.bbappend
> > SUMMARY = "tset_mount example"
> > SECTION = "test_mount"
> > LICENSE = "MIT"
> > LIC_FILES_CHKSUM =
> > "file://${COMMON_LICENSE_DIR}/MIT;md5=0835ade698e0bcf8506ecda2f7b4f302"
> >
> > S = "${WORKDIR}"
> >
> > SRC_URI += "file://obexpushd"
> >
> > INSANE_SKIP_${PN} = "ldflags"
> > INHIBIT_PACKAGE_DEBUG_SPLIT = "1"
> > INHIBIT_PACKAGE_STRIP = "1"
> >
>
> You should probably inherit bin_package but override do_install
> (otherwise you'll have an issue with the do_install task coming from the
> bin_package bbclass trying to pack your whole ${WORKDIR} (S) which
> include way too many files you're not interested in).
>
> > do_install_append () {
>
> No need for _append since the following is the only thing your recipe
> will do, so better just override do_install.
>
> >         install -d ${D}/${bindir}
> >         install -m 0644 ${WORKDIR}/obexpushd ${D}/${bindir}
> >         cp ${WORKDIR}/obexpushd ${D}/${bindir}
> > }
> >
> > # NOTE: Use "=+" instead of "+=". Otherwise, the file is placed into the
> > linux-firmware package.
> > PACKAGES =+ "${PN}-example"
> > FILES_${PN}-example = "/usr/bin/obexpushd"
>
> Here's the issue, you put your file into the obexpushtest-example and
> I'm pretty sure that your obexpushtest package is actually empty and by
> default empty packages are removed, hence why the image recipe can't
> include this package.
>
> IMHO, no need for your PACKAGES and FILES variables as the default will
> put your binary in the obexpushtest package, and since your recipe isn't
> creating any other package (explicitly), I don't see the use for a new
> package.
>
> Quentin
>

--00000000000096c90105b473d82c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi ,<div>=C2=A0 =C2=A0 =C2=A0Yours correct only , but the =
thing is we are taking<b> binary(obexpushd)</b> from other source and only =
need to copy that binary into<b> /usr/bin</b>=C2=A0of our platform(<b>intel=
 board</b>).</div><div>=C2=A0 =C2=A0 =C2=A0</div><div>=C2=A0 =C2=A0 =C2=A0H=
ence how we can achieve these using .bb file ? is there any sample example =
.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Thu, Nov 19, 2020 at 2:46 PM Quentin Schulz &lt;<a href=3D"mailto=
:quentin.schulz@streamunlimited.com">quentin.schulz@streamunlimited.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi,<=
br>
<br>
On Thu, Nov 19, 2020 at 01:13:43PM +0530, NIKHIL PATIL wrote:<br>
&gt; Hi ,<br>
&gt;=C2=A0 =C2=A0 =C2=A0I want to add binary in /usr/bin , for these i made=
 own .bb file (<br>
&gt; <a href=3D"http://obexpushtest.bb" rel=3D"noreferrer" target=3D"_blank=
">obexpushtest.bb</a>),=C2=A0 =C2=A0 =C2=A0 When i am compiling obexpushtes=
t package separately<br>
<br>
You&#39;re not compiling a package, you&#39;re compiling a recipe named<br>
obexpushtest whose output is packages (one of which is named the same as<br=
>
the recipe, hence the confusion).<br>
<br>
&gt; that time it is compiling fine=C2=A0 , but when i am adding obexpushte=
st in<br>
&gt; local.conf as a IMAGE_INSTALL , i am getting error.<br>
&gt; <br>
<br>
But here, you&#39;re adding a package into an image. Effectively, the first=
<br>
and second commands you ran don&#39;t do the same thing.<br>
<br>
&gt; ## Error :-<br>
&gt; <br>
&gt; /data/nikhil/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky=
-linux/core-image-intel/1.0-r0/oe-rootfs-repo<br>
&gt; Last metadata expiration check: 0:00:01 ago on Thu 19 Nov 2020 05:57:1=
9 AM<br>
&gt; UTC.<br>
&gt; No match for argument: obexpushtest<br>
&gt; Error: Unable to find a match<br>
&gt; <br>
&gt; ## <a href=3D"http://obexpushtest.bb" rel=3D"noreferrer" target=3D"_bl=
ank">obexpushtest.bb</a> file :-<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0# file recipes-kernel/linux-firmware/linux-firmware=
_%.bbappend<br>
&gt; SUMMARY =3D &quot;tset_mount example&quot;<br>
&gt; SECTION =3D &quot;test_mount&quot;<br>
&gt; LICENSE =3D &quot;MIT&quot;<br>
&gt; LIC_FILES_CHKSUM =3D<br>
&gt; &quot;file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bcf8506ecda2f=
7b4f302&quot;<br>
&gt; <br>
&gt; S =3D &quot;${WORKDIR}&quot;<br>
&gt; <br>
&gt; SRC_URI +=3D &quot;file://obexpushd&quot;<br>
&gt; <br>
&gt; INSANE_SKIP_${PN} =3D &quot;ldflags&quot;<br>
&gt; INHIBIT_PACKAGE_DEBUG_SPLIT =3D &quot;1&quot;<br>
&gt; INHIBIT_PACKAGE_STRIP =3D &quot;1&quot;<br>
&gt; <br>
<br>
You should probably inherit bin_package but override do_install<br>
(otherwise you&#39;ll have an issue with the do_install task coming from th=
e<br>
bin_package bbclass trying to pack your whole ${WORKDIR} (S) which<br>
include way too many files you&#39;re not interested in).<br>
<br>
&gt; do_install_append () {<br>
<br>
No need for _append since the following is the only thing your recipe<br>
will do, so better just override do_install.<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0install -d ${D}/${bindir}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0install -m 0644 ${WORKDIR}/obexpushd =
${D}/${bindir}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cp ${WORKDIR}/obexpushd ${D}/${bindir=
}<br>
&gt; }<br>
&gt; <br>
&gt; # NOTE: Use &quot;=3D+&quot; instead of &quot;+=3D&quot;. Otherwise, t=
he file is placed into the<br>
&gt; linux-firmware package.<br>
&gt; PACKAGES =3D+ &quot;${PN}-example&quot;<br>
&gt; FILES_${PN}-example =3D &quot;/usr/bin/obexpushd&quot;<br>
<br>
Here&#39;s the issue, you put your file into the obexpushtest-example and<b=
r>
I&#39;m pretty sure that your obexpushtest package is actually empty and by=
<br>
default empty packages are removed, hence why the image recipe can&#39;t<br=
>
include this package.<br>
<br>
IMHO, no need for your PACKAGES and FILES variables as the default will<br>
put your binary in the obexpushtest package, and since your recipe isn&#39;=
t<br>
creating any other package (explicitly), I don&#39;t see the use for a new<=
br>
package.<br>
<br>
Quentin<br>
</blockquote></div>

--00000000000096c90105b473d82c--
