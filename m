Return-Path: <Hongzhi.Song@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62CD4E00C9F; Wed, 12 Dec 2018 17:36:39 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48599E00C8F
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2018 17:36:38 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id wBD1abCe005016
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2018 17:36:37 -0800 (PST)
Received: from [128.224.163.204] (128.224.163.204) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.408.0;
	Wed, 12 Dec 2018 17:36:37 -0800
To: Bruce Ashfield <bruce.ashfield@windriver.com>, <yocto@yoctoproject.org>
References: <1544523170-221209-1-git-send-email-hongzhi.song@windriver.com>
	<d23a0b81-b245-6bfc-f5ae-2a341785f06a@windriver.com>
From: "Hongzhi, Song" <hongzhi.song@windriver.com>
Message-ID: <2946a217-a449-91d6-595e-275338a98cc0@windriver.com>
Date: Thu, 13 Dec 2018 09:36:34 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <d23a0b81-b245-6bfc-f5ae-2a341785f06a@windriver.com>
X-Originating-IP: [128.224.163.204]
Subject: Re: [yocto-kernel-tools][PATCH] tools/kconf_check: modify grep pattern
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
X-List-Received-Date: Thu, 13 Dec 2018 01:36:39 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

Thanks.

So would you help to remedy the commit log while merging the patch?


--Hongzhi


On 12/13/2018 02:45 AM, Bruce Ashfield wrote:
> On 12/11/18 5:12 AM, Hongzhi.Song wrote:
>> The cmd line, <grep '^[ ]*\(menu\)*config '>, can't
>> match all expect config options.
>>
>> This is because that it is not always space after 'config'
>
> This should say "not always one space". There really should
> always just be a single space, but typos do sneak in. I'll
> queue the patch shortly.
>
> Bruce
>
>> in kernel-source/*/.../Kconfig.
>> e.g. "config  IP_VS_IPV6" in net/netfilter/ipvs/Kconfig
>>
>> So we should change the cmd to grep '^[  ]*\(menu\)*config\s'.
>>
>> Signed-off-by: Hongzhi.Song <hongzhi.song@windriver.com>
>> ---
>>   tools/kconf_check | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/tools/kconf_check b/tools/kconf_check
>> index aa86180..20b49cd 100755
>> --- a/tools/kconf_check
>> +++ b/tools/kconf_check
>> @@ -241,7 +241,7 @@ find ${kernel_source} \
>>   # known list of all Kconfig* files.  Again, must filter dups.
>>   rm -f ${LOGDIR}/all.cfg
>>   for i in `cat ${LOGDIR}/all.kcf` ; do
>> -    cat ${kernel_source}/$i | grep '^[     ]*\(menu\)*config ' | \
>> +    cat ${kernel_source}/$i | grep '^[     ]*\(menu\)*config\s' | \
>>       awk '{print "CONFIG_"$2}' >> ${LOGDIR}/all.cfg
>>   done
>>   mv -f ${LOGDIR}/all.cfg ${LOGDIR}/all.cfg~
>>
>
>


