Return-Path: <koen@beagleboard.org>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15121E0073F
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 10:27:28 -0700 (PDT)
Received: by eaab16 with SMTP id b16so628460eaa.35
	for <yocto@yoctoproject.org>; Wed, 27 Jun 2012 10:27:28 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=references:in-reply-to:mime-version:content-transfer-encoding
	:content-type:message-id:cc:x-mailer:from:subject:date:to
	:x-gm-message-state;
	bh=ZkZSjqDnyKWxje4J++SBVBJPBPZlYOj7YvTL86jH/TY=;
	b=i3zwvS4XCYFX7gtKAatdLBHyNny+KyrdmmIK2EQo5nAEY9niqdF6pnLC0mPW77EqG7
	Oygrl0BinFZcEeT4AvuuuuV/AT3JzRzCQZxYvkcNCmLaKmDyFiBGUIwERfWkwxbhrpBi
	6VXScKTMDEyF6uufwg+Y0FoRyIRLsp4hnYudGXNizyE2fkhuQRZo5ouDZ+VGYQDtAgPP
	JrvSShTXDrGvNkptqp7LlZgwIRO9dgrui82GgJbjnxA8zZJFV7vSU3GDSdJu1/zZz0+D
	z/cLrTh2Qr01jUtHEgqvK/BWtwOP5kTOK3WNIaFFRFLmNGZvcZy0GOcWLQOPAHAitFEo
	nbuw==
Received: by 10.14.27.136 with SMTP id e8mr4220917eea.156.1340818047685;
	Wed, 27 Jun 2012 10:27:27 -0700 (PDT)
Received: from [172.20.1.20] (ip545070eb.adsl-surfen.hetnet.nl.
	[84.80.112.235]) by mx.google.com with ESMTPS id
	v16sm159646821eem.17.2012.06.27.10.27.18
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 27 Jun 2012 10:27:22 -0700 (PDT)
References: <alpine.DEB.2.02.1206260459040.8547@oneiric>
	<10398861.esnekvBoZU@helios> <4FE9D965.4070906@linux.intel.com>
	<3153041.1FMPtSpq0x@helios> <4FE9E58C.9020408@r-finger.com>
	<alpine.DEB.2.02.1206261252060.5948@oneiric>
	<4FE9EEF6.7050001@r-finger.com> <4FEA0505.6010108@am.sony.com>
	<4FEACDE6.7040701@r-finger.com>
	<83905E03-FF88-48EC-9336-273B02FB9FB1@beagleboard.org>
	<CAME0jBSWAy_VJ00rKcZz3Hpt48dBZKuterZy7gN2SptmM-u2Lg@mail.gmail.com>
In-Reply-To: <CAME0jBSWAy_VJ00rKcZz3Hpt48dBZKuterZy7gN2SptmM-u2Lg@mail.gmail.com>
Mime-Version: 1.0 (1.0)
Message-Id: <F5A6AE58-A944-4B15-8564-7AF04E50E471@beagleboard.org>
X-Mailer: iPhone Mail (9B206)
From: Koen Kooi <koen@beagleboard.org>
Date: Wed, 27 Jun 2012 19:27:16 +0200
To: Chris Hallinan <challinan@gmail.com>
X-Gm-Message-State: ALoCoQl9o/n5HJ/Q44jKcEMSG2S9mM3GSEIpjhD1TOHEK74IIh4BihCQZjAZ6UxdtM89bau7M04l
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: <rant>the current yocto FAQ is pretty much valueless</rant>
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
X-List-Received-Date: Wed, 27 Jun 2012 17:27:29 -0000
Content-Transfer-Encoding: 7bit
Content-Type: multipart/alternative;
	boundary=Apple-Mail-4AAAD06F-678A-4C8C-9992-521EDE9B07DA

--Apple-Mail-4AAAD06F-678A-4C8C-9992-521EDE9B07DA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii



Op 27 jun. 2012 om 18:43 heeft Chris Hallinan <challinan@gmail.com> het volg=
ende geschreven:

> On Wed, Jun 27, 2012 at 10:59 AM, Koen Kooi <koen@beagleboard.org> wrote:
>=20
>=20
> Op 27 jun. 2012 om 11:09 heeft Tomas Frydrych <tf+lists.yocto@r-finger.com=
> het volgende geschreven:
>=20
> > Hi Tim,
> >
> > On 26/06/12 19:52, Tim Bird wrote:
> >> On 06/26/2012 10:18 AM, Tomas Frydrych wrote:
> >> For example, after reading various FAQs
> >> I still have no idea what kind of thing "Poky" is.  I know
> >> that bitbake is a build tool.  I know that OE is a package
> >> meta-information project.  Yocto Project is an umbrella project
> >> for a lot of tools and technologies (Poky among them).  But is
> >> Poky a distro (sample/reference or otherwise?) or something else?
> >
> > For those of us who have been around Poky well before Yocto came around,=

