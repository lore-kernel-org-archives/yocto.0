Return-Path: <jstephan@baylibre.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 16E6FC433EF
	for <webhook@archiver.kernel.org>; Mon, 28 Feb 2022 08:11:06 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com
 [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web10.17645.1646035864425214908
 for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 00:11:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@baylibre-com.20210112.gappssmtp.com header.s=20210112
 header.b=6Me27HQp;
 spf=pass (domain: baylibre.com, ip: 209.85.167.50,
 mailfrom: jstephan@baylibre.com)
Received: by mail-lf1-f50.google.com with SMTP id j7so19921291lfu.6
        for <yocto@lists.yoctoproject.org>;
 Mon, 28 Feb 2022 00:11:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3aAp0vwVpRl93FkuY/EBwpNCA0MDj1dFP6T1G6niNgY=;
        b=6Me27HQpUOjxt5ruWNgMMODyIk+O2LXW6tFXCgC/npR0GBBrAq8w1lqrdDZxLM3Vyh
         TqIIyTr5oEoBz3JBlTUUTD1RkvFEfSOBe2Wn28MfsEzwPSOdK5CW/GZS48NDWJW7MrMP
         o5rRPTzvKTfYua5uZxS0j2hrJS7xpXVUnjvq4+IQlqDfytExwKvAdYV949pQHU5f5tJu
         e5qKOJgfAsrVZ/Uodlw8l4zHngV1Xl/ftM2mBvQUtVVK4OO7qza4sYqr9V/M+NTAL3aF
         g2Cd/+Or67t2Cogj+m2B6IoN2K6Uvs85zpbK3wzmah3HNDtv3fM+bp7XuBzfC/uXpE6R
         tPLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3aAp0vwVpRl93FkuY/EBwpNCA0MDj1dFP6T1G6niNgY=;
        b=s/HhW0ywTjXI2Qt0//MevwirRH1uwYfbFDQN537RJEUHggHq4iud3+mG+8ZmolOXuT
         3UV+6zAd6m+BsdbCGOuzSwGGOUAv+6Fs7/Kp7vUChDO8oKOscvyPrzmhNSmYLQUgld8I
         mXA/ZdQS0jX89ePWXqkPNXgW/GcivaMd3FHE2tNFnvKQ5QlTeIvz8arm0moC6WEPisc7
         S3KPW8hcFcVvhhoaUexOYgmyUo54LVOpiM2C82fcQhhPRo9xPcaYL1JrX+CJUgQSqeeT
         PZvrn8UEW/4/GNJ3sAhJXQCYC7qvR/d8AUhP1uiI5u9ZTTMfsO4BjnUgBn49M4M/3zW+
         OGSw==
X-Gm-Message-State: AOAM531FrWQ2NHk9dYlrctuuV3mf3BrPWv7zGe3Dzqx1/ihNnHfNzUT6
	pBsz1o6HFE5YisdaHcGP38X0LrH6dmRwpSJf2M3p5Q==
X-Google-Smtp-Source: 
 ABdhPJyB3KloapF5nPRgHIEtNHhEbDY6jPMwMsIsAQ4jIbo3babRQu6H1G9lwIXXqd6DssTp3HBA5BPxl44EjN+dQHI=
X-Received: by 2002:a05:6512:6c4:b0:437:9409:984c with SMTP id
 u4-20020a05651206c400b004379409984cmr12000687lff.199.1646035862295; Mon, 28
 Feb 2022 00:11:02 -0800 (PST)
MIME-Version: 1.0
References: <16D5DD063CA1DD5B.10452@lists.yoctoproject.org>
In-Reply-To: <16D5DD063CA1DD5B.10452@lists.yoctoproject.org>
From: Julien Stephan <jstephan@baylibre.com>
Date: Mon, 28 Feb 2022 09:09:36 +0100
Message-ID: 
 <CAEHHSvawoqkZbP7sKyvkonogT97j7X_A3keW=v0Hzz2jtpmVEA@mail.gmail.com>
Subject: Re: [yocto] extract several source tree with devtool
To: Julien Stephan <jstephan@baylibre.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000dc2c8905d90f9629"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 28 Feb 2022 08:11:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56307

--000000000000dc2c8905d90f9629
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

Any ideas?

Thanks
Julien

Le lun. 21 f=C3=A9vr. 2022 =C3=A0 18:24, Julien STEPHAN via lists.yoctoproj=
ect.org
<jstephan=3Dbaylibre.com@lists.yoctoproject.org> a =C3=A9crit :

> Hi all,
>
> I am wondering if it is possible to extract both a git repo and a tarball
> using devtool modify?
> Example:
> I am trying to use devtool modify on tensorflow-lite recipe (
> https://git.yoctoproject.org/meta-tensorflow/tree/recipes-framework/tenso=
rflow/tensorflow_2.6.1.bb).
> The `tensorflow.inc` file fetches the tensorflow repository using git, th=
en
> `tensorflow_2.6.1.bb` fetches 2 tarballs. The tarballs are extracted
> inside WORKDIR then files are installed inside the do_install() function.
> This is running correctly using `bitbake tensorflow`. When using `devtool
> modify tensorflow`, the tarballs are not extracted, then I get an error a=
t
> the do_install stage: files from tarball don't exist.
>
> This is a general question not related to tensorflow. Any suggestions on
> how to handle this? Either on the recipe side or on the devtool side?
> Best
> Julien
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56223):
> https://lists.yoctoproject.org/g/yocto/message/56223
> Mute This Topic: https://lists.yoctoproject.org/mt/89298811/4356723
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jstephan@baylibre.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000dc2c8905d90f9629
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>Any ideas? <br></div=
><div><br></div><div>Thanks</div><div>Julien<br></div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0lun. 21 f=C3=
=A9vr. 2022 =C3=A0=C2=A018:24, Julien STEPHAN via <a href=3D"http://lists.y=
octoproject.org">lists.yoctoproject.org</a> &lt;jstephan=3D<a href=3D"mailt=
o:baylibre.com@lists.yoctoproject.org">baylibre.com@lists.yoctoproject.org<=
/a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I am won=
dering if it is possible to extract both a git repo and a tarball using dev=
tool modify? <br></div><div>Example:</div><div>I am trying to use devtool m=
odify on tensorflow-lite recipe (<a href=3D"https://git.yoctoproject.org/me=
ta-tensorflow/tree/recipes-framework/tensorflow/tensorflow_2.6.1.bb" target=
=3D"_blank">https://git.yoctoproject.org/meta-tensorflow/tree/recipes-frame=
work/tensorflow/tensorflow_2.6.1.bb</a>). The `tensorflow.inc` file fetches=
 the tensorflow repository using git, then `<a href=3D"http://tensorflow_2.=
6.1.bb" target=3D"_blank">tensorflow_2.6.1.bb</a>` fetches 2 tarballs. The =
tarballs are extracted inside WORKDIR then files are installed inside the d=
o_install() function.=C2=A0 This is running correctly using `bitbake tensor=
flow`. When using `devtool modify tensorflow`, the tarballs are not extract=
ed, then I get an error at the do_install stage: files from tarball don&#39=
;t exist.<br></div><div><br></div><div>This is a general question not relat=
ed to tensorflow. Any suggestions on how to handle this? Either on the reci=
pe side or on the devtool side?<br></div><div>Best</div><div>Julien <br></d=
iv></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56223): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56223" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56223</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/89298811/4356=
723" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/89298811/4356723</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:jstephan@baylibre.com" target=3D"_blank">jstepha=
n@baylibre.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000dc2c8905d90f9629--

