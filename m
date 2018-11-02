Return-Path: <peter@berginkonsult.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40A0DE00C15; Fri,  2 Nov 2018 03:02:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [46.30.210.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mailrelay1-1.pub.mailoutpod1-cph3.one.com
	(mailrelay1-1.pub.mailoutpod1-cph3.one.com [46.30.210.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8951E00A10
	for <yocto@yoctoproject.org>; Fri,  2 Nov 2018 03:02:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=berginkonsult.se; s=20140924;
	h=content-transfer-encoding:content-type:in-reply-to:mime-version:date:
	message-id:from:references:cc:to:subject:from;
	bh=o/MWK/H8E0HTAysTlhSVoPbZQD/uK1qz85eZapLibL0=;
	b=pOWfmNgbpxY+GPHSRbEby5rsedfhW2ixylHWyCVADNwi3rxJ06DW0tAAmlwULUA/KA90ie+kjNkJk
	lA0YbofiA4hVKMEIcuXwEDKhj/doIZydKs5PrISdA6JUeeoIvXTmHYh+v+OeaJ733zAkK7MR4/+1EG
	ZSJTobWjd74DPluI=
X-HalOne-Cookie: c89de04f749c366306acd77023bfd06f5bcb24eb
X-HalOne-ID: 6cc40093-de86-11e8-942d-d0431ea8a283
Received: from [192.168.100.114] (unknown [82.196.108.162])
	by mailrelay1.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
	id 6cc40093-de86-11e8-942d-d0431ea8a283;
	Fri, 02 Nov 2018 10:02:36 +0000 (UTC)
To: =?UTF-8?Q?Erik_Bot=c3=b6?= <erik.boto@gmail.com>
References: <0f39aeec-de33-54c1-d1c3-e5953cec912e@berginkonsult.se>
	<CALNvYWPONCQ6SEoCeaqX3LvR2W1RoFZghgabbE56J5v9eMXZpg@mail.gmail.com>
From: Peter Bergin <peter@berginkonsult.se>
Message-ID: <d97da774-28ff-e444-0235-2739aa35122f@berginkonsult.se>
Date: Fri, 2 Nov 2018 11:02:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <CALNvYWPONCQ6SEoCeaqX3LvR2W1RoFZghgabbE56J5v9eMXZpg@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Can not build SDK in rocko 'nothing provides /usr/bin/python...'
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
X-List-Received-Date: Fri, 02 Nov 2018 10:02:40 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

On 2018-11-02 09:54, Erik Botö wrote:
> and there they have added python to RDEPENDS. Adding that should pull
> python in to the SDK as well.
Thank you Erik!

Yes, adding python to RDEPENDS_kernel-devsrc solved the problem.

/Peter

