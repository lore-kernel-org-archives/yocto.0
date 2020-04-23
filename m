Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.4294.1587641084950280052
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Apr 2020 04:24:45 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=Pe28tYGx;
 spf=softfail (domain: linaro.org, ip: 140.211.169.56, mailfrom: nicolas.dechesne@linaro.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CB2BE01A4A; Thu, 23 Apr 2020 04:24:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_NONE,URIBL_RED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.219.172 listed in list.dnswl.org]
	*  0.0 URIBL_RED Contains an URL listed in the URIBL redlist
	*      [URIs: yoctoproject.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com [209.85.219.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51BF7E01A0A
	for <yocto@yoctoproject.org>; Thu, 23 Apr 2020 04:24:42 -0700 (PDT)
Received: by mail-yb1-f172.google.com with SMTP id a9so2941194ybc.8
        for <yocto@yoctoproject.org>; Thu, 23 Apr 2020 04:24:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=x6mxWitCej84M/x12aQLljNEL8R9nA6dnJU0J9Lq9a8=;
        b=Pe28tYGxwioenf+drA/YDv68xKCch/vHMVJH0HFP6Dk9wUQ16S/k7dxr6qvS3nubWY
         v5aBJ+knPFoj1kDQzqK6SqhlHdMYqa9GMGXLstKibcFXhEcWsglMUZye7sBNOdsL18Zf
         crttbPXC133JqKbjvdzoO+PvwApWx8ODGfkiZPSFpLMZC8zivldTZ8K0tURoJIWvJ8Lq
         VRlBoyQSVNJd7p5ScZOgYz+Wef2Xe5m7gelgFNP84erC544rorGuxSKVCnIn93DY8k5m
         xGPALdXu6+RT8PRUV3nBrGxLXWQNlzI0vTKzKGfeFCi6lCzeHn97aaaCGSppA4dwLDsj
         ELUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=x6mxWitCej84M/x12aQLljNEL8R9nA6dnJU0J9Lq9a8=;
        b=nXGtwBC/+9LD1oaj6Z7kA/M2dvaj06mPwDnS/YScH3OTFlb0kF5R9DA4UQQ0tHx5QU
         Qb74+Uda/va6i1oRvPNesriu4R6uwxlsOWzfAsgCjzpb/IjxMlNyTWNy7yqViY1E+yFV
         ET/vo2GqMXQUOGWG7olrHi0BCrsphDOl5YZAeGQgoEAARS/kd3xDvj6NRtetv6Xrt029
         tcWs38JVltpBZFUx/lVzbzk6Yd87FsGID+zhl4B1xFKom/Vw27OLIshgdaURr1vzaHGe
         JsELi9usDpWEIepdf/+vcJs+NtRPSVJIiY+lYTbb2nJ7RVwUJuenWCIH3dwI0z3q+LAb
         q4gQ==
X-Gm-Message-State: AGi0PubnRbpLSCUl28Krncj+MHKgP/kerupteYDZ84X6HH5JPA5Tap4k
	MT8mG8tpdQ1b/5oCFI+4qQkZiLuqag3/Pp+q0t9TuhlzmBfiGg==
X-Google-Smtp-Source: APiQypL8KeTkWBT9YSFd6eAxDkVg4FoZsOPOSZRWYv+PLnngeEQjfHPyu6eq3BJAAIsqwfg716aBzMPsNyPfcC8PbT8=
X-Received: by 2002:a25:2904:: with SMTP id p4mr6322124ybp.475.1587641081915;
 Thu, 23 Apr 2020 04:24:41 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.LFD.2.21.2004230713330.10937@localhost.localdomain>
In-Reply-To: <alpine.LFD.2.21.2004230713330.10937@localhost.localdomain>
From: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>
Date: Thu, 23 Apr 2020 13:24:28 +0200
Message-ID: <CAP71WjxZp+b_YWAUSWvoJqFo9rcze_66z=+oQOwdHLsaE_-6SA@mail.gmail.com>
Subject: Re: [yocto] inconsistencies with selecting systemd as init manager?
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000b8086d05a3f37e17"

--000000000000b8086d05a3f37e17
Content-Type: text/plain; charset="UTF-8"

On Thu, Apr 23, 2020 at 1:18 PM Robert P. J. Day <rpjday@crashcourse.ca>
wrote:

>
>   just noticed that, given that since YP 3.0 one could select systemd
> as the init manager via the single variable INIT_MANAGER, which pulled
> in init-manager-systemd.inc:
>
> # Use systemd for system initialization
> DISTRO_FEATURES_append = " systemd"
> DISTRO_FEATURES_BACKFILL_CONSIDERED_append = " sysvinit"
> VIRTUAL-RUNTIME_init_manager ??= "systemd"
> VIRTUAL-RUNTIME_initscripts ??= "systemd-compat-units"
> VIRTUAL-RUNTIME_login_manager ??= "shadow-base"
>

INIT_MANAGER was added in 3.0, see:
https://git.openembedded.org/openembedded-core/commit/?id=8d0b4704a526a48cd5e67df61b613424bbbdccde


>   this doesn't quite seem to match this snippet from
> meta/lib/oeqa/selftest/cases/imagefeatures.py:
>
> # Switch to systemd
> DISTRO_FEATURES += "systemd"
> VIRTUAL-RUNTIME_init_manager = "systemd"
> VIRTUAL-RUNTIME_initscripts = ""
> VIRTUAL-RUNTIME_syslog = ""
> VIRTUAL-RUNTIME_login_manager = "shadow-base"
> DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"
>

this is the 'old' (pre 3.0) method, and it can (and should) be replaced
with INIT_MANAGER, i believe.


>   not sure if that second snippet could be replaced with a simple
> assignment to INIT_MANAGER or whether those two snippets are
> effectively equivalent ... i'll let someone else make that call.
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                          http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> 
>

--000000000000b8086d05a3f37e17
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Thu, Apr 23, 2020 at 1:18 PM Rober=
t P. J. Day &lt;<a href=3D"mailto:rpjday@crashcourse.ca">rpjday@crashcourse=
.ca</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><br>
=C2=A0 just noticed that, given that since YP 3.0 one could select systemd=
<br>
as the init manager via the single variable INIT_MANAGER, which pulled<br>
in init-manager-systemd.inc:<br>
<br>
# Use systemd for system initialization<br>
DISTRO_FEATURES_append =3D &quot; systemd&quot;<br>
DISTRO_FEATURES_BACKFILL_CONSIDERED_append =3D &quot; sysvinit&quot;<br>
VIRTUAL-RUNTIME_init_manager ??=3D &quot;systemd&quot;<br>
VIRTUAL-RUNTIME_initscripts ??=3D &quot;systemd-compat-units&quot;<br>
VIRTUAL-RUNTIME_login_manager ??=3D &quot;shadow-base&quot;<br></blockquot=
e><div><br></div><div>INIT_MANAGER was added in 3.0, see:</div><div><a href=
=
=3D"https://git.openembedded.org/openembedded-core/commit/?id=3D8d0b4704a5=
26a48cd5e67df61b613424bbbdccde">https://git.openembedded.org/openembedded-c=
ore/commit/?id=3D8d0b4704a526a48cd5e67df61b613424bbbdccde</a></div><div><br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
=C2=A0 this doesn&#39;t quite seem to match this snippet from<br>
meta/lib/oeqa/selftest/cases/imagefeatures.py:<br>
<br>
# Switch to systemd<br>
DISTRO_FEATURES +=3D &quot;systemd&quot;<br>
VIRTUAL-RUNTIME_init_manager =3D &quot;systemd&quot;<br>
VIRTUAL-RUNTIME_initscripts =3D &quot;&quot;<br>
VIRTUAL-RUNTIME_syslog =3D &quot;&quot;<br>
VIRTUAL-RUNTIME_login_manager =3D &quot;shadow-base&quot;<br>
DISTRO_FEATURES_BACKFILL_CONSIDERED =3D &quot;sysvinit&quot;<br></blockquo=
te><div><br></div><div>this is the &#39;old&#39; (pre 3.0) method, and it c=
an (and should) be replaced with INIT_MANAGER, i believe.</div><div> <br></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bor=
der-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
=C2=A0 not sure if that second snippet could be replaced with a simple<br>
assignment to INIT_MANAGER or whether those two snippets are<br>
effectively equivalent ... i&#39;ll let someone else make that call.<br>
<br>
rday<br>
<br>
-- <br>
<br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<b=
r>
Robert P. J. Day=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0Ottawa, Onta=
rio, CANADA<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0<a href=3D"http://crashcourse.ca" rel=3D"noreferrer" targ=
et=3D"_blank">http://crashcourse.ca</a><br>
<br>
Twitter:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<=
a href=3D"http://twitter.com/rpjday" rel=3D"noreferrer" target=3D"_blank">h=
ttp://twitter.com/rpjday</a><br>
LinkedIn:=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0<a href=3D"http://ca.linke=
din.com/in/rpjday" rel=3D"noreferrer" target=3D"_blank">http://ca.linkedin.=
com/in/rpjday</a><br>
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<b=
r>
<br>
</blockquote></div></div>

--000000000000b8086d05a3f37e17--
