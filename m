Received: from mail-qk1-f170.google.com (mail-qk1-f170.google.com [209.85.222.170])
 by mx.groups.io with SMTP id smtpd.web12.1501.1580922525898293150
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Feb 2020 09:08:46 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=vbxdXOOw;
 spf=pass (domain: linaro.org, ip: 209.85.222.170, mailfrom: ryan.harkin@linaro.org)
Received: by mail-qk1-f170.google.com with SMTP id w25so2566143qki.3
        for <yocto@lists.yoctoproject.org>; Wed, 05 Feb 2020 09:08:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=b3tr36j17PoqafsmFNP8sBsyx5T7pf4hREBW/7XbGFs=;
        b=vbxdXOOw8ZzOhFLOdTCd8+4StlyLw1ODL+023Hkz4cmGawdmjVptIO3BDjNscO+2JJ
         No3RPTQlpp1f5vpGRq5nfrlz247dNA/k8zQhs0EGw+6SLmm85MDxHxYqf5cn6DAFgivJ
         T41TZ50E2bXwBiyZGbAc2iu/rSLOCGKk+PekRbKomuCWJ+2Nai5uaOW8qbrzgSKsvefN
         u1mDrQv8Y2zQx8qYo9I3iUOxtcVMEFl5LclrZYC9a4VI4Xqv0nF4zPkOkmE+Jkh2r3f5
         EMd5ONljhDZJ6pQUHs2hDguumQCInAfat8jOutlSUYuCIYIeHNyL34KRsnwIZlZTcObC
         th1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=b3tr36j17PoqafsmFNP8sBsyx5T7pf4hREBW/7XbGFs=;
        b=OiIo000LR/YzqbbJjQV3l5N0yL7vimoIQz0lhb1tR3OI7Wq3maMr8/lzlPDTjSIfYG
         mzuP9dObAltd6PzOLPk1GbTLDjnLtxncBn2s1TO88xe7eJ0jTXWIDjsroTvYDQB/0Y4C
         bvDSnja1jg2os9EMN3cbnOTpan7I7pVj1IblreazyRFFHZ9yfkCgykjxoBbSH8FMh2z5
         sD/1eknLYTw0OMSbflmtZnacFbVjWaAwWrUKROkTnSRr6nn+wLJs/TAwgEIbA2ta+xBy
         Lzsos+wbJK7RgsjIFKksrvE9+yzVWLZOBI+nAgt4Nol/zt6M8VA9RgN8WMP1ovmrLb0G
         gWyQ==
X-Gm-Message-State: APjAAAXoa6kpNOoOcmCyMCtXBHIe7AnL9DWJG/tIzvujenrNccGtVFgI
	wBEyPC+ub/p1F7dCXeWSENMce3Ofgag+xOnOczHE2MhDqdE=
X-Google-Smtp-Source: APXvYqwZ1LzcYGkkYGRpjjxF7tcuQQ7SdsKuVXwuzXPGHYDy4nWVyaeSyEbu3GUCfyOuLEtpbDIr6I6lw02hoS6GWmY=
X-Received: by 2002:a37:488f:: with SMTP id v137mr33062671qka.16.1580922524935;
 Wed, 05 Feb 2020 09:08:44 -0800 (PST)
MIME-Version: 1.0
References: <CAD0U-h+q4k-EywV8XEfZ2nsoHoRQaNyRy77E2kRLuos8dAmNTA@mail.gmail.com>
 <20200204085153.6wsex564rtrknfuq@qschulz> <CAD0U-h+0L_X3mS4ttcPSiRwfM7TJtPgg-hutEg0Nfp_UENL41w@mail.gmail.com>
 <20200204161517.hopwyv5nbb7yytsb@qschulz> <CAD0U-h+mpWJ5qQX16N9Z+M19fS4kN+LGUofnCOKFqmtmT+a2_Q@mail.gmail.com>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.949ef384-8293-46b8-903f-40a477c056ae.fbe4d9d0-dcb7-4337-a01d-e3e508e8a194@emailsignatures365.codetwo.com>
 <1b153bce-a66a-45ee-a5c6-963ea6fb1c82.0d2bd5fa-15cc-4b27-b94e-83614f9e5b38.21b88c2b-79fe-440c-8064-5258041b6893@emailsignatures365.codetwo.com>
 <20200204163932.zuzw6iuntxdy2r5s@qschulz> <43191ed2-9653-a4f8-4b2a-1bc655e80953@topicproducts.com>
In-Reply-To: <43191ed2-9653-a4f8-4b2a-1bc655e80953@topicproducts.com>
From: "Ryan Harkin" <ryan.harkin@linaro.org>
Date: Wed, 5 Feb 2020 17:08:33 +0000
Message-ID: <CAD0U-hJTSUVoG9qnOek0Fz+F9Xk91f+YaR3kuc19uvFkdZF9BQ@mail.gmail.com>
Subject: Re: [yocto] Building and selecting multiple kernel versions
To: Mike Looijmans <mike.looijmans@topicproducts.com>
Cc: Quentin Schulz <quentin.schulz@streamunlimited.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000843e9e059dd7354d"

