Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5FD68E0092C; Wed, 23 Mar 2016 01:57:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS,WEIRD_PORT autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 WEIRD_PORT URI: Uses non-standard port number for HTTP
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 902 seconds by postgrey-1.32 at yocto-www;
	Wed, 23 Mar 2016 01:57:03 PDT
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13624E00863
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 01:57:03 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1aieMZ-0007tb-D5
	for yocto@yoctoproject.org; Wed, 23 Mar 2016 09:41:59 +0100
Received: from ppp-2-86-163-12.home.otenet.gr ([2.86.163.12])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 09:41:59 +0100
Received: from gmane by ppp-2-86-163-12.home.otenet.gr with local (Gmexim 0.1
	(Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 23 Mar 2016 09:41:59 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Wed, 23 Mar 2016 10:41:46 +0200
Message-ID: <56F256CA.3080301@reliableembeddedsystems.com>
References: <CAEMorpieMRySSz9YVzw+yNXZyeYMS3icKQZZHNvbR8U9AzEqdA@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: ppp-2-86-163-12.home.otenet.gr
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
In-Reply-To: <CAEMorpieMRySSz9YVzw+yNXZyeYMS3icKQZZHNvbR8U9AzEqdA@mail.gmail.com>
Subject: Re: upgrade daisy -> jethro
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
X-List-Received-Date: Wed, 23 Mar 2016 08:57:07 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi,

On 03/23/2016 10:17 AM, Ruben Schwarz wrote:
> Hi,
> 
> we have a customized board with Texas Instruments AM335x Processor. It's
> based on Beaglebone Black and EVM Starter Kit.
> 
> We have a working yocto-daisy image running U-Boot 2013.07 and Kernel
> 3.14. No we want to upgrade to jethro, including U-Boot 2015.07 and
> Kernel 4.1.

Why don't you get a beagle bone black and retry there?

Like this it would be easier to help, since we don't have your custom board.

I use a 4.4.x kernel with the mainline device tree am335x-boneblack.dtb
which works as well for a 4.1.x kernel.

Regards,

Robert
...WANTED: Schroedinger's Cat. Dead or Alive.

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



