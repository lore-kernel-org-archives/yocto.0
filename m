Return-Path: <b.hutchman@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0815E00597
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 10:53:10 -0800 (PST)
Received: by bkat8 with SMTP id t8so1055236bka.35
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 10:53:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=4xGBD8TLliVkiS6YFc/pEqgWMUVor0CwDuPDJ6eRNp0=;
	b=q3WDptTEvpf9dnmtCQ1gal+0b6wcvv74pDBGuKd78c+jAQk1sCUiQeNvvP4TGW+UYg
	EEiS4ZrJPOUN96R/MSJgmEir9xtiPkRrPNRh7noc087WkI6M0pYfmnw02EPmHJGH4bIp
	SJxw73V0SXqGTIgC/h+eOVb5mc+keF1Y3wKWE=
MIME-Version: 1.0
Received: by 10.204.156.155 with SMTP id x27mr1607058bkw.4.1327603989583; Thu,
	26 Jan 2012 10:53:09 -0800 (PST)
Received: by 10.205.141.203 with HTTP; Thu, 26 Jan 2012 10:53:09 -0800 (PST)
In-Reply-To: <4F2183B6.9070603@mlbassoc.com>
References: <CAFZh4h9YHz9VhdT3qHrrXQwaWn_qK4wpQ-JzPihO0qyhRfdE5A@mail.gmail.com>
	<CAFZh4h-5m535Uod4=7hYmZzhRaqM8LtpHw1bfE0CQdXPdpFz7A@mail.gmail.com>
	<4F2183B6.9070603@mlbassoc.com>
Date: Thu, 26 Jan 2012 13:53:09 -0500
Message-ID: <CAFZh4h-0h0LOJAuMDdoOx7YHa9ofpbApGSb34AZaLq=MjtB54g@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: yocto@yoctoproject.org
Subject: Re: How to get opkg in rootfilesystem
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
X-List-Received-Date: Thu, 26 Jan 2012 18:53:11 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Thu, Jan 26, 2012 at 11:47 AM, Gary Thomas <gary@mlbassoc.com> wrote:
> On 2012-01-26 09:36, Brian Hutchinson wrote:
> Because you asked to build an absolutely minimal root file system.
> In this case, it's expected that you don't want to have opkg available.
> If you still want this very minimal system *and* opkg, just add the
> package management as previously instructed.
> =A0EXTRA_IMAGE_FEATURES +=3D "package_management"

I'm not building minimal.  I built core-image-minimal and it truly was
minimal.  Nothing in /usr/lib!

Next I build core-image-base.  Most of the Angstrom & Arago images
I've build that were minimal-ish had opkg.

I know I should probably be doing this with recipes/layers but I'm not
quite there yet.

Here is my typical use case.  I start with a base image (NFS mounted)
and then install only the packages I need to a target for what I'm
doing.  For development, I'll include a bunch of things that are not
in the rootfs of something that is shipped in a product.  But for
development, an engineer might be interested in trying something quick
and it is nice to be able to do a opkg install and pull a package from
a local repository quickly rather than me try to come up with a custom
layer and wait hours for it to build.

I'm doing a build now and it looks like it is pulling in some opkg
stuff this time.  I took the
EXTRA_IMAGE_FEATURES_append_pn-<yourimage> =3D from Khem's email literal
as I know enough about yocto to be dangerous at this point. ;)

Ah, build just finish and a grep of the rootfs tar shows a
/etc/opkg.conf and a opkg bin sym link so I'm good for the moment!

Thank you all for showing me the way (again)!

Regards,

Brian

