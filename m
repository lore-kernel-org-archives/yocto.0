Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 073F3E0059A
	for <yocto@yoctoproject.org>; Fri,  6 Apr 2012 07:48:38 -0700 (PDT)
Received: from [192.168.0.2] (host86-134-170-101.range86-134.btcentralplus.com
	[86.134.170.101]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id 23BDD99C2
	for <yocto@yoctoproject.org>; Fri,  6 Apr 2012 15:48:36 +0100 (BST)
Message-ID: <4F7F0244.5070906@r-finger.com>
Date: Fri, 06 Apr 2012 15:48:36 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <4F7EB894.3040308@r-finger.com>
	<CADzUK1JNq71fqEdMUiv1WfTiGb12+mixnZzDWeHw4+kwrR1a-A@mail.gmail.com>
	<CADzUK1JWf-SoXi-fW=LX3JtCp8Aic90XddVVTeaQ9oE4aMaRoA@mail.gmail.com>
In-Reply-To: <CADzUK1JWf-SoXi-fW=LX3JtCp8Aic90XddVVTeaQ9oE4aMaRoA@mail.gmail.com>
Subject: Re: using and auditing kernel config fragments
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
X-List-Received-Date: Fri, 06 Apr 2012 14:48:38 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 06/04/12 14:40, Autif Khan wrote:
> I forgot to mention - Under Networking Support -> Wireless, you need
> to enable cfg80211 AND msc80211 (Generic IEEE 802.11 Netowrking Stack)
> 
> Then the Ralink driver support shows up under Wireless LAN

Thanks, that's the bit I was missing. :)

Tomas

