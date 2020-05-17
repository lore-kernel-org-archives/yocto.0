Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.15291.1589673642648609262
 for <yocto@lists.yoctoproject.org>;
 Sat, 16 May 2020 17:00:42 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TXqjkjOS;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: ankur.tyagi85@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31270E01B79; Sat, 16 May 2020 17:00:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (ankur.tyagi85[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5CE0E01B3E
	for <yocto@yoctoproject.org>; Sat, 16 May 2020 17:00:39 -0700 (PDT)
Received: by mail-ed1-f46.google.com with SMTP id k19so5341065edv.9
        for <yocto@yoctoproject.org>; Sat, 16 May 2020 17:00:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KxUwGa3D4o/62A1PwPjTHf36XwpbPEpimqfDiiJt+LM=;
        b=TXqjkjOSDjWbe7jF2DVnIAG2zA7AMiy4y+wUhwiri4TTHgD/PCV/MmVhk8I3ELAGkI
         Lg/vB1YsFZ4dOp96rSv6a5zTs9ks8FkimWFeGYEX4m7PvakRcEcK9E3h4/Go9kMVGpnG
         uAbmZpTa3LOV5uWu9+1Kg6SrCvm/QGXMDqVhJ/DpyomiYe+rlaZwCVt5TkDGkUYGxg/4
         Ov7gHLLEH8fC+IA+X/S7GNl63bONJi5cU/sjlY/4EiDiqjz4wdCoEtFSxWMSdoSm/RoA
         7r9SbFtAbxcZj8/PeuAQccU8stB9uomByc2FgyTZdFWIJ9mYe0vqc1ySGdZ8pj/jxtzT
         URZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KxUwGa3D4o/62A1PwPjTHf36XwpbPEpimqfDiiJt+LM=;
        b=aAHVosOpKuD1c70OpDj8+r0BK/2686Mgy6q1w/QrMS+DNgrFXgmGbWKBYoeN3QiUE7
         hluiOq+VctW65mkBdYvR0EbzWrGFbZT0d6RAKxr/b3/61ke2FsQ8xA/jCqp1ZT4J0gs/
         RS+RqizTbor4AerX4TG32Y2aDa9o0NEqxPz9Kg7uRMdGSNEhlUjFUKaHLAm9xsZ5p/Wk
         2xEsKlDnTpTHaGMz8GpA+tdvBNktidhPXon+Hxjn6/HClLsYZSkk/ewVkO+krQQrtF3m
         g/TwHSepvc7p5OoiT/swLgfua1QKucvdl/SrQDoDE2ys79MRiNR2pkHmccweFKLivZJ0
         YoLw==
X-Gm-Message-State: AOAM531AkaMjQ8zeQ4yqnP0Y2Yi+cXvzoSYPldpsZwP6qigWjveMjdtX
	+nlQ/cDKIKmqozrRF/cBmUaxOM1Tc5NUg51LQAu3YQ==
X-Google-Smtp-Source: ABdhPJz/gg80aUypPLjngQ2650IyWutc6PNawDOFwnmqOo1OdWBUG63n0P/0r2yVELypsXJg4LJ515LPvgR9oD/2mnY=
X-Received: by 2002:aa7:c312:: with SMTP id l18mr191412edq.161.1589673638381;
 Sat, 16 May 2020 17:00:38 -0700 (PDT)
MIME-Version: 1.0
References: <f756b087-c3e3-3a47-171e-bc72421ff48a@balister.org> <3eaeb926-20f3-d032-c0fa-25c1af92a235@koansoftware.com>
In-Reply-To: <3eaeb926-20f3-d032-c0fa-25c1af92a235@koansoftware.com>
From: "Ankur Tyagi" <ankur.tyagi85@gmail.com>
Date: Sun, 17 May 2020 12:02:26 +1200
Message-ID: <CADySD0HZEAHjQZcfXJYL0L+33VTj9HOiATJwOT2ysiBy8Th=4w@mail.gmail.com>
Subject: Re: [oe] OpenEmbedded Happy Hour
To: m.cavallini@koansoftware.com
Cc: Philip Balister <philip@balister.org>, openembedded-devel@lists.openembedded.org, 
	openembedded-core <openembedded-core@lists.openembedded.org>, 
	"openembedded-members@lists.openembedded.org" <openembedded-members@lists.openembedded.org>, 
	Yocto Project <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000864e0805a5ccbc59"

--000000000000864e0805a5ccbc59
Content-Type: text/plain; charset="UTF-8"

See you all from down under !

Cheers
Ankur

On Sun, May 17, 2020, 2:27 AM Marco Cavallini [KOAN] <
m.cavallini@koansoftware.com> wrote:

> On 15/05/20 17:56, Philip Balister wrote:
> > I've made a wiki page to track these:
> >
> > https://www.openembedded.org/wiki/Happy_Hours
> >
> > Then next one is scheduled for 2100 UTC on May 27. This is late evening
> > for Europe and morning for New Zealand, so hopefully we see some
> > different faces. The meeting info is on the wiki page.
> >
> > There is no set agenda, so bring some projects to talk about with the
> > community.
> >
> >
> > Philip
> >
>
>
> https://www.timeanddate.com/worldclock/fixedtime.html?msg=OpenEmbedded+Happy+Hour+May+27&iso=20200527T21&p1=%3A&ah=1
>
> --
> Marco
>
> 
>

--000000000000864e0805a5ccbc59
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">See you all from down under !<div dir=3D"auto"><br></div>=
<div dir=3D"auto">Cheers</div><div dir=3D"auto">Ankur</div></div><br><div c=
lass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Sun, May 17, =
2020, 2:27 AM Marco Cavallini [KOAN] &lt;<a href=3D"mailto:m.cavallini@koan=
software.com">m.cavallini@koansoftware.com</a>&gt; wrote:<br></div><blockqu=
ote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc s=
olid;padding-left:1ex">On 15/05/20 17:56, Philip Balister wrote:<br>
&gt; I&#39;ve made a wiki page to track these:<br>
&gt;<br>
&gt; <a href=3D"https://www.openembedded.org/wiki/Happy_Hours" rel=3D"nore=
ferrer noreferrer" target=3D"_blank">https://www.openembedded.org/wiki/Happ=
y_Hours</a><br>
&gt;<br>
&gt; Then next one is scheduled for 2100 UTC on May 27. This is late eveni=
ng<br>
&gt; for Europe and morning for New Zealand, so hopefully we see some<br>
&gt; different faces. The meeting info is on the wiki page.<br>
&gt;<br>
&gt; There is no set agenda, so bring some projects to talk about with the=
<br>
&gt; community.<br>
&gt;<br>
&gt;<br>
&gt; Philip<br>
&gt;<br>
<br>
<a href=3D"https://www.timeanddate.com/worldclock/fixedtime.html?msg=3DOpe=
nEmbedded+Happy+Hour+May+27&amp;iso=3D20200527T21&amp;p1=3D%3A&amp;ah=3D1" =
rel=3D"noreferrer noreferrer" target=3D"_blank">https://www.timeanddate.com=
/worldclock/fixedtime.html?msg=3DOpenEmbedded+Happy+Hour+May+27&amp;iso=3D2=
0200527T21&amp;p1=3D%3A&amp;ah=3D1</a><br>
<br>
--<br>
Marco<br>
<br>
<br>
</blockquote></div>

--000000000000864e0805a5ccbc59--
