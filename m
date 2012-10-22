Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EDA00E01248
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2012 01:06:42 -0700 (PDT)
Received: from [192.168.0.2] (host81-153-114-123.range81-153.btcentralplus.com
	[81.153.114.123]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 48EA299A4
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2012 09:06:42 +0100 (BST)
Message-ID: <5084FE91.5040206@r-finger.com>
Date: Mon, 22 Oct 2012 09:06:41 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.5) Gecko/20120624 Icedove/10.0.5
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <508164D0.1020408@r-finger.com> <50819565.5090604@linux.intel.com>
	<1377035.Z5LEapOdJV@helios>
In-Reply-To: <1377035.Z5LEapOdJV@helios>
Subject: Re: why was meta-dlna submodule history stripped out?
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
X-List-Received-Date: Mon, 22 Oct 2012 08:06:43 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 20/10/12 13:16, Paul Eggleton wrote:
> On Friday 19 October 2012 11:01:09 Saul Wold wrote:
> Long term however I'd rather see the additional unique recipes in meta-
> guacamayo itself go into more official OE community layers.

Ah, so there is an official community and an unoffical one, this
community stuff is becoming rather difficult. ;-)

I don't have any objections in principle, in fact you will see that
number of the recipes in meta-guacamayo consists of a generic recipe and
a guacamayo-specific bbappend. The main reason for maintaining most of
the recipes in meta-guacamayo is precisely so that they would be
maintained and updated in timely fashion and work with the stable
release of Yocto. Guacamayo aims to facilitate that.

Tomas



