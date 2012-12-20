Return-Path: <peachj@lexmark.com>
Received: from exprod8og107.obsmtp.com (exprod8og107.obsmtp.com [64.18.3.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7939EE011ED
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2012 07:38:18 -0800 (PST)
Received: from mail-vb0-f72.google.com ([209.85.212.72]) (using TLSv1) by
	exprod8ob107.postini.com ([64.18.7.12]) with SMTP
	ID DSNKUNMw6d/6NEd8wsd0h7V2YvkLJWp3opNT@postini.com;
	Thu, 20 Dec 2012 07:38:18 PST
Received: by mail-vb0-f72.google.com with SMTP id b23so4975340vbz.3
	for <yocto@yoctoproject.org>; Thu, 20 Dec 2012 07:38:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=misChg0ek5cKWY5RLLUn1r/6HeqhU+Rw37VVOl/83Lk=;
	b=JHw7kCQbU6NpxpfhhqMgMaublxu2bx84yjdiF2BnUsfMg6ep/pZeTfglLDda7zUzCK
	kQGY/vtzVK8/oDSE6TAwVN2lplh02zcvKVQJ5JjdGm6H9ICds/pMAQ/4FRyV/hdYWs8W
	AxYiWUacRu73iNjMKWmtb041+OyTlcPreXHeXCJYU+Q1Ap3X4LGrZBD8xC4ANP7zUFRE
	gWfbDH2M5FwxBDD2GSJO1GPs+e7fSI9s8qC/deLMAdRNpd6He76yQo+OAHIriAyrmtWO
	WCqpglyat55maFjn2inhmd1f11HMqQ4D+o+hyBBtrfVqjjcYZhZkmJgn2Zuqv4zm6dxi
	UGSw==
X-Received: by 10.49.29.135 with SMTP id k7mr5664542qeh.39.1356017896984;
	Thu, 20 Dec 2012 07:38:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.49.29.135 with SMTP id k7mr5664526qeh.39.1356017896798; Thu,
	20 Dec 2012 07:38:16 -0800 (PST)
Received: by 10.49.50.97 with HTTP; Thu, 20 Dec 2012 07:38:16 -0800 (PST)
In-Reply-To: <50D32FE8.7020506@travelping.com>
References: <50D32FE8.7020506@travelping.com>
Date: Thu, 20 Dec 2012 10:38:16 -0500
Message-ID: <CA+QkY1Dt0tYj+iREYRNVGXsMmiuxBRMBpc1i9pZDatjjcYxSDw@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: Tino Breddin <tb@travelping.com>
X-Gm-Message-State: ALoCoQlcxvbgDh6s3gd+YdCvcNocr3f/vKYLQ3zfEtmO5wAxTkfjmWOpiDFgg7lACc53oMBrpR/+cwi9yFTIDNOErj0iscHsXRUl0n/68FLC2+DzKot6BYsVOf27+rWFa2dVk8FA+z76SuVmGzPULhhNGPEa5VVVMvQsxmjKcsojNo46ETINEDA=
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: How to update Git clone when rebuilding
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
X-List-Received-Date: Thu, 20 Dec 2012 15:38:18 -0000
Content-Type: multipart/alternative; boundary=047d7bea3f140c396604d14a853d

--047d7bea3f140c396604d14a853d
Content-Type: text/plain; charset=ISO-8859-1

Tino,

SRCREV = "${AUTOREV}"

You can read a little more about that in these two docs:

http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-manual.html#ref-variables-glossary
http://www.yoctoproject.org/docs/1.3/dev-manual/dev-manual.html#platdev-appdev-srcrev

Kind regards,

Jerrod


On Thu, Dec 20, 2012 at 10:34 AM, Tino Breddin <tb@travelping.com> wrote:

> Hi,
>
> I've noticed that bitbake won't update a Git checkout of an
> application referenced through a recipe when running a follow-up build.
>
> Is there some way to tell bitbake to check whether the remote Git
> repository provides updates which should trigger a rebuild of the
> application?
>
> Cheers,
> Tino
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--047d7bea3f140c396604d14a853d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>Tino,</div><div><br></div>SRCREV =3D &quot;${AUTOREV}&quot;<div><br></=
div><div>You can read a little more about that in these two docs:</div><div=
><br></div><div><a href=3D"http://www.yoctoproject.org/docs/current/poky-re=
f-manual/poky-ref-manual.html#ref-variables-glossary">http://www.yoctoproje=
ct.org/docs/current/poky-ref-manual/poky-ref-manual.html#ref-variables-glos=
sary</a><br>
</div><div><a href=3D"http://www.yoctoproject.org/docs/1.3/dev-manual/dev-m=
anual.html#platdev-appdev-srcrev">http://www.yoctoproject.org/docs/1.3/dev-=
manual/dev-manual.html#platdev-appdev-srcrev</a><br></div><div><br></div>
<div>Kind regards,</div><div><br></div><div>Jerrod</div><div class=3D"gmail=
_extra"><br><br><div class=3D"gmail_quote">On Thu, Dec 20, 2012 at 10:34 AM=
, Tino Breddin <span dir=3D"ltr">&lt;<a href=3D"mailto:tb@travelping.com" t=
arget=3D"_blank">tb@travelping.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi,<br>
<br>
I&#39;ve noticed that bitbake won&#39;t update a Git checkout of an<br>
application referenced through a recipe when running a follow-up build.<br>
<br>
Is there some way to tell bitbake to check whether the remote Git<br>
repository provides updates which should trigger a rebuild of the<br>
application?<br>
<br>
Cheers,<br>
Tino<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br></div>

--047d7bea3f140c396604d14a853d--
