Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
 by mx.groups.io with SMTP id smtpd.web09.10785.1625493657970164764
 for <yocto@lists.yoctoproject.org>;
 Mon, 05 Jul 2021 07:00:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=cyyEiTOe;
 spf=pass (domain: gmail.com, ip: 209.85.167.51, mailfrom: martin.jansa@gmail.com)
Received: by mail-lf1-f51.google.com with SMTP id bq39so20041364lfb.12
        for <yocto@lists.yoctoproject.org>; Mon, 05 Jul 2021 07:00:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=v54HWaiaLbCFgIt0ozStVqxTFp5QWyqpXqVYySty/D0=;
        b=cyyEiTOeY9UPBUh1Ckg+NREkTov5MCS/R8JGkY5bzxlT8iFBxw1sU6srAIocR/OPfx
         uNd1+FZqKzzEMdOhcxdLfNIJA+r5/3BRs2t69C/Bs5aB6p4phAl8N7iXDwOt+39F5TRF
         pvElzuIYM5rylG8yfXsxD9q7y2sRziouxrVR0nxqFa8/XE69WjgNgShRMnoOPYU/lykL
         cVRKG0txZ1xuz34FJpl3zL+8Qs6Xbu2HRb6X1qvo3kjp4TKzI0ni+2wRqFFwIMNCKbrO
         LZcp8zviNohoZT6t09nyJlQOEO0TdP5jDQfI/V7i8sm6ODtdjRRHBbN/wSWcSNzR7IKz
         pSjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=v54HWaiaLbCFgIt0ozStVqxTFp5QWyqpXqVYySty/D0=;
        b=ik6JF/0hoJR1BenT3gTcJGty4cEgLlLLxhq9XrA9iuf/rMIgwp+cZDQGWBFTEGzy5s
         NWPwT34fr5iTJzCPF0GXAuNJ9IPh9Hrc/VgsSGhblJqvElAWzNopkARjKzZi8LNwn9/3
         B+763RYqm5wjcFCOBo+zZ1PSFO56YkkPcM0pw63CvfDSP2mwr0zzIeQkCrl1LfApvaee
         51yGWr2pSOgFrBBEuKosIv5Ii8xrCQLQHjd2IJEv2yv6l/jVNp4O2mrAN83e0EA0c4l+
         4luc3PWErkdDtVo295dSxe4R0HjLWCs4wbU1JzSzIaYaAnzm4TkWWDt+J5ftGYL6Clzz
         j3tA==
X-Gm-Message-State: AOAM531wHzVOJ09IVVTrXhFjQZHIM95Xumrtccnq3JnGBQ0wrg0l560+
	xZ1enMjjIquJZm57KlVrKZ/4/K/nl7kC4Tl3AR0=
X-Google-Smtp-Source: ABdhPJwWwPIwsS3snv+D/3/p3ifw1SdQj0/ucycHmfKuuvoKMFHFn41+6TLrJyk3jpW0gm6eTC8VuzKLCtzbsO10GC8=
X-Received: by 2002:a05:6512:10c6:: with SMTP id k6mr3406544lfg.558.1625493654967;
 Mon, 05 Jul 2021 07:00:54 -0700 (PDT)
MIME-Version: 1.0
References: <MN2PR13MB367778F964A3AB848D4CAD4ACB1C9@MN2PR13MB3677.namprd13.prod.outlook.com>
In-Reply-To: <MN2PR13MB367778F964A3AB848D4CAD4ACB1C9@MN2PR13MB3677.namprd13.prod.outlook.com>
From: "Martin Jansa" <Martin.Jansa@gmail.com>
Date: Mon, 5 Jul 2021 07:00:43 -0700
Message-ID: <CA+chaQcJrSWJfT6aNhR9MbTgWnC3sYJd_cvdGxdCoTrUsNWxVg@mail.gmail.com>
Subject: Re: [yocto] Upgrading connman to a version over 1.37 fails to build.
To: imoya@irobot.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000e39cab05c660bbfd"

--000000000000e39cab05c660bbfd
Content-Type: text/plain; charset="UTF-8"

