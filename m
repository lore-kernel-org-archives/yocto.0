Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4517EC77B75
	for <webhook@archiver.kernel.org>; Mon, 15 May 2023 08:40:51 +0000 (UTC)
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
 by mx.groups.io with SMTP id smtpd.web10.83924.1684140042470398992
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 May 2023 01:40:42 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=ItIYHv40;
 spf=pass (domain: gmail.com, ip: 209.85.221.49, mailfrom: martin.jansa@gmail.com)
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-30786c87cdaso9645905f8f.2
        for <yocto@lists.yoctoproject.org>; Mon, 15 May 2023 01:40:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684140041; x=1686732041;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=05h0kSLYAgm3BexTnnj43i7/KVRGwASjvoz+U2BkHgk=;
        b=ItIYHv40xUuMFYij4qCY38nnU+lHiKf3oM5uO4JGpsJXNxz61nh0JWBfh1GFPQFi00
         J6stm76athhADvwrrh2muTMduwyHBo9eQg+33QNWihdPMrUpQd7Cl0bwCt/gJ0aJypcK
         tzLGDxjhvWiwHIbpJg2LP/beE5M9PjAomW/R4t9g0Mj9GJsd7ueMw6beYNfCE3c1UDo0
         jzpiDRxxKUNZI/KtCHHHrdkZD45A0BggzVH0bJqh6f7vaLyCWGuvihMbgFRlAg+bTrMB
         RuAwvSn8pyUIJY3qaTflcW3YfYZfr7ZaLMpcIa429DE6umwtnlIfWjHm5TzwlnVWG+g5
         9Xdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684140041; x=1686732041;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=05h0kSLYAgm3BexTnnj43i7/KVRGwASjvoz+U2BkHgk=;
        b=hle9MdqO5kdmZsBKQYhuBUed0Ie8FceG0URV4i+YGzqNmla3l7lZdr1rCdA7yR8P6s
         8i57eJi8P8dRgwyztMPbkZOPvL+bk5o0Ap5FMnSzJL19eze3WAL0IiVN5frC5guMYaw2
         jAhApv1RdCyZltrLpR7WrfCTC7hXNEbclOwccsETm2MWW4irXkQuorLMIYp0nEa+4/iY
         gdcCs6WndJJ8SHLN1fEYfmd5YoK9LFhP93gmRwD4E8NxMNGRIUvbrKCdKFsqKs1YtQZE
         j6GoWu3iglcpHKCSMVxmL3EKtwFiV/fOKEJLGlJDBSb+GD2BeNqt4OhoM+4mPOqbgYXI
         lUPA==
X-Gm-Message-State: AC+VfDwf84LzDv5GLllq1tNtaMwv+4GsKMtbhlhJ1GUTpDpOzlSVOaMt
	1ABNZet+ApSptt5iTw5fGNFYeC3d2mA2BlE5Rqw=
X-Google-Smtp-Source: ACHHUZ6rS1becpLRAW/pX6O1vl8/8Tj1RnUDb7iHSq+3Z0tGMW38ZjYCUUK0sT/9YW8d8OfsX4uX3PdyDXmEhummcZo=
X-Received: by 2002:adf:e943:0:b0:306:2cf5:79dc with SMTP id
 m3-20020adfe943000000b003062cf579dcmr29434181wrn.35.1684140040711; Mon, 15
 May 2023 01:40:40 -0700 (PDT)
MIME-Version: 1.0
References: <CANzPQ-CGsofjwD8bg8_8XyOJ8FAiyazy+UjtzTQgQteoiioBXg@mail.gmail.com>
In-Reply-To: <CANzPQ-CGsofjwD8bg8_8XyOJ8FAiyazy+UjtzTQgQteoiioBXg@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Mon, 15 May 2023 10:40:27 +0200
Message-ID: <CA+chaQej4J96=EQ8OvpA9v0icv9rvcf0GMUYS0-ESQpBJma6_w@mail.gmail.com>
Subject: Re: [yocto][meta-python2] Kirkstone EXTRANATIVEPATH is not in effect
To: Jiliang Cai <tyrocjl@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e0f29d05fbb76886"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 May 2023 08:40:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60019

--000000000000e0f29d05fbb76886
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Did you add "inherit pythonnative" or DEPENDS +=3D "python-native"?

You need just the inherit line.

On Mon, May 15, 2023 at 10:23=E2=80=AFAM Jiliang Cai <tyrocjl@gmail.com> wr=
ote:

> I have a bb file abc_1.0.bb:
> DEPENDS +=3D "python3-native"
> And EXTRANATIVEPATH contains "python3-native" as expected, so command
> 'python3'
> can be searched.
>
> Then I add DEPENDS +=3D "python-native", but EXTRANATIVEPATH doesn't cont=
ains
> "python-native", so command 'python' can not be searched.
>
> python3native.bbclass  has a line:
> EXTRANATIVEPATH +=3D "python3-native"
> So python3 can be searched when bitbake this recipe. I saw similar codes
> in the
> pythonnative.bbclass file, but why didn't it take effect?
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#60018):
> https://lists.yoctoproject.org/g/yocto/message/60018
> Mute This Topic: https://lists.yoctoproject.org/mt/98899140/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> Martin.Jansa@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000e0f29d05fbb76886
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Did you add &quot;inherit pythonnative&quot; or DEPENDS=C2=
=A0<a class=3D"gmail_plusreply" id=3D"plusReplyChip-0">+=3D &quot;python-na=
tive&quot;?</a><div><a class=3D"gmail_plusreply"><br></a></div><div>You nee=
d just the inherit line.<a class=3D"gmail_plusreply"><br></a></div></div><b=
r><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, =
May 15, 2023 at 10:23=E2=80=AFAM Jiliang Cai &lt;<a href=3D"mailto:tyrocjl@=
gmail.com">tyrocjl@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204=
,204,204);padding-left:1ex">I have a bb file <a href=3D"http://abc_1.0.bb" =
rel=3D"noreferrer" target=3D"_blank">abc_1.0.bb</a>:<br>
DEPENDS +=3D &quot;python3-native&quot;<br>
And EXTRANATIVEPATH contains &quot;python3-native&quot; as expected, so com=
mand &#39;python3&#39;<br>
can be searched.<br>
<br>
Then I add DEPENDS +=3D &quot;python-native&quot;, but EXTRANATIVEPATH does=
n&#39;t contains<br>
&quot;python-native&quot;, so command &#39;python&#39; can not be searched.=
<br>
<br>
python3native.bbclass=C2=A0 has a line:<br>
EXTRANATIVEPATH +=3D &quot;python3-native&quot;<br>
So python3 can be searched when bitbake this recipe. I saw similar codes in=
 the<br>
pythonnative.bbclass file, but why didn&#39;t it take effect?<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#60018): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60018" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/60018</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/98899140/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/98899140/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000e0f29d05fbb76886--

