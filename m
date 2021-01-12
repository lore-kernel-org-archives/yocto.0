Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web09.10963.1610466524916885881
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Jan 2021 07:48:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=jevKPaFf;
 spf=pass (domain: gmail.com, ip: 209.85.208.52, mailfrom: icegood1980@gmail.com)
Received: by mail-ed1-f52.google.com with SMTP id b2so2840232edm.3
        for <yocto@lists.yoctoproject.org>; Tue, 12 Jan 2021 07:48:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=SNAKHZvKgjrVQJmdTbLjAChCLI85TgVcNfVFmgmMSMQ=;
        b=jevKPaFfQsCtrphaXwPM43n7iqAEq9LCHsz2Np2JmGEpdeAs40rUy9YV2aNX4l2VQS
         BWWIHVSaekHuU2F6wuRappzTML05isWqB1FnRgV3QeuLcyCzvcKOXCqyzhb99TuaF5Yg
         Px7K8XC6Y5Oy0yZFIsQNWYhVjhcAhr7R/fA1ufZbvnQLMpcGflVbXb8BQ72jpLVt7Dj9
         tOoXAptI6s1yoEoaWegjQM9MC3t2DWnakSbQRwYw0x0iiJzAil/pRP00J152D5v215rA
         kU/0knsvipKzdMwYwa60KewaxWF98GLc4AJ4nK6n2jCfBikjAZLm80ChOjbWIl61k6S4
         Gp3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=SNAKHZvKgjrVQJmdTbLjAChCLI85TgVcNfVFmgmMSMQ=;
        b=l6rFc/IYeEvPdzsjJMhfGFMzHw+XH1n7cpjWVQSPiYhnchZ0leldrxfmkKud8IWyZc
         a6yd3r1yuGxG8LmIChAQt4WLQphRUERYcXRdaplxZQR6edFSVAPcCYP936pDNJIV/I92
         42xT5xITEJvoXgth9sQ2erMIWjhnmdie/AfH1DJr/WX6m/r4I9iuuun/FTMUs2/Jhf4s
         zyELpyfA+3NnwNCO+KGgy0OBXTGDED/YFFDFaeQNduF2qjEAP/W6E7E9wAuoimSx2LoP
         EvrTojLeuGXZToiAQbCSZnF68nKVCCKZQCB64zlA8Vk3k8RYSBmGgMkM3nHRrfEDhsoF
         s+8g==
X-Gm-Message-State: AOAM530Hbso3D6iAaj+T5xacbk7Rw4e8MdnmdpL5hnk3soz6r2X/TiNz
	/z2Yp8CVr0vGOTEGq4zRZXEAczcPG57M2tBvK3CBUYyinXE=
X-Google-Smtp-Source: ABdhPJxshpFBdfL6vVqztaBGskPsCRP7Gy6wJw1UyVk1I2Sr2XyPe7zxXwLl/q4ZvM/+++30I3hP28/Hp9F0V7KRp6I=
X-Received: by 2002:aa7:c384:: with SMTP id k4mr1893788edq.23.1610466522954;
 Tue, 12 Jan 2021 07:48:42 -0800 (PST)
MIME-Version: 1.0
References: <CAJCbrz4YKYNenmMDPb7jMTq_=mv3h0sVjMCFq4+-Anirbv5yug@mail.gmail.com>
 <20210112151905.az5iriu77woea4x2@qschulz> <CAJCbrz67e=6vSpX5cAvuV9R7mH3-kvAFspm1SVBFQJrey76gdQ@mail.gmail.com>
 <20210112154357.tk4b433cwu4usuqi@qschulz>
In-Reply-To: <20210112154357.tk4b433cwu4usuqi@qschulz>
From: "Sergey Ivanov" <icegood1980@gmail.com>
Date: Tue, 12 Jan 2021 17:48:31 +0200
Message-ID: <CAJCbrz4x0MukxjmmZ0_kVrAQFHCX2ZtVtAagnPFhTG5HDn9ZWw@mail.gmail.com>
Subject: [yocto] remove particular device from QB_OPT_APPEND: per-word manner
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000005fe6005b8b5f53f"

--00000000000005fe6005b8b5f53f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

For all info

