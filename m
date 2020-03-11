Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com [209.85.222.46])
 by mx.groups.io with SMTP id smtpd.web11.4630.1583919173377616941
 for <yocto@lists.yoctoproject.org>;
 Wed, 11 Mar 2020 02:32:53 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@soccasys-com.20150623.gappssmtp.com header.s=20150623 header.b=GIb9k9ln;
 spf=pass (domain: soccasys.com, ip: 209.85.222.46, mailfrom: laurent.gauthier@soccasys.com)
Received: by mail-ua1-f46.google.com with SMTP id y3so463075uaq.5
        for <yocto@lists.yoctoproject.org>; Wed, 11 Mar 2020 02:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soccasys-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=gkKhDJOs/Mxzt9+42073XNDZIt+TjPQ49cOSYK6MCdw=;
        b=GIb9k9ln/VyOpLCbc4PPhxD1sZIFjCtVUYqIkCVKBMmLo1HDHh7ygMy+TSEath7JyK
         T4yj3WKDgC+ndHRmjtpfP5AW3Z1RzvMoNqmjb2CJoVBVCOKf/aexd6VUXaFqnUbUtVP5
         GuNN8b/yxLEpXK5mupWOe3DRAcY7Yeor5kGKwW4XGEQl3u110iaGDqXhqMA8sK8l40Or
         bnrXs9gYsmkva1Y5lfWbOUf6VUyy/bEVLffQpnmIAu6G13WzZmkUPP2ueTw+vNWNNT92
         zTdUpGQjHM0FHgUCbvX8vmnB4ZCUTKgKy+K98nQhfyA6Np5ZHNSRByV2GNRZrfUsUbhy
         SoXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=gkKhDJOs/Mxzt9+42073XNDZIt+TjPQ49cOSYK6MCdw=;
        b=ePotngptXoGuyvqamU5Ks50bxgvUzCC+7nfR+oZtDJudWOyqNS16htp4u5q0t25qG+
         pzZrIOdjDNGi1BHRBxQHkXluMsOb2H+8jGOsh3zWnqXklkGWKEqNiI7q1olDbAeY58b4
         eQtmUb5Cauryp5uqW2/Vfiwp0iz+2ELT7Yr3MPerci6jgXCwSrBjoQIWpRhg0ev7NU+C
         OBFrLXkYI9FAacX1tum6a/dHHlw3SjZKdZ+n25a/VGV7vVt9f97BX9TC6zDcj+Az9l+H
         WvfVWF/s9po79gZ3p4Z/Mdl3R4XrIw9rvx19zKq0qkCSWHFGFjW0iVSNjAGwjGuTYDrE
         /T5Q==
X-Gm-Message-State: ANhLgQ01utz9Atbp1Z4CbMP7mECGdNoxXGu7VNdP1xMhOpv3jE4MLRSf
	LI23aPV0jJ/nQIerutCDhTrSc+Euiy54h92PsgIwtbXyVmc=
X-Google-Smtp-Source: ADFU+vsaJjytYAfebFa3UGYW7UJCFOsINwAww9P/DCRI4aPP0DjVIpUPpX6/W9a1jGPy+J9LiDNlIwV7KogENZPVRpY=
X-Received: by 2002:ab0:2150:: with SMTP id t16mr1048806ual.61.1583919172171;
 Wed, 11 Mar 2020 02:32:52 -0700 (PDT)
MIME-Version: 1.0
References: <CH2PR13MB33689C78CFAB378C4CB7011CD4FC0@CH2PR13MB3368.namprd13.prod.outlook.com>
 <4734dd8b227d1c9870e4528ebb68feb3786fe829.camel@delisys.ch>
In-Reply-To: <4734dd8b227d1c9870e4528ebb68feb3786fe829.camel@delisys.ch>
From: "Laurent Gauthier" <laurent.gauthier@soccasys.com>
Date: Wed, 11 Mar 2020 10:34:18 +0100
Message-ID: <CAGbd71RUHZbagiwV-M+51v_5qTvruXczzFkORcAiupHe9_pCsA@mail.gmail.com>
Subject: Re: [yocto] Uboot NetBoot IMX8
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009c7b1105a090ebca"

