Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D49E7C10F1A
	for <webhook@archiver.kernel.org>; Wed,  8 May 2024 02:05:29 +0000 (UTC)
Received: from mail-oo1-f51.google.com (mail-oo1-f51.google.com [209.85.161.51])
 by mx.groups.io with SMTP id smtpd.web10.2693.1715133922847650126
 for <yocto@lists.yoctoproject.org>;
 Tue, 07 May 2024 19:05:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=M9YoNI3f;
 spf=pass (domain: gmail.com, ip: 209.85.161.51, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f51.google.com with SMTP id 006d021491bc7-5b21d7e48ecso164245eaf.1
        for <yocto@lists.yoctoproject.org>; Tue, 07 May 2024 19:05:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715133922; x=1715738722; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dRCAzWEh1MtyrjsyKzPyHWFfFXeFkES9Tq06ebYoyqw=;
        b=M9YoNI3f6sdrR2DegKbfpa1PvzB5tltVwiGskFaGRcoash/Ksf96JfiOB7zR/8d9k+
         9+0Cg9SOogJa1J18/XhtqUcOA350ffHhTtAAgeJAc8XJ9qVJfsPwg8hKQSMHW9jwdQ2g
         veRM/3oPNzV2Yj03/spkwPSeIu3nU1PUJZtJSDYvUALS3Ej+cfETVFQ70DMV9qIz+Tdd
         KC5j/AT8sXBdegJ3Zyk081Bg7gvKeVjkPSnPAKGAK1PY0ptNTW8/pxexah1IMS6/G2cJ
         D+/4I2ACckQD5wSzyHzmL3AKW6vt7MIB4t0ezafmT9IyN/MYfcxHA3bstIUxy84K+fHm
         KhSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715133922; x=1715738722;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dRCAzWEh1MtyrjsyKzPyHWFfFXeFkES9Tq06ebYoyqw=;
        b=fXRC3035bFjJeSPHKHuvx+oSCcfroZbrHv1rSlYmE2+/kQxgcVIaBAQYLZpQjn+6z4
         maV1fLTJlYygICCspTJMFlPQ6qGDxFdggpwLH95GEHcrrxv+4HqCunQzGKdBa30AlFJb
         cKZIxqa9ELXPFM+3uW0UVk86lPcvVJscqziJKCrBQtet8aXRCfdyRk9ONWoqk9tSyFgc
         BvKnOYKHGZA0HROxD9B88hrj+zBrZ+HKhMikHsjDSi+ay8DoRartzEqJpS+kyawCgCBX
         eurNkx9cJjkxIXbV+3bhEWYgFvNz+9yP/Aeh23ybCo5yBorbT8Y1wG42zynN7Xu2xLQn
         bFyw==
X-Forwarded-Encrypted: i=1; AJvYcCULRgbwuhrmhetG2nlICeT4L6ThMKtc4lD/LlkR9xsCiW+zikafIpmJPAezxOnivI76rC389UytjTF4TZTK5trET/g7ZXaB4ASDzq+Z
X-Gm-Message-State: AOJu0YxWB2UnH22KQK3oZvdPcfcqB21YCEtAku21MUrMl2OTKgfZITHh
	v6xeK6pUp46MDoWRGH9tVB+yC7Vb61sswuw7XqQqybauQV9H1snCRNZhesn7wXcslvW+fe0fKQM
	JSqv2N1RvT4pKLiJntB+7awYbLz4=
X-Google-Smtp-Source: AGHT+IG8BiFj6vZhWq4l9qpTbTUJaVRZ+T2+rWMef3hGhjQAGqa2VRIXsuuwjgmQwC5UUMU9Ocdz9QTICePMnrqRNRE=
X-Received: by 2002:a05:6870:7986:b0:22e:7f50:7b01 with SMTP id
 586e51a60fabf-24019fc8b1bmr2168087fac.29.1715133921793; Tue, 07 May 2024
 19:05:21 -0700 (PDT)
MIME-Version: 1.0
References: <CANuMBWHa8ZkbRuG-=QURATjqKL2N1W3PkYwd-gk-U+NK9da-kA@mail.gmail.com>
 <CAMKF1soiCS7BQ10rS_XpjHHApmUdjxd56Pe84kHCpD1Km5ZyhQ@mail.gmail.com> <CANuMBWE-nUnL4AKZvkhNqC+23YKOri5pbVNb8mtQgZ9oh_Krag@mail.gmail.com>
In-Reply-To: <CANuMBWE-nUnL4AKZvkhNqC+23YKOri5pbVNb8mtQgZ9oh_Krag@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 7 May 2024 19:05:10 -0700
Message-ID: <CAMKF1spiK52Tr4fVyaCNNiqsSAOm8bA6CEBT0d0ONf7VcJ4prQ@mail.gmail.com>
Subject: Re: [yocto] Warning about "no-recipes"
To: worik.stanton@tirotech.co.nz, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000269e900617e7bc7f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 May 2024 02:05:29 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63048

--000000000000269e900617e7bc7f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, May 7, 2024 at 6:53=E2=80=AFPM Worik Stanton via lists.yoctoproject=
.org
<worik.stanton=3Dtirotech.co.nz@lists.yoctoproject.org> wrote:

>
>
> On Wed, 8 May 2024 at 13:39, Khem Raj <raj.khem@gmail.com> wrote:
>
>
>> > I am getting a warning as I build a yocto build I inherited.  Forgive
>> me I know very little about Yocto
>> >
>> > ```
>> > WARNING: No recipes in default available for:
>> >
>>  /home/yocto/thisbuild-yocto/layers/openembedded-core/../meta-thisbuild-=
nxp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_1.20.0.imx.bbapp=
end
>>
>> how did you build your project metadata ? it seems some layers are
>>
>
> It builds from several directories under "meta-*"  I am unsure how I
> should answer that.
>
>
>> fudged unto single repository. AFAICT
>> gstreamer1.0-plugins-base_1.20.0.imx.bb should be
>> coming from meta-freescale or meta-imx and if you have a unified
>> metadata tree then this bb file should be somewhere, if not, that
>>
>
> Which "bb"?   "gstreamer1.0-plugins-base_1.20.0.imx.bb"?
>
> I have: layers/openembedded-core/meta/recipes-multimedia/gstreamer/
> gstreamer1.0-plugins-base_1.20.5.bb
>
> The suffix is different. (1.20.5.bb V. 1.20.0.bb)
>
> That looks like the problem.  Should I rename this file?
>

No, that won=E2=80=99t help whoever has put this together for you would be =
the
person to help and regenerate it for you including right dependencies

>
> Worik
>
>
> means the project missed adding this layer
>> to your build system.
>>
>> if you dont need this recipe then you can ignore failing on bbappends by
>> adding
>>
>> BB_DANGLINGAPPENDS_WARNONLY =3D "1" to yout local.conf
>>
>> > ```
>> >
>> > The file in mentioned  (gstreamer1.0-plugins-base_1.20.0.imx.bbappend)
>> contains:
>> >
>> > ```
>> > FILESEXTRAPATHS:prepend :=3D "${THISDIR}/${PN}:"
>> >
>> > SRC_URI:append =3D "
>> file://0001-glupload-don-t-reject-non-RGBA-output-format-in-_dir.patch"
>> > ```
>> >
>> > And the file:
>> "layers/meta-thisbuild-nxp/recipes-multimedia/gstreamer/gstreamer1.0-plu=
gins-base/0001-glupload-don-t-reject-non-RGBA-output-format-in-_dir.patch"
>> exists.
>> >
>> > What can I do about this?
>> >
>> > Worik
>> >
>> >
>> >
>>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63047):
> https://lists.yoctoproject.org/g/yocto/message/63047
> Unfollow This Topic: https://lists.yoctoproject.org/unft/105973256/199791=
4
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000269e900617e7bc7f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, May 7, 2024 at 6:53=E2=80=AFPM Worik Stanton via <a=
 href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;wori=
