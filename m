Received: from exchange.sewerin.com (exchange.sewerin.com [92.39.20.236])
 by mx.groups.io with SMTP id smtpd.web08.13510.1605809694883755772
 for <yocto@lists.yoctoproject.org>;
 Thu, 19 Nov 2020 10:14:55 -0800
Authentication-Results: mx.groups.io;
 dkim=fail reason="body hash did not verify" header.i=@lists.yoctoproject.org header.s=20140610 header.b=ryotAh1F;
 spf=softfail (domain: lists.yoctoproject.org, ip: 92.39.20.236, mailfrom: yocto@lists.yoctoproject.org)
Received: from Pickup by Exchange.sewerin.de with Microsoft SMTP Server id
 15.0.1395.4; Thu, 19 Nov 2020 11:44:02 +0000
X-Sender: bounce+53643+51431+3618059+6691491@lists.yoctoproject.org
X-Receiver: Bastian.Ruppert@sewerin.com
x-endofinjectedxheaders: 12576
X-Received: by 127.0.0.2 with SMTP id 0GYmYY3619394xi7w4Dyh0rH; Thu, 19 Nov 2020 03:42:14 -0800
X-Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53]) by mx.groups.io
 with SMTP id smtpd.web08.7817.1605784532637224213 for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2020 03:15:32 -0800
X-Received: by mail-ua1-f53.google.com with SMTP id h26so1766717uan.10        for <yocto@lists.yoctoproject.org>; Thu, 19 Nov 2020 03:15:32 -0800 (PST)
X-Gm-Message-State: 985qOmWABTdzcxEBZPNWl2hVx3618059AA=
X-Google-Smtp-Source: ABdhPJxitW/DccrsBbJI5VNTGHEfl0dJJwIai96KhvsIMUO5UDyhJODjIcMaebNaYUeNgow+FcsNiE0N4uT84qtMQ1I=
X-Received: by 2002:ab0:4a4a:: with SMTP id r10mr7364908uae.130.1605784531550; Thu, 19 Nov 2020 03:15:31 -0800 (PST)
MIME-Version: 1.0
References: <CAJw=dJ9E4e1g_V1NnZj6adf415GAK_DO1VNjS3EmnJXyTiEiQA@mail.gmail.com> <20201119091631.riqm2r2gtnou2cie@qschulz>
In-Reply-To: <20201119091631.riqm2r2gtnou2cie@qschulz>
From: "NIKHIL PATIL" <nikhilvp29@gmail.com>
Date: Thu, 19 Nov 2020 16:45:19 +0530
X-OldMsgId: <CAJw=dJ9Yy8sBWDMT8mpnjDQBjd7AA_MBL5bNukvPXUjCeKmbdw@mail.gmail.com>
Subject: Re: [yocto] Enaable to add binary in /usr/bin using .bb file
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Precedence: Bulk
List-Unsubscribe: <https://lists.yoctoproject.org/g/yocto/unsub>
Sender: <yocto@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
Mailing-List: list yocto@lists.yoctoproject.org; contact yocto+owner@lists.yoctoproject.org
List-Post: <mailto:yocto@lists.yoctoproject.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=lists.yoctoproject.org; q=dns/txt; s=20140610;
 t=1605786134; bh=71FnWSGsOyODIsX1Q5FEpj8cvxMctiOIX6s5FYZh6ac=; h=Cc:Content-Type:Date:From:Subject:To;
 b=ryotAh1FazRKFnXuVHsmzGD+FuCodBWNL1dr0ME4T/mFbh1tfstjTnRv0ZvNskKR21K TjJFeGneRu0/VZcPPRZnDIfRKAkKDP1y5AAKJU2EgV7JRo/V49boh/N1csJhSkO7TgqPo 1lm9z95MLc+g/bWZfISGr6SoLrrDdsrQfM0=
Return-Path: bounce+53643+51431+3618059+6691491@lists.yoctoproject.org
X-GFI-SMTP-Submission: 1
X-GFI-SMTP-HelloDomain: web01.groups.io
X-GFI-SMTP-RemoteIP: 66.175.222.12
Received-SPF: Pass (Exchange.sewerin.de: domain of yocto@lists.yoctoproject.org designates 66.175.222.12
 as permitted sender) receiver=Exchange.sewerin.de; client-ip=66.175.222.12; helo=web01.groups.io;
Message-ID: <b254f3e705ef4b118e2b2e55f502c2b9@Exchange.sewerin.de>
Content-Type: multipart/mixed; boundary="L6lF9cct9d8gARQncOw0"

--L6lF9cct9d8gARQncOw0
Content-Type: multipart/alternative; boundary="00000000000096c90105b473d82c"