---------- Forwarded message ---------
=D0=9E=D1=82: Quentin Schulz <quentin.schulz@streamunlimited.com>
Date: =D0=B2=D1=82, 12 =D1=8F=D0=BD=D0=B2. 2021 =D0=B3. =D0=B2 17:43
Subject: Re: [yocto] remove particular device from QB_OPT_APPEND: per-word
manner
To: Sergey Ivanov <icegood1980@gmail.com>


Rah, please answer to all always (keep the mailing list in Cc). I'll
bounce the mail on the mailing list for you now.

On Tue, Jan 12, 2021 at 05:27:58PM +0200, Sergey Ivanov wrote:
> Thanks, it should work, provided...
> Am i understand correctly that all append-remove stuff works BEFORE
> anonymous python script?
>
> =D0=B2=D1=82, 12 =D1=8F=D0=BD=D0=B2. 2021 =D0=B3. =D0=B2 17:19, Quentin S=
chulz <
> quentin.schulz@streamunlimited.com>:
>
> > Hi Sergey,
> >
> > On Tue, Jan 12, 2021 at 05:09:25PM +0200, Sergey Ivanov wrote:
> > > Hi there.
> > >
> > > I'm working with arm64 target and i want to take control on usb buses
on
> > it.
> > > What i'm trying to do is tro remove both bus and hid devices on it vi=
a
> > > QB_OPT_APPEND_remove =3D " -show-cursor -device qemu-xhci -device
> > usb-tablet
> > > -device usb-kbd "
> > >
> > > Of course, it doesn't work properly since it removes ALL occurrences
of
> > > each word above. In particular, i had "-device VGA,edid=3Don" that i
wanted
> > > to stay.
> > > Instead, i obtained "VGA,edid=3Don" that lead to boot error. OK, it i=
s
> > clear.
> > > I also tried smth. like
> > >
> > > QB_OPT_APPEND_remove =3D " -show-cursor '-device qemu-xhci' '-device
> > > usb-tablet' '-device usb-kbd -device' "
> > >
> > > however nothing was removed here. Can i workaround given issue under
> > *Zeus?*
> >
> > A "hack" I'm thinking about right now would be to remove those variable=
s
> > by hand in a python anonymous function. You want to expand the variable
> > first, then do some python regex or however you like, to remove what yo=
u
> > want. Python anonymous functions are run at parsing time.
> >
> > Otherwise, if you know pretty much exactly what the content of the
> > variable should be for you, you can always use the following:
> > QB_OPT_APPEND_<my-machine> =3D "<content>"
> >
> > Hope this can give you some ideas,
> > Cheers,
> > Quentin
> >
>
>
> --
> Kind regards,
> Sergey Ivanov

--=20
StreamUnlimited Engineering GmbH
High Tech Campus Vienna, Gutheil-Schoder-Gasse 10, 1100 Vienna, Austria
Fax: +43 1 667 20 02 4401
quentin.schulz@streamunlimited.com, www.streamunlimited.com


--=20
Kind regards,
Sergey Ivanov

--00000000000005fe6005b8b5f53f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">For all info<br><div><br><div class=3D"gmail_quote"><div d=
ir=3D"ltr" class=3D"gmail_attr">---------- Forwarded message ---------<br>=
=D0=9E=D1=82: <b class=3D"gmail_sendername" dir=3D"auto">Quentin Schulz</b>=
 <span dir=3D"auto">&lt;<a href=3D"mailto:quentin.schulz@streamunlimited.co=
m">quentin.schulz@streamunlimited.com</a>&gt;</span><br>Date: =D0=B2=D1=82,=
 12 =D1=8F=D0=BD=D0=B2. 2021 =D0=B3. =D0=B2 17:43<br>Subject: Re: [yocto] r=
