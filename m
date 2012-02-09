Return-Path: <bruce.ashfield@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74621E0123C
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2012 19:56:09 -0800 (PST)
Received: by dadp13 with SMTP id p13so1340610dad.35
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2012 19:56:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=418usD6ErBzxwEJ3XyjKGfz2nUSD3z9Q6QaEZYTR1tE=;
	b=d6rRPwy1azx+Sjp0Bl4W38JBs0g+UCpchoQ4nR83Tz1EAhC96P7WsFEk4mgV1kU4N4
	BvoiyLQo9EgHjJqY2bfgaIW+v7evWviWo5qASADRCrCZnsVTf55OqtuBQsdSkEJbLZNX
	sl4oIvbJuZWiA3DKTdqBA7vxkuHIeZ/6iWtg8=
MIME-Version: 1.0
Received: by 10.68.74.69 with SMTP id r5mr1252742pbv.118.1328759769309; Wed,
	08 Feb 2012 19:56:09 -0800 (PST)
Received: by 10.142.139.16 with HTTP; Wed, 8 Feb 2012 19:56:09 -0800 (PST)
In-Reply-To: <FC61EC5F-CAF2-4024-9E88-BE7F1F8EDA81@gmail.com>
References: <FC61EC5F-CAF2-4024-9E88-BE7F1F8EDA81@gmail.com>
Date: Wed, 8 Feb 2012 22:56:09 -0500
Message-ID: <CADkTA4OWU+1S9-F5S8o_4Lrdz3t2bamFmH7SZPj_YR4OX-Fw5w@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: David Smoot <davidsmoot@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: applying a custom kernel configuration to the "built in" routerstation pro bsp?
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
X-List-Received-Date: Thu, 09 Feb 2012 03:56:09 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Wed, Feb 8, 2012 at 10:08 PM, David Smoot <davidsmoot@gmail.com> wrote:
> I want to change some of the kernel configuration options for my
> routerstation pro. =A0I have a .config from a 2.6.37 kernel running on my
> routerstation pro that was not built in Yocto that has the options I want=
 to
> build in Yocto. =A0I am attempting to follow the instructions
> at=A0http://www.yoctoproject.org/docs/current/poky-ref-manual/poky-ref-ma=
nual.html#bsp-filelayout-kernel.
> But I am confused.
>
> Since I am using the routerstation pro, I do not have a separate BSP, it =
is
> "built in". =A0So I know I need to modify a .bbappend file to point to my
> config file, but I am not sure which bbappend where.

Built in or not .. it's all the same. Put the config items you want into a =
.cfg
file of the name of your choice.

In the layer of your choice, create a linux-yocto_2.6.37.bbappend file,
and list the .cfg file on the SRC_URI (just like you would any patch or oth=
er
source file). Those config items will be added to the board after the built=
 in
options and will override anything that was previously set.

If you were working with a local git repository, you could commit the chang=
e
directly to the tree .. but it doesn't sound like you are working in that m=
odel.

Cheers,

Bruce

>
> Thanks for your time.
> David Smoot
> davidsmoot@gmail.com
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



--=20
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

