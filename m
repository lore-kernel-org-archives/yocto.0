Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.5416.1574506213275661721
 for <yocto@lists.yoctoproject.org>;
 Sat, 23 Nov 2019 02:50:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20150623.gappssmtp.com header.s=20150623 header.b=vGOaJaqG;
 spf=softfail (domain: sidebranch.com, ip: 140.211.169.56, mailfrom: leon@sidebranch.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7513E00E39; Sat, 23 Nov 2019 02:50:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_IMAGE_ONLY_24,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,T_REMOTE_IMAGE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.217.52 listed in list.dnswl.org]
	*  1.6 HTML_IMAGE_ONLY_24 BODY: HTML: images with 2000-2400 bytes of words
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D71A4E00DFB
	for <yocto@yoctoproject.org>; Sat, 23 Nov 2019 02:50:10 -0800 (PST)
Received: by mail-vs1-f52.google.com with SMTP id m5so2002767vsj.3
        for <yocto@yoctoproject.org>; Sat, 23 Nov 2019 02:50:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IyD0y/SxzGspuBa+N3uJmYJSu6KZ7JTxQrpCjLcIsIQ=;
        b=vGOaJaqGRiZI+0SdU4Tik5KRAjFt5prB4Zv8ndOSuDQhAv6DcEvLDAB2ZanG1+U/IG
         pV0TdM+uqrSTvHfBk3VzW6UyFzACwBdyo3HwoTppeLHH/+0uGsRp9nkL89yQWlncQ0y0
         FC+5NSepCC/sFXPaqUNWDzqdKsK5ui2gWWesiAFW6XQNl/HEF0EqL+mhBh50fTIDZ1IE
         CkM4mE1BUwz8SYPdG1u0wC2BTKgIgTpUnSBI6YLzx41FFP1UwMGY5HeO+Dxyb8ROwAt2
         ngdQ6dtuU+m2KLPkQKpOv4dpaCbedn/8CZHS67bN8+3YeusvMrwdCSVeBEIHGwJXR5nC
         g4qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IyD0y/SxzGspuBa+N3uJmYJSu6KZ7JTxQrpCjLcIsIQ=;
        b=gHtmfdoBORbqnolmqmhxb4tQ7kZhN36kBMmE0qau4tfXUjFx0YMviwltQYkd/0vrKk
         xxtBiB5bwOvdM2QPb9u9Z1AiU/F2WFL2CI/Hi5tLsvcj+i2oDAA+6U8PF8gW6Qh/rtj4
         lXZrcKRo8hac8zLMPpsCDSDzyt5a8IPVpYhh09aTS2hsSwiW8sO5knfoA4/mETRv6ahX
         1p3kZskhpX4eezdCENJyHLt1Z49MU4kgnXdFQ+9dd+B3d2biGd/yk97NmJcKMy8dJqAu
         GBkU57XGgSiHRwkvZ5ewvs/Nm+AUzkVKOWweRT7DCICNXTkOyxOmGmo4o+aLfINx4ZRq
         BojA==
X-Gm-Message-State: APjAAAWQpm/5Uc+5V+vUll1h3S4youTMDuT1qLHVzPMkiiooyfqkPEEv
	1V0jNiCbUeOXbry3JplEnTeX3pkdCvGAv0iKbdkKvGSM
X-Google-Smtp-Source: APXvYqzKNHoIGt+mfG3Ww0Lc0qIjFsR9tu96zEMeV2zRcm7brF/Kduq2/vFXEPiVI0tGzxG6r6L/QIs9BJOw9yvFedg=
X-Received: by 2002:a67:e296:: with SMTP id g22mr13136315vsf.233.1574506209782;
 Sat, 23 Nov 2019 02:50:09 -0800 (PST)
MIME-Version: 1.0
References: <26fca14f1bd94e8d285c466d4f98f731@iwavesystems.com> <14b9f8c2-6343-4ff0-b85c-bbca61829b06@www.fastmail.com>
In-Reply-To: <14b9f8c2-6343-4ff0-b85c-bbca61829b06@www.fastmail.com>
From: "Leon Woestenberg" <leon@sidebranch.com>
Date: Sat, 23 Nov 2019 11:49:58 +0100
Message-ID: <CAMjhiJhrv-GHsYGxip2Msy9x3Xak2D_1CZAGfZt6tbckpwh8fQ@mail.gmail.com>
Subject: Re: [yocto] Memory Tests in U-Boot
To: Paul Barker <paul@betafive.co.uk>
Cc: Yocto discussion list <yocto@yoctoproject.org>, devendra.devadiga@iwavesystems.com
Content-Type: multipart/alternative; boundary="00000000000054d1430598014b3b"

