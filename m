Return-Path: <antonius.riko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E917BE00BD6; Fri, 23 Jun 2017 21:42:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, FREEMAIL_REPLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (antonius.riko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  1.0 FREEMAIL_REPLY From and body contain different freemails
Received: from mail-pf0-f170.google.com (mail-pf0-f170.google.com
	[209.85.192.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3159E00B28
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 21:42:30 -0700 (PDT)
Received: by mail-pf0-f170.google.com with SMTP id s66so31772271pfs.1
	for <yocto@yoctoproject.org>; Fri, 23 Jun 2017 21:42:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding:content-language;
	bh=dhf0Kb6PwBOjyyuSfOfSP1veVjGG83xP+U9b701Idgc=;
	b=eWGo8iinkLHDWcC8xyLuoe/IIyNvL3+foDA75wSHrSgMLHgymBBwTRW3WZ05gf20Zi
	mWM7VeGzGASQMpwQ90TUmmcfby9Jk0qL1DA/n9QO9YeTBG5GwSpPCcMbuLz8SLEt8k2N
	xBqNWvkY1QCfnW8jTeADp4fmIBw6B3aa5+CumnSNQAIT+FVpR8jAlhWA+Ohpc+6gbE3R
	tyEbSpqSNWVSMcGokX65XxTqGbfsBBs8wCeUipLEkTXv71c7f+TDLc59tfrQ0BnJhRWb
	mPdD63L29RFzgtTFAivtY2PyXBgUSXu45LPmx4SA5aDfUszKppM6Co73/AmDq+9BH0KW
	6n0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=dhf0Kb6PwBOjyyuSfOfSP1veVjGG83xP+U9b701Idgc=;
	b=hFG43m96DjDsB/BiNEVI9qyTtM06OGRQ2MmcMunif1iSia6y5JPa5z5KLBmcA+USQG
	CdE6ghZhs4K1k3h4WbMmrfNwMGD21VpujmDgT+ZrlxO6ap8HjG7PXO2mjb/bk2OirGkT
	nv3Ppym6MAMnBZwyn8IFUTc2bVIq3iGRUF5MQfQ/MJ11LBvrD2YFjtkdxQuqUJ/sBPyf
	Fh8nTB2Aauvoe4I6H3dKwlxN2b3aUuKxm1Lf/covfEQC8kAXmjxtMwdETSlGMKfH5DN6
	qFA3gKm/LTvQT3hV3zVq07TLbiABfyeSfS5PEt9HmJSCVCb4AIA1TZbOrNNIvuk6Q3y2
	mFAA==
X-Gm-Message-State: AKS2vOw6IbWL5LTwiktbs+2Bc7XivxkX43LfQDM+OPSHDeTcEBDkBuzi
	e1MfH5ykfPS1Hg==
X-Received: by 10.84.225.4 with SMTP id t4mr13018476plj.274.1498279350384;
	Fri, 23 Jun 2017 21:42:30 -0700 (PDT)
Received: from [10.0.0.1] (CPE-1-122-193-77.wwl9.wel.bigpond.net.au.
	[1.122.193.77])
	by smtp.gmail.com with ESMTPSA id v6sm11768165pfl.2.2017.06.23.21.42.27
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 23 Jun 2017 21:42:29 -0700 (PDT)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <fe34f976-648e-7fbc-c190-a5fb0829552f@gmail.com>
	<CAMKF1sq0XX0ahRiG34oi9LwiDCZL83Oxf4sbkwmd5XL1n66jWw@mail.gmail.com>
From: Riko Ho <antonius.riko@gmail.com>
Message-ID: <a964869d-2f6e-e02a-8971-ce75c70af8db@gmail.com>
Date: Sat, 24 Jun 2017 12:42:25 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAMKF1sq0XX0ahRiG34oi9LwiDCZL83Oxf4sbkwmd5XL1n66jWw@mail.gmail.com>
Subject: RTL8192EU question ?
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
X-List-Received-Date: Sat, 24 Jun 2017 04:42:35 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Hello Everyone,

I tried to connect  rev B

But I got this message below repeating,

usb 1-1.1: This Realtek USB WiFi dongle (0x0bda:0x818b) is untested!
usb 1-1.1: Please report results to Jes.Sorensen@gmail.com
usb 1-1.1: Vendor: Realtek
usb 1-1.1: Product: 802.11n NIC
usb 1-1.1: Serial: �����������
usb 1-1.1: rtl8192eu_parse_efuse: dumping efuse (0x200 bytes):
usb 1-1.1: 00: 29 81 00 7c 01 40 03 00
usb 1-1.1: 08: 40 74 04 50 14 00 00 00
usb 1-1.1: 10: 2e 2e 2e 2e 2e 2e 2e 2e
usb 1-1.1: 18: 2e 2e 2e 02 ef ef ff ff
usb 1-1.1: 20: ff ff ff ff ff ff ff ff
usb 1-1.1: 28: ff ff ff ff ff ff ff ff
usb 1-1.1: 30: ff ff ff ff ff ff ff ff
usb 1-1.1: 38: ff ff 29 29 29 29 29 29
usb 1-1.1: 40: 2e 2e 2e 2e 2e 02 ef ef
usb 1-1.1: 48: ff ff ff ff ff ff ff ff
usb 1-1.1: 50: ff ff ff ff ff ff ff ff
usb 1-1.1: 58: ff ff ff ff ff ff ff ff
usb 1-1.1: 60: ff ff ff ff ff ff ff ff
usb 1-1.1: 68: ff ff ff ff ff ff ff ff
usb 1-1.1: 70: ff ff ff ff ff ff ff ff
usb 1-1.1: 78: ff ff ff ff ff ff ff ff
usb 1-1.1: 80: ff ff ff ff ff ff ff ff
usb 1-1.1: 88: ff ff ff ff ff ff ff ff
usb 1-1.1: 90: ff ff ff ff ff ff ff ff
usb 1-1.1: 98: ff ff ff ff ff ff ff ff
usb 1-1.1: a0: ff ff ff ff ff ff ff ff
usb 1-1.1: a8: ff ff ff ff ff ff ff ff
usb 1-1.1: b0: ff ff ff ff ff ff ff ff
usb 1-1.1: b8: 20 20 1a 00 00 00 ff ff
usb 1-1.1: c0: ff 01 00 10 00 00 00 ff
usb 1-1.1: c8: 00 00 ff ff ff ff ff ff
usb 1-1.1: d0: da 0b 8b 81 e6 47 02 00
usb 1-1.1: d8: 0b 81 a2 a5 60 09 03 52
usb 1-1.1: e0: 65 61 6c 74 65 6b 0d 03
usb 1-1.1: e8: 38 30 32 2e 31 31 6e 20
usb 1-1.1: f0: 4e 49 43 00 ff ff ff ff
usb 1-1.1: f8: ff ff ff ff ff ff ff ff
usb 1-1.1: 100: ff ff ff ff ff ff ff ff
usb 1-1.1: 108: ff ff ff ff ff ff ff ff
usb 1-1.1: 110: ff ff ff ff ff ff ff 0d
usb 1-1.1: 118: 03 00 05 00 30 00 00 00
usb 1-1.1: 120: 00 93 ff ff ff ff ff ff
usb 1-1.1: 128: ff ff ff ff ff ff ff ff
usb 1-1.1: 130: f6 a8 98 2d 03 92 98 00
usb 1-1.1: 138: fc 8c 00 11 9b 44 02 0a
usb 1-1.1: 140: ff ff ff ff ff ff ff ff
usb 1-1.1: 148: ff ff ff ff ff ff ff ff
usb 1-1.1: 150: ff ff ff ff ff ff ff ff
usb 1-1.1: 158: ff ff ff ff ff ff ff ff
usb 1-1.1: 160: ff ff ff ff ff ff ff ff
usb 1-1.1: 168: ff ff ff ff ff ff ff ff
usb 1-1.1: 170: ff ff ff ff ff ff ff ff
usb 1-1.1: 178: ff ff ff ff ff ff ff ff
usb 1-1.1: 180: ff ff ff ff ff ff ff ff
usb 1-1.1: 188: ff ff ff ff ff ff ff ff
usb 1-1.1: 190: ff ff ff ff ff ff ff ff
usb 1-1.1: 198: ff ff ff ff ff ff ff ff
usb 1-1.1: 1a0: ff ff ff ff ff ff ff ff
usb 1-1.1: 1a8: ff ff ff ff ff ff ff ff
usb 1-1.1: 1b0: ff ff ff ff ff ff ff ff
usb 1-1.1: 1b8: ff ff ff ff ff ff ff ff
usb 1-1.1: 1c0: ff ff ff ff ff ff ff ff
usb 1-1.1: 1c8: ff ff ff ff ff ff ff ff
usb 1-1.1: 1d0: ff ff ff ff ff ff ff ff
usb 1-1.1: 1d8: ff ff ff ff ff ff ff ff
usb 1-1.1: 1e0: ff ff ff ff ff ff ff ff
usb 1-1.1: 1e8: ff ff ff ff ff ff ff ff
usb 1-1.1: 1f0: ff ff ff ff ff ff ff ff
usb 1-1.1: 1f8: ff ff ff ff ff ff ff ff
usb 1-1.1: RTL8192EU rev B (SMIC) 2T2R, TX queues 3, WiFi=1, BT=0, 
GPS=0, HI PA=0
usb 1-1.1: RTL8192EU MAC: 00:0b:81:a2:a5:60
usb 1-1.1: rtl8xxxu: Loading firmware rtlwifi/rtl8192eu_nic.bin
usb 1-1.1: Firmware revision 19.0 (signature 0x92e1)


what issue do I get here?

Thanks

