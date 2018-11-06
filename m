Return-Path: <Bruce.Ashfield@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6548E00AB9; Tue,  6 Nov 2018 14:42:05 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57A72E0097C
	for <yocto@yoctoproject.org>; Tue,  6 Nov 2018 14:42:04 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id wA6Mg2aj013511
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 6 Nov 2018 14:42:02 -0800 (PST)
Received: from server.local (128.224.22.207) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.408.0;
	Tue, 6 Nov 2018 14:42:01 -0800
To: akuster808 <akuster808@gmail.com>, Khem Raj <raj.khem@gmail.com>
References: <1541541389-21595-1-git-send-email-akuster@mvista.com>
	<CAMKF1srk1bH1zbYy_r2yKErnNz0OWQOgOgt1YJwLdjK2Xr8fXQ@mail.gmail.com>
	<c59e74fd-868c-225a-3799-eaf5000f59af@gmail.com>
From: Bruce Ashfield <bruce.ashfield@windriver.com>
Message-ID: <1a3be576-c416-2c6a-6b0d-674b61a1363c@windriver.com>
Date: Tue, 6 Nov 2018 17:42:00 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.14; rv:52.0)
	Gecko/20100101 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <c59e74fd-868c-225a-3799-eaf5000f59af@gmail.com>
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
X-List-Received-Date: Tue, 06 Nov 2018 22:42:05 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 2018-11-06 5:10 PM, akuster808 wrote:
> 
> On 11/6/18 2:05 PM, Khem Raj wrote:
>> On Tue, Nov 6, 2018 at 1:57 PM Armin Kuster<akuster808@gmail.com>  wrote:
>>> Signed-off-by: Armin Kuster<akuster@mvista.com>
>>> ---
>>>   kver | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/kver b/kver
>>> index 7b008cd..5ccc572 100644
>>> --- a/kver
>>> +++ b/kver
>>> @@ -1 +1 @@
>>> -v4.4.141
>>> +v4.4.147
>> why not 4.4.162
> 
> because linux-yocto-4.4 
> <http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-4.4/> is not at 
> 4.4.162. I am just trying to use the latest in that kernel repo.

Did you want .162 ? I have a whole set of -stable updates staged
here, but haven't pushed anything since releases are imminent.

But in the case of 4.4, I could lift my freeze, given that the kernel
recipe isn't active in master, hence the release schedule is
different.

Bruce

> 
> 
> - armin
> 
>>> --
>>> 2.7.4
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto


