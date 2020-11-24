Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
 by mx.groups.io with SMTP id smtpd.web12.49301.1606205689934588766
 for <yocto@lists.yoctoproject.org>;
 Tue, 24 Nov 2020 00:14:50 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Aj8xkaHm;
 spf=pass (domain: gmail.com, ip: 209.85.221.43, mailfrom: lefevre.da@gmail.com)
Received: by mail-wr1-f43.google.com with SMTP id z7so5508487wrn.3
        for <yocto@lists.yoctoproject.org>; Tue, 24 Nov 2020 00:14:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xhQ8GoenGnPE/KACi6iKKkuaO4HIglstHF0A9NrFjos=;
        b=Aj8xkaHmdv7t0DgVkYNQWyLf1FEQk0WCs6GMM8gBWQC7ul+sxBTeuP84GOUWoIAfJc
         fwLNG19/B6/de9nBgh9rRQ9E21N94BVTOIUsufwypnItK1Il7jYId3e7dXi6sqArqf9O
         Qeka68uILM6NrGyWMQNvfuVSrjkGUjrd8bksf+4y6wTph+SzoWJPH/aN8RaX4+X27V1i
         6ozvnHi3MDpAbz2+zq0hHc+RKJF57wd6/ZWc567zMFwoLD8xH8KViTVSdYhsDV0FkkgM
         nryiXopXXCfqaacweEXICKXB3Ham+kilX6LpxY1txGbpve6gico7jC0rzHIHLKcf+R6f
         DiTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xhQ8GoenGnPE/KACi6iKKkuaO4HIglstHF0A9NrFjos=;
        b=Q6muRkdhSHXNPrhYusF6D7dEu4xIV7MXDnqytIsHc5CgkAGcylzfUIJmLVtqKl7ae3
         z5T+4V/MSNbC3hmFrjrGeWDZSzmqPD4vVTp2uEDZg7ivSaWnj5ICNony9LLMDnT6OUNp
         LGWEkOGVX4Ehpc81THx1ubvovzhyS7RKeQB73n16/vWU+w88C4A9kycksmv7stM8zOh0
         9PfFJLkIWsq5gPXfiUPLrwm8/phiiP/RIu57JMPTqLNgX52TqBidMGkSnYy1LGhTBFIw
         Iun02/Q6HvDgieIEvBZTPlMuFa6+NlpLlJAtoTrhF6BD1pVSB/xvluTkcTgj0JItDo4i
         Yj1Q==
X-Gm-Message-State: AOAM5317/8Jd6BPI+KHlQUzfmvXh4ofNd6g24abXoKn1u1QTh4czY5X4
	JDtxCBmo1cSYiztcnyDSJvs04S+iwY8dM4UPZw==
X-Google-Smtp-Source: ABdhPJxz5eN7dVUFpvlTFMmH5bFgxvHy/95f+pJOOs3mV9hy5F3PmD291ebAImHuHVf88ZK6doT0MUP9lVHQnr7POiM=
X-Received: by 2002:a05:6000:1292:: with SMTP id f18mr3846019wrx.196.1606205688410;
 Tue, 24 Nov 2020 00:14:48 -0800 (PST)
MIME-Version: 1.0
References: <CA+FhBv_OObLJ9BhtJSw0_nzSUimc0AcSybQ7_FEm+SEzASJSRg@mail.gmail.com>
 <CAFSZm+j2kN9x4G+oR08fUWwfX7a6UWidPZpbnstp9V0_=acRKw@mail.gmail.com> <VI1PR01MB64624A8D9CCCF01C7AC8F7B6A8FC0@VI1PR01MB6462.eurprd01.prod.exchangelabs.com>
In-Reply-To: <VI1PR01MB64624A8D9CCCF01C7AC8F7B6A8FC0@VI1PR01MB6462.eurprd01.prod.exchangelabs.com>
From: "Damien LEFEVRE" <lefevre.da@gmail.com>
Date: Tue, 24 Nov 2020 10:14:37 +0200
Message-ID: <CA+FhBv_ypufVtD=dSeJDdBd8qWBOzOr+qFGaDEeLrPk33Rno1g@mail.gmail.com>
Subject: Re: [yocto] Disable systemd-timesyncd.service in image
To: Konrad Weihmann <kweihmann@outlook.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007e759f05b4d5e7a2"

--0000000000007e759f05b4d5e7a2
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Yes SYSTEMD_AUTO_ENABLE_${PN} doesn't apply to systemd recipe core services
as they are not installed as separate packages.

