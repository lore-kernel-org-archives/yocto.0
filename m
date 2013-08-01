Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A74C0E0152B
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2013 16:57:59 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r71Nvv4c003476
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 1 Aug 2013 16:57:57 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.230) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Thu, 1 Aug 2013 16:57:57 -0700
Message-ID: <51FAF604.9090400@windriver.com>
Date: Thu, 1 Aug 2013 18:57:56 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:17.0) Gecko/20130620 Thunderbird/17.0.7
MIME-Version: 1.0
To: <yocto@yoctoproject.org>, <pierluigi.fiorini@gmail.com>
References: <1374939884-20222-1-git-send-email-pierluigi.fiorini@gmail.com>
	<51F927C6.7020304@windriver.com>
In-Reply-To: <51F927C6.7020304@windriver.com>
Subject: Re: [meta-selinux][PATCH] Fix QA Issue reported by running bitbake
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
X-List-Received-Date: Thu, 01 Aug 2013 23:58:00 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 7/31/13 10:05 AM, Mark Hatle wrote:
> On 7/27/13 10:44 AM, Pier Luigi Fiorini wrote:
>> Fix the following error:
>>     Variable ALLOW_EMPTY is set as not being package specific, please fix this.
>
> I thought this had already been done.  I'll be going over the meta-selinux
> sometime this week and will verify all of the bad ALLOW_EMPTY entries and other
> version sync have been done.

Ahh I had a local version of this patch that I thought had been previously pushed.

I've synced this and a few other changes and pushed to the meta-selinux repository.

'master' should now be current with oe-core as of this morning.  If you run into 
any problems, please let me know.  (Be sure to have 'meta-selinux' in the 
subject of the email or I might miss it.)

--Mark

> --Mark
>
>> ---
>>    recipes-security/tasks/task-core-selinux.bb | 2 +-
>>    1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/recipes-security/tasks/task-core-selinux.bb b/recipes-security/tasks/task-core-selinux.bb
>> index 05f8dfc..dda9c50 100644
>> --- a/recipes-security/tasks/task-core-selinux.bb
>> +++ b/recipes-security/tasks/task-core-selinux.bb
>> @@ -8,7 +8,7 @@ PACKAGES = "\
>>        task-core-selinux \
>>        "
>>
>> -ALLOW_EMPTY = "1"
>> +ALLOW_EMPTY_${PN} = "1"
>>
>>    RDEPENDS_task-core-selinux = " \
>>    	ustr \
>>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


