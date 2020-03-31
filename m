Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com [209.85.217.52])
 by mx.groups.io with SMTP id smtpd.web12.4125.1585683294569073906
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Mar 2020 12:34:54 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=dOGCryqB;
 spf=pass (domain: gmail.com, ip: 209.85.217.52, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f52.google.com with SMTP id u11so14317002vsg.2
        for <yocto@lists.yoctoproject.org>; Tue, 31 Mar 2020 12:34:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QuDu3bWIH5f/lGtwz/g/v6yp88HWCJ/PbFh2jdFkHBc=;
        b=dOGCryqBgmPh6N5RepGN/JJJ2RquCPZm4K2m80ozG51IzQVZWoeb8O9ayk1z9CIBGU
         Mjm2KBIzMgwG4PbvB8dE9GmEb7t5MX7IZVFpfUXGh0rmCkUhkI4Sf3wuYaUOCZ8nbuxj
         xRNW11DIFA7GsusQXoam/OqMQJNGXxRFkBts+omC0VkzKQvLT/8V26OB/kb8BzRWXO6s
         3W9sgDgRRFjxDJiObjFlvloWZcjRHrTQ6VmbK6g/5qdw6LvPsXgQ4O0eqyPo5eDoSLTV
         T8+ON6LKwEBnHRiz55PbB8Rw+Auo1txbumPwG4E0rf873mJ0V+aaUiA8fUQVLXtT9Ntd
         0CTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QuDu3bWIH5f/lGtwz/g/v6yp88HWCJ/PbFh2jdFkHBc=;
        b=UQyFL+0XK1XeD8NlAiqyTrilVFWfLpPm55B2YZp1urbNF5zCOTA19N2ZiKVP7e6epK
         n5S09o5V1gYIJ+NDV7TGZXoiaByBFzrfsa8SZcKuF8ZoYD7jRG0G9+YXsFkAGSw/1Hjd
         Gr8wK/WjpolYmIpQXmI/H0vau4NILIAKF0LiWB3w9JmUzZNNZN+fzXenkl1CK7iHO15B
         +7QzPRrMrlsknD0fZ5XzgOg8W1qwavfjY2tlb0qPkZekbo1wBI4cfpOiYcHZIGv2iR66
         q8ZJomZdeZjLM3cttYh6njZUoZCelHJokuSCi/4vNl/n6iqtXx4Zj0OXEVPwdSE6ShwJ
         2QQA==
X-Gm-Message-State: AGi0PuZfr7OlpgIc06J1cWi6SxcHejAxLk4BeMj1Ymk1txXS6IDQGW48
	V3z+fdauez55bAUTDsQEQxCvcL7sZ9Sq2lWvgl8=
X-Google-Smtp-Source: APiQypJV+nORFSmAwzr2T5n7/6OpfoBTXcuyG/eaKpplCk+pVo6MJ/+U4HSbpjOgC9EqACQtg/ZOy4rDzG8dDu6O9AI=
X-Received: by 2002:a05:6102:31b7:: with SMTP id d23mr13803132vsh.25.1585683292804;
 Tue, 31 Mar 2020 12:34:52 -0700 (PDT)
MIME-Version: 1.0
References: <76CA873A-5C59-4578-BCFB-61E21B116DE2@gmail.com>
In-Reply-To: <76CA873A-5C59-4578-BCFB-61E21B116DE2@gmail.com>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Tue, 31 Mar 2020 21:34:41 +0200
Message-ID: <CANNYZj9=Sm_sG-jqen_A0TeKzkKS-fNgR0b1h2eN6MocGSyypw@mail.gmail.com>
Subject: Re: [yocto] boost monthly download limits
To: Andrew Geissler <geissonator@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000064d7f805a22ba97a"

--00000000000064d7f805a22ba97a
Content-Type: text/plain; charset="UTF-8"

I wouldn't be super concerned about that, as Yocto servers carry copies of
oe-core tarballs, and there is a fallback for that scenario. If it does
occur, we should explore alternatives, but there's no need to panic.

Alex

On Tue, 31 Mar 2020 at 21:07, Andrew Geissler <geissonator@gmail.com> wrote:

> Greetings,
>
> Recently, the OpenBMC project started to hit
> https://github.com/boostorg/boost/issues/299#issuecomment-593064251.
> Basically
> the site that hosts the boost packages has a monthly download limit and
> once
> hit, starts to fail.
>
> There was a commit last year,
>
> https://github.com/openembedded/openembedded-core/commit/810aded01fc2ae2c27c2573135c20947453e50c6
> which moved from using sourceforge to dl.bintray.com. I don't see a
> reason in
> the commit message but I suspect it was because sourceforge for some
> reason did
> not mirror 1.71.0. They have 1.70.0 and 1.72.0 but not 1.71.0. I opened
>
> https://sourceforge.net/p/boost/discussion/23622/thread/4fe1cce13b/?limit=25#7d3e
> to try and understand why this was.
>
> Given the download limitations of dl.bintray.com, does it make sense to
> try
> and move back to sourceforge? Someone also had recommended we just grab
> from github (i.e.
> https://github.com/boostorg/boost/archive/boost-1.71.0.tar.gz)
>
> This issue will reset on the first of the month but could come back and
> bite
> us again in the future. Anyone else hit this or looking into it?
>
> Andrew
>

--00000000000064d7f805a22ba97a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I wouldn&#39;t be super concerned about that, as Yoct=
o servers carry copies of oe-core tarballs, and there is a fallback for tha=
t scenario. If it does occur, we should explore alternatives, but there&#39=
;s no need to panic.</div><div><br></div><div>Alex<br></div></div><br><div =
class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 31 Mar =
2020 at 21:07, Andrew Geissler &lt;<a href=3D"mailto:geissonator@gmail.com"=
>geissonator@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_q=
uote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,2=
04);padding-left:1ex">Greetings,<br>
<br>
Recently, the OpenBMC project started to hit<br>
<a href=3D"https://github.com/boostorg/boost/issues/299#issuecomment-59306=
4251" rel=3D"noreferrer" target=3D"_blank">https://github.com/boostorg/boos=
t/issues/299#issuecomment-593064251</a>. Basically<br>
the site that hosts the boost packages has a monthly download limit and on=
ce<br>
hit, starts to fail.<br>
<br>
There was a commit last year,<br>
<a href=3D"https://github.com/openembedded/openembedded-core/commit/810ade=
d01fc2ae2c27c2573135c20947453e50c6" rel=3D"noreferrer" target=3D"_blank">ht=
tps://github.com/openembedded/openembedded-core/commit/810aded01fc2ae2c27c2=
573135c20947453e50c6</a><br>
which moved from using sourceforge to <a href=3D"http://dl.bintray.com" re=
l=3D"noreferrer" target=3D"_blank">dl.bintray.com</a>. I don&#39;t see a re=
ason in<br>
the commit message but I suspect it was because sourceforge for some reaso=
n did<br>
not mirror 1.71.0. They have 1.70.0 and 1.72.0 but not 1.71.0. I opened<br=
>
<a href=3D"https://sourceforge.net/p/boost/discussion/23622/thread/4fe1cce=
13b/?limit=3D25#7d3e" rel=3D"noreferrer" target=3D"_blank">https://sourcefo=
rge.net/p/boost/discussion/23622/thread/4fe1cce13b/?limit=3D25#7d3e</a><br>
to try and understand why this was.<br>
<br>
Given the download limitations of <a href=3D"http://dl.bintray.com" rel=3D=
"noreferrer" target=3D"_blank">dl.bintray.com</a>, does it make sense to tr=
y<br>
and move back to sourceforge? Someone also had recommended we just grab<br=
>
from github (i.e. <a href=3D"https://github.com/boostorg/boost/archive/boo=
st-1.71.0.tar.gz" rel=3D"noreferrer" target=3D"_blank">https://github.com/b=
oostorg/boost/archive/boost-1.71.0.tar.gz</a>)<br>
<br>
This issue will reset on the first of the month but could come back and bi=
te<br>
us again in the future. Anyone else hit this or looking into it?<br>
<br>
Andrew<br>
</blockquote></div>

--00000000000064d7f805a22ba97a--
