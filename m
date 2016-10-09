Return-Path: <gmane@reliableembeddedsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FB7CE0094C; Sun,  9 Oct 2016 06:28:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [198.143.161.11 listed in list.dnswl.org]
Received: from delivery.mailspamprotection.com
	(delivery.mailspamprotection.com [198.143.161.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E16A8E008BA
	for <yocto@yoctoproject.org>; Sun,  9 Oct 2016 06:28:19 -0700 (PDT)
Received: from ns1.siteground282.com ([184.154.233.8] helo=siteground282.com)
	by se8.mailspamprotection.com with esmtps
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.86)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1btE9J-0000eW-Hs
	for yocto@yoctoproject.org; Sun, 09 Oct 2016 08:28:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=reliableembeddedsystems.com; s=dkim;
	h=Message-ID:References:In-Reply-To:
	Subject:Cc:To:From:Date:Content-Transfer-Encoding:Content-Type:MIME-Version;
	bh=vdU8t0bykW0AtMLSp9XIBLq7dX6pPlFtIe063ACYx4s=;
	b=FF06+petOfh4cNzt7QnDGElTl
	TYpwY9+FOEgh/8LcaIOGZoaRUvAQPkJzprwDHT9QdOx3jxMnb7F8wjHhV4WcThNou61TYNRZENeLe
	2yiOL+3LNpj/eIBftb0h1g/4WLLrnRx5+TFQSE5Zp5bQnv1E+yKlcLwQwPoLkjGIJqBsw=; 
Received: from [127.0.0.1] (port=60140 helo=secure282.sgcpanel.com)
	by siteground282.com with esmtpa (Exim 4.86_2)
	(envelope-from <gmane@reliableembeddedsystems.com>)
	id 1btE9J-0003Tq-0d; Sun, 09 Oct 2016 08:28:17 -0500
MIME-Version: 1.0
Date: Sun, 09 Oct 2016 08:28:16 -0500
From: gmane@reliableembeddedsystems.com
To: Bill Randle <bill.randle@gmail.com>
In-Reply-To: <CA+n--H_F3fo3_zEW=u_ySEXj+T3-7UWWy0Yw651JrvEfeCx2Lg@mail.gmail.com>
References: <e31067aeb8accb65a84da105dad48944@reliableembeddedsystems.com>
	<CA+n--H-B+0MgxB1ztB+Lbw18G9mYEzy=FhAzZnE_R89SYjpL_w@mail.gmail.com>
	<56993190d475014fd9f289fdad7db19e@reliableembeddedsystems.com>
	<CA+n--H8NN32sFJVQFrODtm_99aR5D60kHnK1o0S5B_RWqLfkBQ@mail.gmail.com>
	<c2bd83f60d7dee07af64bc0796ae28c0@reliableembeddedsystems.com>
	<CA+n--H_F3fo3_zEW=u_ySEXj+T3-7UWWy0Yw651JrvEfeCx2Lg@mail.gmail.com>
Message-ID: <1d2368a9693d7a4fcaa1f83edbbfb851@reliableembeddedsystems.com>
X-Sender: gmane@reliableembeddedsystems.com
User-Agent: Roundcube Webmail/1.1.4
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - siteground282.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - reliableembeddedsystems.com
X-Filter-ID: s0sct1PQhAABKnZB5plbIWEcM0d9a2K3OcfFeaASvaIT05e+4t99MpEggFbXzbnhttgCKkcBtGCa
	+yWmGXl+/0OdHUzGyIWSzveO/M+HlaVWShQ0+uJXiDSCp280tJFsbX/3TQnYbqlNHxpi9XBHG8Jz
	8WfReHqUOdh1n/PPcFy3zqUM1f1PZP2+vCB7hhhdbHhWj9bg/kUdvoDxfqQbo1z1pRXWhjh9fdbl
	44I0Df1bDJmuEytGOjhN7+VkHzjLSbBIxrv0tc9XqsVkeAX6S7iXkMXDFHgBzeWjk6Zbtb6ZULs/
	x/wiY4bOQVH/H0QQPBfyCUQPGRfAuQJyQcUhQ4/Ia6YN5m0MsQWfYUYaa1Lo0EEGTh9WNZgruaGG
	pyvdI7qaN8yfURviR8OTeMmKUqzo7AcUqNzrkO1kQ1IW8ac6xxrycw2ScA+2hbCxTNV1lHIbmw+x
	cBDSXBmIVsiBPGIW1l+d5u2ITozWClL6/rEu//nzk76lak4ojODbJHHE/Dw6ORF2hyiPywks80fx
	SU3VhpzTalbJG9pSL0Hyv/WnnxF0rh7QmTz7opAw1zOCx6AoM/sstGqwASJuN0ZI7aHFiWh8InNS
	IRKoSGz6ikfI0WkU2DaIvSyZINaqxL7/6J1fhOzjF0b4LXcjJZ5lokV1CKyhVhZZPt3wKk/qd9lk
	DSi+R1QeWHGeD/ozkhX48xvhmpkqK6lzdXhhHwmzyvpmzdQjXE961MSkPADU05Y=
X-Report-Abuse-To: spam@quarantine1.mailspamprotection.com
X-Originating-IP: 184.154.233.8
X-SpamExperts-Domain: siteground282.com
X-SpamExperts-Username: 184.154.233.8
Authentication-Results: mailspamprotection.com;
	auth=pass smtp.auth=184.154.233.8@siteground282.com
X-SpamExperts-Outgoing-Class: ham
X-SpamExperts-Outgoing-Evidence: Combined (0.06)
X-Recommended-Action: accept
Cc: yocto@yoctoproject.org
Subject: Re: Y-AB PublishArtifacts toolchain wrong dir
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
X-List-Received-Date: Sun, 09 Oct 2016 13:28:26 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 2016-10-08 18:17, Bill Randle wrote:
> Hi,
> 
> I think I would leave the toolchain artifact as is, but just surround
> the the 'cp' with an 'if' statement. E.g.,:
>   if [ -e <path-to-x86-toolchain> ]; then
>     cp <cp-args> <path-to-x86-toolchain> <destination>;
>   fi;
>   if [ -e <path-to-x86_64-toolchain> ]; then
>     cp <cp-args> <path-to-x86_64-toolchain> <destination>;
>   fi;
> 

This sounds like a brilliant idea. It looks like now I have the 
behaviour of the good old Y-AB plus md5sums and friends and being copied 
over.
What do you think about this patch? [1]


>     -Bill
> 

[1] 
https://github.com/RobertBerger/autobuilder-patches/blob/master/before-install/0004-deal-only-with-built-toolchains-cp-also-md5-and-mani.patch

Regards,

Robert

