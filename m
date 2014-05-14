Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2FAC1E00B9F; Wed, 14 May 2014 07:04:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,RDNS_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (auslands-kv[at]gmx.de)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from plane.gmane.org (unknown [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09FB3E006EF
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 07:03:43 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1WkZmW-0002Hg-VW
	for yocto@yoctoproject.org; Wed, 14 May 2014 16:03:40 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 16:03:40 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 16:03:40 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Wed, 14 May 2014 16:03:29 +0200
Message-ID: <lkvt3i$bhu$1@ger.gmane.org>
References: <lkvpl2$e8q$1@ger.gmane.org>	<1400074572.84934.YahooMailNeo@web122502.mail.ne1.yahoo.com>	<lkvsj2$vof$1@ger.gmane.org>
	<CAJTo0Laq27nBx+vPbch=PQigAhvRTMKiM7jkKUYHWgxDfgnSEw@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
In-Reply-To: <CAJTo0Laq27nBx+vPbch=PQigAhvRTMKiM7jkKUYHWgxDfgnSEw@mail.gmail.com>
Subject: Re: Best way to remove DISTRO_FEATURES?
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
X-List-Received-Date: Wed, 14 May 2014 14:04:02 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Am 14.05.2014 15:58, schrieb Burton, Ross:
> On 14 May 2014 14:54, Neuer User <auslands-kv@gmx.de> wrote:
>> to my image.bb file. Guess, this is then the recommended way to go?
> 
> Not in your image recipe, no, as then e.g. connman will still think
> that you need 3g and nfc.
> 
> Ross
> 
Right. It doesn't work.

Hmm, so I need my own distro?

Actually, it is not 100% clear to me what the difference and the
interaction of "distro" and "image" is.

What I need is several (slightly to strongly) different images for my
system. Some are for testing only (include some debug apps), some are
for production purposes, some are used as initramfs (very minimal).

So, I should build my own distro, include poky.conf and add the
DISTRO_FEATURES_remove there?

Thanks

Michael


