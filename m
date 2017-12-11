Return-Path: <anton@advancedtelematic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F2C7E00D84; Mon, 11 Dec 2017 07:08:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA363E00C97
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 07:08:50 -0800 (PST)
Received: by mail-wm0-f51.google.com with SMTP id i11so14712526wmf.4
	for <yocto@yoctoproject.org>; Mon, 11 Dec 2017 07:08:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=advancedtelematic.com; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding:content-language;
	bh=JixV0f01k20Od+fL+FU8Z1mVBh+dQrN0y6XXIE+7T6I=;
	b=bC3zvpHM9uKsZA6MLDIgk+/zZVjayx541t2OPt1Rkw5KPJjBWmDusvFSYZj8wUbrul
	1RfxeY3U9OnWQ6rLcX/eqi1xxI/FqD4GJyVMkqtxtOaLFDuPlPvs69qYZ6rqZWgxIZHH
	Yhzwp9RSH4gDsXuDpe6kuqVu3wPz+jDEa9xOE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=JixV0f01k20Od+fL+FU8Z1mVBh+dQrN0y6XXIE+7T6I=;
	b=Zmcw4CMNR1eLDj//laOMqZibRgYjn43fAabmu41gLuCUjPuV3WLokFk3Omivtk5kaY
	WY89nA3Pt9Nz1RX/HhAM0UMVeoxTZypQoYWcbZGl6xMMkuN0TcgrySe/GoD3SL283XIb
	iCAEg8u41s2yzcvQRk2JZ6l7QqdLeWgk9N9Fu6MzVOCECxndJ/C8QCny5HDoLxpIB3UJ
	ZwIRfceWP0cvw2TS++QV7y5CGMHntYi/MWAd9Sp8dYCRV8Ikaymd51nVxJJQoS5tdfxV
	nnNNnFhSn3lfDYNsKqR9GfsOOspdTYTnoRqf4tZUwwErGDl0Kiedzd1YKtCzMEziccIS
	p4Mg==
X-Gm-Message-State: AKGB3mJRJYZ5PFHe1PzTOMP/nQ8/P20i3V9E2wMswrHEceLUDD9n9J//
	04+TBASMlFg3myIqJKXYYvs9jTNUSXo=
X-Google-Smtp-Source: ACJfBov3b5KcD6ps/OcpO0Hm7pdelCgLS/S6LFwZ3FfAQ7KXiC3stj9OtYSjscPWIvCKTUw9isD7Vg==
X-Received: by 10.28.178.85 with SMTP id b82mr1040733wmf.47.1513004929541;
	Mon, 11 Dec 2017 07:08:49 -0800 (PST)
Received: from [192.168.1.49] (p57bf9f95.dip0.t-ipconnect.de. [87.191.159.149])
	by smtp.gmail.com with ESMTPSA id
	o16sm9388117wmi.29.2017.12.11.07.08.48
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 11 Dec 2017 07:08:48 -0800 (PST)
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	yocto@yoctoproject.org
References: <0d5535cd-a057-5538-4fe7-c90af04b4b3d@advancedtelematic.com>
	<a0212aa6-986e-2db9-8924-f314749ea194@linux.intel.com>
From: Anton Gerasimov <anton@advancedtelematic.com>
Message-ID: <ead035eb-e1a5-f993-b471-b0d55f1acea2@advancedtelematic.com>
Date: Mon, 11 Dec 2017 16:06:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <a0212aa6-986e-2db9-8924-f314749ea194@linux.intel.com>
Subject: Re: Checksum of an external file
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
X-List-Received-Date: Mon, 11 Dec 2017 15:08:51 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US


> I don't think so. You need to write an external script that copies the
> file into the layer, then runs bitbake. The recipe should simply refer
> to the file via SRC_URI file fetcher.

Thank you a lot, that actually works without copying: SRC_URI works with
absolute pathes as well. Such a straightworward solution has never
occured to me for some reason.

- Anton