But I got it working now.

The default enable/disable service are defined in
https://github.com/systemd/systemd/blob/master/presets/90-systemd.preset

So
do_configure_append() {
    sed -i -e "s/enable systemd-timesyncd.service/disable
systemd-timesyncd.service/g" ${S}/presets/90-systemd.preset
}

does the trick

Cheers,
-Damien

On Mon, Nov 23, 2020 at 10:42 PM Konrad Weihmann <kweihmann@outlook.com>
wrote:

> The service is deployed with standard systemd package, which doesn't
> have that set as far as I see it (no SYSTEMD_AUTO_ENABLE_${PN} in the
> latest recipe revision)
>
> I think, after browsing through the code of systemd - this "autostart"
> behavior comes from [1].
> So I would say you can disable it with a drop-in file at
> /etc/systemd/system/systemd-timesyncd.service.d/disable.conf
> [Install]
> WantedBy=3D
>
> which also would be charming in a way that it isn't that invasive in the
> build system
>
> [1]
>
> https://github.com/systemd/systemd/blob/5b639090d0b4a49d77ba58bebe180b2a=
6f8da322/units/systemd-timesyncd.service.in#L55
>
> haven't tested it though, but you might wanna give that a shot, if
> Aaron's approach doesn't work.
>
> On 23.11.20 21:21, Joel A Cohen wrote:
> > I think you need to set SYSTEMD_AUTO_ENABLE =3D =E2=80=9Cdisable=E2=80=
=
=9D (actually any
> > value other than =E2=80=9Cenable=E2=80=9D) in your bbappend.
> >
> > (It looks like SYSTEMD_AUTO_ENABLE_${PN} is intended to work too, but =
I
> > can=E2=80=99t verify it at the moment and reading over systemd.bbclass=
 I=E2=80=99m not
> > sure if it works or not)
> >
> > =E2=80=94Aaron
> >
> > On Mon, Nov 23, 2020 at 11:51 AM Damien LEFEVRE <lefevre.da@gmail.com
> > <mailto:lefevre.da@gmail.com>> wrote:
> >
> >     Hi,
> >
> >     I would like to have systemd-timesyncd.service as part of an image
> >     but have it disabled by default.
> >
> >     Right now it is enabled by default which causes some issues.
> >
> >     I've tried systemd_%.bbappend
> >
> >     do_install_append() {
> >          rm
> "$D/etc/systemd/system/dbus-org.freedesktop.timesync1.service"
> >          rm
> >
>  "$D/etc/systemd/system/sysinit.target.wants/systemd-timesyncd.service"
> >     }
> >
> >     but those symlinks are not part of the package.
> >
> >     I've tried this to remove the link during the package deployment
> >     during do_rootfs
> >     pkg_postinst_${PN}_append() {
> >          #!/bin/sh -e
> >          rm
> "$D/etc/systemd/system/dbus-org.freedesktop.timesync1.service"
> >          rm
> >
>  "$D/etc/systemd/system/sysinit.target.wants/systemd-timesyncd.service"
> >     }
> >
> >     But at this stage the links still don't exist.
> >
> >     Which package is actually responsible for enabling the default
> >     services / creating the symlinks? How can we turn some of them off
> >     while keeping them in the image?
> >
> >     Thanks,
> >     -Damien
> >
> >
> >
> >
> >
> >=20
> >
>