--00000000000054d1430598014b3b
Content-Type: text/plain; charset="UTF-8"

Hello,

On Sat, 23 Nov 2019 at 00:40, Paul Barker <paul@betafive.co.uk> wrote:

> On Tue, 19 Nov 2019, at 12:28, devendra.devadiga@iwavesystems.com wrote:
> > Hi,
> >
> > In U-Boot I found some generic memory tests commands like mtest and post
> > tests. But I need complete DDR4 memory test with below algorithms:
> >
> > * Checkerboard Test
> > * March C- Test
> > * Neighborhood Pattern Sensitive Fault
> >
>
We found stressapptest (by Google) the most reliable test for DDR
calibration problems.

We have seen unreliable systems pass other memory tests such as in U-Boot.

Regards, Leon

>
> --
Leon Woestenberg
leon@sidebranch.com
T: +31 40 711 42 76
M: +31 6 472 30 372

Sidebranch
Embedded Systems
Eindhoven, The Netherlands
http://www.sidebranch.com

--00000000000054d1430598014b3b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><div dir=3D"auto">Hello,</div></div><div><br><div class=3D"gmail_quote=
"><div dir=3D"ltr" class=3D"gmail_attr">On Sat, 23 Nov 2019 at 00:40, Paul =
Barker &lt;<a href=3D"mailto:paul@betafive.co.uk">paul@betafive.co.uk</a>&g=
t; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex">On Tue, 19 Nov 2019, at 1=
2:28, <a href=3D"mailto:devendra.devadiga@iwavesystems.com" target=3D"_blan=
k">devendra.devadiga@iwavesystems.com</a> wrote:<br>
&gt; Hi,<br>
&gt; <br>
&gt; In U-Boot I found some generic memory tests commands like mtest and po=
st <br>
&gt; tests. But I need complete DDR4 memory test with below algorithms:<br>
&gt; <br>
&gt; * Checkerboard Test<br>
&gt; * March C- Test<br>
&gt; * Neighborhood Pattern Sensitive Fault<br>
&gt; <br></blockquote><div dir=3D"auto">We found stressapptest (by Google) =
the most reliable test for DDR calibration problems.</div><div dir=3D"auto"=
><br></div><div dir=3D"auto">We have seen unreliable systems pass other mem=
ory tests such as in U-Boot.</div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">Regards, Leon</div><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><br>
</blockquote></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" =
data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><div style=3D"color:rgb=
(0,0,0);font-family:Helvetica">Leon Woestenberg</div><div style=3D"color:rg=
b(0,0,0);font-family:Helvetica"><a href=3D"mailto:leon@sidebranch.com" styl=
e=3D"color:rgb(17,85,204)" target=3D"_blank">leon@sidebranch.com</a></div><=
div style=3D"color:rgb(0,0,0);font-family:Helvetica"><div>T: +31 40 711 42 =
76</div><div>M: +31 6 472 30 372</div></div><div style=3D"color:rgb(0,0,0);=
font-family:Helvetica"><br></div><div style=3D"color:rgb(0,0,0);font-family=
:Helvetica">Sidebranch</div><div style=3D"color:rgb(0,0,0);font-family:Helv=
etica">Embedded Systems</div><div style=3D"color:rgb(0,0,0);font-family:Hel=
vetica">Eindhoven, The Netherlands</div><a href=3D"http://www.sidebranch.co=
m/" style=3D"color:rgb(17,85,204);font-family:Helvetica" target=3D"_blank">=
http://www.sidebranch.com</a><div><br></div><div><img src=3D"http://www.sid=
ebranch.nl/sites/default/files/images/unnamed.png" style=3D"color:rgb(0,0,0=
);font-family:Helvetica"><br></div><div><br><div><br></div></div></div></di=
v>

--00000000000054d1430598014b3b--
