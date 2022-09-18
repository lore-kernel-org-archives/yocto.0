Return-Path: <mahendrasondagar08@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7BB58ECAAD8
	for <webhook@archiver.kernel.org>; Sun, 18 Sep 2022 16:40:12 +0000 (UTC)
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com
 [209.85.217.49])
 by mx.groups.io with SMTP id smtpd.web08.10492.1663519198594971481
 for <yocto@lists.yoctoproject.org>;
 Sun, 18 Sep 2022 09:39:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=XMCpl1fP;
 spf=pass (domain: gmail.com, ip: 209.85.217.49,
 mailfrom: mahendrasondagar08@gmail.com)
Received: by mail-vs1-f49.google.com with SMTP id o123so27680857vsc.3
        for <yocto@lists.yoctoproject.org>;
 Sun, 18 Sep 2022 09:39:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=XgWDrWZb9m+AKxKhd5Y5o+i+sCeUU+vs+cge4d0hSuQ=;
        b=XMCpl1fPAa0qm3YcOw5rLuLWKmOpA0ooT+F+7PYX5PmnLvU/nH2Ag2Ojd0+mSibCQ1
         MwdjItcrfpWZqaxjL91TiJUsv6PNk0VF+lJ9z46HMrbMUSHBr6gCDbvy6VwH4H61PxBY
         q6H4F6v4/og+1be7knxIrfiZ7k0/Tj34hm7dEq4qAjAw0Lb9QASxm5bW67Bqkz+DGiUf
         nFnnQLGbKIY1rkvf2tSGJUTNyc1v7/AaYUunKnRYLijMpOubEECjMzbYVz1w60Hs1qd5
         XiYAz5YE5o6M3tQvn1xYEYyrax71kJVa4uxe0eTgrGNYmU2mA2Fq6zs4XkAP0g0lMtxL
         DzKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=XgWDrWZb9m+AKxKhd5Y5o+i+sCeUU+vs+cge4d0hSuQ=;
        b=6wlHefs4LWRSiEyoqiRDiUD09HNqnCeIQ9nkXKWEkXK46HkM/XgaazA3qU88+v6ZmJ
         mtfadU43oATPDSJk+jQonm6UgK6Xv58h5q9hwsAlHewsescGrJ8349P87M14zC/FvVXU
         vf3BGvJnrIxIDAFgu+hN2BBDxOCtNxSIBMcgLGfaQnQWf3BtyAibXA3zvfLBOiV/4qwW
         5Q2+lnwLrxh0Qx35IpNF3cpzPMHqDSsS+JTFY2we3X5Jr7twhqFlHMU+kHAmbiiEvUNE
         LwBRIvnF4TBCOz+m0Gxp5/Qcp3ThCB2cOxjaiF1k7q5KdKb9pHQLwDMRMuZET/AKejZe
         lkhw==
X-Gm-Message-State: ACrzQf0TXYbIynkV39Z947vFdPm/UspuVWOrMYVgDROwaf+EAkeJ7lJ6
	K6s5Ofndr2n3f6sYcpCMnK2NW53nHEwVMSdMI9r0exH4bqa4PQ==
X-Google-Smtp-Source: 
 AMsMyM6BbLPy3tO/ndNiIXZbaCKNNKZCkS+u4YZHm3F8sd7uciYKWebH59wdUuIYh2JJnaa56vmS3blTJEVL/6kn8tA=
X-Received: by 2002:a67:eb87:0:b0:398:b973:14c1 with SMTP id
 e7-20020a67eb87000000b00398b97314c1mr5003947vso.21.1663519197443; Sun, 18 Sep
 2022 09:39:57 -0700 (PDT)
MIME-Version: 1.0
References: <OPcU.1663179386288137669.KD6c@lists.yoctoproject.org>
 <be99343d-b441-7680-cb83-c22afe57820c@theobroma-systems.com>
In-Reply-To: <be99343d-b441-7680-cb83-c22afe57820c@theobroma-systems.com>
From: Mahendra Sondagar <mahendrasondagar08@gmail.com>
Date: Sun, 18 Sep 2022 22:09:46 +0530
Message-ID: 
 <CAMho1OFcLVJMSOrqa3cfBXy9LjiCVJySq35FiPixGhqTacab9A@mail.gmail.com>
Subject: Re: [yocto] install: cannot create regular file Permission denied
 #dunfell
To: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000d73bd205e8f63e2e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 18 Sep 2022 16:40:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58065

--000000000000d73bd205e8f63e2e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi...Quentin Schulz

Thanks a lot!
It's solved my issue

Many thanks again :)

Regards
Mahendra

On Thu, Sep 15, 2022 at 1:31 PM Quentin Schulz <
quentin.schulz@theobroma-systems.com> wrote:

