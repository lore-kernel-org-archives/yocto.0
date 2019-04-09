Return-Path: <franksinankaya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CE7FE00C46; Tue,  9 Apr 2019 08:14:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f67.google.com (mail-ot1-f67.google.com
	[209.85.210.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1106FE00AD5
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2019 08:14:16 -0700 (PDT)
Received: by mail-ot1-f67.google.com with SMTP id 64so15880163otb.8
	for <yocto@yoctoproject.org>; Tue, 09 Apr 2019 08:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=sender:from:subject:to:references:message-id:date:user-agent
	:mime-version:in-reply-to:content-language:content-transfer-encoding;
	bh=3gvuJpTFKI5pGWrT5V1Sr0A5CteXxKW/xIbxZzULC98=;
	b=KOSHoJNyasKwFiyEvql/m7l8xP7bz811rViEYnLaug+RzV558QfueJjSwSQgtcH63c
	5WYiRtGJO6Nf9I0L9pWdRaxQYOXVWBPB2Aunmo8fWkJed6MiLqCDluB0z9sDaPJuZfb7
	DyqLa3GPeDtX9CD5WcVl8RoOnnpL2qP0i0I9qvgKb/2ZJqNNVCP4Y+uQueV8RAOGzTZs
	apKg9lnJ+5pQtmfKuDALQLJs0iUfal6OdjFePOGTjyLMpX51yPu7NV3b5YFiZADU4nDO
	VvLAiAQYgeMEffjI15s4RUnoH8I2eNnUFui6MYuib7TnWOOSFoqEHB1WfRpcPXuK+4KY
	5LpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:sender:from:subject:to:references:message-id
	:date:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=3gvuJpTFKI5pGWrT5V1Sr0A5CteXxKW/xIbxZzULC98=;
	b=qv3dKdMRoa1cnpk4bhGVvnwGG1SfHrwxIx/aNZ8If/w508BoePope4UULH/udmLA6o
	SGCejtp8lky1JUzDdRa9/HI5c8d/b36xsxiTrLn6Mx8dfznkPSSBCJq1rsMdfQaPMqfw
	T3/WF/b54qrSH46/gRhxIHJeD/41Y45vVWF0Kd0Up8rPQ57ZJ4RKvjqpnwAzwQxrt0Ve
	3Q8kkr7cRosblru4k9Hz3eC61cL9Je3AAVBLPNs0S7ye+TKKG1BASY2p/6IhXFpukqVr
	uirrbhIkljx7bDgGTRj7nzhxb6/TDmLaC6Q+s139gV0f69BZ76/XlXeAeAT52weJJodI
	hm2Q==
X-Gm-Message-State: APjAAAV04Zz2PiafY13ubhm6zaeFDiGd07MwpgLBRDdr/EYFM33x4o5C
	Z2xhEobd3JKCvWZv2bn5M6Pg+CFv
X-Google-Smtp-Source: APXvYqxJgjT0CmIHmQKZgO4k4l//8eYGWBBLp18HQW7r+HukGKE9McZ7qBS7r9idR+ad6xIG6uhKxQ==
X-Received: by 2002:a9d:6d05:: with SMTP id o5mr24558501otp.175.1554822856231; 
	Tue, 09 Apr 2019 08:14:16 -0700 (PDT)
Received: from [192.168.1.74] (75-58-59-55.lightspeed.rlghnc.sbcglobal.net.
	[75.58.59.55])
	by smtp.gmail.com with ESMTPSA id i81sm7350889oia.4.2019.04.09.08.14.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 09 Apr 2019 08:14:15 -0700 (PDT)
Sender: Sinan Kaya <franksinankaya@gmail.com>
From: Sinan Kaya <Okaya@kernel.org>
X-Google-Original-From: Sinan Kaya <okaya@kernel.org>
To: akuster <akuster@mvista.com>, yocto@yoctoproject.org, akuster808@gmail.com
References: <20190329144252.10259-1-okaya@kernel.org>
	<84319ec4-cdd5-6095-1363-e07cf5c6d396@kernel.org>
	<edcc0801-180a-71ee-1e31-6f64d72987ac@mvista.com>
Message-ID: <de91556f-fc82-7de1-77b2-4f5c8bb41930@kernel.org>
Date: Tue, 9 Apr 2019 11:14:15 -0400
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <edcc0801-180a-71ee-1e31-6f64d72987ac@mvista.com>
Subject: Re: [sumo] [PATCH v1] systemd: fix musl compilation
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
X-List-Received-Date: Tue, 09 Apr 2019 15:14:18 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 4/9/2019 7:49 AM, akuster wrote:
> After closer look, I don't the "Upstream-Status:" nor a signoff in the
> patch being added in the bb file.
> 
> Does this issue affect later branches ?

I can fix this. The issue was introduced while backporting a CVE patch
from debian.

So, we are fixing a problem by patching "the patch".

We'd squash this into the original CVE under normal circumstances but
original patch has been already checked in.

Can I assume that upstream status would be "inappropriate"?

I can add these tags once we reach to an agreement.

