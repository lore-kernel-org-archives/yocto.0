Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E5FCE00771
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 17:28:13 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p7C0SLnr018273
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 11 Aug 2011 17:28:21 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.20.250) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.1.255.0; Thu, 11 Aug 2011 17:28:21 -0700
Message-ID: <4E4473A4.4060403@windriver.com>
Date: Thu, 11 Aug 2011 20:28:20 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.7; en-US;
	rv:1.9.2.20) Gecko/20110804 Thunderbird/3.1.12
MIME-Version: 1.0
To: Scott Garman <scott.a.garman@intel.com>
References: <02B62B87-3FD5-421C-A344-9A808B1E9C99@keylevel.com>
	<4E446C74.9070807@intel.com>
In-Reply-To: <4E446C74.9070807@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: bbappend - Where should my file be?
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
X-List-Received-Date: Fri, 12 Aug 2011 00:28:13 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-08-11 7:57 PM, Scott Garman wrote:
> On 08/11/2011 04:51 PM, Chris Tapp wrote:
>> I've got a linux-wrs_git.bbappend file in a layer (under poky laverne
>> 4.0.1) that contains:
>>
>> COMPATIBLE_MACHINE_Vortex86DX = "Vortex86DX"
>> WRMACHINE_Vortex86DX = "common_pc"
>>
>> FILESEXTRAPATHS := "${THISDIR}/${PN}"
>>
>> SRC_URI += " file://defconfig"
>>
>> Where should the defconfig file be relative to the bbappend?
>>
>> I've tried:
>>
>> MyLayer
>> +--- recipies
>> +--- linux
>> +--- linux-wrs_git.bbappend
>> +--- linux-wrs_git
>> +--- defconfig
>>
>>
>> However, my defconfig file isn't being picked up during do_unpack:
>>
>> cp: cannot stat
>> `/home/chris/yocto/yocto-versions/laverne-4.0.1/meta/recipes-kernel/linux/files/defconfig':
>>
>> No such file or directory
>
> It looks like this is where the file is expected.
>
> I believe also meta/recipes-kernel/linux/linux/defconfig should also work.

Yep, bitbake is telling us where it is looking. The -wrs_git is the
extension to the recipe, so that isn't where it is looking.

On another note, there's been a lot of fixes to the kern tools to
improve the process for adding BSPs and extending the tree (and
one defconfig bug fix), so I'll be interested to hear how this
goes.

Bruce

>
> Scott
>


