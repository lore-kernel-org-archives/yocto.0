Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D172E014D3
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 10:15:16 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 05 Sep 2012 10:15:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,375,1344236400"; d="scan'208";a="189177202"
Received: from unknown (HELO [10.255.13.76]) ([10.255.13.76])
	by azsmga001.ch.intel.com with ESMTP; 05 Sep 2012 10:15:15 -0700
Message-ID: <504788A3.1020507@linux.intel.com>
Date: Wed, 05 Sep 2012 10:15:15 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <cover.1346864117.git.sgw@linux.intel.com>
	<fa8f0e879cb51717131fc1a2f01b88fa61c9caf2.1346864117.git.sgw@linux.intel.com>
	<CAMKF1sqtiJYiHRAO9VL0ydxPssT3Z5GfGKWnKD+6ZsVWHDTZwg@mail.gmail.com>
In-Reply-To: <CAMKF1sqtiJYiHRAO9VL0ydxPssT3Z5GfGKWnKD+6ZsVWHDTZwg@mail.gmail.com>
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
X-List-Received-Date: Wed, 05 Sep 2012 17:15:16 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 09/05/2012 10:08 AM, Khem Raj wrote:
> On Wed, Sep 5, 2012 at 9:56 AM, Saul Wold <sgw@linux.intel.com> wrote:
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
>
> what will this option do ?
>
Khem,

It will add another .1 to the PR, if PR = 4.1, it will become 4.1.1

Sau!
>

