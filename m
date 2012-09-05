Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B3AEE014B8
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 21:18:58 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 04 Sep 2012 21:18:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,371,1344236400"; d="scan'208";a="217896357"
Received: from unknown (HELO [10.255.12.252]) ([10.255.12.252])
	by fmsmga002.fm.intel.com with ESMTP; 04 Sep 2012 21:18:43 -0700
Message-ID: <5046D2A3.2070600@linux.intel.com>
Date: Tue, 04 Sep 2012 21:18:43 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: Martin Jansa <martin.jansa@gmail.com>
References: <1346792241-23600-1-git-send-email-sgw@linux.intel.com>
	<20120904210033.GH3372@jama.jama.net>
In-Reply-To: <20120904210033.GH3372@jama.jama.net>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/3] linux-yocto: Update linux-yocto for 3.2 and 3.4
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
X-List-Received-Date: Wed, 05 Sep 2012 04:18:58 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 09/04/2012 02:00 PM, Martin Jansa wrote:
> On Tue, Sep 04, 2012 at 01:57:19PM -0700, Saul Wold wrote:
>> Signed-off-by: Saul Wold <sgw@linux.intel.com>
>> ---
>>   .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    2 ++
>>   .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    6 ++++++
>>   .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    6 ++++++
>>   3 files changed, 14 insertions(+), 0 deletions(-)
>>   create mode 100644 meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend
>>   create mode 100644 meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend
>>
>> diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend
>> index 58a6541..138cc21 100644
>> --- a/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend
>> +++ b/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend
>> @@ -2,3 +2,5 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>
>>   # enable the time limited kernel configuration options
>>   SRC_URI += "file://time-limited-kernel.cfg"
>> +
>> +PR .= ".1"
>
> why not
> PRINC := "${@int(PRINC) + 1}"
> ?

I understood that the .1 adds more finer granularity instead of 
incrementing the base PR itself.  You end up with a potential r1.2.1 
which is still legal.

What happens with a r1.2 and the above @int(PRINC) + 1?

I would need to test it, done for the day right now.


Sau!

>> diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend
>> new file mode 100644
>> index 0000000..138cc21
>> --- /dev/null
>> +++ b/meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend
>> @@ -0,0 +1,6 @@
>> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>> +
>> +# enable the time limited kernel configuration options
>> +SRC_URI += "file://time-limited-kernel.cfg"
>> +
>> +PR .= ".1"
>> diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend
>> new file mode 100644
>> index 0000000..138cc21
>> --- /dev/null
>> +++ b/meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend
>> @@ -0,0 +1,6 @@
>> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>> +
>> +# enable the time limited kernel configuration options
>> +SRC_URI += "file://time-limited-kernel.cfg"
>> +
>> +PR .= ".1"
>> --
>> 1.7.7.6
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>

