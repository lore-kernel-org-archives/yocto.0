Return-Path: <sgw@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A665BE00404
	for <yocto@yoctoproject.org>; Fri,  9 Aug 2013 11:22:47 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 09 Aug 2013 11:22:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.89,847,1367996400"; d="scan'208";a="279995749"
Received: from unknown (HELO [10.255.14.176]) ([10.255.14.176])
	by AZSMGA002.ch.intel.com with ESMTP; 09 Aug 2013 11:22:46 -0700
Message-ID: <52053376.3070104@linux.intel.com>
Date: Fri, 09 Aug 2013 11:22:46 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130514 Thunderbird/17.0.6
MIME-Version: 1.0
To: Otavio Salvador <otavio@ossystems.com.br>
References: <1375711257-18041-1-git-send-email-otavio@ossystems.com.br>
	<CAP9ODKpjs-4X0ctJfqYB95t=xPg9sn+LA-_HrpzPqO98viFLnQ@mail.gmail.com>
In-Reply-To: <CAP9ODKpjs-4X0ctJfqYB95t=xPg9sn+LA-_HrpzPqO98viFLnQ@mail.gmail.com>
Cc: yocto <yocto@yoctoproject.org>, Evan Kotara <evan.kotara@freescale.com>,
	Lauren Post <lauren.post@freescale.com>,
	Daiane Angolini <daiane.angolini@freescale.com>
Subject: Re: [PATCH] poky.conf: Don't force the addition of extra DISTRO_FEATURES
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
X-List-Received-Date: Fri, 09 Aug 2013 18:22:49 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/09/2013 10:49 AM, Otavio Salvador wrote:
> On Mon, Aug 5, 2013 at 11:00 AM, Otavio Salvador
> <otavio@ossystems.com.br> wrote:
>> The DISTRO_FEATURES shouldn't unconditionally append items to it. This
>> makes it impossible to override it inside of local.conf or in a distro
>> based on Poky.
>>
>> This moved the definition to poky.conf and created a new variable
>> (POKY_DEFAULT_DISTRO_FEATURES) which easy overriding of this, for Poky
>> based distros.
>>
>> Signed-off-by: Otavio Salvador <otavio@ossystems.com.br>
>
> Saul,
>
> Did you queued this one? Is there any feedback about this patch?
>
This was missed becuase it went to the Yocto list not the 
Poky@yoctoproject.org list.

I will queue it.

Sau!


