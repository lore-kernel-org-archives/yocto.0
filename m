Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0914BE00443
	for <yocto@yoctoproject.org>; Sat, 24 Aug 2013 22:25:58 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r7P5Ptvc008623
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 24 Aug 2013 22:25:55 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.347.0;
	Sat, 24 Aug 2013 22:22:55 -0700
Message-ID: <521994A5.9060007@windriver.com>
Date: Sun, 25 Aug 2013 01:22:45 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: Elvis Dowson <elvis.dowson@gmail.com>
References: <A9C97D7F-9AB0-4F9A-B933-D09ED5B6748E@gmail.com>
	<F952BE32-0856-4531-962C-FC757917A8FE@gmail.com>
	<CADkTA4NtzNb4pqKazvnfjO_2WawzCm_Zec1Dr9SQiPaybx+ndg@mail.gmail.com>
	<6DD4027E-D34F-4211-92FD-1570F248D7F8@gmail.com>
In-Reply-To: <6DD4027E-D34F-4211-92FD-1570F248D7F8@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: linux-yocto defaulting to 3.4.52 for new qemuarmhf.conf
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
X-List-Received-Date: Sun, 25 Aug 2013 05:25:59 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-08-24 11:32 PM, Elvis Dowson wrote:
> Hi Bruce,
>
> On Aug 25, 2013, at 4:57 AM, Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
>
>>>> I created a new qemuarmhf.conf, to build using armv7a vfp and neon.
>>>>
>>>> In the linux-yocto_3.8.bb recipe, I explicitly specified SRCREV_machine_qemuarmhf and added qemuarmhf to the list of COMPATIBLE_MACHINES.
>>>>
>>>> For some reason, it still refuses to build using kernel 3.8, and keeps defaulting to 3.4.52.
>>>>
>>>> I know I can over-ride it in my local.conf by setting a PREFERRED_VERSION_virtual/linux ="3.8" , but I'd like to know what I've missed, to get it to work by default, without setting the over-ride in my local.conf.
>>>
>>> Weird, even after setting PREFERRED_VERSION_virtual/linux ="3.8", it still picks up linux-yocto_3.4.bb recipe!
>>>
>>
>> Try 3.8%, you need to match on the version completely, and it is 3.8...., not
>> just 3.8.
>
> Ok, I forgot about that!
>
> Another quick question, why is it that when I create a new qemuarmhf.conf machine configuration, it doesn't automatically pick up the latest linux-yocto_3.8.bb recipe? Why does it attempt to use the 3.4 recipe?
>

Are you working off master ?

Since you set the compatibility, it should have been picked. But something
else must be changed in your layers, since if you didn't add
3.4 compatibility via bbappends, it never would have been selected
at all.

Cheers,

Bruce

> Best regards,
>
> Elvis Dowson
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


