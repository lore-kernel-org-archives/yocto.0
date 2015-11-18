Return-Path: <anibal.limon@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7A2BE005BB; Wed, 18 Nov 2015 08:37:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E5E9E0049B
	for <yocto@yoctoproject.org>; Wed, 18 Nov 2015 08:37:46 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 18 Nov 2015 08:37:46 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,313,1444719600"; d="scan'208";a="602636231"
Received: from alimonb-mobl1.zpn.intel.com (HELO [10.219.5.171])
	([10.219.5.171])
	by FMSMGA003.fm.intel.com with ESMTP; 18 Nov 2015 08:37:46 -0800
To: Scott Rifenbark <srifenbark@gmail.com>
References: <1447780735-13736-1-git-send-email-anibal.limon@linux.intel.com>
	<CAFNP8OuX__28Sk0XP9PnDR+NLnxQdCMrN_nuANgccm9tCaHoyg@mail.gmail.com>
From: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Message-ID: <564CA988.40004@linux.intel.com>
Date: Wed, 18 Nov 2015 10:38:32 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CAFNP8OuX__28Sk0XP9PnDR+NLnxQdCMrN_nuANgccm9tCaHoyg@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][yocto-docs] dev-manual-qemu.xml: Add kvm-vhost option.
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
X-List-Received-Date: Wed, 18 Nov 2015 16:37:47 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hi Scott,

Your changes looks good thanks but i forget to move this line to kvm-vhost:

	Your build host has to have virtio net device, which are /dev/vhost-net.

Sorry for the inconveniences.

Sending another patch...

Best regards,
	alimon


On 11/18/2015 08:01 AM, Scott Rifenbark wrote:
> Hi,
> 
> Applied this patch with some modifications.  Please see
> http://www.yoctoproject.org/docs/2.0/dev-manual/dev-manual.html#qemu-using-the-runqemu-command
> for the changes.
> 
> Thanks,
> Scott
> 
> On Tue, Nov 17, 2015 at 9:18 AM, Aníbal Limón <anibal.limon@linux.intel.com>
> wrote:
> 
>> Since 2.0 release KVM mode don't require VHOST enablement [1]
>> and a new option was added to support the old mode.
>>
>> [1] http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=eebcbe19b7
>>
>> Signed-off-by: Aníbal Limón <anibal.limon@linux.intel.com>
>> ---
>>  documentation/dev-manual/dev-manual-qemu.xml | 7 +++++++
>>  1 file changed, 7 insertions(+)
>>
>> diff --git a/documentation/dev-manual/dev-manual-qemu.xml
>> b/documentation/dev-manual/dev-manual-qemu.xml
>> index ccc915f..68d60e3 100644
>> --- a/documentation/dev-manual/dev-manual-qemu.xml
>> +++ b/documentation/dev-manual/dev-manual-qemu.xml
>> @@ -219,6 +219,13 @@
>>                              The  build host <filename>/dev/kvm</filename>
>>                              directory has to be both writable and
>> readable.
>>                              </para></listitem>
>> +                    </itemizedlist>
>> +                    </para></listitem>
>> +                <listitem><para><filename>kvm-vhost</filename>:
>> +                    Enables KVM with VHOST support when running "qemux86"
>> or "qemux86-64"
>> +                    QEMU architectures.
>> +                    For KVM with VHOST to work, the conditions from kvm
>> option must be met also:
>> +                    <itemizedlist>
>>                          <listitem><para>
>>                              The build host
>> <filename>/dev/vhost-net</filename>
>>                              directory has to be either readable or
>> writable
>> --
>> 2.1.4
>>
>>
> 

