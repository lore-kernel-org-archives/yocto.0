Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 682A0E00524
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 10:26:48 -0700 (PDT)
Received: from [192.168.0.2] (host81-153-86-123.range81-153.btcentralplus.com
	[81.153.86.123]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 76B6C9ADE
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 18:26:42 +0100 (BST)
Message-ID: <506B23D1.5030901@r-finger.com>
Date: Tue, 02 Oct 2012 18:26:41 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CA+QkY1CX70KjdW8RufaMcUYoK+wLwW-jUKpM7aDmDmmLbWEvKg@mail.gmail.com>
In-Reply-To: <CA+QkY1CX70KjdW8RufaMcUYoK+wLwW-jUKpM7aDmDmmLbWEvKg@mail.gmail.com>
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
X-List-Received-Date: Tue, 02 Oct 2012 17:26:48 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi,

On 02/10/12 17:43, Jerrod Peach wrote:
> I'm also starting to think there might be a better way to handle this with
> Yocto's concept of distros (perhaps have a distro for printer X, and a
> different one for printer Y, each pointing at versions of code that are
> good for the respective printer), but my research so far hasn't given me
> enough information on distros to know if this is a reasonable approach.
>  (I've poked through some of the documentation and the mailing list
> archives.)  So, what do you all do for releasing code?  Does anyone have a
> situation similar to mine?  (I can't imagine I'm unique, but maybe I'm more
> special than I thought.)  Even if you don't have a situation like mine,
> what would you suggest I do for releasing code for our printers?

Sounds to me like your situation implies a single distro + multiple
machines, one for each distinct printer model; you can then specify
revisions on per-machine basis. Whether you specify the machine specific
revisions in the bb files, or whether you pull it together into an
include file is a matter of taste more than anything else I suspect, as
long as everyone knows what the deal is. But I'd advise not to specify
package revisions local.conf, that's really for the developer/user to
tweak, and it should not be stored in vcs, doings so just causes pain.

I use the unified include file in Guacamayo for the packages that we
maintain; this is for convenience, as during the development cycle I use
AUTOREV for these packages, but for an actual release specify the
revisions explicitly and having them all in one place makes this easier
to do and not forget anything. See,
https://github.com/Guacamayo/meta-guacamayo/tree/master/meta-guacamayo/conf/
for how we got it set up.

Tomas