--00000000000096c90105b473d82c
Content-Type: text/plain; charset="UTF-8"
X-EC0D2A8E-5CB7-4969-9C36-46D859D137BE-PartID: {A8D54B01-18A2-478F-8815-1945FE9C2890}

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
X-EC0D2A8E-5CB7-4969-9C36-46D859D137BE-PartID: {063DC38F-E983-4BF9-9603-D2F72FFB86FC}

<div>Hi ,<div>=C2=A0 =C2=A0 =C2=A0Yours correct only , but the thing is we a=
re taking<b> binary(obexpushd)</b> from other source and only need to copy t=
hat binary into<b> /usr/bin</b>=C2=A0of our platform(<b>intel board</b>).</d=
iv><div>=C2=A0 =C2=A0 =C2=A0</div><div>=C2=A0 =C2=A0 =C2=A0Hence how we can =
achieve these using .bb file ? is there any sample example .</div></div><br>=
<div class=3D"gmail_quote"><div class=3D"gmail_attr">On Thu, Nov 19, 2020 at=
 2:46 PM Quentin Schulz &lt;<a href=3D"mailto:quentin.schulz@streamunlimited=
.com">quentin.schulz@streamunlimited.com</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex">Hi,<br>
<br>
On Thu, Nov 19, 2020 at 01:13:43PM +0530, NIKHIL PATIL wrote:<br>
&gt; Hi ,<br>
&gt;=C2=A0 =C2=A0 =C2=A0I want to add binary in /usr/bin , for these i made =
own .bb file (<br>
&gt; <a href=3D"http://obexpushtest.bb">obexpushtest.bb</a>),=C2=A0 =C2=A0 =C2=
=A0 When i am compiling obexpushtest package separately<br>
<br>
You&#39;re not compiling a package, you&#39;re compiling a recipe named<br>
obexpushtest whose output is packages (one of which is named the same as<br>=

the recipe, hence the confusion).<br>
<br>
&gt; that time it is compiling fine=C2=A0 , but when i am adding obexpushtes=
t in<br>
&gt; local.conf as a IMAGE_INSTALL , i am getting error.<br>
&gt; <br>
<br>
But here, you&#39;re adding a package into an image. Effectively, the first<=
br>
and second commands you ran don&#39;t do the same thing.<br>
<br>
&gt; ## Error :-<br>
&gt; <br>
&gt; /data/nikhil/inti_dmsv/yocto_build/build/tmp/work/intel_corei7_64-poky-=
linux/core-image-intel/1.0-r0/oe-rootfs-repo<br>
&gt; Last metadata expiration check: 0:00:01 ago on Thu 19 Nov 2020 05:57:19=
 AM<br>
&gt; UTC.<br>
&gt; No match for argument: obexpushtest<br>
&gt; Error: Unable to find a match<br>
&gt; <br>
&gt; ## <a href=3D"http://obexpushtest.bb">obexpushtest.bb</a> file :-<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0# file recipes-kernel/linux-firmware/linux-firmware_=
%.bbappend<br>
&gt; SUMMARY =3D &quot;tset_mount example&quot;<br>
&gt; SECTION =3D &quot;test_mount&quot;<br>
&gt; LICENSE =3D &quot;MIT&quot;<br>
&gt; LIC_FILES_CHKSUM =3D<br>
&gt; &quot;file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0bcf8506ecda2f7=
b4f302&quot;<br>
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
(otherwise you&#39;ll have an issue with the do_install task coming from the=
<br>
bin_package bbclass trying to pack your whole ${WORKDIR} (S) which<br>
include way too many files you&#39;re not interested in).<br>
<br>
&gt; do_install_append () {<br>
<br>
No need for _append since the following is the only thing your recipe<br>
will do, so better just override do_install.<br>
<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0install -d ${D}/${bindir}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0install -m 0644 ${WORKDIR}/obexpushd $=
{D}/${bindir}<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0cp ${WORKDIR}/obexpushd ${D}/${bindir}=
<br>
&gt; }<br>
&gt; <br>
&gt; # NOTE: Use &quot;=3D+&quot; instead of &quot;+=3D&quot;. Otherwise, th=
e file is placed into the<br>
&gt; linux-firmware package.<br>
&gt; PACKAGES =3D+ &quot;${PN}-example&quot;<br>
&gt; FILES_${PN}-example =3D &quot;/usr/bin/obexpushd&quot;<br>
<br>
Here&#39;s the issue, you put your file into the obexpushtest-example and<br=
>
I&#39;m pretty sure that your obexpushtest package is actually empty and by<=
br>
default empty packages are removed, hence why the image recipe can&#39;t<br>=

include this package.<br>
<br>
IMHO, no need for your PACKAGES and FILES variables as the default will<br>
put your binary in the obexpushtest package, and since your recipe isn&#39;t=
<br>
creating any other package (explicitly), I don&#39;t see the use for a new<b=
r>
package.<br>
<br>
Quentin<br>
</blockquote></div>

--00000000000096c90105b473d82c--

--L6lF9cct9d8gARQncOw0--
