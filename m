Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.8183.1580832016031385078
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Feb 2020 08:00:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=FYjnoZSO;
 spf=softfail (domain: linaro.org, ip: 140.211.169.56, mailfrom: ryan.harkin@linaro.org)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F033E016B8; Tue,  4 Feb 2020 08:00:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.219.68 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qv1-f68.google.com (mail-qv1-f68.google.com [209.85.219.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FED3E016B6
	for <yocto@yoctoproject.org>; Tue,  4 Feb 2020 08:00:13 -0800 (PST)
Received: by mail-qv1-f68.google.com with SMTP id y8so8780743qvk.6
        for <yocto@yoctoproject.org>; Tue, 04 Feb 2020 08:00:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=w/PKGghiq2L4VZECMXoG3kXLCkZwF/K0Se5mMAmaVnA=;
        b=FYjnoZSOPlKF7BLoEGxoeE+6w6+ve8vlRRB4uPyRlVzkRyphF9FDEkfFtdiETcakBh
         2+k1jBDMdDHHYjY/+NVg7e6Tmbza/8vo9A/M7EcNFf5WGXtaXClmQLn1uRjmpWqspnHE
         2myKg831O+oZv++GeSuZxoVEPkVlYh6nyGN6kjraEf+x2ktDEyfBi62BsTLh/2ZqQD2p
         cglMl0YxvCyCcoMF/rGQvc/aEb6ZPHo1iIe31DcJ95+HK37qrkDQJEIJ7z1PH2PCKoXC
         DUUi5yv0O/3Q4aD7lBv5OrdaJ5ef+rK5eYOezxSAgtdo+OLoeNoS2Ir8yBdoX8wwyIjE
         8NpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=w/PKGghiq2L4VZECMXoG3kXLCkZwF/K0Se5mMAmaVnA=;
        b=n2BdfDnDuwgIoN07n994DWa7NodFZ2reZC+Uw7UW6zyo+UxWIoqvV14rqkESwaH3Y5
         26HwzFYBpTamuEKAqbYbhwcIt4g0y8LERGWEmUvfc3jbSZLVp+NjFFVCzBZUFoDp/lP4
         tvSQQFWhub2VUjKGpeQddjcD0bXFqVK8gsu/7nuxEQh0KTGAqTd+QRqcrQVQ2sjjzLXT
         PoErxZ00VziNHBjXFBbq5R8Ks2YFsFrfTMX8Repv5/wLiYIw4Gq35HTx591QV/WJoGFs
         /T5QH58Gtb1Vshu3bMEazjt4rbIibvRVjWo4N32U6GGUel45HNY8em9fD8ZMjX1dOSuU
         A6+g==
X-Gm-Message-State: APjAAAVnVEOVWePG2DEWutxu9IRtvDUbUvTpMGLGppC6Wz1Z1XztTk3D
	kjuVGO0b3Uk/gtG8uHIDJkrCl4X0Oeixut8ZB0epCw==
X-Google-Smtp-Source: APXvYqwcTUm2LYRTXG5HGtt+oPsO9i1FxN/21t6qa1MD538Ly7YplC/2drRPUNuA4P+L/A0qIUXeSdj+FsIZRugR3eE=
X-Received: by 2002:a05:6214:13a8:: with SMTP id h8mr27407592qvz.41.1580832012709;
 Tue, 04 Feb 2020 08:00:12 -0800 (PST)
MIME-Version: 1.0
References: <CAD0U-h+q4k-EywV8XEfZ2nsoHoRQaNyRy77E2kRLuos8dAmNTA@mail.gmail.com>
 <20200204085153.6wsex564rtrknfuq@qschulz>
In-Reply-To: <20200204085153.6wsex564rtrknfuq@qschulz>
From: "Ryan Harkin" <ryan.harkin@linaro.org>
Date: Tue, 4 Feb 2020 16:00:01 +0000
Message-ID: <CAD0U-h+0L_X3mS4ttcPSiRwfM7TJtPgg-hutEg0Nfp_UENL41w@mail.gmail.com>
Subject: Re: [yocto] Building and selecting multiple kernel versions
To: Quentin Schulz <quentin.schulz@streamunlimited.com>
Cc: yocto@yoctoproject.org, Nicolas Dechesne <nicolas.dechesne@linaro.org>
Content-Type: multipart/alternative; boundary="000000000000914a96059dc2225f"

--000000000000914a96059dc2225f
Content-Type: text/plain; charset="UTF-8"

Hi Quentin,

Thanks for your reply.

On Tue, 4 Feb 2020 at 08:51, Quentin Schulz <
quentin.schulz@streamunlimited.com> wrote:

> Hi Ryan,
>
> On Mon, Feb 03, 2020 at 05:34:23PM +0000, Ryan Harkin wrote:
> > Hello all,
> >
> > I'm looking for advice on how to support multiple kernel versions in my
> > distro with minimal changes, and minimal disruption to my users.
> >
> > Some background:
> >
> > I have a legacy Sumo based distro with an image config, and a machine
> > config, with the machine using a 4.9 kernel. Last year, I upgraded
> > everything to Warrior, and moved to a 4.19 kernel.
> >
> > Some of my users who are migrating from Sumo, wish to keep their 4.9
> > kernel. So I'm trying to work out how to handle this in the simplest way.
> >
> > I know that I can add a 4.9 recipes to my Warrior branches, set
> > PREFERRED_VERSION in my distro.conf. But I don't want to change the
> default
> > preferred version globally. And I don't really want users to update the
> > distro.conf. Ideally, they should be able to take what I give them and
> > "just" build it to get a 4.9 or 4.19 variant.
> >
>
> You can make two machine configuration files. One with
> PREFERRED_VERSION_virtual/kernel = "4.9%" and the other with 4.19.
>
> They pick the correct machine when building, they should expect the
> correct kernel in output. Only applies to images built for this machine
> so I guess that's what you're looking for?
>

Yes, this works.

Trying it showed a few small problems. Eg. I have a package that only builds
for the 4.19 kernel, and needs to be excluded for 4.9. That's something I
can
handle in the recipes using the machine type, of course.


>
> > Ideally, I don't want to *have* to build both kernels and then create two
> > images. I expect that will cause confusion and lead to people flashing
> the
> > wrong images. So I'd prefer it to be either/or. Of course, I have to test
> > all of this, so I want to be able to build both variants in CI, which
> makes
> > editing distro.conf even more  unattractive.
> >
>
> Same image (POV of bitbake <image>) but different machines, does that
> match your requirements?
>
> FWIW, you can pass MACHINE= to the command line just before bitbake
> <image> making it rather obvious which machine they pick.
>

Incidentally, that didn't work for me, but that's a symptom of how we setup
the environment, where local.conf sets MACHINE. I changed it to "MACHINE ?=
",
thinking it would let me override it via the shell. But it didn't. Strange,
but not a
big problem.

I'd be interested to hear if anyone else has a different approach I could
try for
comparison.

Thanks,
Ryan.

--000000000000914a96059dc2225f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Quentin,</div><div><br></div><div>Thanks for your =
reply.</div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_=
attr">On Tue, 4 Feb 2020 at 08:51, Quentin Schulz &lt;<a href=3D"mailto:que=
ntin.schulz@streamunlimited.com">quentin.schulz@streamunlimited.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Ryan,=
<br>
<br>
On Mon, Feb 03, 2020 at 05:34:23PM +0000, Ryan Harkin wrote:<br>
&gt; Hello all,<br>
&gt; <br>
&gt; I&#39;m looking for advice on how to support multiple kernel versions =
in my<br>
&gt; distro with minimal changes, and minimal disruption to my users.<br>
&gt; <br>
&gt; Some background:<br>
&gt; <br>
&gt; I have a legacy Sumo based distro with an image config, and a machine<=
br>
&gt; config, with the machine using a 4.9 kernel. Last year, I upgraded<br>
&gt; everything to Warrior, and moved to a 4.19 kernel.<br>
&gt; <br>
&gt; Some of my users who are migrating from Sumo, wish to keep their 4.9<b=
r>
&gt; kernel. So I&#39;m trying to work out how to handle this in the simple=
st way.<br>
&gt; <br>
&gt; I know that I can add a 4.9 recipes to my Warrior branches, set<br>
&gt; PREFERRED_VERSION in my distro.conf. But I don&#39;t want to change th=
e default<br>
&gt; preferred version globally. And I don&#39;t really want users to updat=
e the<br>
&gt; distro.conf. Ideally, they should be able to take what I give them and=
<br>
&gt; &quot;just&quot; build it to get a 4.9 or 4.19 variant.<br>
&gt; <br>
<br>
You can make two machine configuration files. One with<br>
PREFERRED_VERSION_virtual/kernel =3D &quot;4.9%&quot; and the other with 4.=
19.<br>
<br>
They pick the correct machine when building, they should expect the<br>
correct kernel in output. Only applies to images built for this machine<br>
so I guess that&#39;s what you&#39;re looking for?<br></blockquote><div><br=
></div><div>Yes, this works.</div><div><br></div><div>Trying it showed a fe=
w small problems. Eg. I have a package that only builds</div><div>for the 4=
.19 kernel, and needs to be excluded for 4.9. That&#39;s something I can</d=
iv><div>handle in the recipes using the machine type, of course.</div><div>=
=C2=A0<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0=
px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
&gt; Ideally, I don&#39;t want to *have* to build both kernels and then cre=
ate two<br>
&gt; images. I expect that will cause confusion and lead to people flashing=
 the<br>
&gt; wrong images. So I&#39;d prefer it to be either/or. Of course, I have =
to test<br>
&gt; all of this, so I want to be able to build both variants in CI, which =
makes<br>
&gt; editing distro.conf even more=C2=A0 unattractive.<br>
&gt; <br>
<br>
Same image (POV of bitbake &lt;image&gt;) but different machines, does that=
<br>
match your requirements?<br>
<br>
FWIW, you can pass MACHINE=3D to the command line just before bitbake<br>
&lt;image&gt; making it rather obvious which machine they pick.<br></blockq=
uote><div><br></div><div>Incidentally, that didn&#39;t work for me, but tha=
t&#39;s a symptom of how we setup</div><div>the environment, where local.co=
nf sets MACHINE. I changed it to &quot;MACHINE ?=3D &quot;,</div><div>think=
ing it would let me override it via the shell. But it didn&#39;t. Strange, =
but not a</div><div>big problem.</div><div><br></div><div>I&#39;d be intere=
sted to hear if anyone else has a different approach I could try for</div><=
div>comparison.<br></div><div><br></div><div>Thanks,</div><div>Ryan.</div><=
div><br></div></div></div>

--000000000000914a96059dc2225f--
