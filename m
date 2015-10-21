Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 90D04E0059B; Wed, 21 Oct 2015 08:48:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-lb0-f173.google.com (mail-lb0-f173.google.com
	[209.85.217.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BAB0E00343
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 08:48:37 -0700 (PDT)
Received: by lbcao8 with SMTP id ao8so41564817lbc.3
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 08:48:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=3uiy2n4LOQcfgsxuoDyoBx5J6jv5NJ5z/u/BFcNlpv4=;
	b=biRdnP1uqY5W5pv6/mnPRwVQwus/VOyEK+N/+1hyQjwEwhJw7oF8fTuD3rQuBPUwnT
	Ba76wKXzTO58i3az75seQcF8f1wqOaq2mLhd7TxJBqVvcNuVkwEsey4elj5D9euCMN4z
	slqTrk2oAuolpJKDv4/Rqryv1uXUAF692Go/RuSCuhredtpBWcciqeWb2OQDANttLfM+
	n8ocpg3mMJSRKZOoQkJ5KtvN1wnsDi2rXua8HnTxyzfggeRKqCXOnfUO2rJ2foyo/C93
	/HFKpRMjgkFg0+916z5qrgVLdHXyIW3E/3ZKjbTQ3mG1Kr4HLJPN4vcRAjYksfQCW0Pb
	P8vg==
X-Gm-Message-State: ALoCoQndPkOBwa4FijY88F/YO9k6ivsDLEWdz/eEkZt/xmpv+1z7QRKBq23AnPtGES/BDKe1w8Vr
X-Received: by 10.112.87.69 with SMTP id v5mr5818864lbz.70.1445442515361; Wed,
	21 Oct 2015 08:48:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.198.71 with HTTP; Wed, 21 Oct 2015 08:47:55 -0700 (PDT)
X-Originating-IP: [131.159.204.220]
In-Reply-To: <5627A8FA.9060006@osg.samsung.com>
References: <1439485643-31467-1-git-send-email-javier@osg.samsung.com>
	<1439485643-31467-5-git-send-email-javier@osg.samsung.com>
	<2A2C0AE8-7998-4E9E-BCD1-C4526449F31D@gmail.com>
	<CAK18fxE30A1EYFBgk31aYWqwK9mid8j+hSSnwuiPsrqvVzqvtg@mail.gmail.com>
	<55D1B054.2050403@osg.samsung.com> <55DB7DBA.7030902@osg.samsung.com>
	<20151021123216.GF5610@resin> <562797C0.3000303@osg.samsung.com>
	<CALbNGRSZurTw0frxHnKTmXvj8H8Zw3qsL1RH4OP-yW+faFaLEg@mail.gmail.com>
	<5627A8FA.9060006@osg.samsung.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 21 Oct 2015 17:47:55 +0200
Message-ID: <CAK18fxFhokAevcPc_q-W4ewT7pUaa0ikAS8B0JuKn_CVDRfzzA@mail.gmail.com>
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
X-List-Received-Date: Wed, 21 Oct 2015 15:48:51 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 21, 2015 at 5:02 PM, Javier Martinez Canillas
<javier@osg.samsung.com> wrote:
> Hello Andreas,
>
> On 10/21/2015 04:55 PM, Andreas M=C3=BCller wrote:
>> On Wed, Oct 21, 2015 at 3:48 PM, Javier Martinez Canillas
>> <javier@osg.samsung.com> wrote:
>>> Hello Andrei,
>>>
>>> On 10/21/2015 02:32 PM, Andrei Gherzan wrote:
>>>> Hello Javier,
>>>>
>>>> On Mon, Aug 24, 2015 at 10:25:30PM +0200, Javier Martinez Canillas wro=
te:
>>>>> Hello,
>>>>>
>>>>> On 08/17/2015 11:58 AM, Javier Martinez Canillas wrote:
>>>>>> On 08/17/2015 09:57 AM, Andrei Gherzan wrote:
>>>>>>> On Thursday, August 13, 2015, Khem Raj <raj.khem@gmail.com> wrote:
>>>>>
>>>>> [snip]
>>>>>
>>>>>>>>>
>>>>>>>>> +2.O. Graphic stacks
>>>>>>>>> +=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>>>>>>>> +The Raspberry Pi boards can use one of two graphics stacks: The =
userland
>>>>>>>>> +user-space driver or the vc4 DRM/KMS kernel driver. By default u=
serland
>>>>>>>>> +is used since the vc4 is still experimental. But this can be cha=
nged by
>>>>>>>>> +modifying the defaults for the kernel, egl, gles2, libgl and mes=
a
>>>>>>>> providers.
>>>>>>>>> +This is explained in the conf/machine/include/rpi-default-provid=
ers.inc
>>>>>>>> file.
>>>>>>>>> +
>>>>>>>>
>>>>>>>> you may want to add pointer to the commented out code that you hav=
e added
>>>>>>>> to select them
>>>>>>>> in rpi-default-providers.inc
>>>>>>>>
>>>>>>>
>>>>>>> It would be nice to have some detailed info on what and where to co=
mment
>>>>>>> out the configuration.
>>>>>>>
>>>>>>
>>>>>> On patch 3/4 I added that documentation to rpi-default-providers but=
 didn't
>>>>>> add it to the README and instead pointed out to rpi-default-provider=
s to
>>>>>> have a level of indirection in case the providers change and to not =
have
>>>>>> duplicated information but I will add it to the README as well.
>>>>>>
>>>>>> Do you have comments on the other patches in the series so I can add=
ress
>>>>>> all of them before re-spinning?
>>>>>>
>>>>>
>>>>
>>>> Really sorry on this late reply. So my only recommendation is to move =
things
>>>
>>> No worries, I've also been very busy with other stuff.
>>>
>>>> you wrote in 3/4 in the 4/4 (README). Basically you would describe wha=
t a user
>>>> needs to overwrite as providers in order to use VC4 as graphics stack.
>>>>
>>>
>>> Ok, I'm traveling to Korea next week for KLF and KS so I'll probably re=
send
>>> a v3 (addressing your suggestions) later next week when I'm back.
>>>
>>>> As well, how do you handle the devicetrees for 4.1? Aren't changed in =
4+?
>>>>
>>>
>>> For now, I'm defining a KERNEL_DEVICETREE in my conf/local.conf file si=
nce
>>> that is what was agreed with Petter Mab=C3=A4cker on v1 of this series =
[0 and
>>> I also mentioned in the cover letter [1].
>>>
>>> But the new device tree overlay dir layout is not only for 4+ but also =
it
>>> is used in the latest version of the older branches. So once all recipe=
s'
>>> SRCREV are bumped, overwriting the variable won't be necessary anymore.
>>>
>>>>> Gentle ping about this. Thanks!
>>>>>
>>>>> Best regards,
>>>>> --
>>>>> Javier Martinez Canillas
>>>>> Open Source Group
>>>>> Samsung Research America
>>>>
>>>> --
>>>> Andrei Gherzan
>>>>
>>>
>>> [0]: https://lists.yoctoproject.org/pipermail/yocto/2015-August/025961.=
html
>>> [1]: https://lists.yoctoproject.org/pipermail/yocto/2015-August/026151.=
html
>>>
>>> Best regards,
>>> --
>>> Javier Martinez Canillas
>>> Open Source Group
>>> Samsung Research America
>> When reworking: If I am not mistaken there is a chance that
>> modesetting will work when using latest kernel versions from Eric
>> Anholt. So would you mind to rebase the patches to these changes? I
>> would again play tester role.
>>
>
> Yes, I will. I know Derek was also playing with Eric's latest branch
> so I'll coordinate with him and bump the sha-1 id if necessary.
>

In the meanwhile I will add 4.X support. Finally?

--
Andrei Gherzan

