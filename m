Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33F51E00709
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2013 06:49:49 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r2BDnkqC008198
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 11 Mar 2013 06:49:46 -0700 (PDT)
Received: from [128.224.146.67] (128.224.146.67) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Mon, 11 Mar 2013 06:49:45 -0700
Message-ID: <513DE0EC.2090008@windriver.com>
Date: Mon, 11 Mar 2013 09:49:32 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: =?UTF-8?B?RXJpYyBCw6luYXJk?= <eric@eukrea.com>
References: <CAFyqS9qFQ+kHrjmDAw4mCKop6RMzH7Ws1V6tt0_A2gM2a5UmYg@mail.gmail.com>
	<20130308191213.102258ca@e6520eb> <513A3557.10405@gmail.com>
	<513A7836.2050908@windriver.com>
	<CAFyqS9rT=amDBNTO_awzXL3zNS-vCx1+0ERCspXTps8u_VpHwA@mail.gmail.com>
	<CAFyqS9q5aDSUiGFOsOz4CWN7oV8kAiAuzA5mK4HbsEaReqQzHA@mail.gmail.com>
	<513DDE28.4050004@windriver.com> <20130311144652.44107972@e6520eb>
In-Reply-To: <20130311144652.44107972@e6520eb>
Cc: yocto@yoctoproject.org
Subject: Re: How do I control what kernel modules are being loaded?
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
X-List-Received-Date: Mon, 11 Mar 2013 13:49:49 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

On 13-03-11 09:46 AM, Eric Bénard wrote:
> Hi Bruce,
>
> Le Mon, 11 Mar 2013 09:37:44 -0400,
> Bruce Ashfield <bruce.ashfield@windriver.com> a écrit :
>> Can you post your exact changes where we can see them ? You need to put
>> the module_autload variable in a .conf file, whether that be your
>> local.conf, your machine.conf or you distro configuration file (which
>> it appears that you are doing), but you also must have the name of
>> the module package correct, and the module needs to be part of your
>> IMAGE_INSTALL, since the code fragment I pasted above is from the
>> post installation fragment created for the various module packages
>> as they are created.
>>
>> i.e. I have this in a .conf file:
>>
>>      module_autoload_nfsd = "nfsd"
>>
>> To ensure that the nfsd .ko is loaded on boot, when the module is built
>> and present on the rootfs.
>>
> I think the problem is that this works when building modules inside the
> kernel (module_autoload is handled in kernel.bbclass), but not when

Not in master anymore, but agreed, we are talking Danny here IIRC.

> building a module with its own recipe (using module.bbclass) as Hans
> is doing, that's why I previously told him to "get inspiration from
> kernel.bbclass to do the same thing in your recipe".

Ah yes. I do recall a nuance of a package with mixed kernel modules and
userspace code.

The new module-split class from master would handle this nicely, so
taking inspiration from master's would would probably be an even
shorter route to getting something working.

Cheers,

Bruce

>
> Eric
>


