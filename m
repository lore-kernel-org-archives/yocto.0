Received: from mail-pl1-f177.google.com (mail-pl1-f177.google.com [209.85.214.177])
 by mx.groups.io with SMTP id smtpd.web10.10128.1603157738659200605
 for <yocto@lists.yoctoproject.org>;
 Mon, 19 Oct 2020 18:35:38 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=O6PsQ8+2;
 spf=pass (domain: gmail.com, ip: 209.85.214.177, mailfrom: chuckwolber@gmail.com)
Received: by mail-pl1-f177.google.com with SMTP id r10so82483plx.3
        for <yocto@lists.yoctoproject.org>; Mon, 19 Oct 2020 18:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4zeN8rwplv9fSTD6elz4uYbkDfQnv3bnqE/EXHVNXd0=;
        b=O6PsQ8+2O1UZ9HWsQ1VN5H0lCKCbRKNQ9gresKKTgeKc8gCIMJ2tkm5C/W5JtQT0kM
         2X9tbc2KfQIgRy84R9E+NNYRWz8+6TOScs5FgZKcgy6TZffEvX8E579QK8VmQ6g7jOOg
         59j3KVJzF33UcM+LHskUSrT6G69T1oJ+hrm1JugzxxheXyvwUm2200bIeZSlymoC9dKp
         m8VRTkgYbu145dFC17Nwet/T3WX5EjgflvizibiJ6Vr0jqPCoXM+dJiHgx2KEn/VNClD
         RCRCNYniWYBk0mWZRPtjjmvkI+1NYZmueHi/IgAO9MZe5+edH2uIqnNRcVSvpgOU7Bca
         1zTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4zeN8rwplv9fSTD6elz4uYbkDfQnv3bnqE/EXHVNXd0=;
        b=VyaPOoPYE4h5ohxG89RCunvrIVzguANJzVt6SUv5UYTaL0lcF/p9OvA58ufluXERQ9
         WR9PkW3/vWSJi5WgKaA+j7fMQEtW+X7UkGg/kaNjkH/AK4K8BwgXuiETpIR5LSMuGaPT
         INv/YRpIyAa9RotAERBACNfbjJ0FJripYz0U3Xq8W7XL9SW6iwfZxLzmIVD52y4dbIGt
         yPOVsxy6gw95UFhES/x9MMUr0A8YCuLoiaKunmnBScyOCPuE1OhH2hnnS4qYBSB0nZfN
         wzt+M/wHI4iEz/X7TRCWpRT9dEZez2EEvGKAdVuBovCYSbVZ1IQpseViDKORi0eGR/Rf
         671A==
X-Gm-Message-State: AOAM530Za77rxfUJ1FVz6jqfatw4N9tfXb9hBwEkCo+tc0u77KGitbmL
	47ZX1T7rkDskbf7q8/E+HXPXl2FIk3rIFPBjsRbM+qu2/oLrfg==
X-Google-Smtp-Source: ABdhPJx7OZULMoZOTX/BtkSoIZUZo26p6kalAAhcIKko5obhJngB0m0VkvZCUQRmb7gDYvQmSS5BuDk+ckdC1qZKR98=
X-Received: by 2002:a17:90a:dc07:: with SMTP id i7mr583265pjv.111.1603157737716;
 Mon, 19 Oct 2020 18:35:37 -0700 (PDT)
MIME-Version: 1.0
References: <38cd4e9f948e734b3f32b4273fdde8d244507a37.camel@pengutronix.de>
 <7cbd24d7-1240-c944-83ba-fe23e39f3cce@denx.de> <0630d92b2896cd0bec2adc4bc37510fc053184fa.camel@pengutronix.de>
In-Reply-To: <0630d92b2896cd0bec2adc4bc37510fc053184fa.camel@pengutronix.de>
From: "Chuck Wolber" <chuckwolber@gmail.com>
Date: Mon, 19 Oct 2020 18:35:26 -0700
Message-ID: <CAB=6tBSBAHDS-1kAYPU0XKv9MeOCEa_MHGQ83jVYjg3CNdZ+fg@mail.gmail.com>
Subject: Re: [yocto] Generating non-rootfs file system images as update artifacts for multi-partition image updates
To: "Enrico J?rns" <ejo@pengutronix.de>
Cc: Stefano Babic <sbabic@denx.de>, yocto@lists.yoctoproject.org, jlu <jlu@pengutronix.de>
Content-Type: multipart/alternative; boundary="00000000000079c16305b2103fd8"

--00000000000079c16305b2103fd8
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I do not know if this precisely answers your question, but creating bbclass
functionality to create a different type of image may be the way to go.

