Return-Path: <dbjorklu@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F3BFE00566; Wed, 10 Sep 2014 04:20:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f179.google.com (mail-lb0-f179.google.com
	[209.85.217.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D0D5E0049D
	for <yocto@yoctoproject.org>; Wed, 10 Sep 2014 04:20:05 -0700 (PDT)
Received: by mail-lb0-f179.google.com with SMTP id p9so7798955lbv.10
	for <yocto@yoctoproject.org>; Wed, 10 Sep 2014 04:20:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:message-id:date:from:user-agent:mime-version:to:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=F6GVSuXGD/bF47RoCaNJws3l9xTLlrq3DFr2pYXDC28=;
	b=H/ZTSrBK7OhHIHZcPCp6ViPOPZQ0aE4FEru/OUulFUuBo2udHBgr06cBNVZODfcpci
	EscbR66ilywZ59SXqHzN7xzv5iV+7r6EGpnpM+fQW5yFEWmDkuYbb/W/AcYk6fwXHnOy
	BmEYzGijq9/xJRj/2tvlfzd5JxyWExasjSfjerPGocVNOaD2N67yzEAFlliTohCGzsz1
	5+Ovd/KkObyEzTAVyCOUgGARJVUZ7NvynKDpEnNgIzEDn1b/a7yu3MdYCDEoAoprnVbu
	Bcy+R1IemWMyWvtxzMNDvrORQiLtO/RPPM0oO5p0Gk9Sp5iuhDdpnDMt1sdyKgP6RzVy
	QKwg==
X-Received: by 10.152.5.135 with SMTP id s7mr1918119las.96.1410348004601;
	Wed, 10 Sep 2014 04:20:04 -0700 (PDT)
Received: from [10.0.16.61] (an229.netikka.fi. [213.250.75.229])
	by mx.google.com with ESMTPSA id dw2sm3003591lbc.38.2014.09.10.04.20.03
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 10 Sep 2014 04:20:03 -0700 (PDT)
Sender: =?UTF-8?Q?Dag_Bj=C3=B6rklund?= <dbjorklu@gmail.com>
Message-ID: <541033E3.2040804@iki.fi>
Date: Wed, 10 Sep 2014 14:20:03 +0300
From: =?windows-1252?Q?Dag_Bj=F6rklund?= <dag@iki.fi>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CALb224-2biSJpCoLBojkMgjGKX4a_YUayfUQwByFTDNYqVKeCA@mail.gmail.com>	<540F4F0B.7010707@balister.org>
	<1548923.UYKtK7c5ZH@peggleto-mobl5.ger.corp.intel.com>
In-Reply-To: <1548923.UYKtK7c5ZH@peggleto-mobl5.ger.corp.intel.com>
Subject: Populate /var/lib/opkg/status
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
X-List-Received-Date: Wed, 10 Sep 2014 11:20:12 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hello,
How do I populate /var/lib/opkg/status so that all .ipk packages that 
Yocto has installed for me are seen if I e.g. say 'opkg list-installed'?

This, so that if I later install some new packages with dependencies to 
sw that is infact in my rootfs, but opkg is unaware of, I won't get 
failed dependencies from opkg.
Yes I can do 'opkg install --force-depend' but that is not so nice.

Thanks,
    Dag