--0000000000009c7b1105a090ebca
Content-Type: text/plain; charset="UTF-8"

Hi all,

I would second what Nicolas pointed out:

* on the server side you want to make sure that you extract the rootfs tar
file as user root.

Kind Regards, Laurent.

On Wed, Mar 11, 2020 at 8:43 AM Nicolas Jeker <n.jeker@delisys.ch> wrote:

> On Wed, 2020-03-11 at 00:39 +0000, Trevor wrote:
> > > Mar 11 00:21:16 b2qt-b9-imx8mq mount[2611]: mount: only root can
> > > use "--types" option (effective UID is 1000)
> >
> >
> > The mount error seems prevalent across all the errors.  somehow UID
> > is 1000 when it should be 0 during boot?
>
> By googling the error message I found a thread where somebody has the
> same question, but I wouldn't recommend following the advice there
> (running the yocto build as root). How do you extract the root
> filesystem to your NFS directory? Maybe something is wrong there and
> the files get extracted with UID 1000 as owner. For reference, I use
> this command which seems to work fine:
>
> sudo tar --strip-components=1 -C /srv/nfs/rootfs -xf images/apalis-
> imx6-mainline/Apalis-iMX6-Mainline_Image.rootfs.tar.xz
>
> Also check that there are no setuid/setgid bits set.
>
> > On the Host side, here are the /etc/exports options for NFS:
> >  *(rw,sync,insecure,no_subtree_check,no_root_squash)
>
> I'm using pretty much the same NFS options, the only difference I could
> spot is an additional 'fsid=root' in my exports which is NFSv4
> specific.
>
> 
>


-- 
Laurent Gauthier
Phone: +33 630 483 429
http://soccasys.com

--0000000000009c7b1105a090ebca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I would second what =
Nicolas pointed out:</div><div><br></div><div>* on the server side you want=
 to make sure that you extract the rootfs tar file as user root.</div><div>=
<br></div><div>Kind Regards, Laurent.<br></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Mar 11, 2020 at 8:43=
 AM Nicolas Jeker &lt;<a href=3D"mailto:n.jeker@delisys.ch">n.jeker@delisys=
.ch</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x">On Wed, 2020-03-11 at 00:39 +0000, Trevor wrote:<br>
&gt; &gt; Mar 11 00:21:16 b2qt-b9-imx8mq mount[2611]: mount: only root can=
<br>
&gt; &gt; use &quot;--types&quot; option (effective UID is 1000)<br>
&gt; <br>
&gt; <br>
&gt; The mount error seems prevalent across all the errors.=C2=A0 somehow =
UID<br>
&gt; is 1000 when it should be 0 during boot?<br>
<br>
By googling the error message I found a thread where somebody has the<br>
same question, but I wouldn&#39;t recommend following the advice there<br>
(running the yocto build as root). How do you extract the root<br>
filesystem to your NFS directory? Maybe something is wrong there and<br>
the files get extracted with UID 1000 as owner. For reference, I use<br>
this command which seems to work fine:<br>
<br>
sudo tar --strip-components=3D1 -C /srv/nfs/rootfs -xf images/apalis-<br>
imx6-mainline/Apalis-iMX6-Mainline_Image.rootfs.tar.xz<br>
<br>
Also check that there are no setuid/setgid bits set.<br>
<br>
&gt; On the Host side, here are the /etc/exports options for NFS:<br>
&gt;=C2=A0 *(rw,sync,insecure,no_subtree_check,no_root_squash)<br>
<br>
I&#39;m using pretty much the same NFS options, the only difference I coul=
d<br>
spot is an additional &#39;fsid=3Droot&#39; in my exports which is NFSv4<b=
r>
specific.<br>
<br>
<br>
</blockquote></div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"=
gmail_signature">Laurent Gauthier<br>Phone: +33 630 483 429<br><a href=3D"h=
ttp://soccasys.com" target=3D"_blank">http://soccasys.com</a></div>

--0000000000009c7b1105a090ebca--
