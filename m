Return-Path: <otavio.salvador@gmail.com>
Received: from mail-oa0-f41.google.com (mail-oa0-f41.google.com
	[209.85.219.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F279E00404
	for <yocto@yoctoproject.org>; Fri,  9 Aug 2013 11:40:03 -0700 (PDT)
Received: by mail-oa0-f41.google.com with SMTP id j6so3192728oag.0
	for <yocto@yoctoproject.org>; Fri, 09 Aug 2013 11:40:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=2fCrUQllmCFvCa4bSszlMx2bhzAv8K3rRx+47xF9dSo=;
	b=OJbixbL0WgAyIIoLsJNm/d+O3fkGVYDHmo2MP4+QYnzl9s4r5rZqPog2798FN0euTA
	P7oc4z6fUFq2H4YdfSRrCsC8hhiNpGxYNsrKSB99gKWZhCWx20JCaoLSJ8t1BGp1APeB
	BhyELdN6k6VHzWwHLpcMOpVKdEVjZj/e2N7bIWIhz/HwtNFIN5jTkQzj1lW0vfBsx9gc
	zNehe6UzxU3VG+UbGYLJvKk6Zp168R9vWwAg9ebdEpZIJ7jHk77Lgh0rS7+ojcGygb29
	rSwFAuyJwUgbiygecw58iqRUxEus8nJV/XycyszoWy444J62bsU2SPrdvezsyeOikCZQ
	JW/g==
MIME-Version: 1.0
X-Received: by 10.60.96.169 with SMTP id dt9mr1452739oeb.27.1376073603093;
	Fri, 09 Aug 2013 11:40:03 -0700 (PDT)
Sender: otavio.salvador@gmail.com
Received: by 10.182.232.166 with HTTP; Fri, 9 Aug 2013 11:40:03 -0700 (PDT)
In-Reply-To: <52053376.3070104@linux.intel.com>
References: <1375711257-18041-1-git-send-email-otavio@ossystems.com.br>
	<CAP9ODKpjs-4X0ctJfqYB95t=xPg9sn+LA-_HrpzPqO98viFLnQ@mail.gmail.com>
	<52053376.3070104@linux.intel.com>
Date: Fri, 9 Aug 2013 15:40:03 -0300
X-Google-Sender-Auth: OJvfTOM4I39SU03hB8uA5ZJ_PYI
Message-ID: <CAP9ODKrRgtoes=jmTGcJVT6=QuoTLBhjxtLv91-QeUL0xREMSg@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: Saul Wold <sgw@linux.intel.com>
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
X-List-Received-Date: Fri, 09 Aug 2013 18:40:04 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Aug 9, 2013 at 3:22 PM, Saul Wold <sgw@linux.intel.com> wrote:
> On 08/09/2013 10:49 AM, Otavio Salvador wrote:
>>
>> On Mon, Aug 5, 2013 at 11:00 AM, Otavio Salvador
>> <otavio@ossystems.com.br> wrote:
>>>
>>> The DISTRO_FEATURES shouldn't unconditionally append items to it. This
>>> makes it impossible to override it inside of local.conf or in a distro
>>> based on Poky.
>>>
>>> This moved the definition to poky.conf and created a new variable
>>> (POKY_DEFAULT_DISTRO_FEATURES) which easy overriding of this, for Poky
>>> based distros.
>>>
>>> Signed-off-by: Otavio Salvador <otavio@ossystems.com.br>
>>
>>
>> Saul,
>>
>> Did you queued this one? Is there any feedback about this patch?
>>
> This was missed becuase it went to the Yocto list not the
> Poky@yoctoproject.org list.
>
> I will queue it.

Arrg; -ETOOMANYLISTS! ;-)

Thanks

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://projetos.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

