Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0696BE00596
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 00:29:15 -0700 (PDT)
Received: from [192.168.0.2] (host86-136-179-72.range86-136.btcentralplus.com
	[86.136.179.72]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id A3F5499C2
	for <yocto@yoctoproject.org>; Tue, 10 Apr 2012 08:29:13 +0100 (BST)
Message-ID: <4F83E148.1090601@r-finger.com>
Date: Tue, 10 Apr 2012 08:29:12 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAAA4K6LukcBO8gH+oO8HeUhu4-uyoLPgLiV0t7oLss2CQp=Q8w@mail.gmail.com>
In-Reply-To: <CAAA4K6LukcBO8gH+oO8HeUhu4-uyoLPgLiV0t7oLss2CQp=Q8w@mail.gmail.com>
Subject: Re: How to remove a particular package or packages collection for an image
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
X-List-Received-Date: Tue, 10 Apr 2012 07:29:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 10/04/12 08:20, Jegan Chandru wrote:
> I did  dry-run on core-image-custom and I see mostly all packages from
> yocto included in my image, the packages that I do not need. So, how can
> I remove a particular package or a package collection, say graphics or
> some X packages for my image. Is it possible? or can core-image.bbclass
> is overwritable? Does my approach ok?
> 
> Any help in achieving this is much appreciated.

The basic package selection in the Poky/Yocto images is done on basis of
the DISTRO_FEATURES variable, so you need to set this somewhere suitable
to only include the components you need (iirc, the default package
selection is quite rich).

Other than that, bitbake -g <package> generates .dot files that show
package dependencies, so you can work out why particular package is
being included.

Tomas