1.40 is already in oe-core master you should be able to backport the recipe
from there.

libnml dependency was already added with wireguard PACKAGECONFIG in 1.38
here:
https://git.openembedded.org/openembedded-core/commit/?id=ce2948af5293258a69a9cfefba9e883cefecac87

On Mon, Jul 5, 2021 at 6:55 AM Moya, Ignacio via lists.yoctoproject.org
<imoya=irobot.com@lists.yoctoproject.org> wrote:

> Hi,
>
> I'm trying to upgrade our connman recipe to 1.39 or 1.40 version, but when
> I try to build our image, it fails in "do_configure" because it can't find
> libmnl.
> This is the exact output of my *connman/1.40-r0/build/config.log*
>
> * configure:14443: checking for libmnl >= 1.0.0 configure:14450:
> $PKG_CONFIG --exists --print-errors "libmnl >= 1.0.0" Package libmnl was
> not found in the pkg-config search path. Perhaps you should add the
> directory containing `libmnl.pc' to the PKG_CONFIG_PATH environment
> variable No package 'libmnl' found configure:14453: $? = 1 configure:14467:
> $PKG_CONFIG --exists --print-errors "libmnl >= 1.0.0" Package libmnl was
> not found in the pkg-config search path. Perhaps you should add the
> directory containing `libmnl.pc' to the PKG_CONFIG_PATH environment
> variable No package 'libmnl' found configure:14470: $? = 1 configure:14484:
> result: no No package 'libmnl' found configure:14500: error: libmnl >=
> 1.0.0 not found *
>
> My libmnl recipe is located inside poky *./poky/meta/recipes-extended/libmnl/libmnl_1.0.4.bb
> <http://libmnl_1.0.4.bb> . *This error only happens with connman 1.39 or
> 1.40.
> I appreciate any help or suggestions off a better place to ask this
> questions since is connman related.
>
> Thanks,
> Ignacio.
>
> *This e-mail message and any files attached may contain information that
> iRobot Corporation considers confidential and/or proprietary or may later
> designate as confidential and proprietary. If you are not the intended
> recipient, please contact the sender and delete the email immediately.
> Unauthorized use or distribution is strictly prohibited.*
>
> 
>
>

--000000000000e39cab05c660bbfd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">1.40 is already in oe-core master you should be able to ba=
ckport the recipe from there.<div><br></div><div>libnml dependency was alre=
ady added with wireguard PACKAGECONFIG in 1.38 here:</div><div><a href=3D"h=
ttps://git.openembedded.org/openembedded-core/commit/?id=3Dce2948af5293258a=
69a9cfefba9e883cefecac87">https://git.openembedded.org/openembedded-core/co=
mmit/?id=3Dce2948af5293258a69a9cfefba9e883cefecac87</a><br></div></div><br>=
<div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Ju=
l 5, 2021 at 6:55 AM Moya, Ignacio via <a href=3D"http://lists.yoctoproject=
.org">lists.yoctoproject.org</a> &lt;imoya=3D<a href=3D"mailto:irobot.com@l=
ists.yoctoproject.org">irobot.com@lists.yoctoproject.org</a>&gt; wrote:<br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex">




<div dir=3D"ltr">
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
Hi,</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
I&#39;m trying to upgrade our connman recipe to 1.39 or 1.40 version, but =
when I try to build our image, it fails in &quot;do_configure&quot; because=
 it can&#39;t find libmnl.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
