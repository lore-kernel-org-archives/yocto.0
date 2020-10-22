Received: from mail-vs1-f47.google.com (mail-vs1-f47.google.com [209.85.217.47])
 by mx.groups.io with SMTP id smtpd.web08.8068.1603359573996893526
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Oct 2020 02:39:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dcdhG0jr;
 spf=pass (domain: gmail.com, ip: 209.85.217.47, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f47.google.com with SMTP id p9so496042vsl.1;
        Thu, 22 Oct 2020 02:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DFUZ2JjIjo7EnbcRFvvNd9nGMMWpnEStfdMNWudTjuY=;
        b=dcdhG0jrgQJuCpebRlkdJDcMDam6l54SFSPGc8UoewBqduYK5rmffNQ4kA3J1s2tqQ
         9uXx9LyuL6UVQvNHM0hrBIXTCUNU/mY0HdzG1kMuDTcpH/ic2rOJZBLa0mEUClk9noqk
         iNfODcPvH4zm2xORobR7DaA0qFu+r1hSzidKsRSdVACq3KHyC9lFU30geSsQ660oMzdw
         lmwE/dmE1Kh8S3am2ghDRTcofFRrgjOqMExZYlweDxQxWYu9mwr1Vu1T4m6mkG6mQp7R
         OZ3a67kh68ODwpRJv2YtlD9WVX4/9l0JS6I81SZV9ZAt+rDeQZjt253V1qnqZKYCTce5
         qgkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DFUZ2JjIjo7EnbcRFvvNd9nGMMWpnEStfdMNWudTjuY=;
        b=dZqVOEX6bufwXJwXyHnvA9qErEQ+NETwchkabAv4XhxzKrZL0AgHjPqeUgZ7gLySlH
         iKLMziij2PKQ4Vn7MygkQc74UnYrqSnNNk/kLIgWmgw1NN2dfnVSgXJdF/AdnlpRWRpw
         0+6CkOpQ+Iw3ZldvGE0GYr0a5a/yw9G61MQ6wu0KeFK17roSYwG9redzN6JJUFh36uzR
         /lej0nE37PrMp3WSWv1QGoDcZVwDV8KOf2fhN/k4/3jlJsjLvA+1gow7XiHZZye2iawT
         V15CxAcTxlpqfBE37xE7Mvs3LGnPAAMzt7WkcaVeKFTaLgIyBORFmaw9Q8Zj9SPTe0sZ
         sumw==
X-Gm-Message-State: AOAM533DVI6ZHARD6gAmnnwh9NPsGXDtqAkjZXuQF11QtrIu0HkSvmda
	0ZLlqrdKSqEfjntxoLGWkA7eQdSNCl32IdrR2uk=
X-Google-Smtp-Source: ABdhPJw8Xpbmj5qCbFXWEWtujn2u8Ac1cgpczH287Y8RwPC88GGrp7YIomsM81hYyOLL/FX21t+8e71ptUw5/S8uRsc=
X-Received: by 2002:a67:1087:: with SMTP id 129mr843884vsq.41.1603359573150;
 Thu, 22 Oct 2020 02:39:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAJw=dJ_LgOdKN8OLccHU8+37m_zfTYxoQ3ev93DYiqxog6Z9gQ@mail.gmail.com>
In-Reply-To: <CAJw=dJ_LgOdKN8OLccHU8+37m_zfTYxoQ3ev93DYiqxog6Z9gQ@mail.gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Thu, 22 Oct 2020 11:39:21 +0200
Message-ID: <CANNYZj-8XTh9=r=nU8oV0A_qLJO7MpTPDp9PLfnibDSNdwnWwQ@mail.gmail.com>
Subject: Re: [yocto] Included conf files in our receipes.
To: NIKHIL PATIL <nikhilvp29@gmail.com>
Cc: yocto+help@lists.yoctoproject.org, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ce105c05b23f3dc6"

--000000000000ce105c05b23f3dc6
Content-Type: text/plain; charset="UTF-8"

You should make a new image recipe, and define what goes into it there.

Alex

On Thu, 22 Oct 2020 at 11:03, NIKHIL PATIL <nikhilvp29@gmail.com> wrote:

> Hi Team ,
>        We are using yocto sdk for intel leafhill board. For our
> development purpose we are changing in local.conf. (for eg.  if i want
> minicom package means we are doing IMAGE_INSTALL_APPEND += "minicom" ).
>        But , As per requirement we dont want these ( means adding in
> local.conf and bblayer.conf ) , so every needed packages (eg. minicom)  how
> we can add packages in our meta-layer (like eg. meta-test ) . so all
> required packages will come with our core image .
>
>    *how we can achieve these ?*
>
> 
>
>

--000000000000ce105c05b23f3dc6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You should make a new image recipe, and define what g=
oes into it there.</div><div><br></div><div>Alex<br></div></div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 22 Oct 20=
20 at 11:03, NIKHIL PATIL &lt;<a href=3D"mailto:nikhilvp29@gmail.com">nikhi=
lvp29@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr">Hi Team ,<div>=C2=A0 =C2=A0 =C2=A0 =C2=A0We=
 are using yocto sdk for intel leafhill board. For our development purpose =
we are changing in local.conf. (for eg.=C2=A0 if i want minicom package mea=
ns we are doing IMAGE_INSTALL_APPEND +=3D &quot;minicom&quot; ).</div><div>=
=
=C2=A0 =C2=A0 =C2=A0 =C2=A0But , As per requirement we dont=C2=A0want thes=
e ( means adding in local.conf and bblayer.conf ) , so every needed package=
s (eg. minicom)=C2=A0 how we can add packages in our meta-layer (like eg. m=
eta-test ) . so all required packages will come with our core image .=C2=A0=
</div><div>=C2=A0</div><div>=C2=A0 =C2=A0<b>how we can achieve these ?</b><=
/div></div>
<br>
<br>
<br>
</blockquote></div>

--000000000000ce105c05b23f3dc6--
