Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 78BA4C433EF
	for <webhook@archiver.kernel.org>; Mon, 25 Oct 2021 14:04:02 +0000 (UTC)
Received: from mail-vk1-f179.google.com (mail-vk1-f179.google.com
 [209.85.221.179])
 by mx.groups.io with SMTP id smtpd.web12.32524.1635170641956333193
 for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 07:04:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nZezzQLo;
 spf=pass (domain: gmail.com, ip: 209.85.221.179,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f179.google.com with SMTP id f126so5231695vke.3
        for <yocto@lists.yoctoproject.org>;
 Mon, 25 Oct 2021 07:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=USPHrXa4Y4XVLMPooYcJKvMHLHiHjDwlrQyrHBb/YpA=;
        b=nZezzQLoxiLbMf6ZfG6nZSc3JqWteWG1H7FUXxpXa0fVUYk+PEhvJKk2PeHCrF5c2T
         TEOl1/qPHbCmT1p2SZH+SX5Q8WES7XYzupf9BLv5pwzRiZw/MsFdl9gQTviVkZGKop2I
         +VGz+1vUywBp1WDzNXv/jGyLnv40i4/zj3cdS+zPbIQmydxgOm9FJIwmzeD3bo2jSeMN
         RhPvT5myceypipJefp4jEHH+Lyp4g9+BGK849sH/ibuLeP0EII4a1Iga1dt22xJwXq56
         NzrUPEVAQUlE7FQp/U8wZLsHW5xsXrvyHU+VCH48OD02+PhcJGUnMwqLlUTGTRdwlgnH
         xa0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=USPHrXa4Y4XVLMPooYcJKvMHLHiHjDwlrQyrHBb/YpA=;
        b=BYe12/QK2xfwGGfY/rIfD5QYMZV4V3+bJPXbh5mzD8XmAWc1Yx5RdtRf2Sm7yUWqry
         I4hbjHJQXDthHbodW540jeuRYOeaZvHxxpsTyRNSicSdyWeBEfMuJpX+llv+BH6mIzB7
         LL/px9B0QtE3UAaXMrT1nkXvy+Vi1qtkk28htQmB0fsyc2u+Q101aBzOos78ND2L0pNh
         R6XzbVnQSxGFEK3NyM2Wl5DWrvpD/LlJbm6SR809afB1uF7BgafPajbn/M7Cxx31kN6Q
         WQf+oQgo3VfSTGbu1GyaLTm6QbfxvwuohR+1BuNkjN/i57GUCa3FL2PAA5a3uTmgClJ5
         UVHQ==
X-Gm-Message-State: AOAM5332MObfw+iC5IjqzqkOEgnRtzQfWBwz7h++9yyIZMQo95h/Go31
	qdHa9pVNdOXnwvG4d+QU3NdRO35SIJ/sBefWBgg=
X-Google-Smtp-Source: 
 ABdhPJw2ttxSThqr5ybUMsNjzMKR/3Cdl7PXafHYLU6UjVkf0EU2eHcv0ezenoLQwqT1dNr50sa7y6S013aE7C/N1yI=
X-Received: by 2002:a1f:1c56:: with SMTP id c83mr14756380vkc.6.1635170640655;
 Mon, 25 Oct 2021 07:04:00 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAMjhiJiWWKCDmHmoRRA1osZfEW1YSZPx1CyFE8doT1Z1T=mLAg@mail.gmail.com>
 <MADEUP.16B148FB50D2BC13.19066@lists.yoctoproject.org>
In-Reply-To: <MADEUP.16B148FB50D2BC13.19066@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 25 Oct 2021 16:03:48 +0200
Message-ID: 
 <CANNYZj8LjUL0nJeC92Tn3Lq4HCAbfA9kEpf5YYemXKVOxcBXRw@mail.gmail.com>
Subject: Re: [yocto] bbappend usage
To: steven.monsees@baesystems.com
Cc: Leon Woestenberg <leon@sidebranch.com>,
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000002efd1c05cf2dd50f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 25 Oct 2021 14:04:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55142

--0000000000002efd1c05cf2dd50f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

There is no one-size-fits-all answer to this. It helps if you provide
specifics: what components and what portions of them and why.

Alex

On Mon, 25 Oct 2021 at 15:26, Monsees, Steven C (US) via
lists.yoctoproject.org <steven.monsees=3Dbaesystems.com@lists.yoctoproject.=
org>
wrote:

>
> I am looking to selectively remove portions of 1or 2 components I will no=
t
> be using from my running image
>
> -----Original Message-----
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> On
> Behalf Of Leon Woestenberg
> Sent: Monday, October 25, 2021 9:12 AM
> To: Monsees, Steven C (US) <steven.monsees@baesystems.com>
> Cc: yocto@lists.yoctoproject.org
> Subject: Re: [yocto] bbappend usage
>
> External Email Alert
>
> This email has been sent from an account outside of the BAE Systems
> network.
>
> Please treat the email with caution, especially if you are requested to
> click on a link, decrypt/open an attachment, or enable macros.  For furth=
er
> information on how to spot phishing, access =E2=80=9CCybersecurity OneSpa=
ce Page=E2=80=9D
> and report phishing by clicking the button =E2=80=9CReport Phishing=E2=80=
=9D on the Outlook
> toolbar.
>
>
> Hello Steve,
>
> Is the approach where you remove the recipes from the image an option?
> Is there a reason why you want to build the recipes that you do not want
> to appear in your image?
>
> Regards,
>
> Leon.
>
>
> --
> Leon Woestenberg
> leon@sidebranch.com
> T: +31 40 711 42 76
> M: +31 6 472 30 372
>
> Sidebranch Embedded Systems
> Eindhoven, The Netherlands
> http://www.sidebranch.com
>
>
>
> On Mon, Oct 25, 2021 at 2:55 PM Monsees, Steven C (US) via
> lists.yoctoproject.org <steven.monsees=3D
> baesystems.com@lists.yoctoproject.org> wrote:
> >
> >
> >
> > Hello:
> >
> >
> >
> > If I am building an image =E2=80=9Cimage-ABC=E2=80=9D, and it is compos=
ed of a number
> > recipes, and for some of these recipes I may NOT want to install their
> > final components within my image=E2=80=A6
> >
> >
> >
> > Which is the best place to modify the build with bbappend ?
> >
> >
> >
> > Would I modify a recipe=E2=80=99s do_install (do_install_append-recipe_=
xyz) ?,
> or would I modify the image recipe (do_install_append-image_ABC) I am
> leaning this way to avoid cases where the component recipes might have
> bbappends in place already ?
> >
> >
> >
> > Looking for the proper Yocto way=E2=80=A6
> >
> >
> >
> > Thanks,
> >
> > Steve
> >
> >
> >
> >
> >
> >
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55141):
> https://lists.yoctoproject.org/g/yocto/message/55141
> Mute This Topic: https://lists.yoctoproject.org/mt/86576092/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000002efd1c05cf2dd50f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>There is no one-size-fits-all answer to this. It help=
s if you provide specifics: what components and what portions of them and w=
hy.</div><div><br></div><div>Alex<br></div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, 25 Oct 2021 at 15:26, Mo=
nsees, Steven C (US) via <a href=3D"http://lists.yoctoproject.org">lists.yo=
ctoproject.org</a> &lt;steven.monsees=3D<a href=3D"mailto:baesystems.com@li=
sts.yoctoproject.org">baesystems.com@lists.yoctoproject.org</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
I am looking to selectively remove portions of 1or 2 components I will not =
be using from my running image<br>
<br>
-----Original Message-----<br>
From: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yoc=
to@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoprojec=
t.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt; On Behalf Of =
Leon Woestenberg<br>
Sent: Monday, October 25, 2021 9:12 AM<br>
To: Monsees, Steven C (US) &lt;<a href=3D"mailto:steven.monsees@baesystems.=
com" target=3D"_blank">steven.monsees@baesystems.com</a>&gt;<br>
Cc: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto=
@lists.yoctoproject.org</a><br>
Subject: Re: [yocto] bbappend usage<br>
<br>
External Email Alert<br>
<br>
This email has been sent from an account outside of the BAE Systems network=
.<br>
<br>
Please treat the email with caution, especially if you are requested to cli=
ck on a link, decrypt/open an attachment, or enable macros.=C2=A0 For furth=
er information on how to spot phishing, access =E2=80=9CCybersecurity OneSp=
ace Page=E2=80=9D and report phishing by clicking the button =E2=80=9CRepor=
t Phishing=E2=80=9D on the Outlook toolbar.<br>
<br>
<br>
Hello Steve,<br>
<br>
Is the approach where you remove the recipes from the image an option?<br>
Is there a reason why you want to build the recipes that you do not want to=
 appear in your image?<br>
