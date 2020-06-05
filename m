Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com [209.85.222.53])
 by mx.groups.io with SMTP id smtpd.web10.9960.1591361510694994845
 for <yocto@lists.yoctoproject.org>;
 Fri, 05 Jun 2020 05:51:51 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@soccasys-com.20150623.gappssmtp.com header.s=20150623 header.b=kKfx7vqH;
 spf=pass (domain: soccasys.com, ip: 209.85.222.53, mailfrom: laurent.gauthier@soccasys.com)
Received: by mail-ua1-f53.google.com with SMTP id b13so3247582uav.3
        for <yocto@lists.yoctoproject.org>; Fri, 05 Jun 2020 05:51:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soccasys-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4gGsgng+sR/NMiNBY1edSjsRWfXTfOzPo96K7MhulKI=;
        b=kKfx7vqHuC5FpX5IfvuJweR+TbAQPU1Srd445x42zOGqYvk2yvDxAI0pgDUXk0uf/J
         6ji/DfdUTzL+Aw6deCoubGZlFsvByV0Z856nsWD9Xwxcme/1b/YFVGuvNTX+PsJiwiUG
         Zf+Lhi/frifHJ506cCKarhkmlwv2fvgFSrvTTFEWVi2h634T4Zb3NcjV3OAqu6ewlFrm
         MyTW1zt3x1+T0mdR7DtpH23YIL688ajlgciUJF2b5FcjZdY7vd/jELrF2rLMetgLO5iX
         9LB1E3L3l+1eveBlj4azujVpVK8QlZvwgJYeyH0uCcE275kpdLrSxK0VtPKu+viw4bT3
         FJyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4gGsgng+sR/NMiNBY1edSjsRWfXTfOzPo96K7MhulKI=;
        b=tGqB2LBG55lGW2P3Jeeh5TxKOQwCT2ekJrBpnI63YiuYg2CgQcv1VGHDahBuqZXgTF
         wr+E4M0qhzIGKVA4S+2jC9Qo3a1qpS2Tmb9qGxYbNe0ka4xvKpoRMTy7TjFrvwQrHSF3
         VNuyJQViti1k5KlGIiVNhpoNpD1bItIUef0RpFz86ZAjb98xzgS3tJtIK8YkQGXQrNGl
         r9MsuCxHIOjGxhwVawFBD8luJptFDJmaulh+YwTSdR5MsF1qdgFSzUEJkltyRHDT0n6U
         t9+ZphZbr8cbmst+0JXE0Bblu0IDuzD3sV1w+mizNByJcWIkbe+pylLTF/B4tjfq0CHx
         aQ6Q==
X-Gm-Message-State: AOAM533JaZOC9mZxNoKsUUFmtbZ77AJeEa90KqcB7tNOKk+vcyx/6ThV
	3n+HTGETFfmCc2dTtbE4gs8oNMGWuKTO1e9oTyyn62Uq
X-Google-Smtp-Source: ABdhPJx3yR5qKvZ1sTgbC80ryFXBgLWa/TQMWvouAUyEFcg6oK4u8m8aTVOrDnalwGUUhsoJZST1gKsR5WFwIeD53xE=
X-Received: by 2002:a9f:28c6:: with SMTP id d64mr6924673uad.61.1591361509611;
 Fri, 05 Jun 2020 05:51:49 -0700 (PDT)
MIME-Version: 1.0
References: <294e63c4-293f-9b86-82d5-7c41bead0d2c@faresoftware.it>
In-Reply-To: <294e63c4-293f-9b86-82d5-7c41bead0d2c@faresoftware.it>
From: "Laurent Gauthier" <laurent.gauthier@soccasys.com>
Date: Fri, 5 Jun 2020 14:51:13 +0200
Message-ID: <CAGbd71Qq-5KkVDCjZXrZhducc6NykVb3P54vDapuQEMdtZ7CsQ@mail.gmail.com>
Subject: Re: [yocto] Recipe do_install priority
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007d700005a755b944"

--0000000000007d700005a755b944
Content-Type: text/plain; charset="UTF-8"

Hi Mauro, all,

During the creation of the rootfs of your image yocto will try to install
both packages, and should complain loudly because the same file is provided
by two packages.

There are a few ways you can do this properly:

a) the straight-forware way is be to create a bbappend for init-ifupdown
that updates the contentious file with the content that you need, and NOT
provide this file in your library.bb

b) you could also createa bbappend for init-ifupdown which remove that file
from the installation in a do_install_append, and then you are free to
install it in your library.bb as it is not longer part of init-ifupdown.
This is not too complex.

