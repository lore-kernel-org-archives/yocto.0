Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5693E0059A
	for <yocto@yoctoproject.org>; Tue, 20 Mar 2012 18:27:48 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.3/8.14.3) with ESMTP id q2L1RmPn028433
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 20 Mar 2012 18:27:48 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.21.207) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Tue, 20 Mar 2012 18:27:48 -0700
Message-ID: <4F692E92.3040507@windriver.com>
Date: Tue, 20 Mar 2012 21:27:46 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <cover.1331713200.git.lianhao.lu@intel.com>
	<4F6927DC.6030800@linux.intel.com>
In-Reply-To: <4F6927DC.6030800@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] perfer older version of lttng-ust in poky distro
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 21 Mar 2012 01:27:49 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-03-20 8:59 PM, Saul Wold wrote:
> On 03/14/2012 01:27 AM, Lianhao Lu wrote:
>> Set the PREFERRED_VERSION of lttng-ust to use lttng-ust instead of
>> lttng2-ust in poky distro. This fixed yocto bug #2062.
>>
>> The lttng2 is very different in terms of architecture and usage model,
>> compared
>> to lttng. The eclipse upstream lttng plugin won't be able to support
>> lttng2 until
>> the eclipse Juno release(Jun 27th, 2012).
>>
> This patch seems to break the lttng-2.0/lttng-tools build. Please verify
> that we can build lttng-2.0 bits or somehow handle both.
>
> I am not sure the kernel will support the older lttng, in which case
> using lttng-ust from the older release will not work, so we can not use
> the eclipse with it anyways.

It won't. Since lttng 1.x wasn't ported past 2.6.38 (and released), since
lttng was moving to 2.x and the new CTF, there wasn't any sense in
porting it ourselves.

That being said, it IS possible for both 1.x and 2.x to co-exist, but
we don't have the weeks (or the value) in making the port.

Cheers,

Bruce

>
> Sau!
>
>> The following changes since commit
>> 8e9f6fc77ac4763f4ed1f6e7b720420c220ba6e2:
>> Richard Purdie (1):
>> dates: Fix unpackaged files warning
>>
>> are available in the git repository at:
>>
>> git://git.pokylinux.org/poky-contrib llu/bug2062
>> http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=llu/bug2062
>>
>> Lianhao Lu (1):
>> poky.conf: Prefer lttng-ust instead of lttng2-ust.
>>
>> meta-yocto/conf/distro/poky.conf | 3 +++
>> 1 files changed, 3 insertions(+), 0 deletions(-)
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


