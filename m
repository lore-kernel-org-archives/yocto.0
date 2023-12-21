Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 39A43C35274
	for <webhook@archiver.kernel.org>; Thu, 21 Dec 2023 11:18:39 +0000 (UTC)
Received: from mail-vk1-f175.google.com (mail-vk1-f175.google.com [209.85.221.175])
 by mx.groups.io with SMTP id smtpd.web11.48928.1703157511970985965
 for <yocto@lists.yoctoproject.org>;
 Thu, 21 Dec 2023 03:18:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=KlG51g+m;
 spf=pass (domain: gmail.com, ip: 209.85.221.175, mailfrom: quaresma.jose@gmail.com)
Received: by mail-vk1-f175.google.com with SMTP id 71dfb90a1353d-4affeacaff9so174491e0c.3
        for <yocto@lists.yoctoproject.org>; Thu, 21 Dec 2023 03:18:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703157511; x=1703762311; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WgOwQ400sJ8hzyQlMQjWvitAfvyPCSPHyaLotPxrYHQ=;
        b=KlG51g+mBktIA2fM2+fcXA4ucBCU0lJOtpz2aGRedepfXV8ZKnKDSOf4aLwRsoqUiU
         1xuJj+MFe7OPnAKCMZ6gwnnQo4AKacPQPeBjFimFPpdKnbNC8WFHYBUs8irVDUB1ODwN
         fSRgiMQUvNqvt12yRLxtvtcuog1wbnnh9oTkccYc/RNvV3VLTtNV9Zl3T7t3t2rFNT3h
         EoPvQLLXgoCDAVA2eEDCsW4b33TK9t3DijczQtGta2DgA2WAJSwcMdeXCW8u2DhQE5nH
         uakiOfn0p/KTQQSe1bNnL3ADFHk1aMg9+SdC2zqhIzxkFNbdZ83qgHWM54LzzheTjwgX
         2eVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703157511; x=1703762311;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WgOwQ400sJ8hzyQlMQjWvitAfvyPCSPHyaLotPxrYHQ=;
        b=NnP/mTqAhf8KVgRQ6oQiULL4nb+o2ucSRVSgrZAtWpSlF6hvS2FTqBXL7zW7YMacTT
         iUp2yRNsZDNYul5a0ySFqqhPFIHEEegpVi8R6EIXuvRVTSTmnQmFFiEvqTslGsg6+CA4
         fYh6Lu7TI+IIDV5wVKW1Io1dlOMXqvI1RnGSZ4CYKpHx7OhuD3yWpoXBk3RFzz5W25KG
         rL67tluTBSjmAraIl/eEbRBdeQ3RHgZOkvM6iL8/jDHWTIgh1mEbFjN7BGA5lnNAaZf5
         JB3oysJ6hKB85q1F84TglLPtbLv6M6C/U+UEbjP8eMHwjX81il8ifF60ZdjbaxXCy1hj
         lwdg==
X-Gm-Message-State: AOJu0YzG8IqG37zalJQPx/US5Ck/2yVa3rKQOIxtl+GGPRk+3+wGiYyF
	3TpNn+EXkEdzUQECAPn4UkkEED9z6dhuswnA9LcPTxeg65J6ww==
X-Google-Smtp-Source: AGHT+IFoxhK/pykXQDsLL//ZTwxxSJXjf9VBp4aXuEUyHj/H2QNLw2R0mxl07aKMzJ0QxPPog6ClewbDgpfuFAHNdHg=
X-Received: by 2002:a05:6122:308e:b0:4b6:d7dc:d4cb with SMTP id
 cd14-20020a056122308e00b004b6d7dcd4cbmr733560vkb.9.1703157510814; Thu, 21 Dec
 2023 03:18:30 -0800 (PST)
