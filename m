Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 1BB2C4C8043A
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 19:16:33 -0500 (CDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p4S0GVFX004279
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 27 May 2011 17:16:31 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.20.232) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Fri, 27 May 2011 17:16:31 -0700
Message-ID: <4DE03EDC.80901@windriver.com>
Date: Fri, 27 May 2011 20:16:28 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.17) Gecko/20110414 Thunderbird/3.1.10
MIME-Version: 1.0
To: Tom Zanussi <tom.zanussi@intel.com>
References: <cover.1306514719.git.tom.zanussi@intel.com>	
	<3ef38d9b80ebc7b23fa9a1c6712d688e6f2f5f86.1306514719.git.tom.zanussi@intel.com>	
	<4DE012C7.7000804@windriver.com> <1306531180.23639.4.camel@elmorro>
In-Reply-To: <1306531180.23639.4.camel@elmorro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 3/3] ahci: AHCI mode SATA patch for Intel Patsburg SATA RAID controller
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
X-List-Received-Date: Sat, 28 May 2011 00:16:33 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-05-27 5:19 PM, Tom Zanussi wrote:
> On Fri, 2011-05-27 at 14:08 -0700, Bruce Ashfield wrote:
>> On 11-05-27 04:46 PM, tom.zanussi@intel.com wrote:
>>> From: Seth Heasley
>>>
>>> commit 64a3903d0885879ba8706a8bcf71c5e3e7664db2 upstream
>>>
>>> This patch adds an updated SATA RAID DeviceID for the Intel Patsburg PCH.
>>
>> Looks like we already had this one in the 2.6.37 tree
>> via gregkh and -stable
>>
>>   >  git tag --contains 5618c45b
>> v2.6.37.5
>> v2.6.37.6
>>
>> And hence the base yocto/standard/common-pc-64/romley
>> bsp branch.
>>
>> So I won't do anything with this in particular. It is
>> interesting though how it applied in your tree. Do you
>> have all the -stable updates ?
>>
>> I checked and it doesn't look like I've been hoarding
>> them, but you never know.
>>
>
> Hmm, yeah, it did apply (checked the build dir for the other changes),
> but not sure why I didn't get rejects.  My kernel is a little over a
> week old, but it does have the .5 stable:

It actually has .6 and certain people (*cough*) didn't push
the tags. I'll fix that tonight.

git has a way of managing to apply changes and do the right
thing. I've double checked, and I do see the change in the
branches waiting for us, so we'll go with that until proven
otherwise.

Cheers,

Bruce

>
> $ git tag --contains 5618c45b
> v2.6.37.5
>
> Tom
>
>> Bruce
>>
>>>
>>> Signed-off-by: Seth Heasley
>>> Signed-off-by: Jeff Garzik
>>> Integrated-by: Tom Zanussi
>>> ---
>>>    drivers/ata/ahci.c |    1 +
>>>    1 files changed, 1 insertions(+), 0 deletions(-)
>>>
>>> diff --git a/drivers/ata/ahci.c b/drivers/ata/ahci.c
>>> index 3288263..dfc0a26 100644
>>> --- a/drivers/ata/ahci.c
>>> +++ b/drivers/ata/ahci.c
>>> @@ -260,6 +260,7 @@ static const struct pci_device_id ahci_pci_tbl[] = {
>>>    	{ PCI_VDEVICE(INTEL, 0x1d02), board_ahci }, /* PBG AHCI */
>>>    	{ PCI_VDEVICE(INTEL, 0x1d04), board_ahci }, /* PBG RAID */
>>>    	{ PCI_VDEVICE(INTEL, 0x1d06), board_ahci }, /* PBG RAID */
>>> +	{ PCI_VDEVICE(INTEL, 0x2826), board_ahci }, /* PBG RAID */
>>>
>>>    	/* JMicron 360/1/3/5/6, match class to avoid IDE function */
>>>    	{ PCI_VENDOR_ID_JMICRON, PCI_ANY_ID, PCI_ANY_ID, PCI_ANY_ID,
>>
>
>


