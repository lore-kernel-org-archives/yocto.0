Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 0022C4C80BD4
	for <yocto@yoctoproject.org>; Fri, 19 Nov 2010 06:05:54 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAJC5mMM014207;
	Fri, 19 Nov 2010 12:05:48 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 13640-10; Fri, 19 Nov 2010 12:05:44 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAJC5f09014197
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 19 Nov 2010 12:05:41 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
In-Reply-To: <AANLkTim+W1qVYXnbJ448oNmOhCGTU=e2UX33RZebcN=r@mail.gmail.com>
References: <AANLkTim9rqmdOZf2bHwuqbkJRMAnWP4sFj11S1LPtUbG@mail.gmail.com>
	<625BA99ED14B2D499DC4E29D8138F1504D3667EC0C@shsmsx502.ccr.corp.intel.com>
	<AANLkTim+W1qVYXnbJ448oNmOhCGTU=e2UX33RZebcN=r@mail.gmail.com>
Date: Fri, 19 Nov 2010 12:05:27 +0000
Message-ID: <1290168327.1272.12243.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: inc files in recipes
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
X-List-Received-Date: Fri, 19 Nov 2010 12:05:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2010-11-19 at 10:42 +0100, Frans Meulenbroeks wrote:
> 2010/11/19 Tian, Kevin <kevin.tian@intel.com>:
> >>From: Frans Meulenbroeks
> >>Sent: Friday, November 19, 2010 4:45 PM
> >>
> >>Dear all,
> >>
> >>Peeking at flex I was wondering whether we should try to avoid using
> >>.inc files in recipes especially if there is only one recipe.
> >>
> >>flex has:
> >>frans@frans-desktop:~/yocto/poky-laverne-4.0$ ls meta/recipes-devtools/flex
> >>flex_2.5.35.bb flex.inc
> >
> > I think most .inc come from historical reason when the 1st poky repo is
> > created from OE side. After that Poky chooses to maintain only one version
> > which results in the fact that some .inc exists for one recipe
> 
> Guess so.
> >
> >>
> >>Here the inc file could be merged into the bb file.
> >>This has the advantage of having only a single file, so it is slightly
> >>easier if you want to read or maintain the recipe.
> >
> > One advantage of not doing so is to retrieve change history in git easily.
> > Version change on .bb is a rename which in git is simply a remove and
> > create, while with .inc you can easily track history. This also reduces the
> > commit size.
> 
> If I am correct git mv does preserve history although the name change
> makes it a little bit more difficult to track them.

git mv does not preserve history. Some of git's tools can detect renames
though (e.g. git diff -M).

> Wrt commit size: I agree that the commit size is bigger.
> If you want to minimize this you should maximize what goes into the inc.
> Personally when it comes to choosing between readability, cleanness
> etc and commit size, I go for the former.

The .inc files are kept around as it mirrors what is in OpenEmbedded.
We'll continue to do that until we work out what out relationship is
going to be there. I understand moving to a single .bb file would make
things more logical but it would remove any ability to diff files with
OE easily.

> > There's one case we actually suggest not using .inc for multiple versions:
> > both GPLv2 and GPLv3 exist for one package. That way we can avoid potential
> > contamination as much as possible.
> 
> If you want to avoid contamination as much as possible I would suggest
> creating two different folders. They are two different beasts that you
> want to maintain separately.
> 
> The same also holds if you want to keep two versions because they are
> e.g. functionwise very different.
> Sometimes this is already done (at least in OE, there we have e.g
> libsigc++-1.2 and libsigc++-2.0 and apache and apache2 directories,
> also sometimes there are differently named recipes (different PN) in
> the same folder, e.g. bluez and bluez4)

Having them in the same directory doesn't cause any complications and
using the same names means that creation of a GPLv3 image is much
simpler which is why we didn't rename the recipes.

Cheers,

Richard


