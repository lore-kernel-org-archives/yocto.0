Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
 by mx.groups.io with SMTP id smtpd.web12.7630.1585299164233243630
 for <yocto@lists.yoctoproject.org>;
 Fri, 27 Mar 2020 01:52:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=UWUrtk8d;
 spf=pass (domain: gmail.com, ip: 209.85.217.49, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f49.google.com with SMTP id 184so4944131vsu.3
        for <yocto@lists.yoctoproject.org>; Fri, 27 Mar 2020 01:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+pmnrqHBn67+/HquAzu5gy8CxxBq3r7W0qPmR7Z8COM=;
        b=UWUrtk8dSJ92uOeT1KpiMzsYaQbANieeGgSpIMJir9hsS/eKSLVpTfGN4nK+QvUrxC
         GFEvEXJ/veu2odFdSEY4S9pFHhenuvRXnyJm0SNY3ukILaxdiKaXOVuYV6P4YSy2dJ58
         aZe0ft2F1oyCGMFWI5bNT6HL+OTVZdda60krhI1bZJUU1JZZvRvQQN8mlk/NTJTh3SBA
         5Ajci1o7R4FigjXBLXXkBtcTeU4eR7bmRbBGzAMwMABmIgNkAXP5w3fc6vFNd+eZ2ETl
         CDLMM8sSPcWfkxQAOPM+LBFPctmF/7WqGtGbFP+vKL1cE8qY3Xw2lck7Rrla7SYQPBcZ
         7VOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+pmnrqHBn67+/HquAzu5gy8CxxBq3r7W0qPmR7Z8COM=;
        b=V8YTsr+l93Y1hhLu6jgIv55VfCSQIirmZwfnhEuvMV8Z46BHCShDKWRlsZ2BEkipYV
         KgPexUXL8r+o5Z9/tNkNo7a4S0lo2PVUqIh6YEdPMZpcuWithe6t99MCkr3Mc9iztcsy
         Yh0Hnpl6N5FGPoWGYshuOZl/R453w83iugEzGBXprn62yolMUISCV4t2ps2tbRwMmO6E
         bEADiJ4SO5lzDGHgaa2pi+UUm2IUfgsnyS24YnjwgnZUtPWoPXmRTF29kKxAV4IsHs48
         5x1k80a0wOBVOl+iICOqiDPQS4Av7bfG3Pc6nDke6BeOuQ/BuwYKBMQ98HzQmL2ESUzn
         sCYw==
X-Gm-Message-State: ANhLgQ33ncsAvS9TFF2fp8wRyQlPowOtD//fLcAAczSvWuAZKjkLBcWH
	pY6vvbWqnU+ykk03K+wCuJq7ewB3SXsWpc/pG9sw+8f0
X-Google-Smtp-Source: ADFU+vtsQ7MDwjQjfMqob/4rLMxRIkimObVsk4UgpijNuiYNaxw0oPcXnqJ9Cwe2gKqEq6Iw8UWIo2sUMeQR9sH/cz4=
X-Received: by 2002:a67:d03:: with SMTP id 3mr9901003vsn.35.1585299163292;
 Fri, 27 Mar 2020 01:52:43 -0700 (PDT)
MIME-Version: 1.0
References: <WYeu.1585296864121008672.xhQJ@lists.yoctoproject.org>
In-Reply-To: <WYeu.1585296864121008672.xhQJ@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Fri, 27 Mar 2020 09:52:31 +0100
Message-ID: <CANNYZj9DCZ4+dNHP9Sy4gSNURHYdbUJ6BUGwEN1GkjKD9AgDKw@mail.gmail.com>
Subject: Re: [yocto] Mechanism behind pkg_postinst_ontarget_${PN} #yocto
To: stefan.wenninger@evopro-ag.de
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000007da7e105a1d239de"

--0000000000007da7e105a1d239de
Content-Type: text/plain; charset="UTF-8"

You can start by inspecting your image's rootfs, the scripts to run on
first boot should be in /etc/ somewhere. Are they?

Alex

On Fri, 27 Mar 2020 at 09:14, <stefan.wenninger@evopro-ag.de> wrote:

> Hi,
> I am trying to execute a few shell commands the first time a new image
> boots. The Yocto built-in mechanism for that should be
> *pkg_postinst_ontarget_${PN}.*However I can not get the commands I put
> within that function to execute. I am having a hard time trying to figure
> out what the problem is.
> I am installing the new image to my board via SWUpdate. My suspicion is
> that the mechanism behind the *pkg_postinst_ontarget_${PN}* is somehow
> hindered by the SWUpdate utility.
> I could imagine that whatever mechanism is used might me
> surpressed/ignored by the SWUpdate process.
>
> That is why im asking about the exact mechanism within Linux that is used
> to execute the contents of the *pkg_postinst_ontarget_${PN}* function on
> first boot.
>
> As a reference:
> Yocto version: sumo
> pkg_postinst_ontarget_${PN} () {
> #!/bin/sh
> file=$D/home/root/test.txt
> printf "hello world\n" > $file
> }
>
> Thanks in advance
> Stefan Wenninger 
>

--0000000000007da7e105a1d239de
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You can start by inspecting your image&#39;s rootfs, =
the scripts to run on first boot should be in /etc/ somewhere. Are they?</d=
iv><div><br></div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Fri, 27 Mar 2020 at 09:14, &lt;<a h=
ref=3D"mailto:stefan.wenninger@evopro-ag.de">stefan.wenninger@evopro-ag.de<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">H=
i,<br>I am trying to execute a few shell commands the first time a new imag=
e boots. The Yocto built-in mechanism for that should be <em>pkg_postinst_o=
ntarget_${PN}.<br></em>However I can not get the commands I put within that=
 function to execute. I am having a hard time trying to figure out what the=
 problem is.<br>I am installing the new image to my board via SWUpdate.=C2=
=A0My suspicion is that the mechanism behind the <em>pkg_postinst_ontarget=
_${PN}</em> is somehow hindered by the SWUpdate utility.<br>I could imagine=
 that whatever mechanism is used might me surpressed/ignored by the SWUpdat=
e process.<br><br>That is why im asking about the exact mechanism within Li=
nux that is used to execute the contents of the=C2=A0<em>pkg_postinst_ontar=
get_${PN}</em> function on first boot.<br><br>As a reference:<br>Yocto vers=
ion: sumo<br>pkg_postinst_ontarget_${PN} () {
<div style=3D"padding-left:30px">#!/bin/sh<br>file=3D$D/home/root/test.txt=
<br>printf &quot;hello world\n&quot; &gt; $file</div>
}<br><br>Thanks in advance<br>Stefan Wenninger
<br>
</blockquote></div>

--0000000000007da7e105a1d239de--
