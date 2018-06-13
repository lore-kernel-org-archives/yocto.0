Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24C99E02FC4; Wed, 13 Jun 2018 06:42:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f50.google.com (mail-pl0-f50.google.com
	[209.85.160.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 266F1E02FBB
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2018 06:42:42 -0700 (PDT)
Received: by mail-pl0-f50.google.com with SMTP id t12-v6so1572595plo.7
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2018 06:42:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Vgn+UlTMEx0G8vHhUWTyKvysG/zomvyCHriWyUSY9zU=;
	b=BP7UwDy6ClSQfbOKS9i+NHAHednAmeQjGZFzauvOGwzucCuV5vBvnC1f88HaY23yCH
	cvuBAMcJEP514ExkwK7yN2JChym/zqSI+HC+IBiT5UqvnPKzG/B+345T2yUzMk7gliHL
	JEqf26Yga312NK1Z96aycZe/7/x/4X7XHJdNvohyUqA1+zfqMl/75OGjQ2xPprz8E630
	C8hnnzsDg0dc4ivy3Hcojz68TLqZigraNE5sNCKaUFTZ/cF1BibPS62V7S/KhxdmEhe9
	aaCOCf95VyiXyzxfMGCDFOfxrsMXXZsDydff43izliTsvWAoOfQa7HMWiStGuqxjqDhU
	lCHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Vgn+UlTMEx0G8vHhUWTyKvysG/zomvyCHriWyUSY9zU=;
	b=ig9E1puoZMt7R6fJoRYMvAWc51G3Vl0JAC/v3TqDjMGJvXg9gFrxALsKDjQX6u0AR7
	8wXSoKbonhxrYsXMD1cxiQeapK8qTnwVT8vXJwkfwL5BnkghkDYC1rUOLITtwNWuBc6l
	4qWhJIrs6rRrjVaL0WoFfsUlqbgt9sKvV4fMeMJp3Z3G2OdH3KPT4uahn2moRpNejjo/
	Rcm33D4Ckj79s4E5wDK7O2J1Uv1PODpgE/O2cAhWImXfgmI9ClG0u9X7HqOxCzLvTXlh
	FJdjeT6nRZtpscMrDesFpkVlESLV+yX9xpnZc47vYmHHdxH//0+sgKKwFkBrdUPY3qls
	cq5A==
X-Gm-Message-State: APt69E0D5/yJ1be1nvLx4DZbP1aYXHMkdStRj4El1w6mnn7RJOI4fU+C
	QoIvGNcAqNj/LnDu2mjBBoTeiNwlzxMwTPTwXQPaQA==
X-Google-Smtp-Source: ADUXVKIj+TZ1n4MPHeuY7xoA8FR5+aQxfV/gsj1wiKsGgB0+EGBvnhhN0WBMuV1maWLr7sQ3T4fxea869fkut1YynTY=
X-Received: by 2002:a17:902:b285:: with SMTP id
	u5-v6mr5370197plr.183.1528897361826; 
	Wed, 13 Jun 2018 06:42:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAOsp8o_KM7ZtmscjePc+E55-aZZBevV5pd=sWRWmkV5c8YTaYw@mail.gmail.com>
	<CANik3vGehMFhJZdReNZ3eJo=bp8SRFBRnP1G2ntqB8xri009eA@mail.gmail.com>
In-Reply-To: <CANik3vGehMFhJZdReNZ3eJo=bp8SRFBRnP1G2ntqB8xri009eA@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
Date: Wed, 13 Jun 2018 08:42:30 -0500
Message-ID: <CAOsp8o98NbO=55Y-8i2Ld6pv=ck2Qnxtb9rKXyKWku-kVXUSjQ@mail.gmail.com>
To: pidge@toganlabs.com
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Generating license/manifest for a specific layer?
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
X-List-Received-Date: Wed, 13 Jun 2018 13:42:44 -0000
Content-Type: multipart/alternative; boundary="000000000000265c32056e8628ab"

--000000000000265c32056e8628ab
Content-Type: text/plain; charset="UTF-8"

Beth,

This is for internal consumption. We want to be able to generate a full
manifest, and also one that reflects how we diverged from base Yocto
distribution.

On Mon, Jun 11, 2018 at 10:55 AM Beth Flanagan <pidge@toganlabs.com> wrote:

> On Mon, Jun 11, 2018 at 2:46 PM, Michael Habibi <mikehabibi@gmail.com>
> wrote:
> > Our use case is to capture the license files, manifest (package/version),
> > and download information only for packages we modify/add. We use our own
> > layer to modify/add packages, everything coming from standard Yocto
> layers
> > are untouched.
> >
> > Is there a way to generate this information on a layer-by-layer basis,
> > instead of a full manifest that includes all standard, unmodified
> packages?
>
> The easy (cheating) way, would be to modify the tmp/deploy/licenses
> artifact post build (I do it to remove -native- and -cross- from
> things I distribute as I'm not actually distributing them) or put in a
> post do_rootfs function that does it.
>
> I guess my question would be (and this is less a technical question
> and more of a legal one) is why would you want to only include a
> manifest for only part of what you're distributing (or am I
> misunderstanding what you're trying to do here?)
>
> -b
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--000000000000265c32056e8628ab
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Beth,<div><br></div><div>This is for internal consumption.=
 We want to be able to generate a full manifest, and also one that reflects=
 how we diverged from base Yocto distribution.</div></div><br><div class=3D=
"gmail_quote"><div dir=3D"ltr">On Mon, Jun 11, 2018 at 10:55 AM Beth Flanag=
an &lt;<a href=3D"mailto:pidge@toganlabs.com">pidge@toganlabs.com</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex">On Mon, Jun 11, 2018 at 2:46 =
PM, Michael Habibi &lt;<a href=3D"mailto:mikehabibi@gmail.com" target=3D"_b=
lank">mikehabibi@gmail.com</a>&gt; wrote:<br>
&gt; Our use case is to capture the license files, manifest (package/versio=
n),<br>
&gt; and download information only for packages we modify/add. We use our o=
wn<br>
&gt; layer to modify/add packages, everything coming from standard Yocto la=
yers<br>
&gt; are untouched.<br>
&gt;<br>
&gt; Is there a way to generate this information on a layer-by-layer basis,=
<br>
&gt; instead of a full manifest that includes all standard, unmodified pack=
ages?<br>
<br>
The easy (cheating) way, would be to modify the tmp/deploy/licenses<br>
artifact post build (I do it to remove -native- and -cross- from<br>
things I distribute as I&#39;m not actually distributing them) or put in a<=
br>
post do_rootfs function that does it.<br>
<br>
I guess my question would be (and this is less a technical question<br>
and more of a legal one) is why would you want to only include a<br>
manifest for only part of what you&#39;re distributing (or am I<br>
misunderstanding what you&#39;re trying to do here?)<br>
<br>
-b<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
&gt;<br>
</blockquote></div>

--000000000000265c32056e8628ab--
