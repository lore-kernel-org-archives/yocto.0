Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F95CE0073D; Sat, 10 May 2014 01:56:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,RDNS_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (auslands-kv[at]gmx.de)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from plane.gmane.org (unknown [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88BDFE0070F
	for <yocto@yoctoproject.org>; Sat, 10 May 2014 01:56:03 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Wj34b-0001kL-3t
	for yocto@yoctoproject.org; Sat, 10 May 2014 10:56:01 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 10 May 2014 10:56:01 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 10 May 2014 10:56:01 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Sat, 10 May 2014 10:55:49 +0200
Message-ID: <lkkpim$i16$1@ger.gmane.org>
References: <lkcshi$dep$1@ger.gmane.org>	<CAJTo0LZ7=Zs3pcP30htX7_GfpWoOvfYU-Cg-71T7pTuLkazGLQ@mail.gmail.com>	<lkevco$bl6$1@ger.gmane.org>	<CAJTo0LZDzH3aQBiwMM=cR06CEqthVQycaSWsM8jAyEHxwYiRWQ@mail.gmail.com>	<536CADD1.1040402@gmx.de>	<CAC+thW3_DhKGai3kRXo+HnHOJeWDYdC7_zEg4Z2-wRZhn6iTfw@mail.gmail.com>	<536CD642.70700@gmx.de>	<CAC+thW39rt=BEuo3SVa2mvFx0hHXGk=VW9rxUymR-i4jDNJpyw@mail.gmail.com>	<lkj12c$mij$1@ger.gmane.org>
	<lkj1d5$s27$1@ger.gmane.org>
	<CAJTo0LbvSFTR7_=fbbqJVc_NeMU7Kj8jTCs2-dt5h61q25n0QQ@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
In-Reply-To: <CAJTo0LbvSFTR7_=fbbqJVc_NeMU7Kj8jTCs2-dt5h61q25n0QQ@mail.gmail.com>
Subject: Re: replace udhcpc
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
X-List-Received-Date: Sat, 10 May 2014 08:56:10 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Thanks for the informative answer.

As I said, I like the idea of a small and lightweigth, but still
powerful daemon. But in addition to the described behaviour and the lack
of documentation, it is also not working correctly on my system. After
the first dhcp lease is expired, connman segfaults and the system is
again without ip.

Found this on the internet:
https://www.mail-archive.com/connman@connman.net/msg15637.html


Am 09.05.2014 20:37, schrieb Burton, Ross:
> On 9 May 2014 17:57, Neuer User <auslands-kv@gmx.de> wrote:
>> Seems, I am not the only one wondering why connman phones home:
> 
> The "ask the author" approach works quite well.  The hostname it's
> looking up is connman.net.  This is the captive portal detection:
> pretty much every major platform does something similar and it's to
> detect the situation that you have something that looks like a network
> connection, but actually you're not routed anywhere (i.e. you're in a
> hotel and need to pay for connectivity).  ConnMan makes a trivial
> request to it's home page and if it gets back the response it was
> expecting you have internet, captive portals tend to include
> machine-readable links in the response that ConnMan will tell the UI
> to open.  If you've ever joined an iOS (and probably Android, but I've
> not got one) device to a hotel's wifi and seen a login page open
> immediately the same you've seen this behaviour in action.
> 
> The response also includes some basic geo-ip so your machine knows
> roughly where it is, useful for automatic timezone updating.
> 
> Ross
> 



