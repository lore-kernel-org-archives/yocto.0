Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A13B6E00B88; Mon, 30 Nov 2015 05:09:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f182.google.com (mail-io0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A68DE00B67
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 05:09:35 -0800 (PST)
Received: by ioc74 with SMTP id 74so170935698ioc.2
	for <yocto@yoctoproject.org>; Mon, 30 Nov 2015 05:09:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=Qzqxwt/a6qMn8Kd87b2MyXL3I+Z7TIYT5nWY4Nd5tKE=;
	b=USjO3j3yJOJG5RHPnKa8PV51P2fQLezwH6+LEcZ2Cs54qbLtyEUbsj2qjXx5zJndBc
	W0yya2J8zbiCDDEyHMEKs3TJ2D89b+R4XVee8w4xNcIU9j0g9nyz4vgM4xiyJTeoF5I0
	mf1h5vV7aW5w554bHx8ygSIvxwM4HbPfvpfCqyvG2dcMaAfs6zxvDIWyz7Ac5uS66+si
	yAexDfoOw1fAQFHRPVrbQ65e6pUUb3Yqd0EDMtdOyt8Qi/xcBERBBZr4UBEJqugLQJ2W
	DnLuC0zipzSOSb8PgHU51tF3onXnw+ADWfxjsX0UlEQVawqPbcFEnLr0pn99QHVpREWa
	l5aA==
MIME-Version: 1.0
X-Received: by 10.107.130.155 with SMTP id m27mr64899905ioi.133.1448888975310; 
	Mon, 30 Nov 2015 05:09:35 -0800 (PST)
Received: by 10.36.25.81 with HTTP; Mon, 30 Nov 2015 05:09:35 -0800 (PST)
In-Reply-To: <565C3C31.8070804@osg.samsung.com>
References: <1447166720-13316-1-git-send-email-javier@osg.samsung.com>
	<564F3D6F.7020601@osg.samsung.com>
	<CAMKF1sq=yxLKqTUj2BcQ8Sz-_bC1w=ntAAWKO7_YVRCGpFOQFg@mail.gmail.com>
	<CALbNGRSnDmHvkiHNM_Z+ERMwtvYzjj5N=bR2fA27vkgdF+f-CQ@mail.gmail.com>
	<565C3C31.8070804@osg.samsung.com>
Date: Mon, 30 Nov 2015 14:09:35 +0100
Message-ID: <CALbNGRQBzn2KjtqH9TohV9qJt5qN2uALYOcZqw5rLTAmVRB-TQ@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Javier Martinez Canillas <javier@osg.samsung.com>
Cc: Derek Foreman <derekf@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH v3 0/2] Add support for 4.2 kernel with vc4 DRM/KMS driver
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
X-List-Received-Date: Mon, 30 Nov 2015 13:09:41 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Nov 30, 2015 at 1:08 PM, Javier Martinez Canillas
<javier@osg.samsung.com> wrote:
> On 11/20/2015 02:30 PM, Andreas M=C3=BCller wrote:
>> On Fri, Nov 20, 2015 at 5:09 PM, Khem Raj <raj.khem@gmail.com> wrote:
>>> On Fri, Nov 20, 2015 at 7:34 AM, Javier Martinez Canillas
>>> <javier@osg.samsung.com> wrote:
>>>> On 11/10/2015 11:45 AM, Javier Martinez Canillas wrote:
>>>>> Hello Andrei,
>>>>>
>>>>> This series adds support for Eric Anholt's v4.2 kernel, that has supp=
ort
>>>>> for the vc4 DRM/KMS driver, which is the new open source graphics dri=
ver
>>>>> stack for the Raspberry Pi to be used instead of the userland driver.
>>>>>
>>>>> This is a third version of the series which addresses feedback provid=
ed
>>>>> by Andreas M=C3=BCller, Khem Raj and you. The first version and secon=
d version
>>>>> of the series can be found at [0] and [1]. Some of the v2 patches hav=
e
>>>>> been dropped since are no longer necessary so the delta is smaller in=
 v3.
>>>>>
>>>>
>>>> Any comments about this series?
>>>
>>> Whole series looks good to me.
>>>
>
> Thanks Khem.
>
>> Hop to find some time to test this weekend.
>>
>
> Andreas, did you find time to test?
Am very sorry: No chance currently
>
>> Andreas
>>
>
> Andrei, gentle ping about this series again.
>
> Best regards,
> --
> Javier Martinez Canillas
> Open Source Group
> Samsung Research America

