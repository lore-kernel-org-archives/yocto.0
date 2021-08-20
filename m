Received: from mail-pj1-f49.google.com (mail-pj1-f49.google.com [209.85.216.49])
 by mx.groups.io with SMTP id smtpd.web09.2617.1629488138637358374
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Aug 2021 12:35:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=aARJycez;
 spf=pass (domain: gmail.com, ip: 209.85.216.49, mailfrom: chuckwolber@gmail.com)
Received: by mail-pj1-f49.google.com with SMTP id mq3so7981864pjb.5
        for <yocto@lists.yoctoproject.org>; Fri, 20 Aug 2021 12:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=zoE43uVJU+O1Z0izfWfxVSmbPc5pCc+0FsSykUAKQUo=;
        b=aARJycez0kpSU0OEyDcNRcxNmdhBsHKVpDRue3mEIla+Y+97Y6rUjxOOapkURp4XUe
         Hn4914SKQvUow7To68DZ1ok8Qi1S8yvLuCNWvxQTo5EIqDsFRyzEEk9c8atMk8UKaL2o
         Rs6sYBn7Ehvf9gykDIF9fw6EH94QCQcIBPkGvzlb1K0MSgoGBjL/tphXTlzitSF1FMQX
         pv+apEeM5Q0zSOniuCdDcp1UAHkGHILSKn8T8pUNsFSXieBYlcvp+NHajDityw46wLNq
         Sb7EKcgCpcRr1dxhBnGpDnlaS/fsxXQ4kH/jrJ3aovAN4rQ9iOwYG0WJOmjuvbBvmhZG
         tMaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=zoE43uVJU+O1Z0izfWfxVSmbPc5pCc+0FsSykUAKQUo=;
        b=Gkc53ytc+bAJDu7KuRYVD2keghfOjH5DsgkO6ZTuDGQbrqMmscNZxRHsIOUDQvSW+j
         TbjAZdPlgXhYVTULf2nUnhEOroHZ/BU86oaORo7BAX6gxz/AkBUkO557TF3CwCScJd8F
         9rmbZHH79n8M0BEMWRxbB0XJ7qSIt+4yKXt9U7T3FOmrvDmPpNsTvG8GuM/Ui9pracx0
         DAcBcdi5n7k2dq1XXNUkH9teyeH/Z0PfmdZNpE/cafZb5oVTLFpGACLY459yMLCr2fIS
         LDt0+uS4qnfWQ/JKWxoudCU4aeL7SMu6ewcWBcI5Lvf/rvdsdGBpOlepO3OKXfZPZF9t
         crGg==
X-Gm-Message-State: AOAM532jeziieXH0jDNHk713zs1KdgDeYUIkgJz8HewwcyxorBNnY6Qf
	DtkVV9hjzg+76NgU+GbMHMO95S7BPKwdWaU6oFA=
X-Google-Smtp-Source: ABdhPJwdmiNvSEHkLK8Z6C0AReYZr8z/0tcBbPAQErJm/Ptfevls6JYK5+bLUxNnE3GzBYnHN0/Mlf0v6lzr0wx6W6k=
X-Received: by 2002:a17:90a:c7d5:: with SMTP id gf21mr6030508pjb.111.1629488137926;
 Fri, 20 Aug 2021 12:35:37 -0700 (PDT)
MIME-Version: 1.0
References: <PMcN.1629430885111388773.CltD@lists.yoctoproject.org>
In-Reply-To: <PMcN.1629430885111388773.CltD@lists.yoctoproject.org>
From: "Chuck Wolber" <chuckwolber@gmail.com>
Date: Fri, 20 Aug 2021 12:35:26 -0700
Message-ID: <CAB=6tBRryHURRgqwgwbY_H5Dbr8eUXijTEmVvarbTOTnZDBqZQ@mail.gmail.com>
Subject: Re: [yocto] Install packages to an "image" without its dependencies being pulled in. #yocto
To: bibibobibo@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a07e0805ca02c5d6"

--000000000000a07e0805ca02c5d6
Content-Type: text/plain; charset="UTF-8"

Yes.

This is a version of the question - "how do I build an image that *ONLY*
includes the packages I explicitly specify". This involves bypassing a lot
of guards and bitbake tooling, but it can be done.

Your mileage may vary depending on your distro setup. In particular this
assumes you are configured to use the IPK package format. The dnf command
had significant issues a while back, so I switched from RPM to IPK. If you
use RPM, the OPKG_ARGS stuff not going to work for you.

IMAGE_FEATURES = ""
LDCONFIGDEPEND = ""
IMAGE_INSTALL = ""
PACAKGE_INSTALL = ""
OPKG_ARGS += "--no-install-recommends --nodeps --force-depends"

ROOTFS_POSTPROCESS_COMMAND_remove = "systemd_create_users; "
ROOTFS_POSTPROCESS_COMMAND_remove = "rootfs_update_timestamp; "
ROOTFS_POSTPROCESS_COMMAND_remove = "rootfs_reproducible; "

IMAGE_CMD_cpio_prepend() {
    IMAGE_BUILDING_DEBUGFS="true"
}

If you want the pre and postinstall scripts to trigger, you need to add an
IMAGE_PREPROCESS_COMMAND function that takes your PACKAGE_INSTALL list and
concatenates the package level control, preinst, and postinst scripts. This
involves unpacking the ipk found in
${WORKDIR}/oe-rootfs-repo/*/${PKG}_*.ipk. You may also want to post-process
the resulting script to remove "set -e" invocations, since those scripts
make assumptions about dependencies that you are (hopefully) safe to ignore.

You may also want another IMAGE_PREPROCESS_COMMAND function that deletes
stuff that can accidentally overwrite your image rootfs files, like
/etc/passwd and /etc/group.

Once you get it all dialed in, you can probably abstract the useful bits to
your own image-layer bbclass so you can trivially reuse it.

..Ch:W..


On Fri, Aug 20, 2021 at 12:36 AM <bibibobibo@gmail.com> wrote:

> Greetings everyone,
>
> Is there a way to instruct Yocto's image class to install package(s)
> without its dependencies for an image target (i.e ext4)? For instance, we
> are trying to build a system where there is a main system partition and
> another partition that'll host additional lib, etc and during boot up we
> would overlay them together. Hence, the "other" partition does not really
> need all the same system libs, etc that already exists on the system
> partition. This other partition is developed by an external partner so we
> want to have the autonomy to update separately (i.e not mingled things
> together with system partition). I am having trouble finding a way to do
> this because Yocto seem to like to install a package long with all its
> dependencies (i.e glibc, etc).
>
> PS. I apologize if this is not the right place to ask the question.
>
> Thanks,
> Mike
> 
>
>

-- 
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--000000000000a07e0805ca02c5d6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Yes.</div><div><br></div><div>This is a version of th=
e question - &quot;how do I build an image that *ONLY* includes the package=
s I explicitly specify&quot;. This involves bypassing a lot of guards and b=
itbake tooling, but it can be done.</div><div><br></div><div>Your mileage m=
ay vary depending on your distro setup. In particular this assumes you are =
configured to use the IPK package format. The dnf command had significant i=
ssues a while back, so I switched from RPM to IPK. If you use RPM, the OPKG=
_ARGS stuff not going to work for you.<br><div><br></div><div>IMAGE_FEATURE=
S =3D &quot;&quot;</div><div>LDCONFIGDEPEND =3D &quot;&quot;</div><div>IMAG=
E_INSTALL =3D &quot;&quot;</div><div>PACAKGE_INSTALL =3D &quot;&quot;</div>=
<div>OPKG_ARGS +=3D &quot;--no-install-recommends --nodeps --force-depends&=
quot;<br></div><div><br></div><div>ROOTFS_POSTPROCESS_COMMAND_remove =3D &q=
uot;systemd_create_users; &quot;</div><div>ROOTFS_POSTPROCESS_COMMAND_remov=
e =3D &quot;rootfs_update_timestamp; &quot;</div><div>ROOTFS_POSTPROCESS_CO=
MMAND_remove =3D &quot;rootfs_reproducible; &quot;</div><div><br></div><div=
>IMAGE_CMD_cpio_prepend() {</div><div>=C2=A0=C2=A0=C2=A0 IMAGE_BUILDING_DEB=
UGFS=3D&quot;true&quot;</div><div>}</div><div><br></div><div>If you want th=
e pre and postinstall scripts to trigger, you need to add an IMAGE_PREPROCE=
SS_COMMAND function that takes your PACKAGE_INSTALL list and concatenates t=
he package level control, preinst, and postinst scripts. This involves unpa=
cking the ipk found in ${WORKDIR}/oe-rootfs-repo/*/${PKG}_*.ipk. You may al=
so want to post-process the resulting script to remove &quot;set -e&quot; i=
nvocations, since those scripts make assumptions about dependencies that yo=
u are (hopefully) safe to ignore.</div><div><br></div><div>You may also wan=
t another IMAGE_PREPROCESS_COMMAND function that deletes stuff that can acc=
identally overwrite your image rootfs files, like /etc/passwd and /etc/grou=
p.</div><div><br></div><div>Once you get it all dialed in, you can probably=
 abstract the useful bits to your own image-layer bbclass so you can trivia=
lly reuse it.</div><div><br></div><div>..Ch:W..<br></div><div><br></div></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Fri, Aug 20, 2021 at 12:36 AM &lt;<a href=3D"mailto:bibibobibo@gmail.=
com">bibibobibo@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmai=
l_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,20=
4,204);padding-left:1ex">Greetings everyone,=C2=A0<br><br>Is there a way to=
 instruct Yocto&#39;s image class to install package(s) without its depende=
ncies for an image target (i.e ext4)? For instance, we are trying to build =
a system where there is a main system partition and another partition that&=
#39;ll host additional lib, etc and during boot up we would overlay them to=
gether. Hence, the &quot;other&quot; partition does not really need all the=
 same system libs, etc that already exists on the system partition. This ot=
her partition is developed by an external partner so we want to have the au=
tonomy to update separately (i.e not mingled things together with system pa=
rtition). I am having trouble finding a way to do this because Yocto seem t=
o like to install a package long with all its dependencies (i.e glibc, etc)=
.<br><br>PS. I apologize if this is not the right place to ask the question=
.<br><br>Thanks,<br>Mike
<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature"><div dir=3D"ltr"><div><b><span style=3D"font-family:monospa=
ce">&quot;Perfection must be reached by degrees; she requires the slow hand=
 of time.&quot; - Voltaire</span></b></div></div></div>

--000000000000a07e0805ca02c5d6--