emove particular device from QB_OPT_APPEND: per-word manner<br>To: Sergey I=
vanov &lt;<a href=3D"mailto:icegood1980@gmail.com">icegood1980@gmail.com</a=
>&gt;<br></div><br><br>Rah, please answer to all always (keep the mailing l=
ist in Cc). I&#39;ll<br>
bounce the mail on the mailing list for you now.<br>
<br>
On Tue, Jan 12, 2021 at 05:27:58PM +0200, Sergey Ivanov wrote:<br>
&gt; Thanks, it should work, provided...<br>
&gt; Am i understand correctly that all append-remove stuff works BEFORE<br=
>
&gt; anonymous python script?<br>
&gt; <br>
&gt; =D0=B2=D1=82, 12 =D1=8F=D0=BD=D0=B2. 2021 =D0=B3. =D0=B2 17:19, Quenti=
n Schulz &lt;<br>
&gt; <a href=3D"mailto:quentin.schulz@streamunlimited.com" target=3D"_blank=
">quentin.schulz@streamunlimited.com</a>&gt;:<br>
&gt; <br>
&gt; &gt; Hi Sergey,<br>
&gt; &gt;<br>
&gt; &gt; On Tue, Jan 12, 2021 at 05:09:25PM +0200, Sergey Ivanov wrote:<br=
>
&gt; &gt; &gt; Hi there.<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; I&#39;m working with arm64 target and i want to take control=
 on usb buses on<br>
&gt; &gt; it.<br>
&gt; &gt; &gt; What i&#39;m trying to do is tro remove both bus and hid dev=
ices on it via<br>
&gt; &gt; &gt; QB_OPT_APPEND_remove =3D &quot; -show-cursor -device qemu-xh=
ci -device<br>
&gt; &gt; usb-tablet<br>
&gt; &gt; &gt; -device usb-kbd &quot;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; Of course, it doesn&#39;t work properly since it removes ALL=
 occurrences of<br>
&gt; &gt; &gt; each word above. In particular, i had &quot;-device VGA,edid=
=3Don&quot; that i wanted<br>
&gt; &gt; &gt; to stay.<br>
&gt; &gt; &gt; Instead, i obtained &quot;VGA,edid=3Don&quot; that lead to b=
oot error. OK, it is<br>
&gt; &gt; clear.<br>
&gt; &gt; &gt; I also tried smth. like<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; QB_OPT_APPEND_remove =3D &quot; -show-cursor &#39;-device qe=
mu-xhci&#39; &#39;-device<br>
&gt; &gt; &gt; usb-tablet&#39; &#39;-device usb-kbd -device&#39; &quot;<br>
&gt; &gt; &gt;<br>
&gt; &gt; &gt; however nothing was removed here. Can i workaround given iss=
ue under<br>
&gt; &gt; *Zeus?*<br>
&gt; &gt;<br>
&gt; &gt; A &quot;hack&quot; I&#39;m thinking about right now would be to r=
emove those variables<br>
&gt; &gt; by hand in a python anonymous function. You want to expand the va=
riable<br>
&gt; &gt; first, then do some python regex or however you like, to remove w=
hat you<br>
&gt; &gt; want. Python anonymous functions are run at parsing time.<br>
&gt; &gt;<br>
&gt; &gt; Otherwise, if you know pretty much exactly what the content of th=
e<br>
&gt; &gt; variable should be for you, you can always use the following:<br>
&gt; &gt; QB_OPT_APPEND_&lt;my-machine&gt; =3D &quot;&lt;content&gt;&quot;<=
br>
&gt; &gt;<br>
&gt; &gt; Hope this can give you some ideas,<br>
&gt; &gt; Cheers,<br>
&gt; &gt; Quentin<br>
&gt; &gt;<br>
&gt; <br>
&gt; <br>
&gt; -- <br>
&gt; Kind regards,<br>
&gt; Sergey Ivanov<br>
<br>
-- <br>
StreamUnlimited Engineering GmbH<br>
High Tech Campus Vienna, Gutheil-Schoder-Gasse 10, 1100 Vienna, Austria<br>
Fax: +43 1 667 20 02 4401<br>
<a href=3D"mailto:quentin.schulz@streamunlimited.com" target=3D"_blank">que=
ntin.schulz@streamunlimited.com</a>, <a href=3D"http://www.streamunlimited.=
com" rel=3D"noreferrer" target=3D"_blank">www.streamunlimited.com</a><br>
</div><br clear=3D"all"><br>-- <br><div dir=3D"ltr" class=3D"gmail_signatur=
e" data-smartmail=3D"gmail_signature">Kind regards,<br>Sergey Ivanov</div><=
/div></div>

--00000000000005fe6005b8b5f53f--
