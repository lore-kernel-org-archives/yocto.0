Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5A4CE002A8
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2012 17:34:43 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id q6I0YgXD009599
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 17 Jul 2012 17:34:42 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.22.131) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Tue, 17 Jul 2012 17:34:42 -0700
Message-ID: <500604A0.4090001@windriver.com>
Date: Tue, 17 Jul 2012 20:34:40 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
References: <D956029D25CF204F948EA0FB515E1EE20AD35FDA@ORSMSX105.amr.corp.intel.com>
	<5006016A.7070408@windriver.com>
	<D956029D25CF204F948EA0FB515E1EE20AD36007@ORSMSX105.amr.corp.intel.com>
	<50060371.2030301@windriver.com>
	<D956029D25CF204F948EA0FB515E1EE20AD36032@ORSMSX105.amr.corp.intel.com>
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE20AD36032@ORSMSX105.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: ERROR: QA Issue: Architecture did not match (62 to 3) for linux-yocto_3.2.bb
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
X-List-Received-Date: Wed, 18 Jul 2012 00:34:43 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-07-17 8:32 PM, Bodke, Kishore K wrote:
>
>
>> -----Original Message-----
>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>> Sent: Tuesday, July 17, 2012 5:30 PM
>> To: Bodke, Kishore K
>> Cc: yocto@yoctoproject.org; Zanussi, Tom; Darren Hart
>> Subject: Re: ERROR: QA Issue: Architecture did not match (62 to 3) for linux-
>> yocto_3.2.bb
>>
>> On 12-07-17 8:25 PM, Bodke, Kishore K wrote:
>>>
>>>
>>>> -----Original Message-----
>>>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>>>> Sent: Tuesday, July 17, 2012 5:21 PM
>>>> To: Bodke, Kishore K
>>>> Cc: yocto@yoctoproject.org
>>>> Subject: Re: ERROR: QA Issue: Architecture did not match (62 to 3) for
>> linux-
>>>> yocto_3.2.bb
>>>>
>>>> On 12-07-17 8:16 PM, Bodke, Kishore K wrote:
>>>>> Hi,
>>>>>
>>>>> I am using local clone for 3.2 kernel and I get build fail for
>>>>> Linux-yocto_3.2.bb.
>>>>>
>>>>> WARNING: For recipe linux-yocto, the following files/directories were
>>>>> installed but not shipped in any package:
>>>>>
>>>>> WARNING: /etc
>>>>>
>>>>> ERROR: QA Issue: Architecture did not match (62 to 3) on
>>>>> /work/<....>/linux-yocto-
>>>>
>> 3.2.18+git1+20958298c233d15b1d705e7b0eb93282d6ecb5de_1+7d26ac083cb2
>>>> 55888536b42b622b97fb438753ad-r1/packages-split/kernel-
>>>> vmlinux/boot/vmlinux-3.2.18-yocto-standard
>>>>>
>>>>> ERROR: QA run found fatal errors. Please consider fixing them.
>>>>>
>>>>> ERROR: Function failed: do_package_qa
>>>>>
>>>>> Any idea why I get this?
>>>>
>>>> It means you've managed to get a 32 bit object in a 64 bit build.
>>>> Have you tweaked the configuration ?
>>>
>>> I have not edited any configuration.  I am using all 64 bit only.
>>
>> Can anyone else confirm this ? What BSP is this ? either it isn't
>> listed above .. or I missed it. Tom ? Darren ? I don't have a build
>> handy to check.
>
> I am building a new BSP which is not listed here.  That is the reason I am using local clone.
> I cloned 3.2 kernel and created a new BSP based on ROMLEY.

Without seeing your configuration, I can't say more. It looks like the
tuning for userspace is 64 and you've built a 32 bit kernel, or vice
versa.

Darren/Tom may be able to help more.

Cheers,

Bruce

>
> Thanks
> Kishore.
>
>>
>> I can start a build overnight to try and see what is happening, if you
>> send the details about what you are building here.
>>
>> Cheers,
>>
>> Bruce
>>
>>>
>>>>
>>>> Cheers,
>>>>
>>>> Bruce
>>>>
>>>>>
>>>>> Thanks
>>>>>
>>>>> Kishore.
>>>>>
>>>
>


