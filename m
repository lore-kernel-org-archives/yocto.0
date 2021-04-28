Received: from mail-qk1-f177.google.com (mail-qk1-f177.google.com [209.85.222.177])
 by mx.groups.io with SMTP id smtpd.web10.7014.1619580799937060118
 for <yocto@lists.yoctoproject.org>;
 Tue, 27 Apr 2021 20:33:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=S0jfs75w;
 spf=pass (domain: gmail.com, ip: 209.85.222.177, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f177.google.com with SMTP id k127so6685975qkc.6
        for <yocto@lists.yoctoproject.org>; Tue, 27 Apr 2021 20:33:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5s+EOQVzFlBjopBP7TEgsIQvJ60BF/W+g516EJj150U=;
        b=S0jfs75wiiZ7d3fSd8u4Gkp3j4bZi+xB6Un6z2YcVRLzWoHBafsxZ8H5JmqlzgZnS4
         FGa2lYizkNPfiduyz3OHG7hZP7LDWoBlL2psbpwJYxhV42+M75RaavsAWP+g/9FVK01d
         8KfGAy+ssi/q3O+CnQI/v8wBIHxD0xlzXLbMn3WU+wsU0zZLGVYBxwjIXAXbLbcCK0Z4
         l7HVgjurcDX62l1aoS2XsistpOj0T40pSV6iAVpRK5b6aiJamrzn2Jq2u9PAZ4Orkvw2
         sFk9z+tdoB1KjJfIKsMwSIxk+gRbgtQ+BFtYTsGg7ue9J5o/DQOUESq50I4+6yTML1uU
         D4Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5s+EOQVzFlBjopBP7TEgsIQvJ60BF/W+g516EJj150U=;
        b=jgTi/zf0H6DPqxe6NXNAd92pV/HccBndKwHUb7Z851LlRjBVWaG1kqxJGPVdJH5JKr
         JSDQdphC2CF/blorlDLa2PaUVuqgNKNcts34wcijsnHaO7sNthE8VCHP3S8v6NDMjWZt
         HROqDVXpoJmupBje32dkgMhAz3VY2OMH/XR34My6LMD9gCeUPSZVVEeDzsCFsr86hL7s
         raza5QxSTn2u1btJric30j+G/iI1+iCS55vkEbkPngOg58lkcDF5y4L1Ltl0lfUbE3Ms
         Bslo1wcde5EGkGgjvmlgJnsJjYUO3b95Kf0dL9B6JNugYF9Sp9EXnSg3mtnMqUtPHC+V
         rKJg==
X-Gm-Message-State: AOAM5329ZzFDNzmaxLVOP4BuRTD43XOoKRRW+zjXr3ROIV/xfIVPa+UB
	2U8HID7cbo0Z9hpg2xvMoAXaAinAuERNd7Jx4C0=
X-Google-Smtp-Source: ABdhPJyUGnd9+wxiYKgOzxNnvy0bM7jgi4tEsPxyEj1yA304PsakKKoSHsI2n4qWkpAP5HVbk7qaEOi2Bh1qQXob4nY=
X-Received: by 2002:a37:624c:: with SMTP id w73mr26229746qkb.125.1619580799012;
 Tue, 27 Apr 2021 20:33:19 -0700 (PDT)
MIME-Version: 1.0
References: <CACSj6VUQ5SSpcrucTJ89eW=WJ41ZDPHc=CNhm6SOP-EgHtZh0A@mail.gmail.com>
 <20210426140851.e2g7okmtyt25rrna@qschulz> <CACSj6VVqDkssoEEXNjMQw7DGzeMgFBObGJQmucT7=PH64=Ppdw@mail.gmail.com>
In-Reply-To: <CACSj6VVqDkssoEEXNjMQw7DGzeMgFBObGJQmucT7=PH64=Ppdw@mail.gmail.com>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Tue, 27 Apr 2021 20:33:08 -0700
Message-ID: <CAMKF1spbzK=qGDwRthCBo1x+P8Z9h1=pL+N4hGZCzF07iHLDYg@mail.gmail.com>
Subject: Re: [yocto] AppArmor with BusyBox
To: Konstantin Aladyshev <aladyshev22@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000035d37c05c1000aa7"

--00000000000035d37c05c1000aa7
Content-Type: text/plain; charset="UTF-8"

On Tue, Apr 27, 2021 at 3:34 PM Konstantin Aladyshev <aladyshev22@gmail.com>
wrote:

> I've added `IMAGE_INSTALL += "findutils"` to my `conf/local.conf`
> file, and it seems like it was enough. There weren't any build
> conflicts.
>
> Should the AppArmor recipe be upgraded in some way to indicate that it
> needs a full-featured findutils package instead of a busybox one?


I think it will be useful to dig a bit further and find out what option
does it need from findutils package sometimes this could be solved by using
compatible options etc

If we find out that it has hard dependency on findutils then it should be
added to apparmor recipe RDEPENDS


>
> Best regards,
> Konstantin Aladyshev
>
> On Mon, Apr 26, 2021 at 5:08 PM Quentin Schulz
> <quentin.schulz@streamunlimited.com> wrote:
> >
> > Hi Konstantin,
> >
> > On Mon, Apr 26, 2021 at 01:45:30PM +0300, Konstantin Aladyshev wrote:
> > > I'm using the OpenBMC system (https://github.com/openbmc/openbmc) and
> > > I've tried to enable AppArmor functionality from the 'meta-security'
> > > layer.
> > >
> > > To achieve this I've added these strings to my local.conf file:
> > > DISTRO_FEATURES_append = " apparmor"
> > > IMAGE_INSTALL += "apparmor"
> > >
> > > The AppArmor functionality was installed to my image, but
> > > unfortunately I've come to this issue:
> > >
> > > kernel: AppArmor: AppArmor initialized
> > > kernel: AppArmor: AppArmor Filesystem Enabled
> > > kernel: AppArmor: AppArmor sha1 policy hashing enabled
> > > systemd[1]: systemd 247.3+ running in system mode. (+PAM -AUDIT
> > > -SELINUX -IMA -APPARMOR -SMACK +SYSVINIT -UTMP -LIBCRYPTSETUP -GCRYPT
> > > -GNUTLS -ACL +XZ -LZ4 -ZSTD -SECCOMP +BLKID -ELFUTILS +KMOD -IDN2 -IDN
> > > -PCRE2 default-hierarchy=hybrid)
> > > systemd[1]: Starting AppArmor initialization...
> > > apparmor[113]: Starting AppArmor profiles
> > > apparmor[128]: xargs: invalid option -- 'd'
> >
> > Busybox implementation of xargs does not support specifying a delimiter.
> >
> > I suggest you to install the full-featured xargs which is provided by
> > the findutils recipe.
> >
> > You probably need to disable xargs Busybox implementation otherwise
> > there'll be a conflict (you'll know, Yocto won't create the image).
> >
> > Cheers,
> > Quentin
>
> 
>
>

--00000000000035d37c05c1000aa7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, Apr 27, 2021 at 3:34 PM Konstantin Aladyshev &lt;<=
a href=3D"mailto:aladyshev22@gmail.com">aladyshev22@gmail.com</a>&gt; wrote=
:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-l=
eft-color:rgb(204,204,204)">I&#39;ve added `IMAGE_INSTALL +=3D &quot;findut=
ils&quot;` to my `conf/local.conf`<br>
file, and it seems like it was enough. There weren&#39;t any build<br>
conflicts.<br>
<br>
Should the AppArmor recipe be upgraded in some way to indicate that it<br>
needs a full-featured findutils package instead of a busybox one?</blockqu=
ote><div dir=3D"auto"><br></div><div dir=3D"auto">I think it will be useful=
 to dig a bit further and find out what option does it need from findutils =
package sometimes this could be solved by using compatible options etc=C2=
=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">If we find out that=
 it has hard dependency on findutils then it should be added to apparmor re=
cipe RDEPENDS=C2=A0</div><div dir=3D"auto"><br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-=
left-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)" dir=
=3D"auto"><br>
<br>
Best regards,<br>
Konstantin Aladyshev<br>
<br>
On Mon, Apr 26, 2021 at 5:08 PM Quentin Schulz<br>
&lt;<a href=3D"mailto:quentin.schulz@streamunlimited.com" target=3D"_blank=
">quentin.schulz@streamunlimited.com</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi Konstantin,<br>
&gt;<br>
&gt; On Mon, Apr 26, 2021 at 01:45:30PM +0300, Konstantin Aladyshev wrote:=
<br>
&gt; &gt; I&#39;m using the OpenBMC system (<a href=3D"https://github.com/=
openbmc/openbmc" rel=3D"noreferrer" target=3D"_blank">https://github.com/op=
enbmc/openbmc</a>) and<br>
&gt; &gt; I&#39;ve tried to enable AppArmor functionality from the &#39;me=
ta-security&#39;<br>
&gt; &gt; layer.<br>
&gt; &gt;<br>
&gt; &gt; To achieve this I&#39;ve added these strings to my local.conf fi=
le:<br>
&gt; &gt; DISTRO_FEATURES_append =3D &quot; apparmor&quot;<br>
&gt; &gt; IMAGE_INSTALL +=3D &quot;apparmor&quot;<br>
&gt; &gt;<br>
&gt; &gt; The AppArmor functionality was installed to my image, but<br>
&gt; &gt; unfortunately I&#39;ve come to this issue:<br>
&gt; &gt;<br>
&gt; &gt; kernel: AppArmor: AppArmor initialized<br>
&gt; &gt; kernel: AppArmor: AppArmor Filesystem Enabled<br>
&gt; &gt; kernel: AppArmor: AppArmor sha1 policy hashing enabled<br>
&gt; &gt; systemd[1]: systemd 247.3+ running in system mode. (+PAM -AUDIT<=
br>
&gt; &gt; -SELINUX -IMA -APPARMOR -SMACK +SYSVINIT -UTMP -LIBCRYPTSETUP -G=
CRYPT<br>
&gt; &gt; -GNUTLS -ACL +XZ -LZ4 -ZSTD -SECCOMP +BLKID -ELFUTILS +KMOD -IDN=
2 -IDN<br>
&gt; &gt; -PCRE2 default-hierarchy=3Dhybrid)<br>
&gt; &gt; systemd[1]: Starting AppArmor initialization...<br>
&gt; &gt; apparmor[113]: Starting AppArmor profiles<br>
&gt; &gt; apparmor[128]: xargs: invalid option -- &#39;d&#39;<br>
&gt;<br>
&gt; Busybox implementation of xargs does not support specifying a delimit=
er.<br>
&gt;<br>
&gt; I suggest you to install the full-featured xargs which is provided by=
<br>
&gt; the findutils recipe.<br>
&gt;<br>
&gt; You probably need to disable xargs Busybox implementation otherwise<b=
r>
&gt; there&#39;ll be a conflict (you&#39;ll know, Yocto won&#39;t create t=
he image).<br>
&gt;<br>
&gt; Cheers,<br>
&gt; Quentin<br>
<br>
<br>
<br>
</blockquote></div></div>

--00000000000035d37c05c1000aa7--
