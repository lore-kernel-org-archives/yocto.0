Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17D47E00BBD; Thu, 22 Jun 2017 04:04:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D5C7E00B8B
	for <yocto@yoctoproject.org>; Thu, 22 Jun 2017 04:04:26 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v5MB4PSe021567
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Thu, 22 Jun 2017 04:04:25 -0700
Received: from [128.224.162.160] (128.224.162.160) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 22 Jun 2017 04:04:24 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1497320961.git.liezhi.yang@windriver.com>
	<a3470785147e280b6a618e30ac594e38d53a24f7.1497320961.git.liezhi.yang@windriver.com>
	<2010745.Jk45bzNWZ4@peggleto-mobl.ger.corp.intel.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <a25f9998-b0d8-058b-ca2f-302d1cf47022@windriver.com>
Date: Thu, 22 Jun 2017 19:04:23 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <2010745.Jk45bzNWZ4@peggleto-mobl.ger.corp.intel.com>
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
X-List-Received-Date: Thu, 22 Jun 2017 11:04:30 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit

Hi Paul,

Thanks for the review, I've fixed all your comments except the following ones.

On 06/21/2017 10:21 PM, Paul Eggleton wrote:
> Hi Robert,
>
> Thanks for solving this long-standing bug! Just a few notes below.
>
> On Tuesday, 13 June 2017 4:36:47 AM CEST Robert Yang wrote:
>> --- a/layerindex/update_layer.py
>> +++ b/layerindex/update_layer.py
...
>> +def get_layer_var(config_data, var):
>> +    collection = config_data.getVar('BBFILE_COLLECTIONS', True)
>
> This makes the assumption that the layer.conf only adds one collection
> to BBFILE_COLLECTIONS. Probably a valid assumption 99.9% of the time these
> days, but it is worth noting.

Should we check all BBFILE_COLLECTIONS, please ?

>
>
>> +    if collection:
>> +        collection = collection.strip()
>> +    value = config_data.getVar('%s_%s' % (var, collection), True)
>> +    if not value:
>> +        value = config_data.getVar(var, True)
>> +    return value or ''
>> +
...
>
>
>> +def explode_dep_versions2(bitbakepath, deps):
>> +    bblib = bitbakepath + '/lib'
>> +    if not bblib in sys.path:
>> +        sys.path.insert(0, bblib)
>> +    import bb.utils
>> +    return bb.utils.explode_dep_versions2(deps)
>
> I'm not particularly happy with this (the wrapper nor calling bitbake code

update.py needs explode_dep_versions2 to get dependencies and then calculate
them, I had tried to move the code into update_layer.py, and let
update_layer.py print explode_dep_versions2() to update.py, but it is a
OderedDic, and not easy to process it manually, so I leave the code in
update.py.

I will send a V5 after we've made agreements.

// Robert

> from update.py) but I suppose it's marginally better than duplicating
> explode_dep_versions2().
>
> Cheers,
> Paul
>

