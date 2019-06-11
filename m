Return-Path: <Hongzhi.Song@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32128E00D6F; Tue, 11 Jun 2019 02:14:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B198AE00D6C
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2019 02:14:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id x5B9EERW010816
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 11 Jun 2019 02:14:14 -0700 (PDT)
Received: from [128.224.162.188] (128.224.162.188) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Tue, 11 Jun 2019 02:14:13 -0700
To: <yocto@yoctoproject.org>, <adrian.dudau@enea.com>
References: <1559183012-237328-1-git-send-email-hongzhi.song@windriver.com>
	<271ecb4e-c9f9-3215-30a8-c3adc8cc04ba@windriver.com>
From: "Hongzhi, Song" <hongzhi.song@windriver.com>
Message-ID: <a935bcd9-10c7-b629-c232-5b5eef1fba00@windriver.com>
Date: Tue, 11 Jun 2019 17:14:10 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <271ecb4e-c9f9-3215-30a8-c3adc8cc04ba@windriver.com>
X-Originating-IP: [128.224.162.188]
Subject: Re: [PATCH] umip: remove umip bbappend
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
X-List-Received-Date: Tue, 11 Jun 2019 09:14:25 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US

ping

Thanks,

--Hongzhi


On 5/30/19 10:26 AM, Hongzhi, Song wrote:
> This patch is for meta-cgl
>
> Thanks,
>
> --Hongzhi
>
>
>
> On 5/30/19 10:23 AM, Hongzhi.Song wrote:
>> umip has been removed, so its bbappend should be removed too.
>>
>> Signed-off-by: Hongzhi.Song <hongzhi.song@windriver.com>
>> ---
>>   meta-cgl-common/recipes-extended/umip/umip_%.bbappend | 1 -
>>   1 file changed, 1 deletion(-)
>>   delete mode 100644 
>> meta-cgl-common/recipes-extended/umip/umip_%.bbappend
>>
>> diff --git a/meta-cgl-common/recipes-extended/umip/umip_%.bbappend 
>> b/meta-cgl-common/recipes-extended/umip/umip_%.bbappend
>> deleted file mode 100644
>> index 2858472..0000000
>> --- a/meta-cgl-common/recipes-extended/umip/umip_%.bbappend
>> +++ /dev/null
>> @@ -1 +0,0 @@
>> -PARALLEL_MAKE = ""

