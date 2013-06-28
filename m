Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f46.google.com (mail-pa0-f46.google.com
	[209.85.220.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0747EE014E4
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 13:02:03 -0700 (PDT)
Received: by mail-pa0-f46.google.com with SMTP id fa11so2817209pad.5
	for <yocto@yoctoproject.org>; Fri, 28 Jun 2013 13:02:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:message-id:references:to:x-mailer;
	bh=k33tnBBngpKmmVtINUvy/MWLizXeLkHPyjY2SJvpfrI=;
	b=u8Ng71AiH2ZcGaPB+iO2p5YfBcJOBnOZQYsCW2n0AoGp0osiwGhwJlPBaU18vtau7y
	f83twRPf5zVvJW5uykkF/FraQT/TsQ/bpu1r3mC/JgI5ykptjW897etFM0pFB6avhnED
	W/8vOB+THN7vGBulkIhoZ5PRttX1eVOQFttpoKr6DebIlYU/UySKG+g2f2xnp8CWGaY6
	xInKXsDFoOMaInhfEY9eii5lsuXNm7mJfRZ9U5Y+Gjxc1NjXlCxGIHTIpb0DYlHQvLON
	qttVExGPdtoLNzTJkiFjTEei102zvbQDsF9oCmJCl3cID9hJxkN7/rLlZmhORlkIHhsG
	c00Q==
X-Received: by 10.67.4.196 with SMTP id cg4mr13177826pad.117.1372449722999;
	Fri, 28 Jun 2013 13:02:02 -0700 (PDT)
Received: from kosborne-sslvpn-nc.jnpr.net (natint3.juniper.net.
	[66.129.224.36])
	by mx.google.com with ESMTPSA id ib9sm9478923pbc.43.2013.06.28.13.02.01
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 28 Jun 2013 13:02:02 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.5 \(1508\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <CA+gsK-phin-6EsfXixkC1OWfpg6J4oK22NOp+duP7aXAgvbM5w@mail.gmail.com>
Date: Fri, 28 Jun 2013 13:02:00 -0700
Message-Id: <D4BD4C7E-8D99-4C55-821D-DF8C2BF9F6EB@gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF50C1A@ORSMSX101.amr.corp.intel.com>
	<CDE892AD.36CA0%david.c.stewart@intel.com>
	<000001ce6de8$70639de0$512ad9a0$@annabooks.com>
	<CALmOhg=h=j+uHiPdGShjZwtL97jsnhz1v6T4GRfcge0jJypTKQ@mail.gmail.com>
	<CA+gsK-orLA13kBxTSj-E451GQKKdy8L6hUHQxKQgFqg-VNiK8Q@mail.gmail.com>
	<CALmOhgmpSjx-D-EycMX9AJv1Rwgrvv3VE2jKqakd4kUtbXYHJg@mail.gmail.com>
	<CA+gsK-phin-6EsfXixkC1OWfpg6J4oK22NOp+duP7aXAgvbM5w@mail.gmail.com>
To: Rudolf Streif <rstreif@linuxfoundation.org>
X-Mailer: Apple Mail (2.1508)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Documenting YP Development Environment in more detail
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
X-List-Received-Date: Fri, 28 Jun 2013 20:02:04 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_F3D57E63-95C0-423F-AF80-5B81E22F7568"

--Apple-Mail=_F3D57E63-95C0-423F-AF80-5B81E22F7568
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=iso-8859-1


On Jun 24, 2013, at 10:15 PM, Rudolf Streif =
<rstreif@linuxfoundation.org> wrote:

> Hi Trevor,
>=20
>=20
> On Mon, Jun 24, 2013 at 5:56 AM, Trevor Woerner =
<trevor.woerner@linaro.org> wrote:
> Awesome! That's great news! I was hoping someone would "beat me to it"
> :-) I look forward to reading it once it's done. Do you have a
> publisher or an expected release date?
>=20
> Yes, I do. Pearson and the release date is early next year (Embedded =
Linux Conference is my target).
> =20
> An appendix on Android's "repo" tool might make for an excellent
> addition; it seems some Yocto projects are showing lots of interest in
> using it.
>=20
> The idea is to integrate/use it with YP? I know what repo does and =
that it is built on top of git but I have not looked behind the scenes =
to figure out how it does its job and how it can be used with something =
else like YP instead of with the Android repositories and review system.=20=

>=20

We use android repo internally to manage the layers and I think there =
are projects out there like here

=
http://www.jann.cc/2012/08/08/building_freescale_s_community_yocto_bsp_for=
_the_olinuxino.html

which are also using android repo to manage layers.

> Cheers,
> Rudi=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_F3D57E63-95C0-423F-AF80-5B81E22F7568
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=iso-8859-1

<html><head><meta http-equiv="Content-Type" content="text/html charset=iso-8859-1"></head><body style="word-wrap: break-word; -webkit-nbsp-mode: space; -webkit-line-break: after-white-space; "><br><div><div>On Jun 24, 2013, at 10:15 PM, Rudolf Streif &lt;<a href="mailto:rstreif@linuxfoundation.org">rstreif@linuxfoundation.org</a>&gt; wrote:</div><br class="Apple-interchange-newline"><blockquote type="cite"><div dir="ltr">Hi Trevor,<div class="gmail_extra"><br><br><div class="gmail_quote">On Mon, Jun 24, 2013 at 5:56 AM, Trevor Woerner <span dir="ltr">&lt;<a href="mailto:trevor.woerner@linaro.org" target="_blank">trevor.woerner@linaro.org</a>&gt;</span> wrote:<br>
<blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Awesome! That's great news! I was hoping someone would "beat me to it"<br>
:-) I look forward to reading it once it's done. Do you have a<br>
publisher or an expected release date?<br>
<br></blockquote><div>Yes, I do. Pearson and the release date is early next year (Embedded Linux Conference is my target).</div><div>&nbsp;</div><blockquote class="gmail_quote" style="margin: 0px 0px 0px 0.8ex; border-left-width: 1px; border-left-color: rgb(204, 204, 204); border-left-style: solid; padding-left: 1ex; position: static; z-index: auto; ">

An appendix on Android's "repo" tool might make for an excellent<br>
addition; it seems some Yocto projects are showing lots of interest in<br>
using it.<br>
<div class="im"><br></div></blockquote><div>The idea is to integrate/use it with YP? I know what repo does and that it is built on top of git but I have not looked behind the scenes to figure out how it does its job and how it can be used with something else like YP instead of with the Android repositories and review system.&nbsp;</div>
<div><br></div></div></div></div></blockquote><div><br></div><div>We use android repo internally to manage the layers and I think there are projects out there like here</div><div><br></div><div><a href="http://www.jann.cc/2012/08/08/building_freescale_s_community_yocto_bsp_for_the_olinuxino.html">http://www.jann.cc/2012/08/08/building_freescale_s_community_yocto_bsp_for_the_olinuxino.html</a></div><div><br></div><div>which are also using android repo to manage layers.</div><br><blockquote type="cite"><div dir="ltr"><div class="gmail_extra"><div class="gmail_quote"><div>Cheers,</div><div>Rudi&nbsp;</div></div>
</div></div>
_______________________________________________<br>yocto mailing list<br><a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>https://lists.yoctoproject.org/listinfo/yocto<br></blockquote></div><br></body></html>

--Apple-Mail=_F3D57E63-95C0-423F-AF80-5B81E22F7568--
