Return-Path: <ccoutand@widenorth.no>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0C6DE0091D; Sun,  3 May 2015 02:00:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,BODY_URI_ONLY,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.7 BODY_URI_ONLY Message body is only a URI in one line of text or
	for *      an image
Received: from mail-wg0-f49.google.com (mail-wg0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4312FE004F6
	for <yocto@yoctoproject.org>; Sun,  3 May 2015 01:59:56 -0700 (PDT)
Received: by wgyo15 with SMTP id o15so124527905wgy.2
	for <yocto@yoctoproject.org>; Sun, 03 May 2015 01:59:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:message-id:date:from:user-agent:mime-version:to
	:cc:subject:references:in-reply-to:content-type
	:content-transfer-encoding;
	bh=91fsMQfTDezGj1FL9sIEOYBnnJdSx8NIRDqAy7OfTQM=;
	b=MXRDTsEDZoa16Gln8KBi7S2iamIAAkC6Dwp9e2k3wF/MJIqXeV6RoaB/7JmQNim9yQ
	mII2P+6fPhyo/EhpmqeRMLtv32wLCEPyQGy2ujm9v5CfNkN7UdjRQgMTMH1FJcN7EQds
	NInEUbbU0G2RKCFHnkocgjAjph41A3xGulSty6brkCj/6m3tV+JXz8+GQb9GVnO68PVR
	dVKGbbTFTqeIUTiEWJP6yR85N0hbOMn7BwlZetORr0nCM8VQXkO1e90x6KoTdL9XoYf3
	FfNwnQth3e+zg8l7Mmzf5JNFPICTL85GOtVH0xe+4gPHLaVYqL4P4K7jEB8WCtu8cVvD
	q4UA==
X-Gm-Message-State: ALoCoQkUQojj7KUsMKgIdVKK43Xr/pmOOrn9+/q62W2Rm749UkP964j/yi62onQgngrXTEVNWvoL
X-Received: by 10.194.248.132 with SMTP id ym4mr33146864wjc.74.1430643595517; 
	Sun, 03 May 2015 01:59:55 -0700 (PDT)
Received: from [137.133.125.148] ([77.40.227.130])
	by mx.google.com with ESMTPSA id fu2sm5765800wic.20.2015.05.03.01.59.54
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 03 May 2015 01:59:54 -0700 (PDT)
Message-ID: <5545E389.8070506@widenorth.no>
Date: Sun, 03 May 2015 10:59:53 +0200
From: Christophe Coutand cc <ccoutand@widenorth.no>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <CAPTXVA0nh8rpnsbrHnWTqmOtvesE=VyczD6PjDMqHbuv+DBdkQ@mail.gmail.com>
	<6115291.3O8KzSeDpB@peggleto-mobl.ger.corp.intel.com>
	<55432FB0.4050204@widenorth.no>
	<B01F33FD-7B1F-4740-8568-293CAF7227A3@gmail.com>
In-Reply-To: <B01F33FD-7B1F-4740-8568-293CAF7227A3@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: How to add openmp to the target image
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
X-List-Received-Date: Sun, 03 May 2015 09:00:00 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit


On 5/1/2015 11:11 PM, Khem Raj wrote:
>> On May 1, 2015, at 12:48 AM, christophe coutand <ccoutand@widenorth.no> wrote:
>>
>> Hi Paul,
>>
>> Thank you for your help.
>>
>> replacing
>> IMAGE_INSTALL += "libgomp libgomp-dev libgomp-staticdev"
>> with
>> IMAGE_INSTALL_append = " libgomp libgomp-dev libgomp-staticdev”
>
> unless you are doing development on the device, you don’t need -dev and -staticdev packages to be there
>
>
noted. in this case we are doing some development on the device.

