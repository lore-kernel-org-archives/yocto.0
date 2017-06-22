Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B3632E00B9F; Thu, 22 Jun 2017 03:47:36 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B63C2E00B8B
	for <yocto@yoctoproject.org>; Thu, 22 Jun 2017 03:47:35 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id v5MAlX5x008832
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 22 Jun 2017 03:47:33 -0700 (PDT)
Received: from [128.224.162.160] (128.224.162.160) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 22 Jun 2017 03:47:32 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1497320961.git.liezhi.yang@windriver.com>
	<d29ba1f3abdcaad87fa53853261af4d98228c519.1497320961.git.liezhi.yang@windriver.com>
	<27239647.GeoKIh8NCA@peggleto-mobl.ger.corp.intel.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <d81b63c1-cd74-0c1c-eed5-443ba3e9e4de@windriver.com>
Date: Thu, 22 Jun 2017 18:47:31 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <27239647.GeoKIh8NCA@peggleto-mobl.ger.corp.intel.com>
Cc: Konrad.Scherer@windriver.com, yocto@yoctoproject.org
Subject: Re: [PATCH V4 03/10] utils.py: remove obsolete dependencies
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
X-List-Received-Date: Thu, 22 Jun 2017 10:47:36 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit



On 06/21/2017 05:06 PM, Paul Eggleton wrote:
> On Tuesday, 13 June 2017 4:36:44 AM CEST Robert Yang wrote:
>> Fixed:
>>   - set LAYERDEPENDS_openembedded-layer = "core"
>>   - $ "update.py -l meta-oe -b master"
>>     Check from web, its dependency is "openembedded-core"
>>   - Change LAYERDEPENDS_openembedded-layer = "foo"
>>   - Run "update.py -l meta-oe -b master"
>>     Check from web, its dependency is "openembedded-core and foo", this is
>>     wrong, it should be "foo" only, this patch can fix the problem.
>>
>> And also the existing checking should filter(required=required),
>> otherwise it can't work well when a layer is in both depends and
>> recommends, this can't happen in a normal case, but it would surprise the
>> user when this happens.
>>
>> Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
>> ---
>>  layerindex/utils.py | 13 ++++++++++++-
>>  1 file changed, 12 insertions(+), 1 deletion(-)
>>
>> diff --git a/layerindex/utils.py b/layerindex/utils.py
>> index 442b121..b7165d0 100644
>> --- a/layerindex/utils.py
>> +++ b/layerindex/utils.py
>> @@ -88,6 +88,7 @@ def _add_dependency(var, name, layerbranch, config_data,
> logger=None, required=T
>>          logger.debug('Error parsing %s_%s for %s\n%s' % (var, var_name,
> layer_name, str(vse)))
>>          return
>>
>> +    need_delete = None
>>      for dep, ver_list in list(dep_dict.items()):
>>          ver_str = None
>>          if ver_list:
>> @@ -106,8 +107,14 @@ def _add_dependency(var, name, layerbranch,
> config_data, logger=None, required=T
>>                  logger.error('Cannot resolve %s %s (version %s) for %s' %
> (name, dep, ver_str, layer_name))
>>                  continue
>>
>> +        # Preparing to remove obsolete ones
>> +        if not need_delete:
>> +            need_delete =
> LayerDependency.objects.filter(layerbranch=layerbranch).filter(required=required).exclude(dependency=dep_layer)
>> +        else:
>> +            need_delete = need_delete.exclude(dependency=dep_layer)
>> +
>>          # Skip existing entries.
>> -        existing =
> list(LayerDependency.objects.filter(layerbranch=layerbranch).filter(dependency=dep_layer))
>> +        existing =
> list(LayerDependency.objects.filter(layerbranch=layerbranch).filter(required=required).filter(dependency=dep_layer))
>>          if existing:
>>              logger.debug('Skipping %s - already a dependency for %s' %
> (dep, layer_name))
>>              continue
>> @@ -121,6 +128,10 @@ def _add_dependency(var, name, layerbranch,
> config_data, logger=None, required=T
>>          layerdep.required = required
>>          layerdep.save()
>>
>> +    if need_delete:
>> +        logger.debug("Removing obsolete dependencies: %s" % need_delete)
>> +        need_delete.delete()
>> +
>>  def set_layerbranch_collection_version(layerbranch, config_data,
> logger=None):
>>      layerbranch.collection = config_data.getVar('BBFILE_COLLECTIONS', True)
>>      ver_str = "LAYERVERSION_"
>
> So I do see the need to clear out old dependency values when your list of
> dependencies is coming entirely from LAYERDEPENDS, however if you have only
> manually added dependencies and LAYERDEPENDS is not complete (as is often the
> case in the OE layer index), will this automatically remove those? If so I

The dependencies will be removed if it is not in conf/layer.conf.

> think we're going to have to come up with some mechanism to avoid that.
> Probably the easiest one would be to avoid touching the dependencies unless
> LAYERDEPENDS actually changes. Of course if that means we're going to store
> the previous LAYERDEPENDS value somewhere to compare to, we'd need to avoid it
> triggering initially when none of those values are set.

Why not fix conf/layer.conf rather than fix it from database ? If
conf/layer.conf is wrong, we would meet problems elsewhere. The database
should obey local.conf when mismatches, otherwise, this would confuse
users a lot when they want to update LAYERDEPENDS.

I'm glad to fix oe-classic's LAYERDEPENDS issues if they are wrong.

// Robert

>
> Cheers,
> Paul
>

