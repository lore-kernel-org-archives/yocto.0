Return-Path: <eric.nelson@boundarydevices.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93E31E0076F; Tue, 24 Feb 2015 14:09:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F15ECE00477
	for <yocto@yoctoproject.org>; Tue, 24 Feb 2015 14:09:49 -0800 (PST)
Received: by pabkq14 with SMTP id kq14so39325657pab.3
	for <yocto@yoctoproject.org>; Tue, 24 Feb 2015 14:09:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=lkoSTgqDeYPAi/u6tk3VvqmkEFJbmWb1pfCJgkH2oPw=;
	b=PGuwS8jmTISpbECNMgCbrdGqAtV/yH5UmZoGOvYbfTgn16dBpusPFjKEe4G3tx+aCY
	REUatg22JrTEVJCKBO8+3BnlJS+2kr7owFCAuhss5mFBg7ySh4Ys12ap1pbOl64jcXJz
	WwPxgKvBu3NOm3GpClElIK0aKB/9Y2jxbNbnFpyhElEyUvQJ7wmJbcUY1ur7TIoFD86i
	aWaf5Fvy743stD26QLJygDKSy0xdNPj0cEPBFwWLNg73ZICu7S2zdJenHTIXw/Vf/YKN
	AbgQCHuNKqjCvrASXr+5wSBBD2qDbv7SMSpKzmhi0xGlasBqzw8/3Ax71OOVGo9NpQKe
	asBQ==
X-Gm-Message-State: ALoCoQmXZ5nitI0jOE9w71dnOnif6FnPOVEG2EcPqEz3yVUub5GuNX2ckP210rAlTbvNM532bsJ9
X-Received: by 10.68.65.110 with SMTP id w14mr7211235pbs.57.1424815789027;
	Tue, 24 Feb 2015 14:09:49 -0800 (PST)
Received: from [192.168.0.139] (wsip-70-184-93-199.ph.ph.cox.net.
	[70.184.93.199])
	by mx.google.com with ESMTPSA id u1sm39180894pbs.7.2015.02.24.14.09.47
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 24 Feb 2015 14:09:48 -0800 (PST)
Message-ID: <54ECF6AA.60502@boundarydevices.com>
Date: Tue, 24 Feb 2015 15:09:46 -0700
From: Eric Nelson <eric.nelson@boundarydevices.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>, 
 Yocto Project <yocto@yoctoproject.org>
References: <54ECF3BE.20705@mlbassoc.com>
In-Reply-To: <54ECF3BE.20705@mlbassoc.com>
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>
Subject: Re: [meta-fsl-arm-extra] 3.10.53 for SabreLite?
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
X-List-Received-Date: Tue, 24 Feb 2015 22:09:56 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hi Gary,

On 02/24/2015 02:57 PM, Gary Thomas wrote:
> Any hope of 3.10.53 support for the Nitrogen6x/SabreLite boards
> soon?  Graphics have been broken for weeks [in master] and I'd
> really like to get my boards back up.
> 

I think you wanted to send this to "meta-freescale" instead of
yoctoproject.org.

There are some pre-release patches on this branch of our
Github repository:
	https://github.com/boundarydevices/linux-imx6/tree/boundary-imx_3.10.53_1.1.0_ga-pass1

They're sufficient to get displays up and running, but that's
a little quirky. In particular, the boot script support
for creating "video=" clauses in the kernel command line
don't affect the LVDS devices.

Instead, we've found it easier to use the "fdt rm" command
in U-Boot to disable the displays that aren't detected.

We are actively working on getting support for 3.10.53 in
order for our boards, but it's a bit of a slow process.

Besides the display bits, the other notable omissions are
cameras and PCIe patches.

Regards,


Eric