--000000000000843e9e059dd7354d
Content-Type: text/plain; charset="UTF-8"

On Wed, 5 Feb 2020 at 10:02, Mike Looijmans <
mike.looijmans@topicproducts.com> wrote:

>
> Met vriendelijke groet / kind regards,
>
> Mike Looijmans
> System Expert
>
>
> TOPIC Embedded Products B.V.
> Materiaalweg 4, 5681 RJ Best
> The Netherlands
>
> T: +31 (0) 499 33 69 69
> E: mike.looijmans@topicproducts.com
> W: www.topicproducts.com
>
> Please consider the environment before printing this e-mail
> On 04-02-2020 17:39, Quentin Schulz via Lists.Yoctoproject.Org wrote:
> > On Tue, Feb 04, 2020 at 04:32:34PM +0000, Ryan Harkin wrote:
> > [...]
> >>
> >> Actually, it does work like this:
> >>
> >> export MACHINE=xyz
> >> bitbake image
> >>
> >> But not like this:
> >>
> >> MACHINE=xyz bitbake image
> >>
> >> No big deal, but I expected the last one to work.
> >>
> >
> > I use it every day. I don't think we're doing something special (well,
> > for that particular thing :D), so there's at least a way to make it work
> > for sure :)
>
> Same here, both interactive and in scripts.
>
> Since the first works, you already have done this:
> export BB_ENV_EXTRAWHITE=MACHINE
>
> Maybe there's something funky in your shell?
> You could check with a command like:
> MACHINE=x env | grep MACHINE
>

 It looks "normal":

$ MACHINE=x env | grep MACHINE
MACHINE=x


> Of maybe somebody wrote a bitbake wrapper for you that forks python
> instead of
> exec'ing it?
>

No, it's the regular bitbake.

I'm not too concerned about this problem anyway, I'm sure if it's a problem
for me, I can work out who is overriding it.

Thanks,
Ryan

--000000000000843e9e059dd7354d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, 5 Feb 2020 at 10:02, Mike Loo=
ijmans &lt;<a href=3D"mailto:mike.looijmans@topicproducts.com">mike.looijma=
ns@topicproducts.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex"><br>
Met vriendelijke groet / kind regards,<br>
<br>
Mike Looijmans<br>
System Expert<br>
<br>
<br>
TOPIC Embedded Products B.V.<br>
Materiaalweg 4, 5681 RJ Best<br>
The Netherlands<br>
<br>
T: +31 (0) 499 33 69 69<br>
E: <a href=3D"mailto:mike.looijmans@topicproducts.com" target=3D"_blank">mi=
ke.looijmans@topicproducts.com</a><br>
W: <a href=3D"http://www.topicproducts.com" rel=3D"noreferrer" target=3D"_b=
lank">www.topicproducts.com</a><br>
<br>
Please consider the environment before printing this e-mail<br>
On 04-02-2020 17:39, Quentin Schulz via <a href=3D"http://Lists.Yoctoprojec=
t.Org" rel=3D"noreferrer" target=3D"_blank">Lists.Yoctoproject.Org</a> wrot=
e:<br>
&gt; On Tue, Feb 04, 2020 at 04:32:34PM +0000, Ryan Harkin wrote:<br>
&gt; [...]<br>
&gt;&gt;<br>
&gt;&gt; Actually, it does work like this:<br>
&gt;&gt;<br>
&gt;&gt; export MACHINE=3Dxyz<br>
&gt;&gt; bitbake image<br>
&gt;&gt;<br>
&gt;&gt; But not like this:<br>
&gt;&gt;<br>
&gt;&gt; MACHINE=3Dxyz bitbake image<br>
&gt;&gt;<br>
&gt;&gt; No big deal, but I expected the last one to work.<br>
&gt;&gt;<br>
&gt; <br>
&gt; I use it every day. I don&#39;t think we&#39;re doing something specia=
l (well,<br>
&gt; for that particular thing :D), so there&#39;s at least a way to make i=
t work<br>
&gt; for sure :)<br>
<br>
Same here, both interactive and in scripts.<br>
<br>
Since the first works, you already have done this:<br>
export BB_ENV_EXTRAWHITE=3DMACHINE<br>
<br>
Maybe there&#39;s something funky in your shell?<br>
You could check with a command like:<br>
MACHINE=3Dx env | grep MACHINE<br></blockquote><div><br></div><div>=C2=A0It=
 looks &quot;normal&quot;:</div><div><br></div><div>$ MACHINE=3Dx env | gre=
p MACHINE<br>MACHINE=3Dx<br></div><div><br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex">
<br>
Of maybe somebody wrote a bitbake wrapper for you that forks python instead=
 of <br>
exec&#39;ing it?<br></blockquote><div><br></div><div>No, it&#39;s the regul=
ar bitbake.</div><div><br></div><div>I&#39;m not too concerned about this p=
roblem anyway, I&#39;m sure if it&#39;s a problem for me, I can work out wh=
o is overriding it.=C2=A0</div><div><br></div><div>Thanks,=C2=A0</div><div>=
Ryan</div><div><br></div></div></div>

--000000000000843e9e059dd7354d--
