Return-Path: <sbabic@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7232E00B3D; Mon, 20 Mar 2017 06:51:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.18.0.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2C08E00B2E
	for <yocto@yoctoproject.org>; Mon, 20 Mar 2017 06:51:10 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3vmy5n15h7z1qqwL;
	Mon, 20 Mar 2017 14:51:08 +0100 (CET)
Received: from localhost (dynscan01.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 3vmy5m5Sblz3jgYV;
	Mon, 20 Mar 2017 14:51:08 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan01.mail.m-online.net [192.168.6.70]) (amavisd-new,
	port 10024)
	with ESMTP id 5LXXQYy51YAo; Mon, 20 Mar 2017 14:51:07 +0100 (CET)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net
	[88.217.136.221]) by mail.mnet-online.de (Postfix) with ESMTP;
	Mon, 20 Mar 2017 14:51:07 +0100 (CET)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id DF854454043A;
	Mon, 20 Mar 2017 14:50:15 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([127.0.0.1])
	by localhost (mail.babic.homelinux.org [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id 7AMm8Llzb3iB; Mon, 20 Mar 2017 14:50:13 +0100 (CET)
Received: from [192.168.178.132] (papero.fritz.box [192.168.178.132])
	by babic.homelinux.org (Postfix) with ESMTP id 0DB204540275;
	Mon, 20 Mar 2017 14:50:13 +0100 (CET)
To: "Esponde, Joel" <Joel.Esponde@Honeywell.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CO2PR07MB58833668007B05E6BF1F0FD963A0@CO2PR07MB588.namprd07.prod.outlook.com>
From: Stefano Babic <sbabic@denx.de>
Message-ID: <ac568656-6956-a1d4-40dd-0dc129332d1c@denx.de>
Date: Mon, 20 Mar 2017 14:51:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CO2PR07MB58833668007B05E6BF1F0FD963A0@CO2PR07MB588.namprd07.prod.outlook.com>
Subject: Re: file: fetch fail on missing commit
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
X-List-Received-Date: Mon, 20 Mar 2017 13:51:22 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

On 20/03/2017 12:16, Esponde, Joel wrote:
> Hi,
> 
>  
> 
> It seems that the “file” project maintainers have changed the hashes of
> all commits of their github mirror repository.
> 
>  
> 
> A fix has been recently added to the master branch:
> 
> http://git.yoctoproject.org/cgit.cgi/poky/commit/meta/recipes-devtools/file?id=2102b8c9b60438e5d73f3182799297efad4cbcfe
> 
>  
> 
> But based on what I see in my machine, all from scratch builds seem to
> be broken.
> 
> My morty and krogoth builds are broken.
> 
>  
> 
> Am I alone to have that issue or is it generalized?

No, everybody can see this. I sent an e-mail this morning to oe-core,
and the same fix should be done for previous version (5.25 for -krogoth,...)

Regards,
Stefano

-- 
=====================================================================
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

