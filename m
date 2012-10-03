Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1933FE01199
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 00:59:10 -0700 (PDT)
Received: from [192.168.0.2] (host81-153-86-123.range81-153.btcentralplus.com
	[81.153.86.123]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 632F29ADE
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 08:59:06 +0100 (BST)
Message-ID: <506BF049.2010407@r-finger.com>
Date: Wed, 03 Oct 2012 08:59:05 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
CC: yocto@yoctoproject.org
References: <CA+QkY1CX70KjdW8RufaMcUYoK+wLwW-jUKpM7aDmDmmLbWEvKg@mail.gmail.com>
	<506B23D1.5030901@r-finger.com>
	<CA+QkY1COKHqV25RCOJ-7u+eEyFm-WFn1OP=3zFUiMm4UkBeoww@mail.gmail.com>
In-Reply-To: <CA+QkY1COKHqV25RCOJ-7u+eEyFm-WFn1OP=3zFUiMm4UkBeoww@mail.gmail.com>
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
X-List-Received-Date: Wed, 03 Oct 2012 07:59:10 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 02/10/12 19:45, Jerrod Peach wrote:
> I don't think that's actually what we want.  The architecture of each
> machine will be the same.  That is, one ASIC will generally be on all the
> printers in a family of products.  I think I actually have one machine +
> multiple distros.  Or, should I really be counting each different printer
> as its own machine?

The fact that the underlying HW is the same can be simply reflected by
having the actual HW-related definitions in a common include file. But
if printer X requires different version of package A from printer Y then
they are really best thought of as different machines -- you can make
packages specific to a machine architecture and then reliably pin the
version, you can't make packages distro-specific (the whole OE/Yocto set
up is built around an implicit premise that any given OE/Yocto instance
is made up of a single 'distro' and many 'machines', so the distro
leaves no mark on the packages).

If all that is different are strictly the VCS revisions, you can use
branching but if someone introduces some other subtle difference, like
printer-X requires --enable-feature-x for package A and printer-Y
requires --disable-feature-x for the same package, then using different
machines is the only option to handle this. If you use branching instead
of distinct machines in this scenario, you will have to maintain
distinct build locations *and* package repositories for each branch, as
there is no way to tell package-A with --enable-feature-x from branch
printer-x from package-A with --disable-feature-x from branch printer-y.

Another reason not to use branches is that this increases the
maintenance burden when making changes to packages that are common
across the branches; from experience even with just a couple of extra
branches folk invariably forget to merge the changes everywhere they
should (or merge them into places they should not).

Using different bb files per printer seems like a good idea until you
try it, but you quickly discover it does not really work. The main
problem here is that now packages further down the line can no longer
depend on package-A, and have to depend on package-A-printer-X instead,
so you will need to have multiple versions of the dependent packages
too, and then of those depending on them, and so on ... You might think
that PROVIDES_virtual/package-A would be an answer here, but that really
only works for distinct machines, so you can specify PREFERRED_PROVIDER
or use COMPATIBLE_MACHINE.


> However, we'll likely have at least a hundred
> packages for which we need to set/manipulate revisions.  I would think that
> would get cumbersome, and in an organization the size of ours (500 or so
> developers across two sites), there's not really going to be one person or
> team who knows what should go in that file for a release.  Moreover, that
> still leaves the problem of all those developers needing to know there are
> at least two places in which their package revisions may be controlled.  Is
> your organization significantly smaller than that or are we doing something
> wrong?

I would agree that in this scenario it would best to maintain the source
revisions in the bb recipes themselves, it keeps people rom stepping on
each others toes and accidentally changing revisions for other packages
(which is easily done in automatic merge-conflict resolution gone wrong).

Tomas

