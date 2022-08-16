Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D90C2BB41
	for <webhook@archiver.kernel.org>; Tue, 16 Aug 2022 09:41:57 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com
 [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web10.13582.1660642916059904955
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Aug 2022 02:41:56 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=QtvyCp2i;
 spf=pass (domain: gmail.com, ip: 209.85.167.49,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id o2so14188046lfb.1
        for <yocto@lists.yoctoproject.org>;
 Tue, 16 Aug 2022 02:41:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=my/IzZjgBPxhUZAMRFrrfLzUMaW9tq99dWqXoTWkLP0=;
        b=QtvyCp2iN3b1Z6osP1ljLU6fMAAsggPrRB9gNlo/xzsm380UrSpAp+g/mpdDwL3cZu
         Xgxo7Qh50WqBI193Y5RnGY4j+J1VDkQ/SKBTwq4J4rfaKFfbsMRVYRDsr4Lg6iLi9Y3k
         YjPDofgmTYl3nDK1ktOxxUj9KXBSjURZTrgQTqttw5X8nCStqi9zJ8oJ0vAa1sCbS816
         fMSNYeGE1v+qOWFuMVydJefRsVGI4t7gRp7FlqXzX4k8pkUM2LnQrc97mQQCyWRzXuSj
         LfyS9Rukqn1/3h7zKkjmhwDHZJZWnYXNvqywCKsTN3IWS7z0ig9WAU0Z86LRg8zn0APr
         RmCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=my/IzZjgBPxhUZAMRFrrfLzUMaW9tq99dWqXoTWkLP0=;
        b=lXoTBRpp+Qe67REyxyuRbj2uKSkgMVMD3BkubX3s/YT1hgWZHr6or62xqCS8phCNC0
         U0/B9NL7IvSmSBcvaV80XhFA/PBA4xZea4xyLfp2NjNcqymh0V9dYC3U8jXnDLE9KPZd
         yrS++IrPqNK3seWtix8gwHwi0IOQMnPeXO7rYvrqEXWY4gV0xJjIpUCoPaW9fRCUWkyP
         qXFvRz+uOlqN+TnslgA20jqH/AM+KoScP5RNW1Cs2Zr9TqxsNsUQp+LxHV4xOIpC14I/
         97ICPY2HS0/KDvNUx3q/TOu5gpM8FKc9zGCsqlfU4xl/JD37KuT6d51uVtDRagffeZfG
         P2YQ==
X-Gm-Message-State: ACgBeo3W1egg3RGTRmnq988i0exSFzHkvEDFt8VHKfJd/2NYhMv7Gu4q
	dwoj6mGf89lEb3HtzoskmA6HYZ6ey4rPFQgTnJ4=
X-Google-Smtp-Source: 
 AA6agR5DOBVy/uqKs5hiFrOrdsbVhiRSr/x+HffaHA1/gO4FD/DDvWyAUabM/MPVpAzjO+hy6x8V5YQOYFzO62Twe6o=
X-Received: by 2002:a05:6512:13a4:b0:479:3b9f:f13c with SMTP id
 p36-20020a05651213a400b004793b9ff13cmr6617014lfa.380.1660642914196; Tue, 16
 Aug 2022 02:41:54 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAKO9uzq0t4VnA_2Kv5wBH5kLk-fcR0Kn7qcqQgegrmozCzVZEQ@mail.gmail.com>
In-Reply-To: 
 <CAKO9uzq0t4VnA_2Kv5wBH5kLk-fcR0Kn7qcqQgegrmozCzVZEQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Tue, 16 Aug 2022 11:41:42 +0200
Message-ID: 
 <CANNYZj9HMcqzMevK+s-BX0Kh7de3D2NdH8YDm2VyHoZsZ=CCQw@mail.gmail.com>
Subject: Re: [yocto] Conditional configuration of recipe dependent on other
 recipe
To: Maik Vermeulen <maik.vermeulen@lightyear.one>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000ffe12805e6588e07"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Aug 2022 09:41:57 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57854

--000000000000ffe12805e6588e07
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The neat way would be to include appropriate configuration into the
webserver recipe, e.g. a file installed in /etc/firewall.d/ that opens the
port (and nothing else).

Alex

On Tue, 16 Aug 2022 at 10:35, Maik Vermeulen <maik.vermeulen@lightyear.one>
wrote:

> Hi,
>
> Currently we are struggling with 'interdependent' recipes.
>
> For example:
> A webservice of ours uses a specific port, and needs to be allowed throug=
h
> the firewall, for which we also have a recipe.
>
> Is there a neat way to make sure that the firewall recipe only allows tha=
t
> specific port if that webservice recipe is actually included in the image=
?
> And the firewall recipe should allow the port configured in the webservic=
e
> recipe?
>
> Thanks,
> Kind regards,
>
> Maik Vermeulen
>
> Embedded Software Engineer =E2=80=94 Lightyear <https://www.lightyear.one=
/>
> +31 6 16 82 73 79 <+31616827379>
>
> [image:
> https://lightyear.one/careers?utm_source=3Dsignature&utm_campaign=3Dspotl=
ightroles&utm_medium=3Demail#vacancies]
> <https://lightyear.one/careers?utm_source=3Dsignature&utm_campaign=3Dspot=
lightroles&utm_medium=3Demail#vacancies>
>
>
>
>
> Automotive Campus 70 =E2=80=945708 JZ Helmond, the Netherlands
> www.lightyear.one <https://lightyear.one/>
> <https://www.linkedin.com/company/lightyear.one/>
>
> This email may contain information which is privileged and/or
> confidential. If you received this e-mail in error, please notify us
> immediately by e-mail and delete the email without copying or disclosing
> its contents to any other person. Lightyear is a trade name of Atlas
> Technologies B.V. and is registered at the Dutch Chamber of Commerce unde=
r
> number 67264298.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#57853):
> https://lists.yoctoproject.org/g/yocto/message/57853
> Mute This Topic: https://lists.yoctoproject.org/mt/93054897/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000ffe12805e6588e07
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>The neat way would be to include appropriate configur=
ation into the webserver recipe, e.g. a file installed in /etc/firewall.d/ =
that opens the port (and nothing else).</div><div><br></div><div>Alex<br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Tue, 16 Aug 2022 at 10:35, Maik Vermeulen &lt;maik.vermeulen@lightye=
ar.one&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex=
"><div dir=3D"ltr">Hi,<div><br></div><div>Currently we are struggling with =
&#39;interdependent&#39; recipes.</div><div><br></div><div>For example:=C2=
=A0</div><div>A webservice=C2=A0of ours uses a specific port, and needs to =
be allowed through the firewall, for which we also have a recipe.</div><div=
><br></div><div>Is there a neat way to make sure that the firewall=C2=A0rec=
ipe only allows that specific port if that webservice recipe is actually in=
cluded in the image? And the firewall=C2=A0recipe should allow the port con=
figured in the webservice recipe?</div><div><div><br></div><div>Thanks,</di=
v><div>Kind regards,<br clear=3D"all"><div><div dir=3D"ltr"><div dir=3D"ltr=
"><br><div><span style=3D"color:rgb(29,29,27);font-family:Helvetica,Arial,s=
ans-serif;font-size:16px">Maik Vermeulen</span></div><br><div><span style=
=3D"color:rgb(29,29,27);font-family:Helvetica,Arial,sans-serif;font-size:13=
px">Embedded Software Engineer=E2=80=82=E2=80=94=E2=80=82<a href=3D"https:/=
/www.lightyear.one/" rel=3D"noopener noreferrer" style=3D"color:rgb(51,206,=
224)" target=3D"_blank">Lightyear</a></span></div><div><span style=3D"color=
:rgb(29,29,27);font-family:Helvetica,Arial,sans-serif;font-size:13px"><a hr=
ef=3D"tel:+31616827379" rel=3D"noopener" style=3D"color:rgb(29,29,27)" targ=
et=3D"_blank">+31 6 16 82 73 79</a></span></div></div></div></div></div></d=
iv></div>

<br>
<a href=3D"https://lightyear.one/careers?utm_source=3Dsignature&amp;utm_cam=
paign=3Dspotlightroles&amp;utm_medium=3Demail#vacancies" target=3D"_blank">=
<img src=3D"https://f.hubspotusercontent40.net/hubfs/2629990/lightyear_recr=
uitment_banner.gif" alt=3D"https://lightyear.one/careers?utm_source=3Dsigna=
ture&amp;utm_campaign=3Dspotlightroles&amp;utm_medium=3Demail#vacancies"></=
a><br><div><br></div>
<br>
<br><br><div style=3D"text-align:center"><font size=3D"2">Automotive Campus=
 70 =E2=80=945708 JZ Helmond, the Netherlands</font></div><div style=3D"tex=
t-align:center"><a href=3D"https://lightyear.one/" target=3D"_blank"><font =
size=3D"2">www.lightyear.one</font></a><a href=3D"https://www.linkedin.com/=
company/lightyear.one/" target=3D"_blank"><br></a></div><br><div style=3D"t=
ext-align:center"><span style=3D"color:rgb(128,128,128);font-size:x-small">=
This email may contain information which is privileged and/or confidential.=
 If you received this e-mail in error, please notify us immediately by e-ma=
il and delete the email without copying or disclosing its contents to any o=
ther person. Lightyear is a trade name of Atlas Technologies B.V. and is re=
gistered at the Dutch Chamber of Commerce under number 67264298.=C2=A0</spa=
n></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#57853): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/57853" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/57853</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/93054897/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/93054897/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000ffe12805e6588e07--

