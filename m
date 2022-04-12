Return-Path: <tagliapietra.alessandro@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32C64C433FE
	for <webhook@archiver.kernel.org>; Tue, 12 Apr 2022 16:46:38 +0000 (UTC)
Received: from mail-yb1-f181.google.com (mail-yb1-f181.google.com
 [209.85.219.181])
 by mx.groups.io with SMTP id smtpd.web09.11234.1649772681032193797
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Apr 2022 07:11:21 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=gviLyIBP;
 spf=pass (domain: gmail.com, ip: 209.85.219.181,
 mailfrom: tagliapietra.alessandro@gmail.com)
Received: by mail-yb1-f181.google.com with SMTP id x200so9577838ybe.13
        for <yocto@lists.yoctoproject.org>;
 Tue, 12 Apr 2022 07:11:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xDudVNJriY2ehMnAq8MLhuOK7bzpQwqsfaPy8/K8PH8=;
        b=gviLyIBPtZNlaEm8zENQXqTSa60dhefpwSb6xUEo5y3fjCf+K/kVzZbdrgRxitjnSl
         71+tIySFWxZZ3NMypgx5PvTSivavXE6vT/C4/DniStvorcy7wfqFeCjQ0xElobPDCyq2
         LL3RFZ0puUF6zXw5Btuf1l1h9JLzO773s9eXukai6//mvUYFzgvgsxiokizIzJ4aTn7q
         VYTvWD18thZi77HiCD+5CAGSRShZm7UvAfzbNrPkUfcV0KEcR2SKQBMMEAVTdwGQQt+Z
         AjvRdWZPPF/h7JVes27ah1cwnFQT1RltxEF3t/pJRhPrdxcPrmZzzW7PNddcSJVHq11u
         qhXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xDudVNJriY2ehMnAq8MLhuOK7bzpQwqsfaPy8/K8PH8=;
        b=7knvgRytVpCFi40LzDutJaeNWZcpdKPPDsRuLpPAf8mTU8tVt9MSgplZq0ZPNslOyt
         zJNBYtvymHF5XD5b7gxNidUSB6eg6k+sUHq+2TZw1g7LTRzr1aqNa+eJuqI+NSsZbTas
         Tz8Pyu0ytiWZAoKUife4UQ+nTmQg0f8JSRWLio1s5H+Vo0QwtqTcudmPfQxQPJobjYFW
         BQ1gV57+HA0IA9kPiWZkSLQi5WStJ9Wkn60xo+8GJ0wHYSTQRkh2r+yU2mFboGrUDuW9
         CRKs1ObF4IbwHUGFBVyXhmCo1/XaPm3ycI6PCYD0r+VXXk54qG+uPN3GmTOkrNm+nG+b
         w6Lw==
X-Gm-Message-State: AOAM531JelYk+dx0/zYBeeA6xSm5ZFi3845EFG78EaQxSwLHBzwNQ4WO
	YUM7JMHzSnqGlbsWQzIlnKcqR/dn/6/G8Y5w0vtXQx+KncY=
X-Google-Smtp-Source: 
 ABdhPJwWY5/019YAahjFcpt6Iz4fBNghwarbEcgK9mnyVrQux9F1xHK71HPgiHIzetZz0Ii1E301iXhq3SDmAYQH0Rc=
X-Received: by 2002:a5b:b4e:0:b0:641:6e61:ca2e with SMTP id
 b14-20020a5b0b4e000000b006416e61ca2emr5901405ybr.448.1649772680132; Tue, 12
 Apr 2022 07:11:20 -0700 (PDT)
MIME-Version: 1.0
References: <M3Kh.1649693635080134995.ltMY@lists.yoctoproject.org>
 <CAMKF1sp+Dak1GH=RgC7g8tAxnpaS1MHuNQOJNaKtsLfqRGZZ5Q@mail.gmail.com>
 <CAKKtPp_wEyX=NtyJiPtQe+VkGgZRaMG5o3eJgafAkEhxnDSLdQ@mail.gmail.com>
 <14b889eed4e3a424b27120bd7d231ae8fcdce1df.camel@linuxfoundation.org>