What you are suggesting sounds similar to this:

https://git.yoctoproject.org/cgit/cgit.cgi/meta-virtualization/tree/classe=
s/image-oci.bbclass?h=3Dmaster

..Ch:W..

On Mon, Oct 19, 2020 at 12:00 PM Enrico J?rns <ejo@pengutronix.de> wrote:

> Hi Stefano,
>
> Am Montag, den 19.10.2020, 18:23 +0200 schrieb Stefano Babic:
> > Hi Enrico,
> >
> > On 19.10.20 17:43, Enrico J?rns wrote:
> > > Hi,
> > >
> > > as I did not have much success with my question in the OR irc, let's
> > > try it here in a more verbose way. ;)
> > >
> > > Imagine I have an A+B redundant boot system, with additional bootloa=
der
> > > and separate home or application file system. Thus my layout would b=
e
> > > like:
> > >
> > > p1: bootloader
> > > p2: rootfs A
> > > p3: rootfs B
> > > p4: appfs A
> > > p5: appfs B
> > >
> > > where rootfs A + appfs A form a logical unit with respect to the ima=
ge-
> > > based update handling.
> > >
> > > No my question is: How do I generate the images required for the
> > > bootloader partition and/or the appfs partition with the OE standard
> > > image generation mechanisms?
> > >
> > > We have a working solution with the 'genimage' tool for quite some
> > > time, but I wonder if that could be done with the more tightly
> > > integrated wic, too.
> > >
> > >
> > > To my understanding, the way of creating something like a bootloader
> > > image or an application file system is by using wic's image split
> > > capabilities and doing (non-redundant example):
> > >
> > > part /boot --source rootfs (or some plugin)
> > > part / ... --source rootfs
> > > part /app  --source rootfs
> >
> > I had the same use case as you, and I could use something like
> >
> > part /app --source rawcopy --sourceparams=3D"file=3D..."
> >
> > and the file points to the image I want to put on the partition.
>
> my intention was a bit different I think. I actually wanted to generate
> the /app out of the rootfs image. But then re-use the resulting image.
>
> To be honest I am less interested in the resulting disk image but in
> the intermediate artifacts.
>
> I've heard some older discussions on how to generate a separate /home
> partition and a separate /data partition and it always turned out that
> generating the single monolithic rootfs first and splitting it on a
> per-folder base later is a straight-forward approach for most
> scenarios.
>
> Trying to get yocto to build images that do not contain things like
> base-files, etc. was always painful and never meant to be supported
> afaik.
>
> > > This will create multiple file system images out of the prior monoli=
tic
> > > rootfs one. It also does all necessary changes for mounting, like
> > > modifying the rootfs /etc/fstab etc.
> > > Thus, using these generated images in my update scenario would be th=
e
> > > way to go for me.
> > >
> > >
> > > BUT, currently I do not see any straight-forward way of how to use
> > > them. One could add them to what the image_wic* image fstypes genera=
te,
> > > but this will violate the default rule that each image fstype genera=
tes
> > > exactly one image.
> > > And the generated images are a little hard to reference as one canno=
t
> > > give them names (which is probably a negligable issue) and they do n=
ot
> > > have a fstype extension.
> > > The more sever issue is that I would also like to have archives (lik=
e
> > > tar.bz2) of the content of /app or /boot as I can use them quite goo=
d
> > > for installing to partitions whose size and other parameters I do no=
t
> > > know very beforehand (also applicable to UBI volumes).
> > >
> > > But, at the moment there does not seem to be a designated way of doi=
ng
> > > something like I intended. I wonder how others solve the generation =
of
> > > non-rootfs images with YP/OE?
> > >
> > > Or did I miss something that already exists for this?
> >
> > I have not a straightforward solution. I inherited just "image" and I
> > cleaned up at the end with a ROOTFS_POSTPROCESS_COMMAND what was
> > superfluous. Maybe forcing packagegroup-core-boot can be an option.
>
> Yes, this would be the 'hacky' solution to the problem. Actually, I
> would prefer finding a solution that is supported out-of-the-box and
> compatible with how OE sees the generation of images.
>
> Thus re-using the wic fs artifacts appears to be one possible straight-
> forward solution to me. The only thing is that I actually would not
> even need the disk image itself probably.
>
> A syntax could look like
>
> part / --source rootfs output=3Dmy-rootfs-without-appfs.ext4 --fstype=3D=
ext4
> part /app --source rootfs output=3Dmy-appfs.tar.bz --fstype=3Dtar.bz2
> part /home --source rootfs output=3Dmy-homefs.ext4 --fstype=3Dext4
>
> Another option could be to introduce some kind of syntax in the file
> system generation classes. But I have neither a clue on how to do that
> without violating the current behavior of creating only one image per
> image type nor a good idea yet on how to name the artifacts.
>
> > Best regards,
> > Stefano
>
> Thanks Stefano and best regards
>
> Enrico
>
> >
> --
> Pengutronix e.K.                           | Enrico J=C3=B6rns          =
      |
