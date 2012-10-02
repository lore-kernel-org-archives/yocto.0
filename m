Return-Path: <peachj@lexmark.com>
Received: from exprod8og119.obsmtp.com (exprod8og119.obsmtp.com [64.18.3.38])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E477E00524
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 11:46:00 -0700 (PDT)
Received: from mail-qa0-f48.google.com ([209.85.216.48]) (using TLSv1) by
	exprod8ob119.postini.com ([64.18.7.12]) with SMTP
	ID DSNKUGs2Z8JGM63PFVBc5kgFnUf0ECW2WesX@postini.com;
	Tue, 02 Oct 2012 11:46:00 PDT
Received: by qadc11 with SMTP id c11so948547qad.14
	for <yocto@yoctoproject.org>; Tue, 02 Oct 2012 11:45:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=PO2BDiv+k/qn9j9zqc8FgWe+z3YefjxMMucHzxapX84=;
	b=kb33fWXR/47hAZh+RKtx1uGKE6lLDjWAvHy4tYqZpjXhgJEThuMn2zH1oD8MsqvEBp
	bprCFIFtOLCqtvcjcx28ry+i53+iK5qW4vGOyjgP4mqrhNjAr3tOm9DL00zvVndTB/vX
	AORoUT6Rh0EticSJeeYaEl8RMfeq4WOh7ZvsI/dV5Gx1XRb8DlwG8B1Yuit9a64KRPY9
	jqU1ElwcDGgXe6jhTb8CzKnWZ6/rASEMpt2T0/qXFKX1A/PbT311+XpGmDk2D5WNQgWG
	tj33EMlDSkIr3bXXzBJzrF1brGCMDmf0NVgkMxjVrmwPSjFRJgV5/RgwfYSdDCyGW1V6
	EeEA==
MIME-Version: 1.0
Received: by 10.229.114.215 with SMTP id f23mr11995145qcq.93.1349203558843;
	Tue, 02 Oct 2012 11:45:58 -0700 (PDT)
Received: by 10.49.41.102 with HTTP; Tue, 2 Oct 2012 11:45:58 -0700 (PDT)
In-Reply-To: <506B23D1.5030901@r-finger.com>
References: <CA+QkY1CX70KjdW8RufaMcUYoK+wLwW-jUKpM7aDmDmmLbWEvKg@mail.gmail.com>
	<506B23D1.5030901@r-finger.com>
Date: Tue, 2 Oct 2012 14:45:58 -0400
Message-ID: <CA+QkY1COKHqV25RCOJ-7u+eEyFm-WFn1OP=3zFUiMm4UkBeoww@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: Tomas Frydrych <tf+lists.yocto@r-finger.com>
X-Gm-Message-State: ALoCoQmSeViLyyULzmkfvJyWz5FDaPsDBb7vtG+zbOdOI652ysufdKjwH5ILfpjpfm6cfO334eCm
Cc: yocto@yoctoproject.org
Subject: Re: How do you release distros produced with Yocto? How should I?
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
X-List-Received-Date: Tue, 02 Oct 2012 18:46:00 -0000
Content-Type: multipart/alternative; boundary=00235446ffecdac40504cb17ee96

--00235446ffecdac40504cb17ee96
Content-Type: text/plain; charset=ISO-8859-1

Tomas,


> Sounds to me like your situation implies a single distro + multiple
> machines, one for each distinct printer model; you can then specify
> revisions on per-machine basis.


I don't think that's actually what we want.  The architecture of each
machine will be the same.  That is, one ASIC will generally be on all the
printers in a family of products.  I think I actually have one machine +
multiple distros.  Or, should I really be counting each different printer
as its own machine?


> Whether you specify the machine specific
> revisions in the bb files, or whether you pull it together into an
> include file is a matter of taste more than anything else I suspect, as
> long as everyone knows what the deal is. But I'd advise not to specify
> package revisions local.conf, that's really for the developer/user to
> tweak, and it should not be stored in vcs, doings so just causes pain.
>

