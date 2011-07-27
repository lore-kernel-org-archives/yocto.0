Return-Path: <galak@kernel.crashing.org>
Received: from gate.crashing.org (gate.crashing.org [63.228.1.57])
	by mx1.pokylinux.org (Postfix) with ESMTP id D8B034C80094
	for <yocto@yoctoproject.org>; Wed, 27 Jul 2011 07:40:19 -0500 (CDT)
Received: from [IPv6:::1] (localhost.localdomain [127.0.0.1])
	by gate.crashing.org (8.14.1/8.13.8) with ESMTP id p6RCeDk2001381;
	Wed, 27 Jul 2011 07:40:13 -0500
Mime-Version: 1.0 (Apple Message framework v1084)
From: Kumar Gala <galak@kernel.crashing.org>
In-Reply-To: <1311756356.2344.332.camel@rex>
Date: Wed, 27 Jul 2011 07:40:14 -0500
Message-Id: <66F46EDD-010E-41CC-BE5E-196894B3BA22@kernel.crashing.org>
References: <FCF6621D-EE24-4113-AB03-A1FD94E3375C@kernel.crashing.org>
	<1311756356.2344.332.camel@rex>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
X-Mailer: Apple Mail (2.1084)
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Additional / new BSP collection?
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
X-List-Received-Date: Wed, 27 Jul 2011 12:40:22 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Jul 27, 2011, at 3:45 AM, Richard Purdie wrote:

> On Wed, 2011-07-27 at 00:21 -0500, Kumar Gala wrote:
>> Who is the best person to ask about adding new BSPs into yocto.  What
>> I mean by this is having a meta layer hosted on git.yoctoproject.org
>> like meta-intel and the mechanics associated with this (getting new
>> repo on git server, autobuilder support, webpage details, etc.).
>=20
> This list is as good a place as any! :)
>=20
> Its relatively easy to arrange for a git repository. The main things =
we
> ask are that it has clearly defined maintainership (a clear maintainer
> and submission process) and a clear scope. Do you have any specific =
BSPs
> in mind?

Maintainership would be straight forward.  Not sure about submissions =
process, what is done for meta-intel today?

BSP would be for Freescale PowerPC SoC and the reference designs =
produced by FSL for them.

> The wiki is available to host information and we can work out links on
> the website as the specific needs come up. Autobuilder support is
> something we need to figure out since its a finite resource but we can
> likely figure something out there once we understand what kind of BSPs
> we're talking about.
>=20
> Beth Flanagan <elizabeth.flanagan@intel.com> is the person who'd =
handle
> the mechanics of setting up the repository, the name is likely the
> hardest bit!

meta-fsl-ppc ;)

- k


