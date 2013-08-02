Return-Path: <mark.hatle@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D2A31E0152B
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2013 17:00:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r7200CM2025289
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 1 Aug 2013 17:00:12 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.230) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Thu, 1 Aug 2013 17:00:11 -0700
Message-ID: <51FAF68A.8030305@windriver.com>
Date: Thu, 1 Aug 2013 19:00:10 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:17.0) Gecko/20130620 Thunderbird/17.0.7
MIME-Version: 1.0
To: Philip Tricca <flihp@twobit.us>
References: <51B67550.7070306@twobit.us> <51C1B7C5.8000408@twobit.us>
In-Reply-To: <51C1B7C5.8000408@twobit.us>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-selinux make ALLOW_EMPTY package specific
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
X-List-Received-Date: Fri, 02 Aug 2013 00:00:25 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 6/19/13 8:53 AM, Philip Tricca wrote:
> Ping.  Any interest in taking this (and the other patch I sent) into
> meta-selinux?

My apologies, I thought this had been integrated already.  A similar patch has 
been pushed to the repository for the 'master' branch.  I have not yet validated 
the dylan, but as you indicated it should be needed there as well.

I should have the Dylan version ready and pushed within a few hours.

--Mark

> Regards
> - Philip
>
> On 06/10/2013 08:54 PM, Philip Tricca wrote:
>> Hello again,
>>
>> Again a quick patch to get meta-selinux dylan branch building with oe-core dylan.  The QA scripts error'd out complaining that ALLOW_EMPTY in the task-core-selinux wasn't packages specific.  Not sure if it's relevant but this was with the latest bitbake release branch 1.18.  One line fix below.
>>
>> Regards,
>> - Philip
>>
>> From: Philip Tricca <flihp@twobit.us>
>> Date: Mon, 10 Jun 2013 20:33:32 -0400
>> Subject: [PATCH 2/2] Make ALLOW_EMPTY package specific to keep QA scripts
>>   happy.
>>
>> ---
>>   recipes-security/tasks/task-core-selinux.bb |    2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/recipes-security/tasks/task-core-selinux.bb b/recipes-security/tasks/task-core-selinux.bb
>> index 05f8dfc..dda9c50 100644
>> --- a/recipes-security/tasks/task-core-selinux.bb
>> +++ b/recipes-security/tasks/task-core-selinux.bb
>> @@ -8,7 +8,7 @@ PACKAGES = "\
>>       task-core-selinux \
>>       "
>>
>> -ALLOW_EMPTY = "1"
>> +ALLOW_EMPTY_${PN} = "1"
>>
>>   RDEPENDS_task-core-selinux = " \
>>   	ustr \
>
>