> Embedded Linux Consulting & Support        | https://www.pengutronix.de/=
 |
> Steuerwalder Str. 21                       | Phone: +49-5121-206917-180 =
 |
> 31137 Hildesheim, Germany                  | Fax:   +49-5121-206917-9   =
 |
>
>
>=20
>
>

--=20
*"Perfection must be reached by degrees; she requires the slow hand of
time." - Voltaire*

--00000000000079c16305b2103fd8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I do not know if this precisely answers your question=
, but creating bbclass functionality to create a different type of image ma=
y be the way to go. <br></div><div><br></div><div>What you are suggesting s=
ounds similar to this:</div><div><br></div><div><a href=3D"https://git.yoct=
oproject.org/cgit/cgit.cgi/meta-virtualization/tree/classes/image-oci.bbcla=
ss?h=3Dmaster">https://git.yoctoproject.org/cgit/cgit.cgi/meta-virtualizati=
on/tree/classes/image-oci.bbclass?h=3Dmaster</a></div><div><br></div><div>.=
.Ch:W..<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" clas=
s=3D"gmail_attr">On Mon, Oct 19, 2020 at 12:00 PM Enrico J?rns &lt;<a href=
=3D"mailto:ejo@pengutronix.de">ejo@pengutronix.de</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">Hi Stefano,<br>
<br>
Am Montag, den 19.10.2020, 18:23 +0200 schrieb Stefano Babic:<br>
&gt; Hi Enrico,<br>
&gt; <br>
&gt; On 19.10.20 17:43, Enrico J?rns wrote:<br>
&gt; &gt; Hi,<br>
&gt; &gt; <br>
&gt; &gt; as I did not have much success with my question in the OR irc, l=
et&#39;s<br>
&gt; &gt; try it here in a more verbose way. ;)<br>
&gt; &gt; <br>
&gt; &gt; Imagine I have an A+B redundant boot system, with additional boo=
tloader<br>
&gt; &gt; and separate home or application file system. Thus my layout wou=
ld be<br>
&gt; &gt; like:<br>
&gt; &gt; <br>
&gt; &gt; p1: bootloader<br>
&gt; &gt; p2: rootfs A<br>
&gt; &gt; p3: rootfs B<br>
&gt; &gt; p4: appfs A<br>
&gt; &gt; p5: appfs B<br>
&gt; &gt; <br>
&gt; &gt; where rootfs A + appfs A form a logical unit with respect to the=
 image-<br>
&gt; &gt; based update handling.<br>
&gt; &gt; <br>
&gt; &gt; No my question is: How do I generate the images required for the=
<br>
&gt; &gt; bootloader partition and/or the appfs partition with the OE stan=
dard<br>
&gt; &gt; image generation mechanisms?<br>
&gt; &gt; <br>
&gt; &gt; We have a working solution with the &#39;genimage&#39; tool for =
quite some<br>
&gt; &gt; time, but I wonder if that could be done with the more tightly<b=
r>
&gt; &gt; integrated wic, too.<br>
&gt; &gt; <br>
&gt; &gt; <br>
&gt; &gt; To my understanding, the way of creating something like a bootlo=
ader<br>
&gt; &gt; image or an application file system is by using wic&#39;s image =
split<br>
&gt; &gt; capabilities and doing (non-redundant example):<br>
&gt; &gt; <br>
&gt; &gt; part /boot --source rootfs (or some plugin)<br>
&gt; &gt; part / ... --source rootfs<br>
&gt; &gt; part /app=C2=A0 --source rootfs<br>
&gt; <br>
&gt; I had the same use case as you, and I could use something like<br>
&gt; <br>
&gt; part /app --source rawcopy --sourceparams=3D&quot;file=3D...&quot;<br=
>
&gt; <br>
&gt; and the file points to the image I want to put on the partition.<br>
<br>
my intention was a bit different I think. I actually wanted to generate<br=
>
the /app out of the rootfs image. But then re-use the resulting image.<br>
<br>
To be honest I am less interested in the resulting disk image but in<br>
the intermediate artifacts.<br>
<br>
I&#39;ve heard some older discussions on how to generate a separate /home<=
br>
partition and a separate /data partition and it always turned out that<br>
generating the single monolithic rootfs first and splitting it on a<br>
per-folder base later is a straight-forward approach for most<br>
scenarios.<br>
<br>
Trying to get yocto to build images that do not contain things like<br>
base-files, etc. was always painful and never meant to be supported<br>
afaik.<br>
<br>
&gt; &gt; This will create multiple file system images out of the prior mo=
nolitic<br>
&gt; &gt; rootfs one. It also does all necessary changes for mounting, lik=
e<br>
&gt; &gt; modifying the rootfs /etc/fstab etc.<br>
&gt; &gt; Thus, using these generated images in my update scenario would b=
e the<br>
&gt; &gt; way to go for me.<br>
&gt; &gt; <br>
&gt; &gt; <br>
&gt; &gt; BUT, currently I do not see any straight-forward way of how to u=
se<br>
&gt; &gt; them. One could add them to what the image_wic* image fstypes ge=
nerate,<br>
&gt; &gt; but this will violate the default rule that each image fstype ge=
nerates<br>
&gt; &gt; exactly one image.<br>
&gt; &gt; And the generated images are a little hard to reference as one c=
annot<br>
&gt; &gt; give them names (which is probably a negligable issue) and they =
do not<br>
&gt; &gt; have a fstype extension.<br>
&gt; &gt; The more sever issue is that I would also like to have archives =
(like<br>
&gt; &gt; tar.bz2) of the content of /app or /boot as I can use them quite=
 good<br>
