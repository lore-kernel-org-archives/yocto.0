Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C8EEE0178A
	for <yocto@yoctoproject.org>; Sun,  3 Nov 2013 23:13:20 -0800 (PST)
Received: from [173.34.6.101] (port=38667 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VdELe-00024A-0E; Mon, 04 Nov 2013 02:13:18 -0500
Date: Mon, 4 Nov 2013 02:13:14 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Chris Larson <clarson@kergoth.com>
In-Reply-To: <CABcZANkbE2ynRntWGL8y4Nx6P6LODWodkjfDvMVpxoFcN6VP4A@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1311040212520.7633@oneiric>
References: <alpine.DEB.2.02.1311020605300.21679@oneiric>
	<CABcZANkbE2ynRntWGL8y4Nx6P6LODWodkjfDvMVpxoFcN6VP4A@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: explanation for ALTERNATIVE_LINK_NAME in ref manual seems incomplete
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
X-List-Received-Date: Mon, 04 Nov 2013 07:13:24 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-917432432-1383549197=:7633"

--8323329-917432432-1383549197=:7633
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Sun, 3 Nov 2013, Chris Larson wrote:

>
> On Sat, Nov 2, 2013 at 3:13 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>        on my quest to spiff up the ref manual variables glossary, a question
>       about ALTERNATIVE_LINK_NAME, explained here:
>
>       http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-ALTERNATIVE_LINK_NAME
>
>        at first glance, that explanation *suggests* that the purpose of that
>       variable is to support an alternative name to an existing command, but
>       it doesn't make it clear that a *very* common usage is to simply
>       create a link with precisely the same name elsewhere. you see a *lot*
>       of this throughout the recipes (like this snippet from util-linux):
>
>       ALTERNATIVE_LINK_NAME[dmesg] = "${base_bindir}/dmesg"
>       ALTERNATIVE_LINK_NAME[kill] = "${base_bindir}/kill"
>       ALTERNATIVE_LINK_NAME[more] = "${base_bindir}/more"
>       ALTERNATIVE_LINK_NAME[mkswap] = "${base_sbindir}/mkswap"
>       ALTERNATIVE_LINK_NAME[blockdev] = "${base_sbindir}/blockdev"
>
>       which appears to simply create symlinks from /bin to programs in
>       /usr/bin, yes? (that's what it's doing, right?) i suspect it would be
>       useful to mention that application in the explanation, unless i'm
>       totally misunderstanding what i'm reading.
>
>
> I’m pretty sure that’s not the case. Afaik it creates a link from ALTERNATIVE_TARGET[name] to ALTERNATIVE_LINK_NAME[name]. If the target isn’t defined, iirc
> it defaults to adding a .${BPN} suffix to the link name. See lines 41 through 45 of update-alternatives.bbclass:
>
>     # NOTE: If ALTERNATIVE_TARGET is not defined, it will inherit the value
>     # from ALTERNATIVE_LINK_NAME.
>     #
>     # NOTE: If the ALTERNATIVE_LINK_NAME and ALTERNATIVE_TARGET are the same,
>     # ALTERNATIVE_TARGET will have '.{BPN}' appended to it.

  ok, i obviously didn't read that carefully enough, thanks.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323329-917432432-1383549197=:7633--
