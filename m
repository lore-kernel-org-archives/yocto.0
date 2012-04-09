Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2214E013E5
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 07:53:30 -0700 (PDT)
Received: from [192.168.0.2] (host86-134-170-50.range86-134.btcentralplus.com
	[86.134.170.50]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 0127799C2
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 15:53:29 +0100 (BST)
Message-ID: <4F82F7E8.3020101@r-finger.com>
Date: Mon, 09 Apr 2012 15:53:28 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F821129.2020007@r-finger.com> <4F82DE49.4060408@mlbassoc.com>
	<4F82EB19.9040207@r-finger.com> <2949584.FXES3Ykti2@helios>
In-Reply-To: <2949584.FXES3Ykti2@helios>
Subject: Re: managing layer priorities
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
X-List-Received-Date: Mon, 09 Apr 2012 14:53:31 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Paul,

On 09/04/12 15:09, Paul Eggleton wrote:
> On Monday 09 April 2012 14:58:49 Tomas Frydrych wrote:
> I realise what you're trying to do, but you should bear in mind when you do 
> this you are relying on unintentional behaviour that may change in future.

I am not sure whether unintentional is an accurate description; layer
priority is explicitly and intentionally the function of other layers
due to inter-layer dependency. So I prefer to think of it as an
undocumented feature. :-) But I know, if it does not work, it's my own
fault.

The reason for doing this is that I'd like to be able to treat an
external layer as a read-only entity, and to enforce this. My experience
suggests that if you fork external layers alongside your custom layers,
this over time leads to unnecessary maintenance costs. On the other
hand, if each external layer is a read-only entity, it can be integrated
as a read-only git submodule, and no naughty developers will then make
changes to it.

Tomas

