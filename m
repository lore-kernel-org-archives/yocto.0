Return-Path: <sartre.leo@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1FB57C87FC3
	for <webhook@archiver.kernel.org>; Thu, 21 Apr 2022 16:46:13 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com
 [209.85.208.41])
 by mx.groups.io with SMTP id smtpd.web08.23291.1650556468891401734
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Apr 2022 08:54:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=cY/eZrFR;
 spf=pass (domain: gmail.com, ip: 209.85.208.41,
 mailfrom: sartre.leo@gmail.com)
Received: by mail-ed1-f41.google.com with SMTP id g20so7082236edw.6
        for <yocto@lists.yoctoproject.org>;
 Thu, 21 Apr 2022 08:54:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rUjyAL396replEyCJL3J9w/0Gy1Mjva0bXNjy+aaKDs=;
        b=cY/eZrFRoGS1s8eXCIBjzKrD0b4yQOlp8ehYJmnzsL3tNsguB+S9u+3zdxxw7ypVq8
         J89HdWCVHOKcxfMJkqN1w/oKwA/rVsSWjHFcMsIhvvHD8dxEcr6YgYJLX31R4yRe/iZv
         BmMYyIs2oLR8DPwGzyp2UyGPOHhppRu/FD5yc2y0TDNImz+aSHsMnGzJy4UNizIlE2jY
         5wTLtxXLWLzDZHC5ZnKdK3IVvV3/X2a8wfiwgfbbtaINgtsqZG6Jal8xRF1eNLaZIfwq
         bLoY6CJgAAYzNfQuypu4PugGfa7uKTe9K4fF5ojhwBOLXm2Oc/GuYaSeaZAsPMmBuusC
         pJag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rUjyAL396replEyCJL3J9w/0Gy1Mjva0bXNjy+aaKDs=;
        b=3nYnG03NrXwnkwoG0uL8uh2br/i6D+/2g/qqyS6eauMFka/6825P6g3Acvgsl+6ZIL
         8Es6zpk6aRlV2bb+gotyia2m9w9ghWNIkf6zMd1f+mEe/LK2ZHMyoRk8ggeGaUh0FMJO
         fQkysJwqN2EpbJmihhpqG0rD0D4PNJvVOe+hPljsgMThjFxEZU1qCC/Am+Wc7L51Y/v1
         E6hfoTsrunojBwH3QA1S9dICY+GAJbKWCGcmaI6vc5U9gtdycLglZ2RvuQtLAySEGuM9
         AYxiyhysGQJcUNapHlQuDOanfqfPfilxIhkO1oRiWuyetHMrxBnmt6DmsXpuKxNrLYq5
         9pbA==
X-Gm-Message-State: AOAM531iZK5OVXiy4WgeDG7iHtdL1wcOFobNiL5AKe3PFNHh3D/Wn8dC
	KwbQMn66SfKPUkPJSKUUN5/vRIUgipXJA7FhXss=
X-Google-Smtp-Source: 
 ABdhPJx0TOv1rBYZEVnmurEeqOniA6NnboJTV3ePzasMhK+dlzm7IvmKCxL+n1MVlv90qnP0WnB3DQdaRgxwtvwF77A=
X-Received: by 2002:a50:d087:0:b0:41d:7ea6:462a with SMTP id
 v7-20020a50d087000000b0041d7ea6462amr174040edd.355.1650556467139; Thu, 21 Apr
 2022 08:54:27 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CA+Uj8Ux3T3fNkbpeT_FLHNbuqF0aBYTTUBZe4V8gi-=GzR+CBw@mail.gmail.com>
 <25117.1650550415442728122@lists.yoctoproject.org>
In-Reply-To: <25117.1650550415442728122@lists.yoctoproject.org>
From: =?UTF-8?Q?l=C3=A9o_sartre?= <sartre.leo@gmail.com>
Date: Thu, 21 Apr 2022 17:53:40 +0200
Message-ID: 
 <CA+Uj8UwbQFsrbrGDxvMyXz++CoVogJHC0dmwmkOPEaLTfzw0gg@mail.gmail.com>
Subject: Re: [yocto] secure boot w/ Mender bzImage fails validation #dunfell
To: "Ballentine, Casey" <casey.ballentine@essvote.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e7d61105dd2c1fc5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Apr 2022 16:46:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56831

--000000000000e7d61105dd2c1fc5
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Casey,

Please have a look at
https://git.yoctoproject.org/meta-intel/tree/classes/uefi-sign.bbclass,
with this class you can sign a bzimage compiled with the kernel efi stub.

Regards
--
L=C3=A9o

Le jeu. 21 avr. 2022 =C3=A0 16:13, Ballentine, Casey via lists.yoctoproject=
.org
<casey.ballentine=3Dessvote.com@lists.yoctoproject.org> a =C3=A9crit :

> Unfortunately, the uefi-comboapp requires systemd-boot, which Mender
> doesn't currently support with mender-partuuid which our system requires
> for software updates over USB. Our devices aren't connected to the intern=
et
> so OTA updates aren't an option for us. I've started a discussion on
> Mender.io to see if someone there can help us solve this issue, but in th=
e
> meantime, any thoughts/suggestions are certainly appreciated!
>
> -Casey
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56828):
> https://lists.yoctoproject.org/g/yocto/message/56828
> Mute This Topic: https://lists.yoctoproject.org/mt/90356869/3617608
> Mute #dunfell:https://lists.yoctoproject.org/g/yocto/mutehashtag/dunfell
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> sartre.leo@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
L=C3=A9o

--000000000000e7d61105dd2c1fc5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Casey,</div><div><br></div><div>Please have a look=
 at <a href=3D"https://git.yoctoproject.org/meta-intel/tree/classes/uefi-si=
gn.bbclass" target=3D"_blank">https://git.yoctoproject.org/meta-intel/tree/=
classes/uefi-sign.bbclass</a>, with this class you can sign a bzimage compi=
led with the kernel efi stub.</div><div><br></div><div>Regards</div><div>--=
</div><div>L=C3=A9o<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Le=C2=A0jeu. 21 avr. 2022 =C3=A0=C2=A016:13, =
Ballentine, Casey via <a href=3D"http://lists.yoctoproject.org">lists.yocto=
project.org</a> &lt;casey.ballentine=3D<a href=3D"mailto:essvote.com@lists.=
yoctoproject.org">essvote.com@lists.yoctoproject.org</a>&gt; a =C3=A9crit=
=C2=A0:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Unfortun=
ately, the uefi-comboapp requires systemd-boot, which Mender doesn&#39;t cu=
rrently support with mender-partuuid which our system requires for software=
 updates over USB. Our devices aren&#39;t connected to the internet so OTA =
updates aren&#39;t an option for us. I&#39;ve started a discussion on Mende=
r.io to see if someone there can help us solve this issue, but in the meant=
ime, any thoughts/suggestions are certainly appreciated!<br><br>-Casey
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56828): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56828" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56828</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/90356869/3617=
608" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/90356869/3617608</a><br>
Mute #dunfell:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/dunfell" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/mutehashtag/dunfell</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:sartre.leo@gmail.com" target=3D"_blank">sartre.l=
eo@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"g=
mail_signature">L=C3=A9o</div>

--000000000000e7d61105dd2c1fc5--

