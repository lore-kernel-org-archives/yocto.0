Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0ACEE009F0; Fri,  5 Jun 2015 07:31:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.6 FSL_HELO_FAKE FSL_HELO_FAKE
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f54.google.com (mail-la0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A016E009F8
	for <yocto@yoctoproject.org>; Fri,  5 Jun 2015 07:31:44 -0700 (PDT)
Received: by labko7 with SMTP id ko7so55682560lab.2
	for <yocto@yoctoproject.org>; Fri, 05 Jun 2015 07:31:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=R5+7bHUurcMfonbsKrhScfMXHrPBgupvA408Zx5eVlY=;
	b=ENS4tP4X+iWheg8/6rPVVT7L6Tqqyhvzb92dkhNbb+jHkd2rJWVpD95e0p/e6Pzckc
	dhdbX91kLBqc9W2dBbYbjzHrgN5nXJXOwtasMKbcL0Mbonz230hmWLyrronrxE9C7lJ9
	U+w3rY1sMdNPx3B6k9O4dAfId/yUU7VF8UrlaDmpVQ8oPeOueDeL/H00THjltIwbMVSP
	KHlH8ij24YpjnGl5Zjg/zk9WypviDyYp3TsCqMYsC/dDnlKeNKUHAMolpj/Ot3VVfnN+
	BD3/qhxCB4vOp5tSxXgSCi+3JUcT5PjZwd1Shm+wVSj/zT8yUSFnX0G64cFlZDPMWw+Z
	nTIA==
X-Gm-Message-State: ALoCoQnBGflspyYbydhLq2vn7PBVE4QC3OBBJyD9kFV4sqzx5kja397rs1hUcwGFb2FzTSfaCy0t
X-Received: by 10.152.181.34 with SMTP id dt2mr3635262lac.84.1433514703307;
	Fri, 05 Jun 2015 07:31:43 -0700 (PDT)
Received: from gmail.com (87-63-77-14-static.dk.customer.tdc.net.
	[87.63.77.14])
	by mx.google.com with ESMTPSA id x2sm1808708laj.8.2015.06.05.07.31.41
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 05 Jun 2015 07:31:42 -0700 (PDT)
Date: Fri, 5 Jun 2015 16:31:37 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20150605143137.GC1829@gmail.com>
References: <cover.1432564621.git.petter@technux.se>
	<2375dc76d5f00173760ff56cb37a4ab80fffdc5d.1432564621.git.petter@technux.se>
MIME-Version: 1.0
In-Reply-To: <2375dc76d5f00173760ff56cb37a4ab80fffdc5d.1432564621.git.petter@technux.se>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCHv2 1/2] devicetree: auto-disable dts for old kernels
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
X-List-Received-Date: Fri, 05 Jun 2015 14:31:49 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Mon, May 25, 2015 at 04:59:21PM +0200, Petter Mabäcker wrote:
> After '6392a63 rpi-base.inc: Use KERNEL_DEVICETREE by default' was
> introduced, kernel versions < 3.18 might not be buildable. Since full
> device tree support was introduced in 3.18 this change ensures that all
> kernel < 3.18 will automatically disable device tree.
>
> Signed-off-by: Petter Mabäcker <petter@technux.se>
> ---

Merged to master. Thank you.

--
Andrei Gherzan

