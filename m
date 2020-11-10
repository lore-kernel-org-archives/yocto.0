Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
 by mx.groups.io with SMTP id smtpd.web08.31634.1605032296817988908
 for <yocto@lists.yoctoproject.org>;
 Tue, 10 Nov 2020 10:18:17 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=mJC/67vC;
 spf=pass (domain: gmail.com, ip: 209.85.222.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f44.google.com with SMTP id t15so4228254ual.6
        for <yocto@lists.yoctoproject.org>; Tue, 10 Nov 2020 10:18:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4wgOfd0TjQJtlAbPr7fU7zjv+fZGCMt/vUZc2Rp2E7M=;
        b=mJC/67vCfKipXSH1WIOck5voxerHbs9FUExzKkxdPuRDjKJH7UTVzWL6NKz+aXKuEC
         RHr1CnqzpbDqbLxQMJA1PNa/hGMmnaATrh5Kz5tCrcD0bGHYB2huPtXim0xeaRGA9CbL
         sjvQD3sr/K6XQgbGSKtuedp4+vVE7Ws/ftlGTdRYsOPDhZvaoXQS+GggylSb5HL5+oD2
         Ci1l63XYB5wCEsDhLB3B2QuxJVH3SdtOX31Xr0xW9Glo6Tg/7DstJoVhdd4ZphZSjSiH
         FZoSypoIKX0ZEfl8yr01r9659tBa26By9RN3ttl+ycbgfFqd0wjaF2Nm++2ov98QsCWR
         kATw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4wgOfd0TjQJtlAbPr7fU7zjv+fZGCMt/vUZc2Rp2E7M=;
        b=oXDHy9/mn0e5Daqw03Qubz3S93dQ5A3xq8MV9XDAP4qS4d4gShMYJ5R0lj1reUa9s8
         zH8Tn31dlGOF+/x7hDNkrpEB0NfD/O9NKgks1pDfOfJoqd9L+kYmjwvGfVpSymeWSlHf
         ++ouqwSDCffRB4B+OASdqUKIPCfgCSdSNNoJF/uoJyl8drNhdhoIh2YfonXrOfO+s6OH
         h0eTXKnbnb3HU5YIxPAOvS+OBUfOJnSgi7LoackoJkUWqNitviMk+fYEjxy4L6qulP/j
         7rug6Rwdv96I9H4Bxa2w911jtQWFhTBJ2S7IBv4cSe2yzCpVZbhLLymnOyPPC0ipMgS+
         q8hA==
X-Gm-Message-State: AOAM533XEnzoL33oBWuIcgyj7sINQevKgWtQZEwF6nxbk/epJThVPnCy
	aLgQ3COpKwZcdUdVs6UChyzHbjunw5266bfccW0=
X-Google-Smtp-Source: ABdhPJzzb8KES6sLF3DVvP8BTFjbubNy09OXAUgwZVxY+SEOd9YE9iMqWEx8oYeBNevntl6GomlH8NZ0AAwjJ5Deq7o=
X-Received: by 2002:ab0:23cc:: with SMTP id c12mr10621713uan.89.1605032295616;
 Tue, 10 Nov 2020 10:18:15 -0800 (PST)
MIME-Version: 1.0
References: <14212713.119725.1605031437350@ox.hosteurope.de>
In-Reply-To: <14212713.119725.1605031437350@ox.hosteurope.de>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Tue, 10 Nov 2020 19:18:04 +0100
Message-ID: <CANNYZj8DyMD=LgwWK27VBjx_JnJEOQTbMPPDOCwrgtghzJpmoQ@mail.gmail.com>
Subject: Re: [yocto] Missing vardeps in meta/classes/roofs_rpm.bbclass?
To: Loic Domaigne <tech@domaigne.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d555cf05b3c4b312"

--000000000000d555cf05b3c4b312
Content-Type: text/plain; charset="UTF-8"

This seems like you need to make a patch (for master branch) and send it to
oe-core list? :)

Alex

On Tue, 10 Nov 2020 at 19:04, Loic Domaigne <tech@domaigne.com> wrote:

