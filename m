Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1869E00BFD; Tue,  6 Nov 2018 18:08:02 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2B9B8E00A6B
	for <yocto@yoctoproject.org>; Tue,  6 Nov 2018 18:07:59 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id wA727woD029373
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 6 Nov 2018 18:07:58 -0800 (PST)
Received: from server.local (128.224.22.207) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.40) with Microsoft SMTP Server id 14.3.408.0;
	Tue, 6 Nov 2018 18:07:57 -0800
To: akuster808 <akuster808@gmail.com>, Khem Raj <raj.khem@gmail.com>
References: <1541541389-21595-1-git-send-email-akuster@mvista.com>
	<CAMKF1srk1bH1zbYy_r2yKErnNz0OWQOgOgt1YJwLdjK2Xr8fXQ@mail.gmail.com>
	<c59e74fd-868c-225a-3799-eaf5000f59af@gmail.com>
	<1a3be576-c416-2c6a-6b0d-674b61a1363c@windriver.com>
	<1c979ece-ba16-454a-bebb-5a81fcb455c0@gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <641d8c73-2acb-0410-ca17-049dfd844337@windriver.com>
Date: Tue, 6 Nov 2018 21:07:56 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:60.0)
	Gecko/20100101 Thunderbird/60.3.0
MIME-Version: 1.0
In-Reply-To: <1c979ece-ba16-454a-bebb-5a81fcb455c0@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [yocto-kernel-cache][v4.4][PATCH] kver: bump to v4.4.147
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
X-List-Received-Date: Wed, 07 Nov 2018 02:08:02 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 2018-11-06 8:07 p.m., akuster808 wrote:
> 
> On 11/6/18 2:42 PM, Bruce Ashfield wrote:
>> On 2018-11-06 5:10 PM, akuster808 wrote:
>>>
>>> On 11/6/18 2:05 PM, Khem Raj wrote:
>>>> On Tue, Nov 6, 2018 at 1:57 PM Armin Kuster<akuster808@gmail.com>
>>>> wrote:
>>>>> Signed-off-by: Armin Kuster<akuster@mvista.com>
>>>>> ---
>>>>>    kver | 2 +-
>>>>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/kver b/kver
>>>>> index 7b008cd..5ccc572 100644
>>>>> --- a/kver
>>>>> +++ b/kver
>>>>> @@ -1 +1 @@
>>>>> -v4.4.141
>>>>> +v4.4.147
>>>> why not 4.4.162
>>>
>>> because linux-yocto-4.4
>>> <http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-4.4/> is not
>>> at 4.4.162. I am just trying to use the latest in that kernel repo.
>>
>> Did you want .162 ? I have a whole set of -stable updates staged
>> here, but haven't pushed anything since releases are imminent.
> 
> We are a day or two away from freezing for a Rocko QA run so if I can
> get it sometime tomorrow, I should be able to  get some runtime on that
> update otherwise no need to rush things.

If you check the 4.4 tree, and the kernel-cache, I've pushed the
latest set of -stable updates.

Up to you if you want to bump the SRCREVs to pick them up, but I've
validated them with my builds/boots.

Bruce

> 
> - armin
> 
>>
>> But in the case of 4.4, I could lift my freeze, given that the kernel
>> recipe isn't active in master, hence the release schedule is
>> different.
>>
> 
>> Bruce
>>
>>>
>>>
>>> - armin
>>>
>>>>> -- 
>>>>> 2.7.4
>>>>>
>>>>> -- 
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>
> 


