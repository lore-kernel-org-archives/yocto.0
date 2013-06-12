Return-Path: <wmills@ti.com>
Received: from devils.ext.ti.com (devils.ext.ti.com [198.47.26.153])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59D9EE006C2
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 14:33:02 -0700 (PDT)
Received: from dlelxv90.itg.ti.com ([172.17.2.17])
	by devils.ext.ti.com (8.13.7/8.13.7) with ESMTP id r5CLWs7P013382;
	Wed, 12 Jun 2013 16:32:54 -0500
Received: from DFLE72.ent.ti.com (dfle72.ent.ti.com [128.247.5.109])
	by dlelxv90.itg.ti.com (8.14.3/8.13.8) with ESMTP id r5CLWseD008151;
	Wed, 12 Jun 2013 16:32:54 -0500
Received: from dlelxv22.itg.ti.com (172.17.1.197) by DFLE72.ent.ti.com
	(128.247.5.109) with Microsoft SMTP Server id 14.2.342.3;
	Wed, 12 Jun 2013 16:32:53 -0500
Received: from gtwmills.gt.design.ti.com (gtwmills.gt.design.ti.com
	[158.218.102.52])	by dlelxv22.itg.ti.com (8.13.8/8.13.8) with ESMTP id
	r5CLWrJg031951;	Wed, 12 Jun 2013 16:32:53 -0500
Message-ID: <51B8E905.3090405@ti.com>
Date: Wed, 12 Jun 2013 17:32:53 -0400
From: William Mills <wmills@ti.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.27) Gecko/20120216 Thunderbird/3.1.19
MIME-Version: 1.0
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
References: <0A7B481F47BD4848A701598AE9CDD6DA@PAULD><bc6dfda22fdcefeb7de188e29b2ad887.squirrel@mail.cubic.org>	<1875741.cStO1T6C1g@helios>
	<58DC6CADE1A5492E9E712C310E6C9019@PAULD>
In-Reply-To: <58DC6CADE1A5492E9E712C310E6C9019@PAULD>
Cc: 'Paul Eggleton' <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: Need clarification on some terms
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 12 Jun 2013 21:33:04 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 06/12/2013 03:51 PM, Paul D. DeRocco wrote:
> For now, I really just need to know if I'm interested in the SDK, since I
> have no intention of ever running compilations on my target system.
>

Trevor's answer has a lot of great background.

My short answer is gcc-cross is for use inside bitbake (in the host) and 
gcc-crosssdk is for use outside of bitbake (still on the host).  This 
outside bitbake use case is the SDK Trevor described.

Why does gcc need to get built differently between these two use cases? 
  I gave up asking this many years ago and accepted it as "something I 
can not change" for my own serenity.  I am sure Paul or Khem could give 
the detail.  The sdk version does have extra stuff to make it 
relocatable etc that is not needed inside of bitbake.  However I don't 
know why we don't always build the sdk-able version.


