Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65149E00B9F; Thu, 22 Jun 2017 03:53:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3BE95E00B8B
	for <yocto@yoctoproject.org>; Thu, 22 Jun 2017 03:53:33 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v5MArUVh009125
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 22 Jun 2017 03:53:32 -0700 (PDT)
Received: from [128.224.162.160] (128.224.162.160) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 22 Jun 2017 03:53:29 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1497320961.git.liezhi.yang@windriver.com>
	<6b4222d19233693a64f354f37c79bb66a18d2277.1497320961.git.liezhi.yang@windriver.com>
	<1814038.FNi6Ofsz57@peggleto-mobl.ger.corp.intel.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <a4cd7aaa-2bdc-e753-74df-a170627e8153@windriver.com>
Date: Thu, 22 Jun 2017 18:53:28 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <1814038.FNi6Ofsz57@peggleto-mobl.ger.corp.intel.com>
Cc: Konrad.Scherer@windriver.com, yocto@yoctoproject.org
Subject: Re: [PATCH V4 01/10] update.py: update actual branch for layer and bitbake
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
X-List-Received-Date: Thu, 22 Jun 2017 10:53:37 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Paul,

Thanks for the review, I've fixed all the issues you commented except
the following ones.

On 06/21/2017 05:01 PM, Paul Eggleton wrote:
> Hi Robert,

>>
>> +    # We deliberately exclude status == 'X' ("no update") here
>> +    layerquery_all = LayerItem.objects.filter(classic=False).filter(status='P')
>> +    if layerquery_all.count() == 0:
>> +        logger.info("No published layers to update")
>> +        sys.exit(1)
>
> So near as I can tell this change isn't required as part of the other
> changes here, it's just to tell you up front that no layers are published
> if you've specified layers instead of seeing an error. I don't have an
> issue with that but this change should be mentioned in the commit
> message ("additionally ..."), or split out as a separate patch.

Sorry, it should be in another patch, I added it to wrong place when rebase.
I add this patch into "update.py: update layers orderly" now. I need
layerquery_all to know all the provided collections in database, so that we
can know whether the dependencies match or not.

>
>
>> +    # For -a option to update bitbake branch
>> +    update_bitbake = False
>>      if options.layers:
>> -        layerquery = LayerItem.objects.filter(classic=False).filter(name__in=options.layers.split(','))
>> -        if layerquery.count() == 0:
>> -            logger.error('No layers matching specified query "%s"' % options.layers)
>> -            sys.exit(1)
>> +        layers = options.layers.split(',')
>> +        if 'bitbake' in layers:
>> +            update_bitbake = True
>> +            layers.remove('bitbake')
>
> So since this means 'bitbake' is a reserved name for layers we should add
> validation upon layer submission to ensure you can't create a layer with this
> name. I can take care of that if you like.

Good idea, I will do it later, or you can do it if you have time.

// Robert