MIME-Version: 1.0
References: <84de8eca-c4e9-4234-98f9-84c8dc07652f@subset.ch>
In-Reply-To: <84de8eca-c4e9-4234-98f9-84c8dc07652f@subset.ch>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Thu, 21 Dec 2023 11:18:19 +0000
Message-ID: <CANPvuRm907NABH5KhN_5o6H=aKAOreZOTvbZ0kTo9iYw5HTu8A@mail.gmail.com>
Subject: Re: [yocto][meta-lts-mixins] kirkstone/rust branch tracking oe-core master
To: yocto@lists.yoctoproject.org, patrick.wicki@subset.ch
Cc: Ricardo Salveti <ricardo@foundries.io>
Content-Type: multipart/alternative; boundary="0000000000006dc2f5060d034294"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 21 Dec 2023 11:18:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62016

--0000000000006dc2f5060d034294
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Patrick Wicki <patrick.wicki@subset.ch> escreveu no dia quinta, 21/12/2023
=C3=A0(s) 00:56:

> Currently, there's the rust-1.68 mixins layer. That branch is set to
> stay on 1.68 (https://lists.yoctoproject.org/g/yocto/message/60259).
>
> There are some use cases for a newer version. For example, we use
> kirkstone in combination with meta-virtualization master and go/rust
> mixins. The latest netavark will require rust >=3D1.70 to build.
>
> I have a local kirkstone/rust branch that's based on the 1.68 one by
> Scott, but updated to 1.71 by simply backporting from oe-core master
> (leaving out some things like oe-selftest). The intention is not to
> stick to any specific version but to keep tracking oe-core master,
> similar to the go layer.
>
> Is there any interest for having such a branch in meta-lts-mixins? How
> would we go about it? I can send the (~20) patches I have so far.
>
> Patrick Wicki
>

Hi Patrick,

In my opinion, having the most recent version of rust available on
kirkstone would be very useful.

I am also using the 1.68 in the mixins layer in my products and it has
worked quite well so far.
Since rust has few dependencies it is relatively easy to isolate like we
did with the kirkstone/go.

+1 to have a new branch kirkstone/rust follow oe-core master.

Jose


>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62001):
> https://lists.yoctoproject.org/g/yocto/message/62001
> Mute This Topic: https://lists.yoctoproject.org/mt/103292535/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--0000000000006dc2f5060d034294
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">Patrick Wicki &lt;<a href=3D"mailto:patri=
ck.wicki@subset.ch">patrick.wicki@subset.ch</a>&gt; escreveu no dia quinta,=
 21/12/2023 =C3=A0(s) 00:56:<br></div><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddi=
ng-left:1ex">Currently, there&#39;s the rust-1.68 mixins layer. That branch=
 is set to <br>
stay on 1.68 (<a href=3D"https://lists.yoctoproject.org/g/yocto/message/602=
59" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/y=
octo/message/60259</a>).<br>
<br>
There are some use cases for a newer version. For example, we use <br>
kirkstone in combination with meta-virtualization master and go/rust <br>
mixins. The latest netavark will require rust &gt;=3D1.70 to build.<br>
<br>
I have a local kirkstone/rust branch that&#39;s based on the 1.68 one by <b=
r>
Scott, but updated to 1.71 by simply backporting from oe-core master <br>
(leaving out some things like oe-selftest). The intention is not to <br>
stick to any specific version but to keep tracking oe-core master, <br>
similar to the go layer.<br>
<br>
Is there any interest for having such a branch in meta-lts-mixins? How <br>
would we go about it? I can send the (~20) patches I have so far.<br>
<br>
Patrick Wicki<br></blockquote><div><br></div><div dir=3D"ltr">Hi=C2=A0<span=
 style=3D"color:rgb(0,0,0)">Patrick,<br></span><br>In my opinion, having th=
e most recent version of rust available on kirkstone would be very useful.<=
br><br>I am also using the=C2=A01.68 in the=C2=A0mixins layer in my product=
s and it has worked quite well so far.</div><div dir=3D"ltr">Since rust has=
 few dependencies it is relatively easy to isolate like we did with the kir=
kstone/go.</div><div dir=3D"ltr"><br class=3D"gmail-Apple-interchange-newli=
ne"></div><div>+1 to have a new branch kirkstone/rust follow oe-core master=
.<br><br>Jose</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62001): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62001" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62001</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/103292535/505=
2612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/103292535/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--0000000000006dc2f5060d034294--

