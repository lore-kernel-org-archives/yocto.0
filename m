Received: from mail-lj1-f194.google.com (mail-lj1-f194.google.com [209.85.208.194])
 by mx.groups.io with SMTP id smtpd.web12.3672.1576434744884883938
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Dec 2019 10:32:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@goto.fi header.s=google header.b=a27jgqhf;
 spf=none, err=permanent DNS error (domain: goto.fi, ip: 209.85.208.194, mailfrom: jku@goto.fi)
Received: by mail-lj1-f194.google.com with SMTP id u17so4276321lja.4
        for <yocto@lists.yoctoproject.org>; Sun, 15 Dec 2019 10:32:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=goto.fi; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1L65PfZH4wLkhZ3IkZJXnEveco+fS+zTwYwW28YRLz8=;
        b=a27jgqhfIqaUmwwJsBsKvg3FMkLXRTe1s0604lno1OtmB48g9msROEF4ZFWVj9clZP
         htGNlNAEC1bXwoQ5e+svCFKY1HqBqWuDYPcjJbbcNm97XZNhWuC+E5dknfsdNgecpKOK
         d96EvMEnHGCDrfHGCnnj4wf/0VkFgydJUO168=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1L65PfZH4wLkhZ3IkZJXnEveco+fS+zTwYwW28YRLz8=;
        b=Hq+I0AoDIfaIEqaXJj2MHG8BsJvjgA5vhmdV+uezb/GqQlttuaL/RnqU8ppSDdrFgo
         4V4ai6AZqB/WH/V2Fyyp3TUV4YmrRsM1FYP9XIYvtxl1aE7x0SmZWIdYntpa7n5SOtii
         giaZB/FGLL91lMIbRn7PekzhDUup4JTu3gc42ehHC+CVPG+vROBgrIsPmGNdHB24zeNj
         FH0VCO+j5b9+diDn+1oA5cpbhl6VEGAoXHSeTebAwNi0afLaPlZ6s3B+jBqJGeX8nDz1
         vmiFHX7qsCPeaOYBVI1e9DrRylCuvCdVJBLhU75RJ+D9x1yvq2wbsnrn9AsJPRcbo9hK
         e5oA==
X-Gm-Message-State: APjAAAVn0qtxqb9lkenxxjKwMNhBgdJ/3XihhrPzdmyO4Ce+UECIRBp3
	erFGZn/XMaQIo0Y8fW0g4auUMFqO2KRPr9iWs32IxOG9kQY=
X-Google-Smtp-Source: APXvYqxykQgNZJMS/07csDrIUQQuxXon5PXg8C8b1krPcO2pMq/5iFGNO90vO5zEivemLXCmTFG/aJIjpH0NwVo68TQ=
X-Received: by 2002:a2e:898f:: with SMTP id c15mr16434614lji.41.1576434742714;
 Sun, 15 Dec 2019 10:32:22 -0800 (PST)
MIME-Version: 1.0
References: <Hhck.1575870438804375389.WJ7X@lists.yoctoproject.org>
In-Reply-To: <Hhck.1575870438804375389.WJ7X@lists.yoctoproject.org>
From: "Jussi Kukkonen" <jku@goto.fi>
Date: Sun, 15 Dec 2019 20:32:06 +0200
Message-ID: <CAD5=o+q_qYSBT2ft184dMZW-63ZdiS0fC60VBYvwHjBYqL8YSw@mail.gmail.com>
Subject: Re: [yocto] [ Error ] python3-psycopg2-native recipe build error #python #yocto
To: yocto@lists.yoctoproject.org
Cc: dishant.arora1996@gmail.com
Content-Type: multipart/alternative; boundary="000000000000d9f8160599c2500e"

--000000000000d9f8160599c2500e
Content-Type: text/plain; charset="UTF-8"

On Mon, 9 Dec 2019 at 07:47, <dishant.arora1996@gmail.com> wrote:

> Recipe --> python3-psycopg2-native -->
> https://layers.openembedded.org/layerindex/recipe/72275/
> Added this recipe using `IMAGE_INSTALL` variable in `sjpl-image.bb` file
>

Adding a native package into a target image does not make sense. What are
you trying to achieve?

 - Jussi


