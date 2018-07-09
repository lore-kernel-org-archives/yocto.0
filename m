Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79CFEE00DC6; Sun,  8 Jul 2018 21:03:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5994DE00D9E
	for <yocto@yoctoproject.org>; Sun,  8 Jul 2018 21:03:57 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w6943iqr032250
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 8 Jul 2018 21:03:45 -0700
Received: from [128.224.162.161] (128.224.162.161) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.399.0;
	Sun, 8 Jul 2018 21:03:44 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>, "Scherer, Konrad"
	<Konrad.Scherer@windriver.com>
References: <cover.1530569567.git.paul.eggleton@linux.intel.com>
	<d57ea952-26ab-ced5-2393-f625f9e9e095@windriver.com>
	<10c336ff-c8cd-e961-5215-730dc6aaedd5@windriver.com>
	<2811441.BFUunf07rL@localhost.localdomain>
	<66c322fa-c666-07d5-8f87-9abe0463598f@windriver.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <376ebbf8-ad9c-042a-6607-c2f5ccdbba4a@windriver.com>
Date: Mon, 9 Jul 2018 12:07:06 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <66c322fa-c666-07d5-8f87-9abe0463598f@windriver.com>
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
X-List-Received-Date: Mon, 09 Jul 2018 04:03:58 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi Paul,

I've sent the patches to mailing list:

[yocto] [layerindex-web][PATCH 0/4] update.py: several fixes

The one for recommends is:
   update.py: add layers when RECOMMENDS isn't satisfied

Now you can drop [PATCH 5/7], others are still needed.

// Robert

On 07/06/2018 02:49 PM, Robert Yang wrote:
> 
> 
> On 07/06/2018 01:28 PM, Paul Eggleton wrote:
>> Hi Robert
>>
>> On Wednesday, 4 July 2018 7:52:05 PM NZST you wrote:
>>> I'm sorry to say that I met layerindex' loaddata problems yesterday and
>>> today,
>>> I still didn't find the root cause. Have you tried dumpdata and loaddata
>>> recently, please ?
>>>
>>> What I did was:
>>>
>>> $ python3 manage.py dumpdata --settings settings --exclude=contenttypes
>>> --exclude=auth.Permission --    exclude=corsheaders >dumped.json
>>>
>>> On another environment:
>>> Setup database to sqlite3 in settings.py.
>>> $ python3 manage.py loaddata --settings settings dumped.json
>>>
>>> The first problem I got was:
>>> [snip]
>>>     File
>>> "/buildarea1/lyang1/layerindex-web/.venv/lib/python3.5/site-packages/reversion/revisions.py", 
>>>
>>> line 410, in _assert_registered
>>>       model=model,
>>> reversion.errors.RegistrationError: Problem installing fixture
>>> '/buildarea1/lyang1/layerindex-web/dumped.json': <class
>>> 'layerindex.models.Distro'> has not been registered with django-reversion
>>> [snip]
>>>
>>> I think it is because we didn't use @reversion.register() for the class, so I
>>> added them to layerindex/models.py, then I got other errors:
>>>
>>> [snip]
>>>     File
>>> "/buildarea1/lyang1/layerindex-web/.venv/lib/python3.5/site-packages/reversion/models.py", 
>>>
>>> line 272, in _local_field_dict
>>>       field_dict[field.attname] = getattr(obj, field.attname)
>>> AttributeError: Problem installing fixture
>>> '/buildarea1/lyang1/layerindex-web/dumped.json': 'Branch' object has no
>>> attribute 'layerbranch_id'
>>
>> Hmm, that's odd. Branch shouldn't have layerbranch_id, it's the other way 
>> around -
>> LayerBranch has a branch_id.
>>
>>> I'm not sure what's wrong atm, need more investigations.
>>>
>>> I need loaddata on my localhost to do development testing, so I can't start
>>> work on update.py until I fix the loaddata problem.
>>
>> I have used loaddata and dumpdata here (a couple of times) but not recently.
>> I did not experience these issues before though. However these don't seem like
>> issues that would have started as a result of this patchset (or indeed recent
>> changes, other than perhaps an upgrade of django-reversion), have you been
>> using loaddata/dumpdata prior to this?
> 
> dumpdata/loaddata worked well before March, Konrad (in CC) worked it around by:
> 
> dumpdata --exclude=corsheaders --exclude=reversion.version 
> --exclude=reversion.revision --exclude=captcha.captchastore 
> --exclude=sessions.session
> 
> So I can loaddata now.
> 
> I've finished patch for 5/7, but I met other problems when testing on completely
> new branch which caused by recently changes, I will fix them and send out
> patches later
> 
> // Robert
> 
>>
>> Cheers,
>> Paul
>>