> > we know what Poky used to be, have some inkling what it is, but we are
> > not always entirely clear what Yocto is. :-)
> >
> >
> >> When I ran my recently-built image, my target /etc/issue had this conte=
nt:
> >> "Yocto (Built by Poky 7.0) 1.2"
> >
> > My understanding (with the above disclaimer!) is that Poky is a build
> > system, Yocto is a distro, so I read the above 'Yocto v1.2 image built
> > by the Poky v7.0 tool'. I think the point of maintaining the distinction=

> > is that you can use Poky without the Yocto Distro (/meta-yocto).
>=20
>=20
> Yocto is NOT a distro. Poky is both a distro and buildsystem. This thread h=
ighlights the reason the oe folks have been pushing to get rid of the 'poky'=
 name completely to avoid needless confusing situations like this.
> It's sad to see that even the official stuff gets it wrong...
>=20
>=20
> I took a stab at clarifying the terminology in a blog post back in April. =
 I *think* I got it mostly right ;)=20
>=20
> http://blogs.mentor.com/chrishallinan/blog/2012/04/13/yocto-versus-poky-ve=
rsus-angstrom-etc/

That sums it up pretty good!



>=20
> Regards,
>=20
> Chris
> --
> Life is like Linux - it never stands still.
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--Apple-Mail-4AAAD06F-678A-4C8C-9992-521EDE9B07DA
Content-Transfer-Encoding: 7bit
Content-Type: text/html;
	charset=utf-8

<html><head></head><body bgcolor="#FFFFFF"><div><br><br>Op 27 jun. 2012 om 18:43 heeft Chris Hallinan &lt;<a href="mailto:challinan@gmail.com">challinan@gmail.com</a>&gt; het volgende geschreven:<br><br></div><div></div><blockquote type="cite"><div>On Wed, Jun 27, 2012 at 10:59 AM, Koen Kooi <span dir="ltr">&lt;<a href="mailto:koen@beagleboard.org" target="_blank">koen@beagleboard.org</a>&gt;</span> wrote:<br><div class="gmail_quote"><blockquote class="gmail_quote" style="margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<br>
<br>
Op 27 jun. 2012 om 11:09 heeft Tomas Frydrych &lt;<a href="mailto:tf%2Blists.yocto@r-finger.com">tf+lists.yocto@r-finger.com</a>&gt; het volgende geschreven:<br>
<br>
&gt; Hi Tim,<br>
&gt;<br>
&gt; On 26/06/12 19:52, Tim Bird wrote:<br>
&gt;&gt; On 06/26/2012 10:18 AM, Tomas Frydrych wrote:<br>
&gt;&gt; For example, after reading various FAQs<br>
&gt;&gt; I still have no idea what kind of thing "Poky" is. &nbsp;I know<br>
&gt;&gt; that bitbake is a build tool. &nbsp;I know that OE is a package<br>
&gt;&gt; meta-information project. &nbsp;Yocto Project is an umbrella project<br>
&gt;&gt; for a lot of tools and technologies (Poky among them). &nbsp;But is<br>
&gt;&gt; Poky a distro (sample/reference or otherwise?) or something else?<br>
&gt;<br>
&gt; For those of us who have been around Poky well before Yocto came around,<br>
&gt; we know what Poky used to be, have some inkling what it is, but we are<br>
&gt; not always entirely clear what Yocto is. :-)<br>
&gt;<br>
&gt;<br>
&gt;&gt; When I ran my recently-built image, my target /etc/issue had this content:<br>
&gt;&gt; "Yocto (Built by Poky 7.0) 1.2"<br>
&gt;<br>
&gt; My understanding (with the above disclaimer!) is that Poky is a build<br>
&gt; system, Yocto is a distro, so I read the above 'Yocto v1.2 image built<br>
&gt; by the Poky v7.0 tool'. I think the point of maintaining the distinction<br>
&gt; is that you can use Poky without the Yocto Distro (/meta-yocto).<br>
<br>
<br>
Yocto is NOT a distro. Poky is both a distro and buildsystem. This thread highlights the reason the oe folks have been pushing to get rid of the 'poky' name completely to avoid needless confusing situations like this.<br>

It's sad to see that even the official stuff gets it wrong...<br>
<br></blockquote><div><br></div></div>I took a stab at clarifying the terminology in a blog post back in April. &nbsp;I *think* I got it mostly right ;)&nbsp;<div><br>
<div><a href="http://blogs.mentor.com/chrishallinan/blog/2012/04/13/yocto-versus-poky-versus-angstrom-etc/">http://blogs.mentor.com/chrishallinan/blog/2012/04/13/yocto-versus-poky-versus-angstrom-etc/</a></div></div></div></blockquote><div><br></div><div>That sums it up pretty good!</div><div><br></div><div><br></div><br><blockquote type="cite"><div><div><div><br></div>
<div>Regards,</div></div><div><br></div><div>Chris</div><div>--</div><div><span style="color:rgb(136,136,136);font-family:arial,sans-serif;font-size:13px;background-color:rgb(255,255,255)">Life is like Linux - it never stands still.</span></div>
</div></blockquote><blockquote type="cite"><div><span>_______________________________________________</span><br><span>yocto mailing list</span><br><span><a href="mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a></span><br><span><a href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a></span><br></div></blockquote></body></html>

--Apple-Mail-4AAAD06F-678A-4C8C-9992-521EDE9B07DA--
