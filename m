Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E2DAE00CBC; Thu, 10 Oct 2019 12:55:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.158.217 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd01-g.aruba.it (smtpcmd01-g.aruba.it [62.149.158.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1AEDE00BB5
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2019 12:55:24 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd01.ad.aruba.it with bizsmtp
	id BvvM2100E2wfazh01vvMge; Thu, 10 Oct 2019 21:55:22 +0200
To: yocto@yoctoproject.org
References: <35d0e6da-7111-9c9f-dbbf-fec0ce0f9afe@faresoftware.it>
	<38f825e0-df99-4f52-84ad-dcbfd18019cd@intel.com>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <03fd097d-c85d-821c-27e5-32a8318a5054@faresoftware.it>
Date: Thu, 10 Oct 2019 21:55:20 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <38f825e0-df99-4f52-84ad-dcbfd18019cd@intel.com>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1570737322; bh=2XTQfi/8YcBk1n5N57pixzI9zHYtogxCk5eWzyPM5qY=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=iMx+gqgrEWwTvN40cs13B0DOkn0uWDGcZYkxJ+JQnFcx20H7+X2zHVg8zh2fmjSTZ
	E9yV5s3RKYnD8ZR9+Q5QtTkiavcsMDrOkScvZ5hIBZz5JbFqSWvhw3WXDpXMJB4rl+
	pGa/luOz4RkdXCFFyqvJ36iXxMRPgBagEP4mQSujJWTiaemFlHjTLQ3FNW4ip2holF
	kNRkhc9lnWwL0sbOYmAcFueTZgxW7c5Zav66k0ZcLXeUYck1PRBQRdEYl19wVmiqFQ
	Snofdl+P2tJcWbRyF65YmymW6sJaFpR66b7vicmW4PXV43fx1j6GIOBhL3XixxccRY
	w8XgHI+HI6bmA==
Subject: Re: Force do_package_index
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
X-List-Received-Date: Thu, 10 Oct 2019 19:55:27 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: it

I use the deploy/deb as Debian repository for internal upgrade.

So I export over an internal ftp the 4 folders under tmp/deply/deb, and 
I integrate package-management with package_deb.

I need to restore the old buildhistory, because I rebuild some package 
but I have not change anything.


I try bitbake package-index, maybe is what I need


Thanks


Mauro



Il 10/10/19 18:45, Ross Burton ha scritto:
> On 10/10/2019 16:35, Mauro Ziliani wrote:
>> How to force the execuction o do_package_index over an image recipe?
>
> Are you intending to use the deploy directory as a package feed? 
> "bitbake package-index" for that.
>
> Ross

