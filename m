Return-Path: <dhanush.ks@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD133E007D1; Thu, 16 Aug 2018 13:20:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (dhanush.ks[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f173.google.com (mail-qt0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52D5FE006B4
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2018 13:20:02 -0700 (PDT)
Received: by mail-qt0-f173.google.com with SMTP id z8-v6so6294314qto.9
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2018 13:20:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=fR26soGXKgR7ggO7/mJAQXOpiZYB85l0mLeOUsMnlws=;
	b=V6o8J0dHyUB5W91yNnGILE+1MxbW/9qP4uMR/FXQf3IKw7Jh+NbLnC2P5OL3CS/CdV
	Ahse4Cc3LzYUA6yyouzUakpvUH1Lzb56Ij7hORa2bNe/6eO31UNL+5MydYpq7EdL/Ttp
	ndodOIiFTHAufRgq/osa2yaKTn7Wu7y3yH/7g8eowJKniPmO11dFi/BfJUdTAAhO6tNZ
	px1jYr0U9gGp/euSl5rCWZMv5j617vQg3Hvx5Taz4zzylCzvZHsmjttzouMOg7W8oCFS
	Tr5JWf+45hm4nPmNBg2e9ppNKEJas6ZgTsf6G9xsadEaS5DkFcwN+BKVBnUaXJM2lnwh
	nQbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=fR26soGXKgR7ggO7/mJAQXOpiZYB85l0mLeOUsMnlws=;
	b=ATRHNTpHZV8y7FSYPgvKLHxBdDxNk05IihJR9+z1vPv/K0h2eAbf5FPf4W5eRg/t+6
	k3t9I3tiQPjOu0EKjUrCHSYQmBCj5FOJUAmn3nlB5zChYchzXZzW7AG4LTL0jXTK7h75
	zwAV41cqJ2g7W0BO4f81ATd3cV8PeSGNHEfraFyy+sN6cm3FnwmmqQlCtaFPJ3plrIG3
	2WOPkolOBGyg410X89HCo+3hY5uCzSXxV5RHuv36v/jbm/Hrr2IpDn4xWGhGKrYKw2ue
	G52W1oIM3yif/IBP5yaCoJm6ZMBWpB3oUjIsiGaQpk8mAqNSfnqeRPxdiZTFRybGnlfB
	s6Gg==
X-Gm-Message-State: AOUpUlHsdvi4rVsjlS5ZSJno+EKM8Q69toIPgbvBIzm0ONDVIBSm9TzR
	nbum58hTLwnMvrQkqzQfUGjZqVl4v9gt+GNrf7E=
X-Google-Smtp-Source: AA+uWPyurt/gZpLCaXFN187ivcYWsu6snz1Ov8hZ+SaRx+vBWYimGDnGs6Rctm1fbUWZN0uwNlJpyWIiJScJ9VsANTY=
X-Received: by 2002:ac8:35b8:: with SMTP id
	k53-v6mr31269513qtb.39.1534450801639; 
	Thu, 16 Aug 2018 13:20:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAKPYHZ7ey2AXvFCY0nC6e4eNS6oA4Cdve38Ccrf1QUU0EitFoQ@mail.gmail.com>
	<CAJ86T=UJV7VPzWNDPJB2qx7M_D32ycQ2nXT=d8uYdcMBK2qp8g@mail.gmail.com>
In-Reply-To: <CAJ86T=UJV7VPzWNDPJB2qx7M_D32ycQ2nXT=d8uYdcMBK2qp8g@mail.gmail.com>
From: "Dhanush K.S" <dhanush.ks@gmail.com>
Date: Thu, 16 Aug 2018 22:19:51 +0200
Message-ID: <CAKPYHZ4mhzvzkyY1sM=+-Tp=kvCg13qPn3dJo43_ZO0XW8ZV6Q@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: BITBAKE ADD-LAYER | HELP!!
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
X-List-Received-Date: Thu, 16 Aug 2018 20:20:04 -0000
Content-Type: multipart/alternative; boundary="000000000000f507b30573932adc"

--000000000000f507b30573932adc
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

No. That doesn't help as well. Rather I get an error with
meta-openembedded/meta-oe.

Mit freundlichen Gr=C3=BC=C3=9Fen / Best Regards,
Dhanush Keshava Reddy Soppahalli
+4915216144064

On Thu, Aug 16, 2018, 21:42 Andre McCurdy <armccurdy@gmail.com> wrote:

> On Thu, Aug 16, 2018 at 12:52 AM, Dhanush K.S <dhanush.ks@gmail.com>
> wrote:
> > Hello MailingList,
> >
> > I just upgraded yocto to the latest release (Sumo 19.0 /Yocto 2.5.1).
> > Currently i am trying to add the meta-openembedded layer to my
> > conf/bblayers.conf using the command "bitbake-layers add-layer
> > DIRECTORY_PATH/LAYER".
> >
> > But I am getting parseError at times.
> >
> > Is it absolutely necessary to checkout the meta-openembedded layer to t=
he
> > same Branch as that of the Yocto Version?
>
> Yes, it is. Do your errors go away if you do that?
>
> > or is it alright to stay in the
> > master Branch?
> > I can add the meta-oe sub-layer while on master but i get parseError
> when on
> > the Sumo branch.
> > I am not able to add the meta-python and meta-networking sub-layers of
> > meta-openembedded to the conf/bblayers.conf file without getting parse
> > errors. (meta-networking sub-layer depends on meta-python, so until I
> > resolve that I cannot add this)
> >
> >  [ac500v3@localhost build-2.5]$ bitbake-layers add-layer
> > /opt/ac500/yocto/trunk/yocto/next/meta-openembedded/meta-python/
> > NOTE: Starting bitbake server...
> > Loading cache: 100%
> >
> |########################################################################=
###########################################################################=
###########################################################################=
##############|
> > Time: 0:00:00
> > Loaded 499 entries from dependency cache.
> > ERROR: ParseError at
> >
> /opt/ac500/yocto/trunk/yocto/next/meta-openembedded/meta-python/recipes-d=
evtools/python/
> python-pbr_4.2.0.bb:3:
> > Could not include required file recipes-devtools/python/python-pbr.inc
> > | ETA:  --:--:--
> >
> > Summary: There was 1 ERROR message shown, returning a non-zero exit cod=
e.
> > ERROR: Parse failure with the specified layer added
> >
> > What and where am I going wrong?
> >
> >
> > Mit freundlichen Gr=C3=BC=C3=9Fen / Best Regards,
> > Dhanush Keshava Reddy Soppahalli
> > Mob: +4915216144064
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--000000000000f507b30573932adc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">No. That doesn&#39;t help as well. Rather I get an error =
with meta-openembedded/meta-oe.<br><br><div data-smartmail=3D"gmail_signatu=
re">Mit freundlichen Gr=C3=BC=C3=9Fen / Best Regards,<br>Dhanush Keshava Re=
ddy Soppahalli<br>+4915216144064</div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr">On Thu, Aug 16, 2018, 21:42 Andre McCurdy &lt;<a href=3D"m=
ailto:armccurdy@gmail.com">armccurdy@gmail.com</a>&gt; wrote:<br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex">On Thu, Aug 16, 2018 at 12:52 AM, Dhanush K.S &l=
t;<a href=3D"mailto:dhanush.ks@gmail.com" target=3D"_blank" rel=3D"noreferr=
er">dhanush.ks@gmail.com</a>&gt; wrote:<br>
&gt; Hello MailingList,<br>
&gt;<br>
&gt; I just upgraded yocto to the latest release (Sumo 19.0 /Yocto 2.5.1).<=
br>
&gt; Currently i am trying to add the meta-openembedded layer to my<br>
&gt; conf/bblayers.conf using the command &quot;bitbake-layers add-layer<br=
>
&gt; DIRECTORY_PATH/LAYER&quot;.<br>
&gt;<br>
&gt; But I am getting parseError at times.<br>
&gt;<br>
&gt; Is it absolutely necessary to checkout the meta-openembedded layer to =
the<br>
&gt; same Branch as that of the Yocto Version?<br>
<br>
Yes, it is. Do your errors go away if you do that?<br>
<br>
&gt; or is it alright to stay in the<br>
&gt; master Branch?<br>
&gt; I can add the meta-oe sub-layer while on master but i get parseError w=
hen on<br>
&gt; the Sumo branch.<br>
&gt; I am not able to add the meta-python and meta-networking sub-layers of=
<br>
&gt; meta-openembedded to the conf/bblayers.conf file without getting parse=
<br>
&gt; errors. (meta-networking sub-layer depends on meta-python, so until I<=
br>
&gt; resolve that I cannot add this)<br>
&gt;<br>
&gt;=C2=A0 [ac500v3@localhost build-2.5]$ bitbake-layers add-layer<br>
&gt; /opt/ac500/yocto/trunk/yocto/next/meta-openembedded/meta-python/<br>
&gt; NOTE: Starting bitbake server...<br>
&gt; Loading cache: 100%<br>
&gt; |#####################################################################=
###########################################################################=
###########################################################################=
#################|<br>
&gt; Time: 0:00:00<br>
&gt; Loaded 499 entries from dependency cache.<br>
&gt; ERROR: ParseError at<br>
&gt; /opt/ac500/yocto/trunk/yocto/next/meta-openembedded/meta-python/recipe=
s-devtools/python/<a href=3D"http://python-pbr_4.2.0.bb:3" rel=3D"noreferre=
r noreferrer" target=3D"_blank">python-pbr_4.2.0.bb:3</a>:<br>
&gt; Could not include required file recipes-devtools/python/python-pbr.inc=
<br>
&gt; | ETA:=C2=A0 --:--:--<br>
&gt;<br>
&gt; Summary: There was 1 ERROR message shown, returning a non-zero exit co=
de.<br>
&gt; ERROR: Parse failure with the specified layer added<br>
&gt;<br>
&gt; What and where am I going wrong?<br>
&gt;<br>
&gt;<br>
&gt; Mit freundlichen Gr=C3=BC=C3=9Fen / Best Regards,<br>
&gt; Dhanush Keshava Reddy Soppahalli<br>
&gt; Mob: +4915216144064<br>
&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank" rel=3D"nor=
eferrer">yocto@yoctoproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo=
/yocto</a><br>
&gt;<br>
</blockquote></div>

--000000000000f507b30573932adc--
