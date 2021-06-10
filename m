Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com [209.85.221.174])
 by mx.groups.io with SMTP id smtpd.web09.7445.1623315478238700387
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Jun 2021 01:57:58 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=BCXhY3bz;
 spf=pass (domain: gmail.com, ip: 209.85.221.174, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f174.google.com with SMTP id j19so1600689vkj.0
        for <yocto@lists.yoctoproject.org>; Thu, 10 Jun 2021 01:57:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vwZhJ2zB8livAyE8da91SHO0UBB5mQ7XcByR02KEdVk=;
        b=BCXhY3bzW+3dHNteu6cUSgBWM2anLYVAVRvf3ytVfvLxOZf0o07ii5RaYSqEKa5tCh
         66L1mwPa5+y7jJVoSs0PD0Sz07YBgDT2JRzOGgy67fUKAi1WTXt2P5y3Gj2epDJvrUep
         xgi+O0PctBqI2gHb/L1/owau7AfYHiaEwRTGNXkEopQo9/SWkWMmV7IhKo3/2ZsjBsT8
         MOqVXFWbmEs3f/jtQMK5+HxJpLx+DF7IqAtBKf5H+I3gb1lZVsJhbhdNFhSdGWJ9jtnk
         9P7psysbGri8NBd8m6JTVIJE12QvGR/LbvnTKMFTg5J8CeezqXnjpExabSnLe2HpVqAi
         JIpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vwZhJ2zB8livAyE8da91SHO0UBB5mQ7XcByR02KEdVk=;
        b=VU6ombLQVVJTIWGllE3Qz1xgBxEW15oaULXKtMDkp3rkdbnu08w6SXp77+BgA22K9h
         ZPf3pBNeGo0dt3nbeFjHNxkOMTlx9Mw/WFGUogDQZ3GcaHmgov8DhL1L+3BPbQuXFO4W
         wey/JHVhoaGgrzB7dNlnRHwD2m5X7hxaDPOQNCa434sHh7fyOlykzMfdt9MriCoLMpdB
         ZjgdW7UdeqGDpYXbe2TX8waq+FSMvDzqmrhtATjtn9hQy3ELeuDoF2cdWrOykhWHR7Sp
         6NpuXQ9sT+18e8iJk5OTjnsF+GqkxsRlKIOL2kNCRp1bvDw1o9DLb6C+bKvVkMeFFoob
         LFEg==
X-Gm-Message-State: AOAM530+/cVJYM/qX2HxExduHnC1Hx7JtlLB0m6d6drWcMXG3vYlf0dn
	0sBln9kcjwnxwGh6wJ+x8eMcJ1rh++FfvRAeNVQ=
X-Google-Smtp-Source: ABdhPJzCHR9OnKxIjHQKzSry8dZDcTJp04tzRQLQMEARKGX/6JjcrqV0cCwpeF4q69lN3FDscQbEhuGzGJCfuBIvVdA=
X-Received: by 2002:ac5:cbc5:: with SMTP id h5mr3473582vkn.7.1623315477376;
 Thu, 10 Jun 2021 01:57:57 -0700 (PDT)
MIME-Version: 1.0
References: <98hT.1623132594082542882.bzIp@lists.yoctoproject.org>
In-Reply-To: <98hT.1623132594082542882.bzIp@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Thu, 10 Jun 2021 10:57:46 +0200
Message-ID: <CANNYZj9r_eZ8ZHEo801viRNuBekefmvKuqtLfKsKTQncw+uw-w@mail.gmail.com>
Subject: Re: [yocto] [meta-java] icedtea7 fetching error
To: George.Mocanu@rinftech.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>, 
	Richard Leitner <richard.leitner@skidata.com>
Content-Type: multipart/alternative; boundary="0000000000006332df05c4659694"

--0000000000006332df05c4659694
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I have the tarball. I think we should toss it somewhere safe and update the
recipe, as it is unlikely the old mercurial repo is coming back.

Suggestions?

Alex

On Tue, 8 Jun 2021 at 08:10, <George.Mocanu@rinftech.com> wrote:

> Hello,
>
>
> I am trying to build something that relies on meta-java, but it fails on
> do_fetch for the icedtea7 recipe:
>
> --2021-06-07 17:24:33--  http://icedtea.classpath.org/hg/release/icedtea=
7-forest-2.1/archive/f89009ada191.tar.bz2
> Resolving icedtea.classpath.org (icedtea.classpath.org)... 172.104.137.1=
20
> Connecting to icedtea.classpath.org (icedtea.classpath.org)|172.104.137.=
120|:80... connected.
> HTTP request sent, awaiting response... 404 Not Found
> 2021-06-07 16:21:05 ERROR 404: Not Found.
>
> ERROR: icedtea7-native-2.1.3-r1.0 do_fetch: Fetcher failure for URL: 'ht=
tp://icedtea.classpath.org/hg/release/icedtea7-forest-2.1/archive/f89009ada=
191.tar.bz2;name=3Dopenjdk;unpack=3Dfalse;downloadfilename=3Dopenjdk-f89009=
ada191.tar.bz2'. Unable to fetch URL from any source.
>
>
> Following this link, seems like the webserver is down. Do you know any
> mirror that I can use in the meantime?
>
> Thanks,
> George
>
>=20
>
>

--0000000000006332df05c4659694
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I have the tarball. I think we should toss it somewhe=
re safe and update the recipe, as it is unlikely the old mercurial repo is =
coming back.</div><div><br></div><div>Suggestions?</div><div><br></div><div=
>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Tue, 8 Jun 2021 at 08:10, &lt;<a href=3D"mailto:George.=
Mocanu@rinftech.com">George.Mocanu@rinftech.com</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex"><p>Hello,</p>
<p><br>I am trying to build something that relies on meta-java, but it fai=
ls on do_fetch for the icedtea7 recipe:</p>
<pre><span>--2021-06-07 17:24:33--  <a href=3D"http://icedtea.classpath.or=
g/hg/release/icedtea7-forest-2.1/archive/f89009ada191.tar.bz2" target=3D"_b=
lank">http://icedtea.classpath.org/hg/release/icedtea7-forest-2.1/archive/f=
89009ada191.tar.bz2</a>
Resolving <a href=3D"http://icedtea.classpath.org" target=3D"_blank">icedt=
ea.classpath.org</a> (<a href=3D"http://icedtea.classpath.org" target=3D"_b=
lank">icedtea.classpath.org</a>)... 172.104.137.120<br>Connecting to <a hre=
f=3D"http://icedtea.classpath.org" target=3D"_blank">icedtea.classpath.org<=
/a> (<a href=3D"http://icedtea.classpath.org" target=3D"_blank">icedtea.cla=
sspath.org</a>)|172.104.137.120|:80... connected.<br>HTTP request sent, awa=
iting response... 404 Not Found<br>2021-06-07 16:21:05 ERROR 404: Not Found=
.

ERROR: icedtea7-native-2.1.3-r1.0 do_fetch: Fetcher failure for URL: &#39;=
<a href=3D"http://icedtea.classpath.org/hg/release/icedtea7-forest-2.1/arch=
ive/f89009ada191.tar.bz2;name=3Dopenjdk;unpack=3Dfalse;downloadfilename=3Do=
penjdk-f89009ada191.tar.bz2" target=3D"_blank">http://icedtea.classpath.org=
/hg/release/icedtea7-forest-2.1/archive/f89009ada191.tar.bz2;name=3Dopenjdk=
;unpack=3Dfalse;downloadfilename=3Dopenjdk-f89009ada191.tar.bz2</a>&#39;. U=
nable to fetch URL from any source.</span></pre>
<p><br>Following this link, seems like the webserver is down. Do you know =
any mirror that I can use in the meantime?<br><br>Thanks,<br>George</p>
<br>
<br>
<br>
</blockquote></div>

--0000000000006332df05c4659694--