This is the exact output of my <i>connman/1.40-r0/build/config.log</i></di=
v>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
<i><br>
</i></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
<i>
<div style=3D"color:rgb(51,51,51);background-color:rgb(253,246,227);font-f=
amily:&quot;Droid Sans Mono&quot;,monospace,monospace,&quot;Droid Sans Fall=
back&quot;;font-weight:normal;font-size:14px;line-height:19px">
<span><span>configure:</span><span style=3D"color:rgb(181,137,0)">14443</s=
pan><span>: checking for libmnl &gt;=3D
</span><span style=3D"color:rgb(181,137,0)">1</span><span>.</span><span st=
yle=3D"color:rgb(181,137,0)">0</span><span>.</span><span style=3D"color:rgb=
(181,137,0)">0</span></span>
<div><span>configure:</span><span style=3D"color:rgb(181,137,0)">14450</sp=
an><span>: $PKG_CONFIG --exists --print-errors
</span><span style=3D"color:rgb(42,161,152)">&quot;libmnl &gt;=3D 1.0.0&qu=
ot;</span></div>
<div><span>Package libmnl was not found in the pkg-config search path.</sp=
an></div>
<div><span>Perhaps you should add the directory containing `</span><span s=
tyle=3D"color:rgb(181,137,0)">libmnl.pc</span><span>&#39;</span></div>
<div><span>to the PKG_CONFIG_PATH environment variable</span></div>
<div><span>No package </span><span style=3D"color:rgb(42,161,152)">&#39;li=
bmnl&#39;</span><span>=C2=A0found</span></div>
<div><span>configure:</span><span style=3D"color:rgb(181,137,0)">14453</sp=
an><span>: $? =3D </span>
<span style=3D"color:rgb(181,137,0)">1</span></div>
<div><span>configure:</span><span style=3D"color:rgb(181,137,0)">14467</sp=
an><span>: $PKG_CONFIG --exists --print-errors
</span><span style=3D"color:rgb(42,161,152)">&quot;libmnl &gt;=3D 1.0.0&qu=
ot;</span></div>
<div><span>Package libmnl was not found in the pkg-config search path.</sp=
an></div>
<div><span>Perhaps you should add the directory containing `</span><span s=
tyle=3D"color:rgb(181,137,0)">libmnl.pc</span><span>&#39;</span></div>
<div><span>to the PKG_CONFIG_PATH environment variable</span></div>
<div><span>No package </span><span style=3D"color:rgb(42,161,152)">&#39;li=
bmnl&#39;</span><span>=C2=A0found</span></div>
<div><span>configure:</span><span style=3D"color:rgb(181,137,0)">14470</sp=
an><span>: $? =3D </span>
<span style=3D"color:rgb(181,137,0)">1</span></div>
<div><span>configure:</span><span style=3D"color:rgb(181,137,0)">14484</sp=
an><span>: result: no</span></div>
<div><span>No package </span><span style=3D"color:rgb(42,161,152)">&#39;li=
bmnl&#39;</span><span>=C2=A0found</span></div>
<span><span>configure:</span><span style=3D"color:rgb(181,137,0)">14500</s=
pan><span>: </span>
<span style=3D"color:rgb(42,161,152)">error:</span><span>=C2=A0libmnl &gt;=
=
=3D </span><span style=3D"color:rgb(181,137,0)">1</span><span>.</span><spa=
n style=3D"color:rgb(181,137,0)">0</span><span>.</span><span style=3D"color=
:rgb(181,137,0)">0</span><span>=C2=A0not found</span></span></div>
</i></div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
My libmnl recipe is located inside poky <i>./poky/meta/recipes-extended/li=
bmnl/<a href=3D"http://libmnl_1.0.4.bb" target=3D"_blank">libmnl_1.0.4.bb</=
a> .
</i>This error only happens with connman 1.39 or 1.40.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
I appreciate any help or suggestions off a better place to ask this questi=
ons since is connman related.</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
<br>
</div>
<div style=3D"font-family:Calibri,Arial,Helvetica,sans-serif;font-size:12p=
t;color:rgb(0,0,0)">
Thanks,
<div>Ignacio.</div>
<br>
</div>
<p style=3D"font-size:8pt;line-height:10pt;font-family:Cambria,&quot;times=
 roman&quot;,serif">
<em>This e-mail message and any files attached may contain information tha=
t iRobot Corporation considers confidential and/or proprietary or may later=
 designate as confidential and proprietary. If you are not the intended rec=
ipient, please contact the sender
 and delete the email immediately. Unauthorized use or distribution is str=
ictly prohibited.</em></p>
</div>

<br>
<br>
<br>
</blockquote></div>

--000000000000e39cab05c660bbfd--
