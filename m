Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05A80E014B8
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 02:43:44 -0700 (PDT)
Received: from [192.168.0.2] (host81-153-84-143.range81-153.btcentralplus.com
	[81.153.84.143]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id DC8D39ADE
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 10:43:43 +0100 (BST)
Message-ID: <50471ECE.8000502@r-finger.com>
Date: Wed, 05 Sep 2012 10:43:42 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
CC: yocto@yoctoproject.org
References: <50450DC6.20303@r-finger.com> <504663C0.6050907@ti.com>
	<50471207.8080104@r-finger.com> <2612934.gZ3vcrfUaE@helios>
In-Reply-To: <2612934.gZ3vcrfUaE@helios>
Subject: Re: yocto beagleboard.conf -- should it not go away?
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
X-List-Received-Date: Wed, 05 Sep 2012 09:43:45 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 05/09/12 10:15, Paul Eggleton wrote:
> On Wednesday 05 September 2012 09:49:11 Tomas Frydrych wrote:
> It has been considered witin OE to be best practice to append to BBPATH and 
> not prepend, the thinking being that then the search path matches the order of 
> the layers listed in bblayers.conf rather than the reverse.

Then meta-yocto should follow that convention ... and it needs to be
well documented, with the consequence of breaking that convention
explained, and the terrible punishments to come described in great and
sordid detail. Because this needs to be more than a convention, it needs
to be an article of faith.

Tomas



