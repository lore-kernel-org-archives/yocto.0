Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C1CBFE0049B; Wed, 21 Oct 2015 07:55:58 -0700 (PDT)
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
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C224E00343
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 07:55:54 -0700 (PDT)
Received: by ioll68 with SMTP id l68so60238258iol.3
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 07:55:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=JXxQKLX4CtLIlspjxdmSSLOXUHnWtuKQMNxOS13Yg6U=;
	b=p4K9TGzCf0tUqNg8ecpnewp7NUvzrhVU08wi9zdNpSV3SOFvrFrVVxlurNTqiGS9S9
	L6ZRRIhb4fCsVzfstvKz21+n9z7ImbMZzpJnkispyflyWMunzvGtY079cnRnwlt9MADV
	8QyAWMz48mxYl6qjIjPlpQOh3SdnJWLoPd1kKCw1A19Upxwt5wGCxGLAUxAHAlPt1JtU
	0FUhsKWmn8L1RcOMBZVfsi2rBdaYcbTuXTG5aXElB2gGcJBfWo2q/gouCkdWHyHVoiei
	XVAkGxtc8jSXYFGdnXFMq/mkplz2HuPFYBJ4kMn2a1T43J4rh91acpsx6HoqPmps++nE
	/zMg==
MIME-Version: 1.0
X-Received: by 10.107.30.135 with SMTP id e129mr10110278ioe.99.1445439354241; 
	Wed, 21 Oct 2015 07:55:54 -0700 (PDT)
Received: by 10.36.31.131 with HTTP; Wed, 21 Oct 2015 07:55:54 -0700 (PDT)
In-Reply-To: <562797C0.3000303@osg.samsung.com>
References: <1439485643-31467-1-git-send-email-javier@osg.samsung.com>
	<1439485643-31467-5-git-send-email-javier@osg.samsung.com>
	<2A2C0AE8-7998-4E9E-BCD1-C4526449F31D@gmail.com>
	<CAK18fxE30A1EYFBgk31aYWqwK9mid8j+hSSnwuiPsrqvVzqvtg@mail.gmail.com>
	<55D1B054.2050403@osg.samsung.com>
	<55DB7DBA.7030902@osg.samsung.com> <20151021123216.GF5610@resin>
	<562797C0.3000303@osg.samsung.com>
Date: Wed, 21 Oct 2015 16:55:54 +0200
Message-ID: <CALbNGRSZurTw0frxHnKTmXvj8H8Zw3qsL1RH4OP-yW+faFaLEg@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Javier Martinez Canillas <javier@osg.samsung.com>
Cc: Derek Foreman <derekf@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH v2 4/4] README: Add a section about graphic stacks
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
X-List-Received-Date: Wed, 21 Oct 2015 14:55:58 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 21, 2015 at 3:48 PM, Javier Martinez Canillas
<javier@osg.samsung.com> wrote:
> Hello Andrei,
>
> On 10/21/2015 02:32 PM, Andrei Gherzan wrote:
>> Hello Javier,
>>
>> On Mon, Aug 24, 2015 at 10:25:30PM +0200, Javier Martinez Canillas wrote=
:
>>> Hello,
>>>
>>> On 08/17/2015 11:58 AM, Javier Martinez Canillas wrote:
>>>> On 08/17/2015 09:57 AM, Andrei Gherzan wrote:
>>>>> On Thursday, August 13, 2015, Khem Raj <raj.khem@gmail.com> wrote:
>>>
>>> [snip]
>>>
>>>>>>>
>>>>>>> +2.O. Graphic stacks
>>>>>>> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>>>>>> +The Raspberry Pi boards can use one of two graphics stacks: The us=
erland
>>>>>>> +user-space driver or the vc4 DRM/KMS kernel driver. By default use=
rland
>>>>>>> +is used since the vc4 is still experimental. But this can be chang=
ed by
>>>>>>> +modifying the defaults for the kernel, egl, gles2, libgl and mesa
>>>>>> providers.
>>>>>>> +This is explained in the conf/machine/include/rpi-default-provider=
s.inc
>>>>>> file.
>>>>>>> +
>>>>>>
>>>>>> you may want to add pointer to the commented out code that you have =
added
>>>>>> to select them
>>>>>> in rpi-default-providers.inc
>>>>>>
>>>>>
>>>>> It would be nice to have some detailed info on what and where to comm=
ent
>>>>> out the configuration.
>>>>>
>>>>
>>>> On patch 3/4 I added that documentation to rpi-default-providers but d=
idn't
>>>> add it to the README and instead pointed out to rpi-default-providers =
to
>>>> have a level of indirection in case the providers change and to not ha=
ve
>>>> duplicated information but I will add it to the README as well.
>>>>
>>>> Do you have comments on the other patches in the series so I can addre=
ss
>>>> all of them before re-spinning?
>>>>
>>>
>>
>> Really sorry on this late reply. So my only recommendation is to move th=
ings
>
> No worries, I've also been very busy with other stuff.
>
>> you wrote in 3/4 in the 4/4 (README). Basically you would describe what =
a user
>> needs to overwrite as providers in order to use VC4 as graphics stack.
>>
>
> Ok, I'm traveling to Korea next week for KLF and KS so I'll probably rese=
nd
> a v3 (addressing your suggestions) later next week when I'm back.
>
>> As well, how do you handle the devicetrees for 4.1? Aren't changed in 4+=
?
>>
>
> For now, I'm defining a KERNEL_DEVICETREE in my conf/local.conf file sinc=
e
> that is what was agreed with Petter Mab=C3=A4cker on v1 of this series [0=
 and
> I also mentioned in the cover letter [1].
>
> But the new device tree overlay dir layout is not only for 4+ but also it
> is used in the latest version of the older branches. So once all recipes'
> SRCREV are bumped, overwriting the variable won't be necessary anymore.
>
>>> Gentle ping about this. Thanks!
>>>
>>> Best regards,
>>> --
>>> Javier Martinez Canillas
>>> Open Source Group
>>> Samsung Research America
>>
>> --
>> Andrei Gherzan
>>
>
> [0]: https://lists.yoctoproject.org/pipermail/yocto/2015-August/025961.ht=
ml
> [1]: https://lists.yoctoproject.org/pipermail/yocto/2015-August/026151.ht=
ml
>
> Best regards,
> --
> Javier Martinez Canillas
> Open Source Group
> Samsung Research America
When reworking: If I am not mistaken there is a chance that
modesetting will work when using latest kernel versions from Eric
Anholt. So would you mind to rebase the patches to these changes? I
would again play tester role.

Andreas

