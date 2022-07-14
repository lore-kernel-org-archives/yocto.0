Return-Path: <chrisyocto2022@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7FA7EC433EF
	for <webhook@archiver.kernel.org>; Thu, 14 Jul 2022 08:01:10 +0000 (UTC)
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com
 [209.85.218.43])
 by mx.groups.io with SMTP id smtpd.web09.5095.1657785668658736112
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jul 2022 01:01:09 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ORYZP5US;
 spf=pass (domain: gmail.com, ip: 209.85.218.43,
 mailfrom: chrisyocto2022@gmail.com)
Received: by mail-ej1-f43.google.com with SMTP id z23so1951426eju.8
        for <yocto@lists.yoctoproject.org>;
 Thu, 14 Jul 2022 01:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UyLUvu08cTm01clHXdmVHEZZ/C7D5MnIkoskSoKHVfs=;
        b=ORYZP5USnF9+Y61hlhHRPTwihmRgHWKC9WcjJTmbgYqvvxRm3JFM57pry99nAOwf5F
         JdCXcpUatqNyaM0KHC9ROUBezTsJwomi+Xdt3reroiJVuUuuzGZCfYl4otzyn6KFK0T2
         H7z5S0p1OAj+7bS075SUlMmlpFVHuQZviI5Phyl4MXRDfSHV4Wy/lhoCVDTiLOJgLYlr
         OSEyrqfdN/5JwSicFtb8PCV9Go0/Fu5fFOQ76lVyxxzFpIDCE6sMiUqbXxaNjy/f68Lp
         nwjH26Cd7Yk59EU6bpC3BokrcKN3XM8LlDzZy/Ayqiz7ycibL0gAe1EgJMAPaYjH8lEw
         2fzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UyLUvu08cTm01clHXdmVHEZZ/C7D5MnIkoskSoKHVfs=;
        b=DEIf9WBZyLRIMX5pH0AgCOW/y3kP8ulfhE5E+PPrioJFaZ3nZZzx7CMsrIU882nDVs
         hq2oUFR4HWo42UdV44g5nbU6/8Vzy62TceqwlS9kD6QRridiwtWOVnaC6diu8kdYxbMh
         JHISo9uoQP00z5MNVyOfSBRtsRw8nUDKzgQAZH9xebGWEuXp1ry2C1uKRDDgKCsXXdeU
         fcpVbBk5smdnpIXewshFgfd/Ys7LOnoYKJIFzpeZvVCsMnkOs6fhIQMLaWwD3xMoQtxo
         fungc4WYt3vVnR6mD0mh70PJNYv9PkaGNkMjVwGiCHpLvzBt9dIDWxNRqKS1zG7BijDm
         c8Kw==
X-Gm-Message-State: AJIora/3kqWqA4G1CWRuoKwFWHXMLuB9kOb2U2jUuq4jMAUr7n+T0h9u
	a0H+2D7rkYMzhU9gGNwoqTLzs2o8HGd9Vz+CKbo=
X-Google-Smtp-Source: 
 AGRyM1vzdsTaGalG6pGMdQ4NCBWZX+l8a6UbmrjwIPmZ+8G218ZVVDsLNXJO/mI83+9P29rGnYM4O3XvMsjOMRQ7C7o=
X-Received: by 2002:a17:906:8a71:b0:72b:11d6:29fc with SMTP id
 hy17-20020a1709068a7100b0072b11d629fcmr7295998ejc.494.1657785667020; Thu, 14
 Jul 2022 01:01:07 -0700 (PDT)
MIME-Version: 1.0
References: 
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.d4e0f9cc-dbbb-4d14-b16c-2dc08b801a12@emailsignatures365.codetwo.com>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.0d2bd5fa-15cc-4b27-b94e-83614f9e5b38.3359cbda-a296-4bc1-b4e3-f88cc17b6bf8@emailsignatures365.codetwo.com>
 <CAKBdzwuDB5E8=TPVCPY-ULyNRnA-BfGe3F-3a_j07N2OrJq3Bg@mail.gmail.com>
 <8defe485-c6b8-cb20-dda3-5b6b44938632@topic.nl>
In-Reply-To: <8defe485-c6b8-cb20-dda3-5b6b44938632@topic.nl>
From: chris yocto <chrisyocto2022@gmail.com>
Date: Thu, 14 Jul 2022 10:00:56 +0200
Message-ID: 
 <CAKBdzwsWPq5djp0OstaagqadX=UpXtXvAvzRS4gOErcWhTXjjQ@mail.gmail.com>
Subject: Re: [yocto] Customizing SERIAL_CONSOLES
To: Mike Looijmans <mike.looijmans@topic.nl>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000cbe95305e3bf4dc4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Jul 2022 08:01:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57534