c) another option is to try to use alternatives which allows the same file
to be delivered by several packages, and which one is used is selected at
install and/or runtime by using symbolic links (example: vi vs vim). This
requires a bit more research.

I am afraid that options other than these straight-forward ones will
qualify for the title of "horrible hacks"... :-)

Kind regards, Laurent.

On Fri, Jun 5, 2020 at 1:31 PM Mauro Ziliani <mauro@faresoftware.it> wrote:

> Hi all.
>
> I'm Mauro.
>
> I have to resolve this matter.
>
> The recipe  init-ifupdown.bb install file interfaces in /etc/network.
>
>
> I build a library which need to install the same file in the same folder.
>
> This library is managed by its own recipe  library.bb in my meta-mylayer.
>
>
> How can I tell to bitbake to install library after init-ifupdown in
> final image?
>
>
> The best for me should be drive this behavoir in the recipe-image.bb in
> this way
>
>
> library:do_install after init-ifupdown:do_install
>
>
> that means  run do_install of library.bb afger do_install of
> init-ifupdown.bb
>
>
> Any idea?
>
>
> MZ
>
> 
>


-- 
Laurent Gauthier
Embedded Linux Systems & Software
Phone: +33 630 483 429
http://soccasys.com

--0000000000007d700005a755b944
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Mauro, all,</div><div><br></div><div>During the cr=
eation of the rootfs of your image yocto will try to install both packages,=
 and should complain loudly because the same file is provided by two packag=
es.<br></div><div><br></div><div>There are a few ways you can do this prope=
rly:</div><div><br></div><div>a) the straight-forware way is be to create a=
 bbappend for init-ifupdown that updates the contentious file with the cont=
ent that you need, and NOT provide this file in your <a href=3D"http://libr=
ary.bb">library.bb</a></div><div><br></div><div>b) you could also createa b=
bappend for init-ifupdown which remove that file from the installation in a=
 do_install_append, and then you are free to install it in your <a href=3D"=
http://library.bb">library.bb</a> as it is not longer part of init-ifupdown=
. This is not too complex.<br></div><div><br></div><div>c) another option i=
s to try to use alternatives which allows the same file to be delivered by =
several packages, and which one is used is selected at install and/or runti=
me by using symbolic links (example: vi vs vim). This requires a bit more r=
esearch.<br></div><div><br></div><div>I am afraid that options other than t=
hese straight-forward ones will qualify for the title of &quot;horrible hac=
ks&quot;... :-)</div><div><br></div><div>Kind=C2=A0regards, Laurent.<br></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Fri, Jun 5, 2020 at 1:31 PM Mauro Ziliani &lt;<a href=3D"mailto:mauro=
@faresoftware.it">mauro@faresoftware.it</a>&gt; wrote:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex">Hi all.<br>
<br>
I&#39;m Mauro.<br>
<br>
I have to resolve this matter.<br>
<br>
The recipe=C2=A0 <a href=3D"http://init-ifupdown.bb" rel=3D"noreferrer" ta=
rget=3D"_blank">init-ifupdown.bb</a> install file interfaces in /etc/networ=
k.<br>
<br>
<br>
I build a library which need to install the same file in the same folder.<=
br>
<br>
This library is managed by its own recipe=C2=A0 <a href=3D"http://library.=
bb" rel=3D"noreferrer" target=3D"_blank">library.bb</a> in my meta-mylayer.=
<br>
<br>
<br>
How can I tell to bitbake to install library after init-ifupdown in <br>
final image?<br>
<br>
<br>
The best for me should be drive this behavoir in the <a href=3D"http://rec=
ipe-image.bb" rel=3D"noreferrer" target=3D"_blank">recipe-image.bb</a> in <=
br>
this way<br>
<br>
<br>
library:do_install after init-ifupdown:do_install<br>
<br>
<br>
that means=C2=A0 run do_install of <a href=3D"http://library.bb" rel=3D"no=
referrer" target=3D"_blank">library.bb</a> afger do_install of <br>
<a href=3D"http://init-ifupdown.bb" rel=3D"noreferrer" target=3D"_blank">i=
nit-ifupdown.bb</a><br>
<br>
<br>
Any idea?<br>
<br>
<br>
MZ<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"=
gmail_signature">Laurent Gauthier<br>Embedded Linux Systems &amp; Software<=
br>Phone: +33 630 483 429<br><a href=3D"http://soccasys.com" target=3D"_bla=
nk">http://soccasys.com</a></div>

--0000000000007d700005a755b944--