> Salut,
>
> We were playing with rpm package management lately.
>
> To configure the yum repos in the image, we're setting the following
> variables in conf/local.conf:
> FEED_PACKAGE_URIS
> FEED_PACKAGE_BASE_PATHS
>
> We made a typo, and forgot the S at the end of FEED_PACKAGE_BASE_PATHS
> Not surprising, the repo file generated didn't have the right url:
>
> $ cat oe-remote-repo-user1.repo
> [oe-remote-repo-user1]
> name=OE Remote Repo: user1
> baseurl=http://192.168.7.1/user1
> gpgcheck=0
>
>
> After fixing the typo and bitbaking the image again, still no avail.
> The repo file remains unchanged.
>
> In fact, changing FEED_PACKAGE_BASE_PATHS did not re-trigger a new image
> build. We found this behavior surprising.
>
> AFAICS:
> 1) As per oe/lib/meta/lib/oe/rootfs.py and lib/oe/package_manager.py, the
> URL is defined as the join paths of FEED_PACKAGE_URIS and
> FEED_PACKAGE_BASE_PATHS.
> 2) However, in meta/classes/rootfs_rpm.bbclass, do_rootfs only specifies a
> build dependency to FEED_PACKAGE_URIS:
> do_rootfs[vardeps] += "PACKAGE_FEED_URIS"
>
> Shouldn't the rootfs task depend on both PACKAGE_FEEDS_URIS and
> PACKAGE_FEED_BASE_PATHS, ie.
> do_rootfs[vardeps] += "PACKAGE_FEED_URIS PACKAGE_FEED_BASE_PATHS"
>
> After fixing this dependency, the repo file got updated as expected:
> cat oe-remote-repo-user1-rpm.repo
> [oe-remote-repo-user1-rpm]
> name=OE Remote Repo: user1 rpm
> baseurl=http://192.168.7.1/user1/rpm
> gpgcheck=0
>
> Does that make sense?
>
> I have conducted this analysis on Zeus. The problem isn't fixed with
> Dunfell AFAICS. Also, the other package classes (deb,ipk) are impacted as
> well.
>
> Hope this helps!
> Loic
>
> 
>
>

--000000000000d555cf05b3c4b312
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>This seems like you need to make a patch (for master =
branch) and send it to oe-core list? :)</div><div><br></div><div>Alex<br></=
div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_at=
tr">On Tue, 10 Nov 2020 at 19:04, Loic Domaigne &lt;<a href=3D"mailto:tech@=
domaigne.com">tech@domaigne.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">Salut,<br>
<br>
We were playing with rpm package management lately.<br>
<br>
To configure the yum repos in the image, we&#39;re setting the following v=
ariables in conf/local.conf:<br>
FEED_PACKAGE_URIS <br>
FEED_PACKAGE_BASE_PATHS<br>
<br>
We made a typo, and forgot the S at the end of FEED_PACKAGE_BASE_PATHS<br>
Not surprising, the repo file generated didn&#39;t have the right url:<br>
<br>
$ cat oe-remote-repo-user1.repo <br>
[oe-remote-repo-user1]<br>
name=3DOE Remote Repo: user1<br>
baseurl=3D<a href=3D"http://192.168.7.1/user1" rel=3D"noreferrer" target=
=3D"_blank">http://192.168.7.1/user1</a><br>
gpgcheck=3D0<br>
<br>
<br>
After fixing the typo and bitbaking the image again, still no avail.<br>
The repo file remains unchanged. <br>
<br>
In fact, changing FEED_PACKAGE_BASE_PATHS did not re-trigger a new image b=
uild. We found this behavior surprising. <br>
<br>
AFAICS: <br>
1) As per oe/lib/meta/lib/oe/rootfs.py and lib/oe/package_manager.py, the =
URL is defined as the join paths of FEED_PACKAGE_URIS and FEED_PACKAGE_BASE=
_PATHS. <br>
2) However, in meta/classes/rootfs_rpm.bbclass, do_rootfs only specifies a=
 build dependency to FEED_PACKAGE_URIS:<br>
do_rootfs[vardeps] +=3D &quot;PACKAGE_FEED_URIS&quot;<br>
<br>
Shouldn&#39;t the rootfs task depend on both PACKAGE_FEEDS_URIS and PACKAG=
E_FEED_BASE_PATHS, ie.<br>
do_rootfs[vardeps] +=3D &quot;PACKAGE_FEED_URIS PACKAGE_FEED_BASE_PATHS&qu=
ot;<br>
<br>
After fixing this dependency, the repo file got updated as expected:<br>
cat oe-remote-repo-user1-rpm.repo <br>
[oe-remote-repo-user1-rpm]<br>
name=3DOE Remote Repo: user1 rpm<br>
baseurl=3D<a href=3D"http://192.168.7.1/user1/rpm" rel=3D"noreferrer" targ=
et=3D"_blank">http://192.168.7.1/user1/rpm</a><br>
gpgcheck=3D0<br>
<br>
Does that make sense?<br>
<br>
I have conducted this analysis on Zeus. The problem isn&#39;t fixed with D=
unfell AFAICS. Also, the other package classes (deb,ipk) are impacted as we=
ll.<br>
<br>
Hope this helps!<br>
Loic<br>
<br>
<br>
<br>
</blockquote></div>

--000000000000d555cf05b3c4b312--
