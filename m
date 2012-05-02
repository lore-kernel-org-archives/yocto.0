Return-Path: <kergoth@gmail.com>
Received: from mail-wi0-f176.google.com (mail-wi0-f176.google.com
	[209.85.212.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 17FA8E0140E
	for <yocto@yoctoproject.org>; Wed,  2 May 2012 07:51:01 -0700 (PDT)
Received: by wibhm17 with SMTP id hm17so4131496wib.11
	for <yocto@yoctoproject.org>; Wed, 02 May 2012 07:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=n7UIoErGCLRol1MTMJ01EXTXPc5/THkALOIyL+hjcCM=;
	b=rwEILxCZMEYEFFmyGIIqaAR3XxNr4/FYGDXt3QPK9LWfXUFkV/0uPCvw0LneFUOiOH
	ZCIvKVZ+Bi1y+rdRiZJyMw3xQFbJV1PGQBuAFYsd8XW9OEX/mW0VscEzNxU38QdZJMs2
	Xhm3GxSlQk0PAxeLlxXKl+odhAld9oC569ESZRMcoyPMcMQq0rX73u0X8Ej9eYkgXwsZ
	0+h2HE16c7DNqrjNPjQtKfHR20MDNNkofYDikKYQh3SpJYgWe2mnCwoevkGNXXX6bKqM
	X4meDk6+VUKiQC3EYujlI1KYBPlxR0wxyAJRUj0Fbj4+dCVtHc6PMqmrsYGYcwNMMs/d
	vM9w==
Received: by 10.216.134.145 with SMTP id s17mr2729377wei.22.1335970261143;
	Wed, 02 May 2012 07:51:01 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.216.209.9 with HTTP; Wed, 2 May 2012 07:50:40 -0700 (PDT)
In-Reply-To: <2DD299EF-A5EA-4972-8C5F-15393E7AE0C8@gmail.com>
References: <2DD299EF-A5EA-4972-8C5F-15393E7AE0C8@gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 2 May 2012 07:50:40 -0700
X-Google-Sender-Auth: c7Zu8IkXHQYkJ62tG2N2MTg07r0
Message-ID: <CABcZANkRJ7bsvog_gj4Dk6fr1i1wfnX0eyLEYHisG5Smrqdabw@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Using meta repositories from OpenEmbedded and Yocto projects
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
X-List-Received-Date: Wed, 02 May 2012 14:51:02 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, May 2, 2012 at 7:46 AM, Elvis Dowson <elvis.dowson@gmail.com> wrote=
:
> =C2=A0 =C2=A0 =C2=A0 =C2=A0Can I re-use the meta-openembedded git reposit=
ories from
> openembedded.org and steve sakoman's meta-sakoman repositories (contains
> support for the Gumstix Overo board), and check it out inside a checkout =
of
> the yocto poky git repository, to take advantage of the latest yocto and
> openembedded recipes and build it for the Gumstix Overo board?
>
> for example:
>
> poky
> meta-openembedded=C2=A0 (from=C2=A0git://git.openembedded.org/meta-openem=
bedded)
> meta-openembedded-contrib=C2=A0(from=C2=A0git://git.openembedded.org/meta=
-openembedded-contrib)
> meta-sakoman.git=C2=A0(from=C2=A0git://www.sakoman.com/git/meta-sakoman)
>
> I've used OpenEmbedded before, and this is my first time with Yocto, and =
I
> see a bunch of meta-* repositories, and was wondering if including them
> inside the main poky folder was the way to go, to add additional support
> from various sources.

Where the layers are doesn't matter. Put them wherever you want them,
just ensure you add their paths to build/conf/bblayers.conf's BBLAYERS
variable.
--=20
Christopher Larson

