Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23F4CE00E4E; Sat,  3 Oct 2015 18:17:31 -0700 (PDT)
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
	*      [209.85.220.53 listed in list.dnswl.org]
Received: from mail-pa0-f53.google.com (mail-pa0-f53.google.com
	[209.85.220.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 159A1E00E2F
	for <yocto@yoctoproject.org>; Sat,  3 Oct 2015 18:17:28 -0700 (PDT)
Received: by padhy16 with SMTP id hy16so627047pad.1
	for <yocto@yoctoproject.org>; Sat, 03 Oct 2015 18:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=EZzSW5/WmWYMtvWHGs+kmOH3rAdwrQB5xMgWrdyZ3Uo=;
	b=WAALxCLBZKQ/O0JA03C/+QXqJdddGiKfHLk9lkxBPvzYDYa9ouRJkqSJsefDCg5oX1
	RBPgeX0uIb0s3WGmAf+x8I1lcW1dRDEV0416ZfFK/Y07B0vOnHzyteasiyxS3TFfRZdz
	IAgdsYlmX/MyjX4AZ1ahhHq59BpG7lop5tiEb2ApKBqNNosOLlAxMOvCopEj4e8RssCg
	BlPwDJoEDkPB9KGkbjPfRCHkiEbq6NuYvYrn4UTmRHWBiVaw4T+6N4GDsIgJfndbx3f6
	9fzAhf5UmaYtnFeWM48ojqrogYpBV8ppy2Z6U8BTWFI+oox895EavDRvCYVBBlYZzyaO
	wtig==
X-Received: by 10.68.242.2 with SMTP id wm2mr15298540pbc.31.1443921448023;
	Sat, 03 Oct 2015 18:17:28 -0700 (PDT)
Received: from [192.168.0.2] (60-242-179-244.static.tpgi.com.au.
	[60.242.179.244]) by smtp.gmail.com with ESMTPSA id
	ql5sm19697870pac.46.2015.10.03.18.17.25
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 03 Oct 2015 18:17:26 -0700 (PDT)
To: Andrei Gherzan <andrei@gherzan.ro>
References: <1440231935-11042-1-git-send-email-net147@gmail.com>
	<561067E2.5020807@gmail.com> <20151004000419.GA28229@resin>
From: Jonathan Liu <net147@gmail.com>
Message-ID: <56107E22.3050701@gmail.com>
Date: Sun, 4 Oct 2015 12:17:22 +1100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <20151004000419.GA28229@resin>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2] linux-raspberrypi.inc: use SRCPV instead of SRCREV for PV
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
X-List-Received-Date: Sun, 04 Oct 2015 01:17:31 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 4/10/2015 11:04 AM, Andrei Gherzan wrote:
> On Sun, Oct 04, 2015 at 10:42:26AM +1100, Jonathan Liu wrote:
>> On 22/08/2015 6:25 PM, Jonathan Liu wrote:
>>> SRCPV is intended to be used by PV. Using SRCREV for PV is incorrect.
>>>
>>> Signed-off-by: Jonathan Liu <net147@gmail.com>
>>> ---
>>>   recipes-kernel/linux/linux-raspberrypi.inc | 3 ++-
>>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
>>> index d60a3e9..ef98421 100644
>>> --- a/recipes-kernel/linux/linux-raspberrypi.inc
>>> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
>>> @@ -12,7 +12,8 @@ SRC_URI += " \
>>>   COMPATIBLE_MACHINE = "raspberrypi"
>>> -PV = "${LINUX_VERSION}+git${SRCREV}"
>>> +PV = "${LINUX_VERSION}+git${SRCPV}"
>>> +PR = "r1"
> Why would you want to bump PR? It will eventually end up being the same value,
> right? The PV change makes sense and is a good idea. And even if it's not the
> same value will trigger a new build cause PV will change.
Without bumping PR, the version went backwards for me.
The v1 patch posted earlier on the ML doesn't bump PR if you prefer that.

Regards,
Jonathan

