Return-Path: <bill.randle@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF83DE00CB5; Wed,  5 Oct 2016 13:41:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bill.randle[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D493E00C72
	for <yocto@yoctoproject.org>; Wed,  5 Oct 2016 13:41:16 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id f193so399719wmg.2
	for <yocto@yoctoproject.org>; Wed, 05 Oct 2016 13:41:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=iNIcUo/daEIuP2vPJJhig8ggFSEOhWpFF29SwTzzkcc=;
	b=oHvdjemQYbH9MsOpfsxbNpjYqT9wwRqbfG8IlE0kgLWN4H7ecDe8fM+Di/vYeVxnyQ
	E+r0tHl/lz7kg+P5zPb5YAOCsGqBPCXaKTHFxXZjDZWJQP8y+Hk2qf8uyfjv7//fZqK5
	1HxJ1UIo0DCr70kVsP6s8IUYIgqqEWxcXiCqE9Yd7pA40cqe6Y4O5Be/2KK4qUDm2A9x
	Rf3xclUQPX6yF6oDge6fxVZ5R0kgwm/H7RhwgW2kVas47VPiTDcih6eSi2Mq/rfyw2zn
	Y2H6y/iiYwgVuoH6o4CU9ttXhz583L6gkKmKmWtPOMRArTcj2UvOT03aFsS5oTb5WHuq
	0s8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=iNIcUo/daEIuP2vPJJhig8ggFSEOhWpFF29SwTzzkcc=;
	b=TqUHX2725TaLqf6L1U4BUYSa5QzLefBWLPzll1N6qirIg0036+ZzwH0g7A/uZPrx3h
	tOJGY4VZnu5zyvcXQwY8Dzuki2+/2sLP0wN3pH2XwYC7I8n1Kph6cs21nprLG8LUYUUF
	GRMvJPCmheaDmUd9gVZUkluXQOp2hCeMX1iSKUnyhFb5BVsmk8FukOiuFWR73+j5mmZo
	Ig6qS8XOgS8vYdUHZMvni8hNPduGfGxENipx0mgvLqqULZWMEWaGCzwXFLfN31JlevSz
	Oj4yd0A1PAT+stVCnA/LgMT9+0ne8vQY+hpEPeuCVBCPkr373BjIS98slTxQXYKN8s1Z
	jYCA==
X-Gm-Message-State: AA6/9RkbPWYNj4J5ki+yXz7/ne411lZNpGbkNxKkRwjbIQH8uTwaCSUNr56OzNfNvR0BBrwVlqUUWPfAXrF5lQ==
X-Received: by 10.28.159.211 with SMTP id i202mr62777wme.32.1475700075910;
	Wed, 05 Oct 2016 13:41:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.52.78 with HTTP; Wed, 5 Oct 2016 13:41:15 -0700 (PDT)
In-Reply-To: <57F55BED.1060204@linux.intel.com>
References: <1475267391-19357-1-git-send-email-monserratx.sedeno.bustos@intel.com>
	<57F5156A.6050900@linux.intel.com> <57F55BED.1060204@linux.intel.com>
From: Bill Randle <bill.randle@gmail.com>
Date: Wed, 5 Oct 2016 13:41:15 -0700
Message-ID: <CA+n--H_-o_igyoDq0WtNgfvXENToJMR2zKREb22yjXTjEnj+Yw@mail.gmail.com>
To: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Cc: joshua.g.lock@intel.com, yocto@yoctoproject.org,
	Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
Subject: Re: [[yocto-autobuilder][PATCHv2]] Build sets to test new OS distribution in autobuilder
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
X-List-Received-Date: Wed, 05 Oct 2016 20:41:21 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

I also wonder if this actually belongs in
buildset-config.autobuilder-qa (which doesn't have any other configs),
or in buildset-config.controller where all the others reside.

    -Bill

On Wed, Oct 5, 2016 at 1:00 PM, An=C3=ADbal Lim=C3=B3n
<anibal.limon@linux.intel.com> wrote:
> Oh, I didn't notice that this patch isn't applied to ab master branch.
>
> Monse, could you send a new patch over master?
>
> Cheers,
>         alimon
>
> On 10/05/2016 09:59 AM, An=C3=ADbal Lim=C3=B3n wrote:
>>
>>
>> On 09/30/2016 03:29 PM, Monserrat Sedeno wrote:
>>> As part of the process to set new OS distribution as supported on Yocto=
c Project
>>> a new patch was created with the list of build sets that should be exec=
uted.
>>>
>>> Detailed information:
>>> https://wiki.yoctoproject.org/wiki/Distro_Testing_Plan#Execute_Build_Se=
ts
>>>
>>> Fixes [YOCTO #9905]
>>>
>>> Note:In order to add a new distro as supported all the build sets shoul=
d be PASS
>>>
>>> Signed-off-by: Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
>> Acked-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>
>>> ---
>>>  buildset-config.autobuilder-qa/nightly-qa-distro.conf | 4 ++--
>>>  1 file changed, 2 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/buildset-config.autobuilder-qa/nightly-qa-distro.conf b/bu=
ildset-config.autobuilder-qa/nightly-qa-distro.conf
>>> index 0fcdbef..6c02a91 100644
>>> --- a/buildset-config.autobuilder-qa/nightly-qa-distro.conf
>>> +++ b/buildset-config.autobuilder-qa/nightly-qa-distro.conf
>>> @@ -25,7 +25,6 @@ steps: [{'SetDest':{}},
>>>                              'nightly-deb': {},
>>>                              'nightly-ipk': {},
>>>                              'nightly-world': {},
>>> -                            'buildtools': {},
>>>                              'nightly-arm': {},
>>>                              'nightly-mips': {},
>>>                              'nightly-wic':{},
>>> @@ -37,8 +36,9 @@ steps: [{'SetDest':{}},
>>>                              'nightly-qa-systemd': {},
>>>                              'nightly-qa-extras': {},
>>>                              'nightly-qa-targetbuilds': {},
>>> -                            'nightly-qa-skeleton': {}},
>>> +                            'nightly-qa-skeleton': {},
>>>                              'nightly-qa-logrotate': {},
>>>                              'nightly-qa-pam': {},
>>> +                            'buildtools': {}},
>>>                             'schedulerNames_nowait': {}}},]
>>>
>>>
>>
>>
>>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

