Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C67E8E00B9D; Thu, 22 Jun 2017 20:02:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DB07E00B57
	for <yocto@yoctoproject.org>; Thu, 22 Jun 2017 20:02:03 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id v5N3221d007740
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 22 Jun 2017 20:02:02 -0700 (PDT)
Received: from [128.224.162.160] (128.224.162.160) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 22 Jun 2017 20:02:01 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1497320961.git.liezhi.yang@windriver.com>
	<2010745.Jk45bzNWZ4@peggleto-mobl.ger.corp.intel.com>
	<a25f9998-b0d8-058b-ca2f-302d1cf47022@windriver.com>
	<3824633.FRioWf2P8i@peggleto-mobl.ger.corp.intel.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <dc004afd-7a75-2927-6e78-b6298e7dcc7d@windriver.com>
Date: Fri, 23 Jun 2017 11:02:00 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <3824633.FRioWf2P8i@peggleto-mobl.ger.corp.intel.com>
Cc: Konrad.Scherer@windriver.com, yocto@yoctoproject.org
Subject: Re: [PATCH V4 06/10] update.py: update layers orderly
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
X-List-Received-Date: Fri, 23 Jun 2017 03:02:07 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit



On 06/22/2017 07:33 PM, Paul Eggleton wrote:
> Hi Robert,
>
> On Thursday, 22 June 2017 1:04:23 PM CEST Robert Yang wrote:
>> On 06/21/2017 10:21 PM, Paul Eggleton wrote:
>>> On Tuesday, 13 June 2017 4:36:47 AM CEST Robert Yang wrote:
>>>> --- a/layerindex/update_layer.py
>>>> +++ b/layerindex/update_layer.py
>> ...
>>>> +def get_layer_var(config_data, var):
>>>> +    collection = config_data.getVar('BBFILE_COLLECTIONS', True)
>>>
>>> This makes the assumption that the layer.conf only adds one collection
>>> to BBFILE_COLLECTIONS. Probably a valid assumption 99.9% of the time these
>>> days, but it is worth noting.
>>
>> Should we check all BBFILE_COLLECTIONS, please ?
>
> I would say let's split the value and use the first one, but if there is more
> than one then warn e.g. "Multiple collections found, handling first one (%s)
> only" but otherwise continue processing. That way at least we'll know if this
> situation occurs.

Thanks, good idea, I will update it in V5.

// Robert

>
>>>> +def explode_dep_versions2(bitbakepath, deps):
>>>> +    bblib = bitbakepath + '/lib'
>>>> +    if not bblib in sys.path:
>>>> +        sys.path.insert(0, bblib)
>>>> +    import bb.utils
>>>> +    return bb.utils.explode_dep_versions2(deps)
>>>
>>> I'm not particularly happy with this (the wrapper nor calling bitbake code
>>
>> update.py needs explode_dep_versions2 to get dependencies and then calculate
>> them, I had tried to move the code into update_layer.py, and let
>> update_layer.py print explode_dep_versions2() to update.py, but it is a
>> OderedDic, and not easy to process it manually, so I leave the code in
>> update.py.
>
> Right, I understand the limitations and I don't really have a better
> alternative unfortunately, so we'll go with your current implementation. We
> may need to re-evaluate this in future at least structure-wise if we find the
> need to call other bitbake code in a similar way.
>
> Cheers,
> Paul
>
>