In-Reply-To: 
 <14b889eed4e3a424b27120bd7d231ae8fcdce1df.camel@linuxfoundation.org>
From: Alessandro Tagliapietra <tagliapietra.alessandro@gmail.com>
Date: Tue, 12 Apr 2022 07:11:09 -0700
Message-ID: 
 <CAKKtPp-sFDiqSJZMBc5Dh5_dtSkfqcYnZAgLb5Nc90+UUe9kjw@mail.gmail.com>
Subject: Re: [yocto] Skipping already-stripped check doesn't work
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: Khem Raj <raj.khem@gmail.com>,
 Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000008f3ada05dc75a232"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Apr 2022 16:46:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56751

--0000000000008f3ada05dc75a232
Content-Type: text/plain; charset="UTF-8"

Thank you so much! That was the problem!

On Tue, Apr 12, 2022 at 1:32 AM Richard Purdie <
richard.purdie@linuxfoundation.org> wrote:

> On Mon, 2022-04-11 at 13:27 -0700, Alessandro Tagliapietra wrote:
> > Thank you for helping!
> >
> > The package is node-red-node-serialport, it doesn't seem to create child
> > packages for the dependencies, the nodejs deps only reside in the package
> > node-modules folder.
> > The packages-split only contained node-red-node-serialport-* packages.
> >
> > So I've tried to add the skips for these child packages too:
> >
> > INSANE_SKIP_${PN} += "already-stripped arch"
> > INSANE_SKIP_${PN}-dbg += "already-stripped arch"
> > INSANE_SKIP_${PN}-dev += "already-stripped arch"
> > INSANE_SKIP_${PN}-doc += "already-stripped arch"
> > INSANE_SKIP_${PN}-locale += "already-stripped arch"
> > INSANE_SKIP_${PN}-src += "already-stripped arch"
> > INSANE_SKIP_${PN}-staticdev += "already-stripped arch"
>
> For honister the syntax would be:
>
> INSANE_SKIP:${PN}
>
> as the override change applies there.
>
> Cheers,
>
> Richard
>
>

--0000000000008f3ada05dc75a232
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you so much! That was the problem!<br></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Apr 12=
, 2022 at 1:32 AM Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linux=
foundation.org">richard.purdie@linuxfoundation.org</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left:1px solid rgb(204,204,204);padding-left:1ex">On Mon, 2022-04-11 at 13:=
27 -0700, Alessandro Tagliapietra wrote:<br>
&gt; Thank you for helping!<br>
&gt; <br>
&gt; The package is=C2=A0node-red-node-serialport, it doesn&#39;t seem to c=
reate child<br>
&gt; packages for the dependencies, the=C2=A0nodejs deps only reside in the=
 package<br>
&gt; node-modules folder.<br>
&gt; The packages-split only contained node-red-node-serialport-* packages.=
<br>
&gt; <br>
&gt; So I&#39;ve tried to add the skips for these child packages too:<br>
&gt; <br>
&gt; INSANE_SKIP_${PN} +=3D &quot;already-stripped arch&quot;<br>
&gt; INSANE_SKIP_${PN}-dbg +=3D &quot;already-stripped arch&quot;<br>
&gt; INSANE_SKIP_${PN}-dev +=3D &quot;already-stripped arch&quot;<br>
&gt; INSANE_SKIP_${PN}-doc +=3D &quot;already-stripped arch&quot;<br>
&gt; INSANE_SKIP_${PN}-locale +=3D &quot;already-stripped arch&quot;<br>
&gt; INSANE_SKIP_${PN}-src +=3D &quot;already-stripped arch&quot;<br>
&gt; INSANE_SKIP_${PN}-staticdev +=3D &quot;already-stripped arch&quot;<br>
<br>
For honister the syntax would be:<br>
<br>
INSANE_SKIP:${PN}<br>
<br>
as the override change applies there.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
</blockquote></div>

--0000000000008f3ada05dc75a232--