That's something that's come up in our side conversations here: local.conf
is really for developers to tweak.  I will try to take care and not use
local.conf for such a thing, and I will not store it in a VCS unless I can
think of a really compelling reason to do so.  Thanks for the advice there.


>
> I use the unified include file in Guacamayo for the packages that we
> maintain; this is for convenience, as during the development cycle I use
> AUTOREV for these packages, but for an actual release specify the
> revisions explicitly and having them all in one place makes this easier
> to do and not forget anything. See,
>
> https://github.com/Guacamayo/meta-guacamayo/tree/master/meta-guacamayo/conf/
> for how we got it set up.
>

So, to me it looks like you're using conf/distro/guacamayo.conf to set
those revisions.  That seems like that might work when there's only a
handful of revisions to set.  However, we'll likely have at least a hundred
packages for which we need to set/manipulate revisions.  I would think that
would get cumbersome, and in an organization the size of ours (500 or so
developers across two sites), there's not really going to be one person or
team who knows what should go in that file for a release.  Moreover, that
still leaves the problem of all those developers needing to know there are
at least two places in which their package revisions may be controlled.  Is
your organization significantly smaller than that or are we doing something
wrong?

Kind regards,

Jerrod

--00235446ffecdac40504cb17ee96
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote"><div>Tomas,</div><div>=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div class=3D"im">
</div>Sounds to me like your situation implies a single distro + multiple<b=
r>
machines, one for each distinct printer model; you can then specify<br>
revisions on per-machine basis. </blockquote><div><br></div><div>I don&#39;=
t think that&#39;s actually what we want. =A0The architecture of each machi=
ne will be the same. =A0That is, one ASIC will generally be on all the prin=
ters in a family of products. =A0I think I actually have one machine + mult=
iple distros. =A0Or, should I really be counting each different printer as =
its own machine?=A0</div>
<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">Whether you specify the machin=
e specific<br>
revisions in the bb files, or whether you pull it together into an<br>
include file is a matter of taste more than anything else I suspect, as<br>
long as everyone knows what the deal is. But I&#39;d advise not to specify<=
br>
package revisions local.conf, that&#39;s really for the developer/user to<b=
r>
tweak, and it should not be stored in vcs, doings so just causes pain.<br><=
/blockquote><div><br></div><div>That&#39;s something that&#39;s come up in =
our side conversations here: local.conf is really for developers to tweak. =
=A0I will try to take care and not use local.conf for such a thing, and I w=
ill not store it in a VCS unless I can think of a really compelling reason =
to do so. =A0Thanks for the advice there.</div>
<div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">
<br>
I use the unified include file in Guacamayo for the packages that we<br>
maintain; this is for convenience, as during the development cycle I use<br=
>
AUTOREV for these packages, but for an actual release specify the<br>
revisions explicitly and having them all in one place makes this easier<br>
to do and not forget anything. See,<br>
<a href=3D"https://github.com/Guacamayo/meta-guacamayo/tree/master/meta-gua=
camayo/conf/" target=3D"_blank">https://github.com/Guacamayo/meta-guacamayo=
/tree/master/meta-guacamayo/conf/</a><br>
for how we got it set up.<br></blockquote><div><br></div><div>So, to me it =
looks like you&#39;re using=A0conf/distro/guacamayo.conf to set those revis=
ions. =A0That seems like that might work when there&#39;s only a handful of=
 revisions to set. =A0However, we&#39;ll likely have at least a hundred pac=
kages for which we need to set/manipulate revisions. =A0I would think that =
would get cumbersome, and in an organization the size of ours (500 or so de=
velopers across two sites), there&#39;s not really going to be one person o=
r team who knows what should go in that file for a release. =A0Moreover, th=
at still leaves the problem of all those developers needing to know there a=
re at least two places in which their package revisions may be controlled. =
=A0Is your organization significantly smaller than that or are we doing som=
ething wrong?</div>
<div><br></div><div>Kind regards,</div><div><br></div><div>Jerrod</div><div=
>=A0</div></div>

--00235446ffecdac40504cb17ee96--
