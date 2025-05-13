Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A878EC3ABCB
	for <webhook@archiver.kernel.org>; Tue, 13 May 2025 00:12:38 +0000 (UTC)
Received: from mail-ej1-f51.google.com (mail-ej1-f51.google.com [209.85.218.51])
 by mx.groups.io with SMTP id smtpd.web10.64844.1747095149354277890
 for <yocto@lists.yoctoproject.org>;
 Mon, 12 May 2025 17:12:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=GN+ee34M;
 spf=pass (domain: gmail.com, ip: 209.85.218.51, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ej1-f51.google.com with SMTP id a640c23a62f3a-ad4d5bb4d0eso69627666b.1
        for <yocto@lists.yoctoproject.org>; Mon, 12 May 2025 17:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1747095148; x=1747699948; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=4bFAGuhobguN1ftFVh96m3lliilApw2dCEVxNsk5U/I=;
        b=GN+ee34MPhS4imgm5vqGw2E2ZToxciUYE7huTrXCsVQNcNikQ4Rd6u50VfSvlrq4+i
         PguZ/6XAaimoUnZpUJbD9+r+eVIAtE/mJiw5YkByiil1Mg1gRUUH7mrcRX9Ava6xXqU6
         L265b8lO3CH/z3zrQwnhBp8Mn3wEudyOWh15KNqB0gbbyRsm7nTOYAST2kM6lkIj4XNR
         TaqFu1vVi+ngYHgNIhbZj4s9NykLIsmhrC/ShfFkocAsOrkyxGqQyZZChIJcwBQjfVRR
         Ey0EFwChOG2KX36IT67GSv4hNMoDkwcZH0otgi0QhMEPYaUErDIKEK8AEQkuh6+fQNWB
         NJCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747095148; x=1747699948;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4bFAGuhobguN1ftFVh96m3lliilApw2dCEVxNsk5U/I=;
        b=dJzqFmoj/FWqJLYNZ2+CxdL8pEOMs9+a/HUnihOF2bu0mnE4VHm4ulEHePvz9qf8VS
         xq4MXf2agTb89LSIhTpiQa2sKDR0GU38ti65lwksTkEiTli86DhKslSzftL2yT3vtgQX
         JPfmCGJAguIz1TEba9DQeKTth/PbK1I3NDcXNfIM7HVJDCD35NeQdO2aByxnMMPS2+rh
         7TrBfCWXFyEOL8GQA4ugWs5dK1dSK3FJwMU3qvHwH1jww4CrFFvDOlwq1/B1dbdVDeeg
         VOnwX/0fwI7jrCFwykqcha9GLYtkYLToDJtGcgDNZm3jEvq9lnWpAtTc9JgSuNByfdu3
         +z4w==
X-Gm-Message-State: AOJu0YwuFtkKDXECPmkJUk8PhlJ1XRfUA4DDvhbcm4r1GnYBaO9jUVYV
	LIxDCE8T56B8lhx5dhgtl8i+7pIt85Ljp6PMSCFuscSaV1J8XOpS4U5kURZbwnl793EhxK47s2a
	WKtvAREaSurd69ZiUa7wS1TCD+xo=
X-Gm-Gg: ASbGncsindGoU761g9LACmwLl3m+kf6qPtltNvo94J5S3q7UmuoO04+vHSV7e5ubRC2
	X4Qf9lyYCCsgPiDH9X5g7h9FhMdqLYn5xlYy3rvNxvh11Z8NirTmeJu7XuflWuTHDErSDPJIdjX
	RSlBWBp5VfOuBbMGSXokYQ/wAUonF5Ez4ArA==
X-Google-Smtp-Source: AGHT+IG5pSXxvv3Xop8HZLn45JQp7kQ+Tt+sD9rA9N9kxOlSne67HFUrLYpP7zlxeAv3Ud6sPAgkZn2CKYWzrRg8/+0=
X-Received: by 2002:a17:907:6088:b0:ad2:5220:b478 with SMTP id
 a640c23a62f3a-ad25220b5bamr683644166b.10.1747095147391; Mon, 12 May 2025
 17:12:27 -0700 (PDT)
MIME-Version: 1.0
References: <CAPJWBnjKUfZ4EYtWNq0AxhrEADs3Eb9NXBvEfW7pRdzYcw_cHw@mail.gmail.com>
 <CANNYZj_9p6jcHsmcEaVC4fVNxkqzutf6LNVVZ1unCOww9PmXig@mail.gmail.com>
 <CAPJWBngyka7VtCjaSHbeag0Yno9yTO9Tfk3v=KZyhiAUnT+9nQ@mail.gmail.com> <CAMKF1spSwimAcq0cj8+O4Bt2s_83qpzJKbZouninfhp+euGwBA@mail.gmail.com>
In-Reply-To: <CAMKF1spSwimAcq0cj8+O4Bt2s_83qpzJKbZouninfhp+euGwBA@mail.gmail.com>
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Tue, 13 May 2025 05:42:16 +0530
X-Gm-Features: AX0GCFvJOHCHE8_nXtBtm8fxybd7su568o0Qg0Vj93i5HySxH3ESYsihtiumGrQ
Message-ID: <CAPJWBngDN4qT+9mXVdiDLQfZn+-fQ7YkWfdDp28g+DBLRpD85w@mail.gmail.com>
Subject: Re: [yocto] Size of production os image
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@lists.yoctoproject.org, Alexander Kanavin <alex.kanavin@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000a62f620634f949ef"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 13 May 2025 00:12:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65318

--000000000000a62f620634f949ef
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Thanks for all the info guys.



On Tue, 13 May 2025 at 1:34=E2=80=AFAM, Khem Raj <raj.khem@gmail.com> wrote=
:

> I took a quick look, it seems your image have -dbg and -src package
> being pulled in those are good for a development to have them in but
> perhaps not in production
> There is rich set of tools that you can use to get detailed view of
> what is contributing to your image size when using yocto. Enable
> buildhistory, that generates the information for images and packages
> that you can refer to.
>
>
> https://docs.yoctoproject.org/dev-manual/build-quality.html#maintaining-b=
uild-output-quality
>
> The key files to start with are
>
> https://docs.yoctoproject.org/dev-manual/build-quality.html#build-history=
-image-information
>
> start with looking into installed-package-sizes.txt
>
> For image sizes, it is contextual, there is poky-tiny Distro policy
> template, that can build images (core-image-minimal ) < 8MB, with some
> effort you can
> reduce it more depending upon what you expect the device to do.
>
>
> On Mon, May 12, 2025 at 2:24=E2=80=AFAM MOHAMMED HASSAN via
> lists.yoctoproject.org
> <hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:
> >
> > Hi Alexander,
> > I have attached my os image log.do_rootfs. I have also attached a
> manifest file that looks like there are a lot of packages installed, thou=
gh
> I am yet to add java to my image that would increase the file size a lot
> more.
> >
> >
> > Regards,
> > Hassan
> >
> >
> > On Mon, 12 May 2025 at 2:28=E2=80=AFPM, Alexander Kanavin <
> alex.kanavin@gmail.com> wrote:
> >>
> >> You need to show what goes into your image (e.g. attach
> >> log.do_rootfs), otherwise the only help we can give is really generic
> >> and not likely to be useful.
> >>
> >> Alex
> >>
> >> On Mon, 12 May 2025 at 10:06, MOHAMMED HASSAN via
> >> lists.yoctoproject.org
> >> <hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:
> >> >
> >> > Hi guys,
> >> > My os image size is generally around 1 gb. I am working on  IOT
> gateway product. The funny thing is my actual bodies application is aroun=
d
> 100MB including node modules. I know that yocto is mostly used for smalle=
r
> footprint images but seems like I am doing something wrong. I have tried
> removing other irrelevant packages related to hdmi, audio, video and so o=
n.
> >> > Can you guys attest to this?
> >> >
> >> > On a side note can you guys let me know the os image size for your
> devices.
> >> >
> >> > I use yocto dunfell and kirkstone.
> >> >
> >> > Thanks,
> >> > Hassan
> >> >
> >> >
> >> >
> >
> >
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#65309):
> https://lists.yoctoproject.org/g/yocto/message/65309
> > Mute This Topic: https://lists.yoctoproject.org/mt/113066816/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>

--000000000000a62f620634f949ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thanks for all the info guys.</div><div dir=3D"auto"><br>=
</div><div dir=3D"auto"><br></div><div><br><div class=3D"gmail_quote gmail_=
quote_container"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 13 May 2025 =
at 1:34=E2=80=AFAM, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.=
khem@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:sol=
id;padding-left:1ex;border-left-color:rgb(204,204,204)">I took a quick look=
, it seems your image have -dbg and -src package<br>
being pulled in those are good for a development to have them in but<br>
perhaps not in production<br>
There is rich set of tools that you can use to get detailed view of<br>
what is contributing to your image size when using yocto. Enable<br>
buildhistory, that generates the information for images and packages<br>
that you can refer to.<br>
<br>
<a href=3D"https://docs.yoctoproject.org/dev-manual/build-quality.html#main=
taining-build-output-quality" rel=3D"noreferrer" target=3D"_blank">https://=
docs.yoctoproject.org/dev-manual/build-quality.html#maintaining-build-outpu=
t-quality</a><br>
<br>
The key files to start with are<br>
<a href=3D"https://docs.yoctoproject.org/dev-manual/build-quality.html#buil=
d-history-image-information" rel=3D"noreferrer" target=3D"_blank">https://d=
ocs.yoctoproject.org/dev-manual/build-quality.html#build-history-image-info=
rmation</a><br>
<br>
start with looking into installed-package-sizes.txt<br>
<br>
For image sizes, it is contextual, there is poky-tiny Distro policy<br>
template, that can build images (core-image-minimal ) &lt; 8MB, with some<b=
r>
effort you can<br>
reduce it more depending upon what you expect the device to do.<br>
<br>
<br>
On Mon, May 12, 2025 at 2:24=E2=80=AFAM MOHAMMED HASSAN via<br>
<a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">lists.yoctoproject.org</a><br>
&lt;hassanchattarki=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org" t=
arget=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Alexander,<br>
&gt; I have attached my os image log.do_rootfs. I have also attached a mani=
fest file that looks like there are a lot of packages installed, though I a=
m yet to add java to my image that would increase the file size a lot more.=
<br>
&gt;<br>
&gt;<br>
&gt; Regards,<br>
&gt; Hassan<br>
&gt;<br>
&gt;<br>
&gt; On Mon, 12 May 2025 at 2:28=E2=80=AFPM, Alexander Kanavin &lt;<a href=
=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.kanavin@gmail.com=
</a>&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; You need to show what goes into your image (e.g. attach<br>
&gt;&gt; log.do_rootfs), otherwise the only help we can give is really gene=
ric<br>
&gt;&gt; and not likely to be useful.<br>
&gt;&gt;<br>
&gt;&gt; Alex<br>
&gt;&gt;<br>
&gt;&gt; On Mon, 12 May 2025 at 10:06, MOHAMMED HASSAN via<br>
&gt;&gt; <a href=3D"http://lists.yoctoproject.org" rel=3D"noreferrer" targe=
t=3D"_blank">lists.yoctoproject.org</a><br>
&gt;&gt; &lt;hassanchattarki=3D<a href=3D"mailto:gmail.com@lists.yoctoproje=
ct.org" target=3D"_blank">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<b=
r>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Hi guys,<br>
&gt;&gt; &gt; My os image size is generally around 1 gb. I am working on=C2=
=A0 IOT gateway product. The funny thing is my actual bodies application is=
 around 100MB including node modules. I know that yocto is mostly used for =
smaller footprint images but seems like I am doing something wrong. I have =
tried removing other irrelevant packages related to hdmi, audio, video and =
so on.<br>
&gt;&gt; &gt; Can you guys attest to this?<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; On a side note can you guys let me know the os image size for=
 your devices.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; I use yocto dunfell and kirkstone.<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt; Thanks,<br>
&gt;&gt; &gt; Hassan<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;&gt; &gt;<br>
&gt;<br>
&gt;<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#65309): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/65309" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/65309</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/11306681=
6/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.=
org/mt/113066816/1997914</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" =
rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto=
/unsub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khe=
m@gmail.com</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div></div>

--000000000000a62f620634f949ef--

