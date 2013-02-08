Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 8CD70E0027C
	for <yocto@yoctoproject.org>; Thu,  7 Feb 2013 17:58:38 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r181wWIv016611
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 7 Feb 2013 17:58:32 -0800 (PST)
Received: from bruce-ashfields-macbook.local (128.224.20.221) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.318.4; Thu, 7 Feb 2013 17:58:32 -0800
Message-ID: <51145BC6.8090307@windriver.com>
Date: Thu, 7 Feb 2013 20:58:30 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Rudolf Streif <rstreif@linuxfoundation.org>
References: <CA+gsK-o6CCdwsM3oHNvso2rGy7_LMBZEfkd0hc3BYXVmJBbQPg@mail.gmail.com>
	<CADkTA4M1NxUrQSYdwsDDNEApb-cM1=Cai+2MKxFzY04eZrexiw@mail.gmail.com>
	<CA+gsK-rz2FLBd0zG2gZ+_6Osd6VfWAgz7AnOxhPX1PoX2am6Vw@mail.gmail.com>
In-Reply-To: <CA+gsK-rz2FLBd0zG2gZ+_6Osd6VfWAgz7AnOxhPX1PoX2am6Vw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: PROVIDES for Yocto Kernel Recipes
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
X-List-Received-Date: Fri, 08 Feb 2013 01:58:38 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-02-07 8:52 PM, Rudolf Streif wrote:
> Yes, of course with a space. Proportional fonts don't work that well
> with code. :)

Back to my work account with a sane client now!

>
> That's why I am asking if anyone else found that to be a nuisance. Of
> course, for a BSP you have to set PREFERRED_VERSION. But for testing and
> working with different kernel version I would find it more convenient if
> I had not to change PREFERRED_VERSION in the machine file or override it
> in local.conf.
>
> It's also sort of an inconsistency. Typically, one would expect that you
> could run bitbake against a recipe by specifying the package name and

I'd have to leave this comment up to others with respect to consistency,
since I'm a kernel guy and not a long time oe-classic user (just my time
with yocto and oe-core). But I've never switched versions on the command
line like this myself. A matter of taste and habits I suppose.

I quick survey shows roughly:

../meta]> find . -name '*.bb' | xargs grep PV | grep SRCPV | wc -l
87

Almost 90 other recipes with some variant of SRCPV in their version string.
So unless I'm mistaken .. they'd all suffer the same issue as linux-yocto.

Cheers,

Bruce


> version. Using -b with the recipe file name is not an option since you
> would not get the bbappends.
>
> Cheers,
> Rudi
>
>
> On Thu, Feb 7, 2013 at 5:39 PM, Bruce Ashfield <bruce.ashfield@gmail.com
> <mailto:bruce.ashfield@gmail.com>> wrote:
>
>
>
>
>     On Thu, Feb 7, 2013 at 8:22 PM, Rudolf Streif
>     <rudolf.streif@linux.com <mailto:rudolf.streif@linux.com>> wrote:
>
>         I apologize if that has been brought up before.
>
>         The linux-yocto kernel recipes include the git tags into PV by
>         explicitly setting:
>
>         PV = "${LINUX_VERSION}+git${SRCPV}"
>
>         This means that you cannot for example do
>
>         bitbake linux-yocto-3.2
>
>         anymore because PROVIDES does not contain linux-yocto-3.2 but
>         only the rather cumbersome string linux-yocto-3.2+git${SRCPV},
>         with ${SRCPV} expanded of course.
>
>         The percent notation only works for
>
>         PREFERRED_VERSION_linux-yocto = "3.2%"
>
>         but does not work for
>
>         bitbake linux-yocto-3.2%
>
>         That really only leaves you with setting PREFERRED_VERSION which
>         is not that convenient if you just want to build a different
>         kernel version.
>
>         I am not sure how others feel about that and maybe I am missing
>         something but it would be rather simple to add that back by setting
>
>         PV = "${LINUX_VERSION} ${LINUX_VERSION}+git${SRCPV}"
>
>
>     You mean with a space in the version string ? I know that I don't
>     want directories floating around
>     with spaces, since they cause no end of troubles. But maybe it's
>     just the font in gmail playing
>     tricks with my eyes.
>
>     Perhaps Richard has a suggestion, but in 3+ years, this is the first
>     time that this particular issue
>     has come up. Most everyone is setting the PREFERRED_VERSION in their
>     bsps, or local.conf
>     and not using that particular mechanism of switching between kernels
>     .. myself included, and I
>     probably build more versions of linux-yocto than anyone you'll find :)
>
>     Don't get me wrong, I'm not dead set against changing it, but we do
>     need both the meta and
>     machine git hashes in the version to uniquely identify the tree (and
>     my no spaces comment!).
>     Maybe someone knows of a better way for command line switching of
>     the version ?
>
>     Cheers,
>
>     Bruce
>
>
>         Well, kind of, you still would have to know the minor version
>         number.
>
>         Cheers,
>         Rudi
>
>
>         _______________________________________________
>         yocto mailing list
>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>         https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
>     --
>     "Thou shalt not follow the NULL pointer, for chaos and madness await
>     thee at its end"
>
>
>
>
> --
> --
> *Rudolf J. Streif*
> Director of Embedded Solutions
> The Linux Foundation
>
> rudolf.streif@linux.com <mailto:rudolf.streif@linux.com>
> Phone: +1.619.631.5383
> Skype: rudolfstreif
> PGP: RSA 2048/2048 D6E7D28B
>
> Linux Foundation Events Schedule: events.linuxfoundation.org
> <http://events.linuxfoundation.org/>
> Linux Foundation Training Schedule: training.linuxfoundation.org
> <http://training.linuxfoundation.org/>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


