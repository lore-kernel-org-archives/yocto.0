Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D79B9E012F1; Wed,  4 Jul 2018 00:52:10 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03CD7E0127F
	for <yocto@yoctoproject.org>; Wed,  4 Jul 2018 00:52:09 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w647q9gM025421
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 4 Jul 2018 00:52:09 -0700 (PDT)
Received: from [128.224.16.191] (128.224.16.191) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.399.0;
	Wed, 4 Jul 2018 00:52:08 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1530569567.git.paul.eggleton@linux.intel.com>
	<2774b95ad7f971714498b5d35885225af873da03.1530569567.git.paul.eggleton@linux.intel.com>
	<f94a49f1-70cc-b960-c8eb-67f2cb6eac2c@windriver.com>
	<9167934.g4TBrBcL74@localhost.localdomain>
	<d57ea952-26ab-ced5-2393-f625f9e9e095@windriver.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <10c336ff-c8cd-e961-5215-730dc6aaedd5@windriver.com>
Date: Wed, 4 Jul 2018 15:52:05 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <d57ea952-26ab-ced5-2393-f625f9e9e095@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH 5/7] update: ignore recommends when ordering layers
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
X-List-Received-Date: Wed, 04 Jul 2018 07:52:10 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Paul,

I'm sorry to say that I met layerindex' loaddata problems yesterday and today,
I still didn't find the root cause. Have you tried dumpdata and loaddata
recently, please ?

What I did was:

$ python3 manage.py dumpdata --settings settings --exclude=contenttypes 
--exclude=auth.Permission --    exclude=corsheaders >dumped.json

On another environment:
Setup database to sqlite3 in settings.py.
$ python3 manage.py loaddata --settings settings dumped.json

The first problem I got was:
[snip]
   File 
"/buildarea1/lyang1/layerindex-web/.venv/lib/python3.5/site-packages/reversion/revisions.py", 
line 410, in _assert_registered
     model=model,
reversion.errors.RegistrationError: Problem installing fixture 
'/buildarea1/lyang1/layerindex-web/dumped.json': <class 
'layerindex.models.Distro'> has not been registered with django-reversion
[snip]

I think it is because we didn't use @reversion.register() for the class, so I 
added them to layerindex/models.py, then I got other errors:

[snip]
   File 
"/buildarea1/lyang1/layerindex-web/.venv/lib/python3.5/site-packages/reversion/models.py", 
line 272, in _local_field_dict
     field_dict[field.attname] = getattr(obj, field.attname)
AttributeError: Problem installing fixture 
'/buildarea1/lyang1/layerindex-web/dumped.json': 'Branch' object has no 
attribute 'layerbranch_id'

I'm not sure what's wrong atm, need more investigations.

I need loaddata on my localhost to do development testing, so I can't start
work on update.py until I fix the loaddata problem.

// Robert

On 07/03/2018 11:08 AM, Robert Yang wrote:
> 
> 
> On 07/03/2018 10:58 AM, Paul Eggleton wrote:
>> Hi Robert
>>
>> On Tuesday, 3 July 2018 2:45:11 PM NZST Robert Yang wrote:
>>> Thanks for let me know this, this patch might be incorrect, suppose we have two
>>> layers: core and hello:
>>>
>>> 1) LAYERRECOMMENDS_core = "hello"
>>> 2) $ update.py -l hello,core
>>>
>>> Then core maybe added before hello layer since it ignores recs on hello, and if
>>> hello is a new layer, it would not be in core's recs in database since core
>>> knows nothing about hello, I think that this is incorrect.
>>>
>>> If we really need this, I think that we should not ignore recs when the
>>> layer is present, but only ignore it when the layer is not present, for
>>> example, ignore it when hello layer doesn't exist, otherwise, don't ignore it.
>>
>> Can you come up with an alternative fix that doesn't break parsing like it 
>> does now?
> 
> OK, I will, maybe I can send you a patch by tomorrow, but I'm not sure since
> the implementation might be a little complicated.
> 
> // Robert
> 
>>> But I'm not sure about patch 4 (error -> warning) either, since layerindex is
>>> a central database, whether add recs to conf/bblayers.conf should depend on
>>> end user rather than ignore it in database, otherwise the end user (especially
>>> the api user) would have no way to choice, for example, we use api to make
>>> conf/bblayers.conf have all or no recs layers according to user's choice,
>>> if the database is wrong, then there might be only part of recs layers.
>>> Though we can check update.py's warnings to fix the problem.
>>
>> Recommends are just that - recommendations. Someone might legitimately
>> submit a layer that recommends another which they don't submit (perhaps a
>> commercial layer?). The system shouldn't refuse to handle it or indicate that
>> it's broken (it isn't, there might be reduced functionality but the layer will 
>> still
>> be parseable by bitbake).
>>
>> I'll leave these changes unmerged for a bit in case you have a better fix for
>> the current problems.
>>
>> Cheers,
>> Paul
>>