> Got following errors while building the image :
>
> ERROR: Task do_populate_sdk in
> /home/ubuntu/build-torizon/meta-sjpl/recipes-sjpl/images/sjpl-image.bb
> rdepends upon non-existent task do_package_write_ipk in
> /home/ubuntu/layers/openembedded-core/meta-spdxscanner/recipes-devtools/python/
> python3-psycopg2-native_2.6.1.bb
>
> ERROR: Command execution failed: 1
>
> How can this error be resolved ?
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
>
> View/Reply Online (#47596):
> https://lists.yoctoproject.org/g/yocto/message/47596
> Mute This Topic: https://lists.yoctoproject.org/mt/67787853/3618313
> Mute #yocto: https://lists.yoctoproject.org/mk?hashtag=yocto&subid=6691875
> Mute #python:
> https://lists.yoctoproject.org/mk?hashtag=python&subid=6691875
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub  [jku@goto.fi]
> -=-=-=-=-=-=-=-=-=-=-=-
>

--000000000000d9f8160599c2500e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">On Mon, 9 Dec 2019 at 07:47, &lt;<a href=
=3D"mailto:dishant.arora1996@gmail.com">dishant.arora1996@gmail.com</a>&gt;=
 wrote:<br></div><div class=3D"gmail_quote"><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">Recipe --&gt; python3-psycopg2-native --&gt;=C2=A0<a hre=
f=3D"https://layers.openembedded.org/layerindex/recipe/72275/" target=3D"_b=
lank">https://layers.openembedded.org/layerindex/recipe/72275/</a><br>
<div>Added this recipe using `IMAGE_INSTALL` variable in `<a href=3D"http:/=
/sjpl-image.bb" target=3D"_blank">sjpl-image.bb</a>` file=C2=A0</div></bloc=
kquote><div><br></div><div>Adding a native=C2=A0package into a target image=
 does not make sense. What are you trying to achieve?<br></div><div><br></d=
iv><div>=C2=A0- Jussi</div><div><br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);p=
adding-left:1ex">
<br>Got following errors while building the image :=C2=A0=C2=A0<br><br>
<blockquote>
<p style=3D"margin-bottom:1em;padding:0px;border:0px;font-variant-numeric:i=
nherit;font-variant-east-asian:inherit;font-stretch:inherit;line-height:inh=
erit;font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;font=
-size:15px;vertical-align:baseline;box-sizing:inherit;clear:both;color:rgb(=
36,39,41)"><span style=3D"background-color:rgb(255,255,0)">ERROR: Task do_p=
opulate_sdk in /home/ubuntu/build-torizon/meta-sjpl/recipes-sjpl/images/<a =
href=3D"http://sjpl-image.bb" target=3D"_blank">sjpl-image.bb</a> rdepends =
upon non-existent task do_package_write_ipk in /home/ubuntu/layers/openembe=
dded-core/meta-spdxscanner/recipes-devtools/python/<a href=3D"http://python=
3-psycopg2-native_2.6.1.bb" target=3D"_blank">python3-psycopg2-native_2.6.1=
.bb</a></span></p>
<p style=3D"margin-bottom:0px;padding:0px;border:0px;font-variant-numeric:i=
nherit;font-variant-east-asian:inherit;font-stretch:inherit;line-height:inh=
erit;font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;font=
-size:15px;vertical-align:baseline;box-sizing:inherit;clear:both;color:rgb(=
36,39,41)"><span style=3D"background-color:rgb(255,255,0)">ERROR: Command e=
xecution failed: 1<br></span></p>
</blockquote>
<p style=3D"margin-bottom:0px;padding:0px;border:0px;font-variant-numeric:i=
nherit;font-variant-east-asian:inherit;font-stretch:inherit;line-height:inh=
erit;font-family:Arial,&quot;Helvetica Neue&quot;,Helvetica,sans-serif;font=
-size:15px;vertical-align:baseline;box-sizing:inherit;clear:both;color:rgb(=
36,39,41)"><span style=3D"background-color:rgb(255,255,255)">How can this e=
rror be resolved ? </span></p>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
<br>
View/Reply Online (#47596): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/47596" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/47596</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/67787853/3618=
313" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/67787853/3618313</a><br>
Mute #yocto: <a href=3D"https://lists.yoctoproject.org/mk?hashtag=3Dyocto&a=
mp;subid=3D6691875" rel=3D"noreferrer" target=3D"_blank">https://lists.yoct=
oproject.org/mk?hashtag=3Dyocto&amp;subid=3D6691875</a><br>
Mute #python: <a href=3D"https://lists.yoctoproject.org/mk?hashtag=3Dpython=
&amp;subid=3D6691875" rel=3D"noreferrer" target=3D"_blank">https://lists.yo=
ctoproject.org/mk?hashtag=3Dpython&amp;subid=3D6691875</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a>=C2=A0 [<a href=3D"mailto:jku@goto.fi" target=3D"_blank">jku@goto.fi=
</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
</blockquote></div></div>

--000000000000d9f8160599c2500e--
