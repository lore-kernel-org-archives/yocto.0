Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39C94E0082A; Mon, 16 Jan 2017 02:51:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1F2BE00805
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 02:51:43 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id D9D5268A01A; Mon, 16 Jan 2017 10:51:42 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 67BC068A019;
	Mon, 16 Jan 2017 10:51:42 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 139D267400C4;
	Mon, 16 Jan 2017 11:51:42 +0100 (CET)
To: "Burton, Ross" <ross.burton@intel.com>
References: <3fca46fa-5b89-4cd9-e363-22e6e728a0e4@mlbassoc.com>
	<CAJTo0La8uNRNx_O4x2AQ3sEZ3e4nK7z55yeHejiYu3L3CbE12g@mail.gmail.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <89bffd20-107b-750a-68ca-f0b1a4cf4820@mlbassoc.com>
Date: Mon, 16 Jan 2017 11:51:42 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <CAJTo0La8uNRNx_O4x2AQ3sEZ3e4nK7z55yeHejiYu3L3CbE12g@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Debugging question
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
X-List-Received-Date: Mon, 16 Jan 2017 10:51:47 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-01-16 11:40, Burton, Ross wrote:
>
> On 16 January 2017 at 04:29, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     * Any ideas how upgrading the X server now calls into openssl?
>        I've bisected this error down to the change in the X server
>        recipe to v1.19 from v1.18.4
>
>
> $ grep ssl *
> xserver-xorg.inc:XORG_CRYPTO ??= "openssl"
> xserver-xorg.inc:PACKAGECONFIG[openssl] = "--with-sha1=libcrypto,,openssl"
>
> The X server took the reasonable approach of refusing to reimplement cryptographic functions and instead relies on an
> external library, of which openssl (well, libcrypto, part of openssl) is one option.

Thanks, I missed that.

That said, this wasn't really related to the problem anyway.
libcrypt causes that illegal instruction - on purpose - to
check for certain hardware capabilities and handles it.  Just
running 'continue' in GDB lets the X server get a lot further.

I was able to isolate the problem down to a data structure being
trashed.  I'm not sure yet how/why, but I think there may have
been some important changes that the i.MX6 Vivante hardware
driver isn't currently up to speed on.  Still investigating.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

