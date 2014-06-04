Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F6E2E00BE2; Wed,  4 Jun 2014 03:02:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (auslands-kv[at]gmx.de)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE2D7E00B5C
	for <yocto@yoctoproject.org>; Wed,  4 Jun 2014 03:01:05 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Ws80G-0002lp-A6
	for yocto@yoctoproject.org; Wed, 04 Jun 2014 12:01:04 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 04 Jun 2014 12:01:04 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 04 Jun 2014 12:01:04 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Wed, 04 Jun 2014 12:00:48 +0200
Message-ID: <lmmqog$dif$1@ger.gmane.org>
References: <lmmmm6$o20$1@ger.gmane.org>
	<lmmoff$hkl$1@ger.gmane.org>	<lmmokk$hkl$2@ger.gmane.org>
	<1441499.7MxWvtiUat@peggleto-mobl5.ger.corp.intel.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
In-Reply-To: <1441499.7MxWvtiUat@peggleto-mobl5.ger.corp.intel.com>
Subject: Re: best way to add conditional configure option
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
X-List-Received-Date: Wed, 04 Jun 2014 10:02:09 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Am 04.06.2014 11:59, schrieb Paul Eggleton:
> On Wednesday 04 June 2014 11:24:36 Neuer User wrote:
>> I searched through other recipes for "EXTRA_OECONF_" and found somehting
>> that worked:
>>
>> EXTRA_OECONF_append_mx6 = "--enable-imx6"
> 
> BTW I'd suggest a leading space in the value, since _append won't add one for 
> you. You might have got away with not adding one this time if the original 
> value already had a trailing space, but it's good practice to add one.
> 
> Cheers,
> Paul
> 
Thanks, will add that :-)


