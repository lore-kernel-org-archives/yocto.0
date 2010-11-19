Return-Path: <rpurdie@linux.intel.com>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id C8B394C80BD4
	for <yocto@yoctoproject.org>; Fri, 19 Nov 2010 06:02:50 -0600 (CST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAJC2lv9014117;
	Fri, 19 Nov 2010 12:02:47 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 13640-08; Fri, 19 Nov 2010 12:02:43 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id oAJC2e9H014111
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 19 Nov 2010 12:02:41 GMT
From: Richard Purdie <rpurdie@linux.intel.com>
To: "Tian, Kevin" <kevin.tian@intel.com>
In-Reply-To: <625BA99ED14B2D499DC4E29D8138F1504D3667EC1C@shsmsx502.ccr.corp.intel.com>
References: <AANLkTim9rqmdOZf2bHwuqbkJRMAnWP4sFj11S1LPtUbG@mail.gmail.com>
	<625BA99ED14B2D499DC4E29D8138F1504D3667EC0C@shsmsx502.ccr.corp.intel.com>
	<AANLkTim+W1qVYXnbJ448oNmOhCGTU=e2UX33RZebcN=r@mail.gmail.com>
	<625BA99ED14B2D499DC4E29D8138F1504D3667EC1C@shsmsx502.ccr.corp.intel.com>
Date: Fri, 19 Nov 2010 12:02:26 +0000
Message-ID: <1290168146.1272.12237.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 19 Nov 2010 12:02:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2010-11-19 at 17:47 +0800, Tian, Kevin wrote:
> >From: Frans Meulenbroeks [mailto:fransmeulenbroeks@gmail.com]
> >Sent: Friday, November 19, 2010 5:43 PM
> >
> >>
> >>>
> >>>Here the inc file could be merged into the bb file.
> >>>This has the advantage of having only a single file, so it is slightly
> >>>easier if you want to read or maintain the recipe.
> >>
> >> One advantage of not doing so is to retrieve change history in git easily.
> >> Version change on .bb is a rename which in git is simply a remove and
> >> create, while with .inc you can easily track history. This also reduces the
> >> commit size.
> >
> >If I am correct git mv does preserve history although the name change
> >makes it a little bit more difficult to track them.
> 
> I'm not sure how that works consistently. Sometimes the rename is kept
> while most times it doesn't happen to me. :-(

Git does not track renames. Some of its tools can however detect renames
which is subtly different. See "git diff -M" which detects renames for
example.

Cheers,

Richard