> Hi Mahendra,
>
> On 9/14/22 20:16, Mahendra Sondagar wrote:
> > Hi.. there
> >
> > Hope all are doing well
> >
> > I'm working with the Yocto dunfell branch with the STM32MP1
> > My goal is to add the test.sh script in to the rootfs of the Yocto
> custom image (in to the bindir)
> >
> > That's how, i have created the recipes file called "recipes-support"
> > Inside that, i have created "net-cfg" file
> > the files under net-cfg file at where, i have kept test.sh file
> > here is the tree structure
> >
> > .
> > =E2=94=94=E2=94=80=E2=94=80 net-cfg
> > =E2=94=9C=E2=94=80=E2=94=80 files
> > =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 test.sh
> > =E2=94=94=E2=94=80=E2=94=80 net-cfg_1.0.bb
> >
> > I have installed the image with the custom-image.bb file as a
> > IMAGE_INSTALL +=3D "net-cfg"
> >
> > The content of the net-cfg_1.0.bb are as follows
> >
> -------------------------------------------------------------------------=
-------------
> > SUMMARY=3D "Script files for the testing"
> > SRC_URI =3D " file://test.sh"
> >
> > LICENSE =3D "CLOSED"
> >
> > do_install() {
> > install -d ${D}${bindir}
> > install -m 0755 ${WORKDIR}/test.sh ${D}${bindir} /
>
> Spurious slash at the end of the line, it tries to install
> ${WORKDIR}/test.sh and ${D}${bindir} to / (root directory of your build
> machine).
>
> Just remove it.
>
> Cheers,
> Quentin
>

--000000000000d73bd205e8f63e2e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi...<span class=3D"gmail-qu" role=3D"gridcell" tabin=
dex=3D"-1"><span name=3D"Quentin Schulz" class=3D"gmail-gD"><span>Quentin S=
chulz<br><br></span></span></span></div><div><span class=3D"gmail-qu" role=
=3D"gridcell" tabindex=3D"-1"><span name=3D"Quentin Schulz" class=3D"gmail-=
gD"><span>Thanks a lot!</span></span></span></div><div><span class=3D"gmail=
-qu" role=3D"gridcell" tabindex=3D"-1"><span name=3D"Quentin Schulz" class=
=3D"gmail-gD"><span>It&#39;s solved my issue <br></span></span></span></div=
><div><span class=3D"gmail-qu" role=3D"gridcell" tabindex=3D"-1"><span name=
=3D"Quentin Schulz" class=3D"gmail-gD"><span><br></span></span></span></div=
><div><span class=3D"gmail-qu" role=3D"gridcell" tabindex=3D"-1"><span name=
=3D"Quentin Schulz" class=3D"gmail-gD"><span>Many thanks again :)</span></s=
pan></span></div><div><span class=3D"gmail-qu" role=3D"gridcell" tabindex=
=3D"-1"><span name=3D"Quentin Schulz" class=3D"gmail-gD"><span><br></span><=
/span></span></div><div><span class=3D"gmail-qu" role=3D"gridcell" tabindex=
=3D"-1"><span name=3D"Quentin Schulz" class=3D"gmail-gD"><span>Regards</spa=
n></span></span></div><div><span class=3D"gmail-qu" role=3D"gridcell" tabin=
dex=3D"-1"><span name=3D"Quentin Schulz" class=3D"gmail-gD"><span>Mahendra =
<br></span></span></span></div><div><span class=3D"gmail-qu" role=3D"gridce=
ll" tabindex=3D"-1"><span name=3D"Quentin Schulz" class=3D"gmail-gD"><span>=
</span></span></span></div></div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Thu, Sep 15, 2022 at 1:31 PM Quentin Schulz &=
lt;<a href=3D"mailto:quentin.schulz@theobroma-systems.com">quentin.schulz@t=
heobroma-systems.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">Hi Mahendra,<br>
<br>
On 9/14/22 20:16, Mahendra Sondagar wrote:<br>
&gt; Hi.. there<br>
&gt; <br>
&gt; Hope all are doing well<br>
&gt; <br>
&gt; I&#39;m working with the Yocto dunfell branch with the STM32MP1<br>
&gt; My goal is to add the test.sh script in to the rootfs of the Yocto cus=
tom image (in to the bindir)<br>
&gt; <br>
&gt; That&#39;s how, i have created the recipes file called &quot;recipes-s=
upport&quot;<br>
&gt; Inside that, i have created &quot;net-cfg&quot; file<br>
&gt; the files under net-cfg file at where, i have kept test.sh file<br>
&gt; here is the tree structure<br>
&gt; <br>
&gt; .<br>
&gt; =E2=94=94=E2=94=80=E2=94=80 net-cfg<br>
&gt; =E2=94=9C=E2=94=80=E2=94=80 files<br>
&gt; =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 test.sh<br>
&gt; =E2=94=94=E2=94=80=E2=94=80 <a href=3D"http://net-cfg_1.0.bb" rel=3D"n=
oreferrer" target=3D"_blank">net-cfg_1.0.bb</a><br>
&gt; <br>
&gt; I have installed the image with the <a href=3D"http://custom-image.bb"=
 rel=3D"noreferrer" target=3D"_blank">custom-image.bb</a> file as a<br>
&gt; IMAGE_INSTALL +=3D &quot;net-cfg&quot;<br>
&gt; <br>
&gt; The content of the <a href=3D"http://net-cfg_1.0.bb" rel=3D"noreferrer=
" target=3D"_blank">net-cfg_1.0.bb</a> are as follows<br>
&gt; ----------------------------------------------------------------------=
----------------<br>
&gt; SUMMARY=3D &quot;Script files for the testing&quot;<br>
&gt; SRC_URI =3D &quot; file://test.sh&quot;<br>
&gt; <br>
&gt; LICENSE =3D &quot;CLOSED&quot;<br>
&gt; <br>
&gt; do_install() {<br>
&gt; install -d ${D}${bindir}<br>
&gt; install -m 0755 ${WORKDIR}/test.sh ${D}${bindir} /<br>
<br>
Spurious slash at the end of the line, it tries to install <br>
${WORKDIR}/test.sh and ${D}${bindir} to / (root directory of your build <br=
>
machine).<br>
<br>
Just remove it.<br>
<br>
Cheers,<br>
Quentin<br>
</blockquote></div>

--000000000000d73bd205e8f63e2e--

