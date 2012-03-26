Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-iy0-f176.google.com (mail-iy0-f176.google.com
	[209.85.210.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B858E01374
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 16:50:44 -0700 (PDT)
Received: by iagw33 with SMTP id w33so12160579iag.35
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 16:50:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date
	:x-google-sender-auth:message-id:subject:from:to:cc:content-type
	:x-gm-message-state;
	bh=b/dLxOoK+iGW0SVr/BNz3g1qs9V+Yz2V3tTK7pp2qks=;
	b=OmP+bnhwcgpJAuhNdIiPPNPxAH1WliNUg78sLaTyUj61v6n8K7Pj+MEp1lJ84ynbtl
	rle0RIUSBt6BDF/2d01TzDEGu/moQ7iqwZbVCt18SG3FT9PIUlbNY+u26RuTA6D+Wffe
	3AFAoF2gxMBOnISc/ZTx9fljdbp/seI3n+XhZIM8bgft8GIFS990Kh8QHYOkZFnBJnTl
	We3Oz/f4HtNwLmmUH/prYYigmVD/c4a4Yt16mgvHjbXWAv4Xl029mE/vHVqi8yGJWQEG
	ZAUzCnm9CAoOhBmm5UkkMNhQXC4y6F2iBcKk4AdO71U8cw8fGO01n7uChNA/0jJ+cnPu
	fTmg==
MIME-Version: 1.0
Received: by 10.68.221.40 with SMTP id qb8mr57058548pbc.154.1332805843747;
	Mon, 26 Mar 2012 16:50:43 -0700 (PDT)
Sender: rstreif@linuxfoundation.org
Received: by 10.143.29.18 with HTTP; Mon, 26 Mar 2012 16:50:43 -0700 (PDT)
In-Reply-To: <1332802684.28414.146.camel@ted>
References: <alpine.DEB.2.02.1203240525230.22364@oneiric>
	<1332589972.27577.1.camel@ted>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237945175E22@ORSMSX101.amr.corp.intel.com>
	<CA+gsK-raRiKQ7GHLSy4tAJHJmDardhr8by0A9FGJ7diCYo00Uw@mail.gmail.com>
	<1332802684.28414.146.camel@ted>
Date: Mon, 26 Mar 2012 16:50:43 -0700
X-Google-Sender-Auth: lWuyAj2BKz35uUyft6gys44vkkw
Message-ID: <CA+gsK-o4KeAqZLW8gSQkoEBy6jyJvi8EJeZuChfsYgwAF2xCyQ@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@linux.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Gm-Message-State: ALoCoQkfo+Aw8/9tz08riNiK8zCGSRuIJx4cl/OyCSF3CeWqHAapCiYmIuragnl3qkixTCsQ68Rr
Cc: yocto@yoctoproject.org
Subject: Re: tentative list of vars to be dropped from variable glossary
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 26 Mar 2012 23:50:44 -0000
Content-Type: multipart/alternative; boundary=e89a8ff256a2df01f304bc2e0ad6

--e89a8ff256a2df01f304bc2e0ad6
Content-Type: text/plain; charset=ISO-8859-1

Thanks, Richard. Clearer now but not entirely.


> >> BBMASK removes recipes from being parsed. It does not remove them from
> >> images although that would I guess be an indirect result since you could
> >>no longer build them.
>
> Yes, it removes it from being parsed. I used, for test although not
sensible, BBMASK = "base-passwd". If I then tried building
core-image-minimal it fails with "Nothing provides base-passwd". If one
could use BBMASK to customize images as suggested in
http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#usingpoky-extend-customimage-localconf
then
one would expect the package to be removed indirectly from the image.
However, that does not happen, the build just fails.


>
> >> Its designed so that if you for example didn't care out any *gpe*
> >> recipe, you could exclude them entirely and not even have the parse
> >> overhead.
>

That use case makes sense. If I know that I don't include certain packages
like *gpe* in the images I am building then I can speed up the
build/parsing process by masking the recipes and therefore the regular
expression syntax makes perfectly sense.

Thanks,
Rudi

--e89a8ff256a2df01f304bc2e0ad6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Thanks, Richard. Clearer now but not entirely.<br><br><div class=3D"gmail_q=
uote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div class=3D"im"><br>
</div>&gt;&gt; BBMASK removes recipes from being parsed. It does not remove=
 them from<br>&gt;&gt; images although that would I guess be an indirect re=
sult since you could<br>&gt;&gt;no longer build them.<br>
<div class=3D"im"><br></div></blockquote><div>Yes, it removes it from being=
 parsed. I used, for test although not sensible, BBMASK =3D &quot;base-pass=
wd&quot;. If I then tried building core-image-minimal it fails with &quot;N=
othing provides base-passwd&quot;. If one could use BBMASK to customize ima=
ges as suggested in=A0<a href=3D"http://www.yoctoproject.org/docs/latest/de=
v-manual/dev-manual.html#usingpoky-extend-customimage-localconf">http://www=
.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#usingpoky-extend-c=
ustomimage-localconf</a>=A0then one would expect the package to be removed =
indirectly from the image. However, that does not happen, the build just fa=
ils.</div>
<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex"><div class=3D"im">
<br>
</div>&gt;&gt; Its designed so that if you for example didn&#39;t care out =
any *gpe*<br>&gt;&gt; recipe, you could exclude them entirely and not even =
have the parse<br>&gt;&gt; overhead.<br></blockquote><div><br></div><div>
That use case makes sense. If I know that I don&#39;t include certain packa=
ges like *gpe* in the images I am building then I can speed up the build/pa=
rsing process by masking the recipes and therefore the regular expression s=
yntax makes perfectly sense.</div>
<div><br></div><div>Thanks,</div><div>Rudi</div></div>

--e89a8ff256a2df01f304bc2e0ad6--
