Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AF3EE00C46; Fri, 26 Jul 2019 05:47:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.52 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f52.google.com (mail-vs1-f52.google.com
	[209.85.217.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82582E00BD5
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2019 05:47:46 -0700 (PDT)
Received: by mail-vs1-f52.google.com with SMTP id y16so35964087vsc.3
	for <yocto@yoctoproject.org>; Fri, 26 Jul 2019 05:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=on7nNc2CUQ1jG88rY6dwAH06xy7/bip8TZuvnUVOeKk=;
	b=Dzlr2czdSYA85uultnFbMm+qQHGqOca+IL6nlLHo0KIw2NEbP2wGrLt+hdEngMJfqd
	YEfqdJKIPIm410xzEkwbqi4+OUokqXwMXWRxdhnK53/gYnnYbCCDPWvoutV8528049NV
	70xI7zXqDCHK/+0Uc/X1ScgNCrMj3ooTlSy+Nm0Jf+4+z9xrDOW8+jn6offx9uLXO+9g
	gfi2t5lYTqipicQ7qk9CROwqp3tzZlatFMjJ2jfl65fcoxy2Zzwnb2pcXTV7gLTz4fjY
	PHcGy7j3NYAMOJEn+i7scJxc7q6l4i3pLaKFtJwAGRo8OkcUonlyI172wWsp224xAGxM
	Biig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=on7nNc2CUQ1jG88rY6dwAH06xy7/bip8TZuvnUVOeKk=;
	b=CJgHkBw1uhald2lcQRrCQ2PpYPl8QVMzzJj1XbPhtk0/0L+MH08N8c4NOFVJRqN4XR
	kqftaHMN96PLm6jPRT1BprMNJWLHz0jRIx/li+R4NsdlIFgajd1E6Y6LE2Cab6uq0M1h
	joA3Nwf3fMoWnkSG7E271VmK1uqGFfT+FETgB5Ah6o5ES81J6WNZGiN0QiJwN3PTntx5
	p4XzgD6HWnmGFMMApS34k62KWhTWVLO2L29+Q2iU+c2rLtpzCA/utFfb22mGozUcsmO6
	XaUIZGw1d1iojry693Oww9IZj87o0PhGP8SpEhRQMej3poGdKIuifs5tj9tG+Kw9YJ9l
	z1vA==
X-Gm-Message-State: APjAAAUm7NcqZe5pdrAAzvt60w08Q78jyfFHfSukDyVY5S9bmepFIX+6
	ndRhizQankcu665wJ3TXrIGfn2NI+41NbfbBXyI=
X-Google-Smtp-Source: APXvYqyJX72m/xzJyZjEc2mNFGiRgSzIsw+o4sUoIwwCGMMa4l0kVE8+az9BE+pYGD/MJIVND3KW7dZa3l6KAI1G6J0=
X-Received: by 2002:a67:fd13:: with SMTP id f19mr59304977vsr.25.1564145265568; 
	Fri, 26 Jul 2019 05:47:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAJkrxtRnNOes22KGRonzi_JTeJd0oNVyFeuJQDFtJuc5MGfodQ@mail.gmail.com>
In-Reply-To: <CAJkrxtRnNOes22KGRonzi_JTeJd0oNVyFeuJQDFtJuc5MGfodQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 26 Jul 2019 15:47:34 +0300
Message-ID: <CANNYZj83rHQHXHg2dDeXGK6pajXF=1mdJ4L-emi3AsQuMwJ2_g@mail.gmail.com>
To: Dani Manzaneque <danimanzaneque@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Integration of Conan Package Manager into the Yocto Project
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 26 Jul 2019 12:47:48 -0000
Content-Type: multipart/alternative; boundary="000000000000ee72f0058e94f294"

--000000000000ee72f0058e94f294
Content-Type: text/plain; charset="UTF-8"

Pulling down things from the network in do_install() is not the best
option. Is reproducibility and integrity of such downloads guaranteed? What
about the component licensing, where is that checked (against upstream
changes)? Also, yocto's download caching and mirroring facility is
side-stepped entirely.

The typical 'Yocto way' would be to write a specific conan fetcher for
bitbake, so that you can specify SRC_URI = "conan://..." in recipes:
https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/bitbake/lib/bb/fetch2?h=master-next

Generally, if someone is doing system integration with Yocto and has access
to the source code, they might just write actual component recipes for
building from source, as the presented workflow with building via SDK and
artifactory binary uploads is awkward, and all benefits that happen when
yocto is able to build directly from source code are lost.

Regards,
Alex


On Fri, 26 Jul 2019 at 14:39, Dani Manzaneque <danimanzaneque@gmail.com>
wrote:

> Hi!
>
> We have developed an integration with Yocto for the open-source Conan
> C/C++ package manager.
> This integration includes the ability to cross-build packages with a
> Yocto SDK Toolchain and later deploy them in the Yocto build.
>
> We have created a blog post with a brief introduction to the Yocto
> Project and the announcement of the integration:
> https://blog.conan.io/2019/07/26/Conan-Yocto-integration.html
>
> And a detailed section in our documentation with the configuration for
> the meta-conan layer and the Bitbake recipes for the packages:
> https://docs.conan.io/en/latest/integrations/cross_platform/yocto.html
>
> Feedback is welcomed. Thanks a lot!
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000ee72f0058e94f294
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">Pulling down things from=
 the network in do_install() is not the best option. Is reproducibility and=
 integrity of such downloads guaranteed? What about the component licensing=
, where is that checked (against upstream changes)? Also, yocto&#39;s downl=
oad caching and mirroring facility is side-stepped entirely.=C2=A0</div><di=
v><br></div><div>The typical &#39;Yocto way&#39; would be to write a specif=
ic conan fetcher for bitbake, so that you can specify SRC_URI =3D &quot;con=
an://...&quot; in recipes:</div><div><a href=3D"https://git.yoctoproject.or=
g/cgit/cgit.cgi/poky/tree/bitbake/lib/bb/fetch2?h=3Dmaster-next">https://gi=
t.yoctoproject.org/cgit/cgit.cgi/poky/tree/bitbake/lib/bb/fetch2?h=3Dmaster=
-next</a></div><div><br></div><div>Generally, if someone is doing system in=
tegration with Yocto and has access to the source code, they might just wri=
te actual component recipes for building from source, as the presented work=
flow with building via SDK and artifactory binary uploads is awkward, and a=
ll benefits that happen when yocto is able to build directly from source co=
de are lost.</div><div><br></div><div>Regards,</div><div>Alex</div><div><br=
></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>On Fri, 26 Jul 2019 at 14:39, Dani Manzaneque &lt;<a href=3D"mailto:danima=
nzaneque@gmail.com">danimanzaneque@gmail.com</a>&gt; wrote:<br></div><block=
quote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-w=
idth:1px;border-left-style:solid;border-left-color:rgb(204,204,204);padding=
-left:1ex">Hi!<br>
<br>
We have developed an integration with Yocto for the open-source Conan<br>
C/C++ package manager.<br>
This integration includes the ability to cross-build packages with a<br>
Yocto SDK Toolchain and later deploy them in the Yocto build.<br>
<br>
We have created a blog post with a brief introduction to the Yocto<br>
Project and the announcement of the integration:<br>
<a href=3D"https://blog.conan.io/2019/07/26/Conan-Yocto-integration.html" r=
el=3D"noreferrer" target=3D"_blank">https://blog.conan.io/2019/07/26/Conan-=
Yocto-integration.html</a><br>
<br>
And a detailed section in our documentation with the configuration for<br>
the meta-conan layer and the Bitbake recipes for the packages:<br>
<a href=3D"https://docs.conan.io/en/latest/integrations/cross_platform/yoct=
o.html" rel=3D"noreferrer" target=3D"_blank">https://docs.conan.io/en/lates=
t/integrations/cross_platform/yocto.html</a><br>
<br>
Feedback is welcomed. Thanks a lot!<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div></div>

--000000000000ee72f0058e94f294--