--000000000000cbe95305e3bf4dc4
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I did run bitbake with the -e option and it shows that it does process my
machine extra config, but it's overriden by the conf of the BSP.  As a test
I also added it to my layer.conf but this is also being overriden. I
already set my layer too the highest priority.
How can I fix this?




















*SERIAL_CONSOLE=3D""## $SERIAL_CONSOLES [7 operations]#   set
/home/chris/yocto/karo4/sources/meta-certhon/conf/layer.conf:14#
"115200;ttymxc1"#   set
/home/chris/yocto/karo4/sources/meta-certhon/conf/machine/qs8m-mq00-extra.c=
onf:1#
    "115200;ttymxc1"#   set
/home/chris/yocto/karo4/sources/meta-freescale/conf/machine/include/imx-bas=
e.inc:470#
    "115200;ttymxc0"#   set
/home/chris/yocto/karo4/sources/meta-karo-nxp/conf/machine/include/tx8m-bas=
e.inc:32#
    "115200;ttymxc2"#   set
/home/chris/yocto/karo4/sources/poky/meta/conf/documentation.conf:379#
[doc] "Defines the serial consoles (TTYs) to enable using getty."#   set
/home/chris/yocto/karo4/sources/poky/meta/conf/bitbake.conf:856#
[_defaultval] "${@d.getVar('SERIAL_CONSOLE').replace(' ', ';')}"#
override[mxs]:set
/home/chris/yocto/karo4/sources/meta-freescale/conf/machine/include/imx-bas=
e.inc:471#
    "115200;ttyAMA0"# pre-expansion value:#
"115200;ttymxc2"SERIAL_CONSOLES=3D"115200;ttymxc2"*

Op di 12 jul. 2022 om 16:44 schreef Mike Looijmans <mike.looijmans@topic.nl
>:

> I'd suggest adding some "bogus" things to your machine-extra.conf,
> because I don't think the file will actually be used (or even parsed)
> anywhere.
>
> You can override SERIAL_CONSOLES in your DISTRO config, as that takes
> precedence over the machine config. In local.conf it won't work because
> the MACHINE config is included after it.
>
> Another approach is to grep on which recipes use it (half a dozen) and
> then create a bbappend for each. That's the approach I've used recently.
>
>
>
>
> Met vriendelijke groet / kind regards,
>
> Mike Looijmans
> System Expert
>
>
> TOPIC Embedded Products B.V.
> Materiaalweg 4, 5681 RJ Best
> The Netherlands
>
> T: +31 (0) 499 33 69 69
> E: mike.looijmans@topicproducts.com
> W: www.topic.nl
>
> Please consider the environment before printing this e-mail
> On 12-07-2022 13:41, chris yocto via lists.yoctoproject.org wrote:
> >
> > Hi,
> >
> > I=E2=80=99m trying to customize the SERIAL_CONSOLES variable. In anothe=
r
> > thread I read this can be done by adding a machine-extra.conf file too
> > my custom layer. So I added =E2=80=9C SERIAL_CONSOLES =3D "115200;ttymx=
c0" =E2=80=9D to
> > my machine-extra.conf, but when I  bitbake my custom image, no changes
> > are found.
> >
> > In the conf file from the bsp for the board I=E2=80=99m using I found
> > =E2=80=9CSERIAL_CONSOLES =3D "115200;ttymxc2", when I change this to
> > SERIAL_CONSOLES ?=3D "115200;ttymxc2" my changes are being applied.
> >
> > This off course is not ideal since I then still don=E2=80=99t have all =
changes
> > in my own layer.
> >
> > Is there a way I can solve this?
> >
> > Kind regards,
> >
> > Chris
> >
> >
> >
> >
>
> --
> Mike Looijmans
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57513):
> https://lists.yoctoproject.org/g/yocto/message/57513
> Mute This Topic: https://lists.yoctoproject.org/mt/92330831/7032333
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> chrisyocto2022@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000cbe95305e3bf4dc4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I did run bitbake with the -e option and it shows tha=
t it does process my machine extra config, but it&#39;s overriden by the co=
nf of the BSP.=C2=A0 As a test I also added it to my layer.conf but this is=
 also being overriden. I already set my layer too the highest priority.</di=