--0000000000007e759f05b4d5e7a2
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yes=C2=A0<span style=3D"color:rgb(0,0,0)">SYSTEMD_AUT=
O_ENABLE_${PN} doesn&#39;t apply to systemd recipe core services as they ar=
e not installed as separate packages.</span></div><div><br></div>But I got =
it working now.<div><br></div><div>The default enable/disable service are d=
efined in=C2=A0<a href=3D"https://github.com/systemd/systemd/blob/master/pr=
esets/90-systemd.preset">https://github.com/systemd/systemd/blob/master/pre=
sets/90-systemd.preset</a></div><div><br></div><div>So=C2=A0</div><div>do_c=
onfigure_append() {<br>=C2=A0 =C2=A0 sed -i -e &quot;s/enable systemd-times=
yncd.service/disable systemd-timesyncd.service/g&quot; ${S}/presets/90-syst=
emd.preset<br>}<br></div><div><br></div><div>does the trick</div><div><br><=
/div><div>Cheers,</div><div>-Damien</div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Nov 23, 2020 at 10:42 PM K=
onrad Weihmann &lt;<a href=3D"mailto:kweihmann@outlook.com">kweihmann@outlo=
ok.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left=
:1ex">The service is deployed with standard systemd package, which doesn&#3=
9;t <br>
have that set as far as I see it (no SYSTEMD_AUTO_ENABLE_${PN} in the <br>
latest recipe revision)<br>
<br>
I think, after browsing through the code of systemd - this &quot;autostart=
&quot; <br>
behavior comes from [1].<br>
So I would say you can disable it with a drop-in file at<br>
/etc/systemd/system/systemd-timesyncd.service.d/disable.conf<br>
[Install]<br>
WantedBy=3D<br>
<br>
which also would be charming in a way that it isn&#39;t that invasive in t=
he <br>
build system<br>
<br>
[1] <br>
<a href=3D"https://github.com/systemd/systemd/blob/5b639090d0b4a49d77ba58b=
ebe180b2a6f8da322/units/systemd-timesyncd.service.in#L55" rel=3D"noreferrer=
" target=3D"_blank">https://github.com/systemd/systemd/blob/5b639090d0b4a49=
d77ba58bebe180b2a6f8da322/units/systemd-timesyncd.service.in#L55</a><br>
<br>
haven&#39;t tested it though, but you might wanna give that a shot, if <br=
>
Aaron&#39;s approach doesn&#39;t work.<br>
<br>
On 23.11.20 21:21, Joel A Cohen wrote:<br>
&gt; I think you need to set SYSTEMD_AUTO_ENABLE =3D =E2=80=9Cdisable=E2=
=80=9D (actually any <br>
&gt; value other than =E2=80=9Cenable=E2=80=9D) in your bbappend.<br>
&gt; <br>
&gt; (It looks like SYSTEMD_AUTO_ENABLE_${PN} is intended to work too, but=
 I <br>
&gt; can=E2=80=99t verify it at the moment and reading over systemd.bbclas=
s I=E2=80=99m not <br>
&gt; sure if it works or not)<br>
&gt; <br>
&gt; =E2=80=94Aaron<br>
&gt; <br>
&gt; On Mon, Nov 23, 2020 at 11:51 AM Damien LEFEVRE &lt;<a href=3D"mailto=
:lefevre.da@gmail.com" target=3D"_blank">lefevre.da@gmail.com</a> <br>
&gt; &lt;mailto:<a href=3D"mailto:lefevre.da@gmail.com" target=3D"_blank">=
lefevre.da@gmail.com</a>&gt;&gt; wrote:<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Hi,<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0I would like to have=C2=A0systemd-timesyncd.servic=
e as part of an image<br>
&gt;=C2=A0 =C2=A0 =C2=A0but have it disabled by default.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Right now it is enabled by default which causes=C2=
=
=A0some issues.<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0I&#39;ve tried systemd_%.bbappend<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0do_install_append() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm &quot;$D/etc/systemd/system/dbus=
-org.freedesktop.timesync1.service&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm<br>
&gt;=C2=A0 =C2=A0 =C2=A0&quot;$D/etc/systemd/system/sysinit.target.wants/s=
ystemd-timesyncd.service&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0}<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0but those symlinks are not part of the package.<br=
>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0I&#39;ve tried this to remove the link during the =
package deployment<br>
&gt;=C2=A0 =C2=A0 =C2=A0during do_rootfs<br>
&gt;=C2=A0 =C2=A0 =C2=A0pkg_postinst_${PN}_append() {<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 #!/bin/sh -e<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0 =C2=A0rm &quot;$D/etc/systemd/system=
/dbus-org.freedesktop.timesync1.service&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 rm<br>
&gt;=C2=A0 =C2=A0 =C2=A0&quot;$D/etc/systemd/system/sysinit.target.wants/s=
ystemd-timesyncd.service&quot;<br>
&gt;=C2=A0 =C2=A0 =C2=A0}<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0But at this stage the links still don&#39;t exist.=
<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Which package is actually responsible for enabling=
 the default<br>
&gt;=C2=A0 =C2=A0 =C2=A0services / creating the symlinks? How can we turn =
some of them off<br>
&gt;=C2=A0 =C2=A0 =C2=A0while keeping them in the image?<br>
&gt; <br>
&gt;=C2=A0 =C2=A0 =C2=A0Thanks,<br>
&gt;=C2=A0 =C2=A0 =C2=A0-Damien<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
</blockquote></div>

--0000000000007e759f05b4d5e7a2--