<br>
Regards,<br>
<br>
Leon.<br>
<br>
<br>
--<br>
Leon Woestenberg<br>
<a href=3D"mailto:leon@sidebranch.com" target=3D"_blank">leon@sidebranch.co=
m</a><br>
T: +31 40 711 42 76<br>
M: +31 6 472 30 372<br>
<br>
Sidebranch Embedded Systems<br>
Eindhoven, The Netherlands<br>
<a href=3D"http://www.sidebranch.com" rel=3D"noreferrer" target=3D"_blank">=
http://www.sidebranch.com</a><br>
<br>
<br>
<br>
On Mon, Oct 25, 2021 at 2:55 PM Monsees, Steven C (US) via <a href=3D"http:=
//lists.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctop=
roject.org</a> &lt;steven.monsees=3D<a href=3D"mailto:baesystems.com@lists.=
yoctoproject.org" target=3D"_blank">baesystems.com@lists.yoctoproject.org</=
a>&gt; wrote:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Hello:<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; If I am building an image =E2=80=9Cimage-ABC=E2=80=9D, and it is compo=
sed of a number <br>
&gt; recipes, and for some of these recipes I may NOT want to install their=
 <br>
&gt; final components within my image=E2=80=A6<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Which is the best place to modify the build with bbappend ?<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Would I modify a recipe=E2=80=99s do_install (do_install_append-recipe=
_xyz) ?, or would I modify the image recipe (do_install_append-image_ABC) I=
 am leaning this way to avoid cases where the component recipes might have =
bbappends in place already ?<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Looking for the proper Yocto way=E2=80=A6<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Thanks,<br>
&gt;<br>
&gt; Steve<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55141): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55141" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55141</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/86576092/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/86576092/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000002efd1c05cf2dd50f--