&gt; &gt; for installing to partitions whose size and other parameters I d=
o not<br>
&gt; &gt; know very beforehand (also applicable to UBI volumes).<br>
&gt; &gt; <br>
&gt; &gt; But, at the moment there does not seem to be a designated way of=
 doing<br>
&gt; &gt; something like I intended. I wonder how others solve the generat=
ion of<br>
&gt; &gt; non-rootfs images with YP/OE?<br>
&gt; &gt; <br>
&gt; &gt; Or did I miss something that already exists for this?<br>
&gt; <br>
&gt; I have not a straightforward solution. I inherited just &quot;image&q=
uot; and I<br>
&gt; cleaned up at the end with a ROOTFS_POSTPROCESS_COMMAND what was<br>
&gt; superfluous. Maybe forcing packagegroup-core-boot can be an option.<b=
r>
<br>
Yes, this would be the &#39;hacky&#39; solution to the problem. Actually, =
I<br>
would prefer finding a solution that is supported out-of-the-box and<br>
compatible with how OE sees the generation of images.<br>
<br>
Thus re-using the wic fs artifacts appears to be one possible straight-<br=
>
forward solution to me. The only thing is that I actually would not<br>
even need the disk image itself probably.<br>
<br>
A syntax could look like<br>
<br>
part / --source rootfs output=3Dmy-rootfs-without-appfs.ext4 --fstype=3Dex=
t4<br>
part /app --source rootfs output=3D<a href=3D"http://my-appfs.tar.bz" rel=
=3D"noreferrer" target=3D"_blank">my-appfs.tar.bz</a> --fstype=3Dtar.bz2<b=
r>
part /home --source rootfs output=3Dmy-homefs.ext4 --fstype=3Dext4<br>
<br>
Another option could be to introduce some kind of syntax in the file<br>
system generation classes. But I have neither a clue on how to do that<br>
without violating the current behavior of creating only one image per<br>
image type nor a good idea yet on how to name the artifacts.<br>
<br>
&gt; Best regards,<br>
&gt; Stefano<br>
<br>
Thanks Stefano and best regards<br>
<br>
Enrico<br>
<br>
&gt; <br>
-- <br>
Pengutronix e.K.=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| Enrico J=C3=B6rns=C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |<br>
Embedded Linux Consulting &amp; Support=C2=A0 =C2=A0 =C2=A0 =C2=A0 | <a hr=
ef=3D"https://www.pengutronix.de/" rel=3D"noreferrer" target=3D"_blank">htt=
ps://www.pengutronix.de/</a> |<br>
Steuerwalder Str. 21=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0| Phone: +49-5121-206917-180=C2=A0 |<br>
31137 Hildesheim, Germany=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=
=C2=A0 =C2=A0 | Fax:=C2=A0 =C2=A0+49-5121-206917-9=C2=A0 =C2=A0 |<br>
<br>
<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"=
gmail_signature"><div dir=3D"ltr"><div><b><span style=3D"font-family:monosp=
ace">&quot;Perfection must be reached by degrees; she requires the slow han=
d of time.&quot; - Voltaire</span></b></div></div></div>

--00000000000079c16305b2103fd8--
