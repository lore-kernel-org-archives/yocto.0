Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3993FE00D38; Mon, 23 Sep 2019 00:45:41 -0700 (PDT)
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
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.51 listed in list.dnswl.org]
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com
	[209.85.221.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCD69E00920
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2019 00:45:40 -0700 (PDT)
Received: by mail-wr1-f51.google.com with SMTP id o18so12667900wrv.13
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2019 00:45:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=WzE4EMoonxA9Y20CoWAwqK87B0WtLdhueiw2d89e5dQ=;
	b=emE5OBvWD2GZIOkUz/3gLSLtHohLCgrHte9oEdNS+PgInQCViGJ3MQqc+8Ri0Ih1Ly
	pvxg8Wj/GBhFr47rbD3k7OYxaB6uWv8KtZ8eOZRycx10Q7ErlkR6dqvcB/39ToXix8jb
	AdjmBD3rMVJ24eoez9W9vnoiCSMt5x4cQX0l4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=WzE4EMoonxA9Y20CoWAwqK87B0WtLdhueiw2d89e5dQ=;
	b=f3zxEAwizVes4OqLiPmXiqBeMDJeSzoymrA5paOYV3syn+VNnRUHe9KVZHlEZDCjh5
	bu2DC4abJtostLMyxVekksPdiiVZTa3AQ+6miMKZNLEsB9SA9k1Aam7Lp7ffj8V8Xc6+
	RYDBbpQ3L55cPprL/9H3fEHrwrV0gsptTXteTFMiz6R5qaiWnmO3zt8JYZ4a9+WBDaXA
	IHgAmjJ8mbMjrvC2EFMB6IxxVJHVTgmiaAoeQayNwd3vERNqoIeEt4UmksQT2OzfcmaN
	bZslQGU9/N2y6Db1n/28nPWh4fTA3PnICBsk9V4q0zHVNNLPgsZ+31mj2Hv42A7TLkmG
	3xXw==
X-Gm-Message-State: APjAAAWTeveMHWBcX7Rxa0b90EHvI490QfZ2nwq8QcXFgO9CML2n3XKW
	IIrd8GQCEUJO2s8yr6zODdnLUg==
X-Google-Smtp-Source: APXvYqx8mQt1sr2OTAVzFbe7vWidNvEwCA2U0aNNGY4eTmCgSCMhdZnWlXksas8ft4gSUhO4XgvObw==
X-Received: by 2002:adf:f008:: with SMTP id j8mr20983444wro.75.1569224739646; 
	Mon, 23 Sep 2019 00:45:39 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	y186sm22499676wmb.41.2019.09.23.00.45.38
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 23 Sep 2019 00:45:38 -0700 (PDT)
Message-ID: <726da48bae7285caade355afd47c57208dfd6742.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>, "Tummalapalli, Vineela"
	<vineela.tummalapalli@intel.com>
Date: Mon, 23 Sep 2019 08:45:36 +0100
In-Reply-To: <CY4PR11MB187994BFF9D0605ADCB50754E3850@CY4PR11MB1879.namprd11.prod.outlook.com>
References: <20190920050052.0C767E00D8F@yocto-www.yoctoproject.org>
	<9DDD2658D1FE414E99172D2DB1E4D0434823F10E@PGSMSX109.gar.corp.intel.com>
	<CY4PR11MB187921D82C8A26CC9E25CF65E3850@CY4PR11MB1879.namprd11.prod.outlook.com>
	<CY4PR11MB187994BFF9D0605ADCB50754E3850@CY4PR11MB1879.namprd11.prod.outlook.com>
User-Agent: Evolution 3.33.4-1build1 
MIME-Version: 1.0
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"akuster808@gmail.com" <akuster808@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.8_M3.rc1)
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
X-List-Received-Date: Mon, 23 Sep 2019 07:45:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2019-09-23 at 07:37 +0000, Jain, Sangeeta wrote:
> Hi Richard,
> 
> LSB support was expected to be removed from build 'yocto-2.8_M3.rc1'
> onwards, but link on AB still points to LSB images.
> The images present inside 
> https://autobuilder.yocto.io/pub/releases/yocto-2.8_M3.rc1/machines/genericx86-64-lsb/
>   are built with systemd as init manager.
> 
> Can you please confirm if these are altcfg images and the link name
> needs to updated?

Well spotted!

I can confirm these are altcfg images which have systemd as the init
manager.

For backwards compatibility the autobuilder target names didn't change
but the configuration they're built with did. I hadn't realised this
would be visible in the release so we may need to think about that for
M4 but they are altcfg images.

[Added Vineela to cc:]

Cheers,

Richard