k.stanton=3D<a href=3D"mailto:tirotech.co.nz@lists.yoctoproject.org">tirote=
ch.co.nz@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;bo=
rder-left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">=
<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, 8 May 2024 at 13:39, Khem Raj=
 &lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail=
.com</a>&gt; wrote:<br></div><div>=C2=A0</div><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-st=
yle:solid;padding-left:1ex;border-left-color:rgb(204,204,204)">&gt; I am ge=
tting a warning as I build a yocto build I inherited.=C2=A0 Forgive me I kn=
ow very little about Yocto<br>
&gt;<br>
&gt; ```<br>
&gt; WARNING: No recipes in default available for:<br>
&gt;=C2=A0 =C2=A0/home/yocto/thisbuild-yocto/layers/openembedded-core/../me=
ta-thisbuild-nxp/recipes-multimedia/gstreamer/gstreamer1.0-plugins-base_1.2=
0.0.imx.bbappend<br>
<br>
how did you build your project metadata ? it seems some layers are<br>
</blockquote><div><br></div><div>It builds from several directories under &=
quot;meta-*&quot;=C2=A0 I am unsure how I should answer that.<br></div><div=
>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;border=
-left-color:rgb(204,204,204)">fudged unto single repository. AFAICT<br>
<a href=3D"http://gstreamer1.0-plugins-base_1.20.0.imx.bb" rel=3D"noreferre=
r" target=3D"_blank">gstreamer1.0-plugins-base_1.20.0.imx.bb</a> should be<=
br>
coming from meta-freescale or meta-imx and if you have a unified<br>
metadata tree then this bb file should be somewhere, if not, that<br></bloc=
kquote><div><br></div><div>Which &quot;bb&quot;? =C2=A0 &quot;<a href=3D"ht=
tp://gstreamer1.0-plugins-base_1.20.0.imx.bb" rel=3D"noreferrer" target=3D"=
_blank">gstreamer1.0-plugins-base_1.20.0.imx.bb</a>&quot;?=C2=A0=C2=A0 <br>=
</div><div><br></div><div>I have: layers/openembedded-core/meta/recipes-mul=
timedia/gstreamer/<a href=3D"http://gstreamer1.0-plugins-base_1.20.5.bb" ta=
rget=3D"_blank">gstreamer1.0-plugins-base_1.20.5.bb</a></div><div><br></div=
><div>The suffix is different. (<a href=3D"http://1.20.5.bb" target=3D"_bla=
nk">1.20.5.bb</a> V. <a href=3D"http://1.20.0.bb" target=3D"_blank">1.20.0.=
bb</a>) <br></div><div><br></div><div>That looks like the problem.=C2=A0 Sh=
ould I rename this file?</div></div></div></blockquote><div dir=3D"auto"><b=
r></div><div dir=3D"auto">No, that won=E2=80=99t help whoever has put this =
together for you would be the person to help and regenerate it for you incl=
uding right dependencies=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;=
padding-left:1ex;border-left-color:rgb(204,204,204)"><div dir=3D"ltr"><div =
class=3D"gmail_quote"><div dir=3D"auto"></div><div><br></div><div>Worik<br>=
</div><div><br></div><div><br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;=
padding-left:1ex;border-left-color:rgb(204,204,204)">
means the project missed adding this layer<br>
to your build system.<br>
<br>
if you dont need this recipe then you can ignore failing on bbappends by ad=
ding<br>
<br>
BB_DANGLINGAPPENDS_WARNONLY =3D &quot;1&quot; to yout local.conf<br>
<br>
&gt; ```<br>
&gt;<br>
&gt; The file in mentioned=C2=A0 (gstreamer1.0-plugins-base_1.20.0.imx.bbap=
pend) contains:<br>
&gt;<br>
&gt; ```<br>
&gt; FILESEXTRAPATHS:prepend :=3D &quot;${THISDIR}/${PN}:&quot;<br>
&gt;<br>
&gt; SRC_URI:append =3D &quot; file://0001-glupload-don-t-reject-non-RGBA-o=
utput-format-in-_dir.patch&quot;<br>
&gt; ```<br>
&gt;<br>
&gt; And the file: &quot;layers/meta-thisbuild-nxp/recipes-multimedia/gstre=
amer/gstreamer1.0-plugins-base/0001-glupload-don-t-reject-non-RGBA-output-f=
ormat-in-_dir.patch&quot;=C2=A0 exists.<br>
&gt;<br>
&gt; What can I do about this?<br>
&gt;<br>
&gt; Worik<br>
&gt;<br>
&gt; <br>
&gt;<br>
</blockquote></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#63047): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63047" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63047</a><br>
Unfollow This Topic: <a href=3D"https://lists.yoctoproject.org/unft/1059732=
56/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject=
.org/unft/105973256/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000269e900617e7bc7f--

