Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 68C22E00AAA; Sun,  4 Oct 2015 04:14:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.52 listed in list.dnswl.org]
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A10DE009D7
	for <yocto@yoctoproject.org>; Sun,  4 Oct 2015 04:14:13 -0700 (PDT)
Received: by pacfv12 with SMTP id fv12so151307389pac.2
	for <yocto@yoctoproject.org>; Sun, 04 Oct 2015 04:14:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=6dnrUNeuQBLPYHM7zu7kHfg/eMlM9hH2pOczAea/heI=;
	b=hGiJ4EVNHQ5Wo0T8l/kk2qcONJVXZ0D7+bBZ4oYEWawfcIjzKqVzQS8z3+b5gTl/O9
	D5Gbyff9R3rqteRmrbvGFRkzdszemuXX9SWns95A/E8OSHrafUYiFJwsPflWi92mOx/y
	7pnbaN/bT2EjoNgaN73xiMemMF1BwjwFWV370L+u2t3bzvL8uvSyStIJuiPpU8HKK3/n
	h25O/ZGjTvwCfbvJSxiiMn193fmfo2d7VauOR3EuzLy7pl1uC10vF9rDWI1g8aJpcnB7
	rf7wsuwk4AttmvVQ52Vc4ePNtdhSSkti9H/cq7/LftDKzD64gO+DqpA7dNsNbz/s/Q88
	S4hg==
X-Received: by 10.68.68.233 with SMTP id z9mr32594054pbt.132.1443957252881;
	Sun, 04 Oct 2015 04:14:12 -0700 (PDT)
Received: from [192.168.0.2] (60-242-179-244.static.tpgi.com.au.
	[60.242.179.244]) by smtp.gmail.com with ESMTPSA id
	qp5sm21640125pbc.43.2015.10.04.04.14.10
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 04 Oct 2015 04:14:11 -0700 (PDT)
To: =?UTF-8?Q?Andreas_M=c3=bcller?= <schnitzeltony@googlemail.com>
References: <1443924933-29412-1-git-send-email-net147@gmail.com>
	<CALbNGRT3tdQfngPbCxdt+rQZV-e1jeTVKfG6Yxz8EZqwCdaWoQ@mail.gmail.com>
From: Jonathan Liu <net147@gmail.com>
Message-ID: <561109FE.3080807@gmail.com>
Date: Sun, 4 Oct 2015 22:14:06 +1100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CALbNGRT3tdQfngPbCxdt+rQZV-e1jeTVKfG6Yxz8EZqwCdaWoQ@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH v3] linux-raspberrypi.inc: use SRCPV instead of SRCREV for PV
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
X-List-Received-Date: Sun, 04 Oct 2015 11:14:19 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 4/10/2015 9:50 PM, Andreas Müller wrote:
> On Sun, Oct 4, 2015 at 4:15 AM, Jonathan Liu <net147@gmail.com> wrote:
>> SRCPV is intended to be used by PV. Using SRCREV for PV is incorrect.
>>
>> Signed-off-by: Jonathan Liu <net147@gmail.com>
>> ---
>>   recipes-kernel/linux/linux-raspberrypi.inc | 3 ++-
>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>
>> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
>> index d60a3e9..70e8bfe 100644
>> --- a/recipes-kernel/linux/linux-raspberrypi.inc
>> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
>> @@ -12,7 +12,8 @@ SRC_URI += " \
>>
>>   COMPATIBLE_MACHINE = "raspberrypi"
>>
>> -PV = "${LINUX_VERSION}+git${SRCREV}"
>> +PE = "1"
>> +PV = "${LINUX_VERSION}+git${SRCPV}"
>>
> Doesn't PRServer takes care for things like these?
>
> Andreas
The version goes backwards because the the revision is shortened. It 
does rebuild the package though when the version changes because of 
PRServer but it breaks package feeds when the version goes backwards. 
Upgrading using package manager on the target device would not detect a 
newer version.

Regards,
Jonathan