v><div>How can I fix this?</div><div><br></div><i>SERIAL_CONSOLE=3D&quot;&q=
uot;<br>#<br># $SERIAL_CONSOLES [7 operations]<br># =C2=A0 set /home/chris/=
yocto/karo4/sources/meta-certhon/conf/layer.conf:14<br># =C2=A0 =C2=A0 &quo=
t;115200;ttymxc1&quot;<br># =C2=A0 set /home/chris/yocto/karo4/sources/meta=
-certhon/conf/machine/qs8m-mq00-extra.conf:1<br># =C2=A0 =C2=A0 &quot;11520=
0;ttymxc1&quot;<br># =C2=A0 set /home/chris/yocto/karo4/sources/meta-freesc=
ale/conf/machine/include/imx-base.inc:470<br># =C2=A0 =C2=A0 &quot;115200;t=
tymxc0&quot;<br># =C2=A0 set /home/chris/yocto/karo4/sources/meta-karo-nxp/=
conf/machine/include/tx8m-base.inc:32<br># =C2=A0 =C2=A0 &quot;115200;ttymx=
c2&quot;<br># =C2=A0 set /home/chris/yocto/karo4/sources/poky/meta/conf/doc=
umentation.conf:379<br># =C2=A0 =C2=A0 [doc] &quot;Defines the serial conso=
les (TTYs) to enable using getty.&quot;<br># =C2=A0 set /home/chris/yocto/k=
aro4/sources/poky/meta/conf/bitbake.conf:856<br># =C2=A0 =C2=A0 [_defaultva=
l] &quot;${@d.getVar(&#39;SERIAL_CONSOLE&#39;).replace(&#39; &#39;, &#39;;&=
#39;)}&quot;<br># =C2=A0 override[mxs]:set /home/chris/yocto/karo4/sources/=
meta-freescale/conf/machine/include/imx-base.inc:471<br># =C2=A0 =C2=A0 &qu=
ot;115200;ttyAMA0&quot;<br># pre-expansion value:<br># =C2=A0 &quot;115200;=
ttymxc2&quot;<br>SERIAL_CONSOLES=3D&quot;115200;ttymxc2&quot;</i><br></div>=
<br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Op di =
12 jul. 2022 om 16:44 schreef Mike Looijmans &lt;<a href=3D"mailto:mike.loo=
ijmans@topic.nl">mike.looijmans@topic.nl</a>&gt;:<br></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">I&#39;d suggest adding some &quot;bogus&q=
uot; things to your machine-extra.conf, <br>
because I don&#39;t think the file will actually be used (or even parsed) <=
br>
anywhere.<br>
<br>
You can override SERIAL_CONSOLES in your DISTRO config, as that takes <br>
precedence over the machine config. In local.conf it won&#39;t work because=
 <br>
the MACHINE config is included after it.<br>
<br>
Another approach is to grep on which recipes use it (half a dozen) and <br>
then create a bbappend for each. That&#39;s the approach I&#39;ve used rece=
ntly.<br>
<br>
<br>
<br>
<br>
Met vriendelijke groet / kind regards,<br>
<br>
Mike Looijmans<br>
System Expert<br>
<br>
<br>
TOPIC Embedded Products B.V.<br>
Materiaalweg 4, 5681 RJ Best<br>
The Netherlands<br>
<br>
T: +31 (0) 499 33 69 69<br>
E: <a href=3D"mailto:mike.looijmans@topicproducts.com" target=3D"_blank">mi=
ke.looijmans@topicproducts.com</a><br>
W: <a href=3D"http://www.topic.nl" rel=3D"noreferrer" target=3D"_blank">www=
.topic.nl</a><br>
<br>
Please consider the environment before printing this e-mail<br>
On 12-07-2022 13:41, chris yocto via <a href=3D"http://lists.yoctoproject.o=
rg" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> wrote:<=
br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; I=E2=80=99m trying to customize the SERIAL_CONSOLES variable. In anoth=
er <br>
&gt; thread I read this can be done by adding a machine-extra.conf file too=
 <br>
&gt; my custom layer. So I added =E2=80=9C SERIAL_CONSOLES =3D &quot;115200=
;ttymxc0&quot; =E2=80=9D to <br>
&gt; my machine-extra.conf, but when I =C2=A0bitbake my custom image, no ch=
anges <br>
&gt; are found.<br>
&gt;<br>
&gt; In the conf file from the bsp for the board I=E2=80=99m using I found =
<br>
&gt; =E2=80=9CSERIAL_CONSOLES =3D &quot;115200;ttymxc2&quot;, when I change=
 this to <br>
&gt; SERIAL_CONSOLES ?=3D &quot;115200;ttymxc2&quot; my changes are being a=
pplied.<br>
&gt;<br>
&gt; This off course is not ideal since I then still don=E2=80=99t have all=
 changes <br>
&gt; in my own layer.<br>
&gt;<br>
&gt; Is there a way I can solve this?<br>
&gt;<br>
&gt; Kind regards,<br>
&gt;<br>
&gt; Chris<br>
&gt;<br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
-- <br>
Mike Looijmans<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#57513): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/57513" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/57513</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/92330831/7032=
333" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/92330831/7032333</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:chrisyocto2022@gmail.com" target=3D"_blank">chri=
syocto2022@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000cbe95305e3bf4dc4--

