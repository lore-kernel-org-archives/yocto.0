Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6FEA6E00708; Wed, 21 Oct 2015 12:43:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-lb0-f178.google.com (mail-lb0-f178.google.com
	[209.85.217.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E498E006D5
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 12:43:13 -0700 (PDT)
Received: by lbbes7 with SMTP id es7so46291097lbb.2
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 12:43:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=Wy/cnYKGVUdG6SBDVoxEJMZlQzSTOR4fGCNhubQ0dQg=;
	b=bPFYuS4g5aiA9jR+o+LbiGXR7wlO8UZTQXbk30l0tsmANq3Z9hRfQavyI5H7r0w/7J
	dzepn2A8sWBp33MKmSrVNJar6lfgc3YYmld4sMgWizZJCcH2DSlx2qIzl3MEx9hQ508Y
	lignLMuK22F+ewd4Gtrh9xJY8Sc2ZVs4jDsCmNPExjFjUG9AYFq5qYl4eRu252uKBMdR
	Tw/VWJ2AwMCoyzHdQP2woytbmetv+SL10bRF5UfzOU/rjTpRqCczOmB3GsYmnRspbQ6J
	Yi6YiuGyXgwJsa2oY33CAIwJe8XKWl7y6jWWmSN3ExaLKg2U9d0e+zuzCWWhIVRNNx9q
	n0YA==
X-Gm-Message-State: ALoCoQnpVyT92wg/0QPoPvq8rBCL77PVFNWhfOLO1ivZjo/KwA+HZ1iFak4ch+B0XO/Qe2xYfyAE
X-Received: by 10.112.131.70 with SMTP id ok6mr6483129lbb.71.1445456591999;
	Wed, 21 Oct 2015 12:43:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.112.198.71 with HTTP; Wed, 21 Oct 2015 12:42:32 -0700 (PDT)
X-Originating-IP: [88.67.185.162]
In-Reply-To: <5627C2AF.6060809@gmail.com>
References: <1439312679-24989-1-git-send-email-ajlennon@dynamicdevices.co.uk>
	<1439312679-24989-2-git-send-email-ajlennon@dynamicdevices.co.uk>
	<f770f8743b500dde78803cd8b0826854@technux.se>
	<CAK18fxHq-iSARt0mEBHQoNC+jZuK+0ix50y6838OCpmRc7VyoQ@mail.gmail.com>
	<8cc28d589389102b4fccf052fe2389c2@technux.se>
	<55D1A82F.9020506@gmail.com>
	<02548fc1921b30fcdb6a0791bd7a6361@technux.se>
	<55DC2086.5020008@gmail.com>
	<20151021121203.GB5610@resin> <5627C2AF.6060809@gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 21 Oct 2015 21:42:32 +0200
Message-ID: <CAK18fxGG8yRpP0wXA2ej+PVAm1i+m5ksLQ3eM77REWD5+EKAzA@mail.gmail.com>
To: Alex J Lennon <ajlennon@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 2/2] linux-raspberrypi: build audio driver into kernel
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
X-List-Received-Date: Wed, 21 Oct 2015 19:43:18 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 21, 2015 at 6:51 PM, Alex J Lennon <ajlennon@gmail.com> wrote:
> On 21/10/2015 13:12, Andrei Gherzan wrote:
>> On Tue, Aug 25, 2015 at 09:00:06AM +0100, Alex J Lennon wrote:
>>> On 25/08/2015 07:57, Petter Mab=C3=A4cker wrote:
>>>>
>>>>
>>>> 2015-08-17 11:23 skrev Alex J Lennon:
>>>>
>>>>> On 17/08/2015 09:11, Petter Mab=C3=A4cker wrote:
>>>>>> 2015-08-17 09:57 skrev Andrei Gherzan:
>>>>>>> Hello, On Tuesday, August 11, 2015, Petter Mab=C3=A4cker
>>>>>>> <petter@technux.se <mailto:petter@technux.se>
>>>>>>> <mailto:petter@technux.se <mailto:petter@technux.se>>> wrote:
>>>>>>> 2015-08-11 19:04 skrev Alex J Lennon: Signed-off-by: Alex J Lennon
>>>>>>> <ajlennon@dynamicdevices.co.uk
>>>>>>> <mailto:ajlennon@dynamicdevices.co.uk>> ---
>>>>>>> recipes-kernel/linux/linux-raspberrypi.inc | 4 ++++ 1 file changed,
>>>>>>> 4 insertions(+) diff --git
>>>>>>> a/recipes-kernel/linux/linux-raspberrypi.inc
>>>>>>> b/recipes-kernel/linux/linux-raspberrypi.inc index e38d905..8024412
>>>>>>> 100644 --- a/recipes-kernel/linux/linux-raspberrypi.inc +++
>>>>>>> b/recipes-kernel/linux/linux-raspberrypi.inc @@ -6,6 +6,10 @@
>>>>>>> SECTION =3D "kernel" LICENSE =3D "GPLv2" LIC_FILES_CHKSUM =3D
>>>>>>> "file://COPYING;md5=3Dd7810fab7487fb0aad327b76f1be7cd7" +SRC_URI +=
=3D "
>>>>>>> \ + file://build-in-audio.cfg \ + " This one didn't make it. --
>>>>>>> Andrei Gherzan -- -- Andrei Gherzan
>>>>>> Think you got the wrong receiver =3D) I notified Alex about this som=
e
>>>>>> days ago, Alex can you send up a v2 for this?
>>>>> The build-in-audio.cfg patch was just for testing of fragment support=
.
>>>>> It's understood that we're not going to have this build into the kern=
el
>>>>> by default, although I do still need to find some words to add to the
>>>>> README on audio routing setup and so forth.
>>>>>
>>>>> I started testing a build with master over the weekend and it built O=
K.
>>>>> Just need to find some time to run up a couple of kernels and will
>>>>> resubmit the v2 patch with Petter's enhanced commit message.
>>>>>
>>>>> I don't have an RPiv1 around at the moment but I will probably double
>>>>> check the kernel does still actually build for RPiv1 machine
>>>>>
>>>>> Cheers,
>>>>>
>>>>> Alex
>>>>>> BR, Petter
>>>>
>>>> Hi Alex, Any news for the v2 changeset? Would be awesome to get the 4.=
x
>>>> integrated soon.
>>>>
>>>
>>> Hi, yeah I got a little sidetracked I'm afraid. Turns out
>>> core-image-sato isn't building in master any more due to a new
>>> dependency on libexpoxy which in turn requires EGL.
>>>
>>> Anyway, so I did successfully build 4.x and 3.x kernels for RPiv2 in an
>>> rpi-xxx-image. I just didn't get around to running them up although I
>>> see no reason to think they won't.
>>>
>>> I'll try to take a look at this, as I like you would like this signed o=
ff :)
>>>
>>> Cheers, Alex
>>>
>>
>> Any chances this is still coming soon?
>>
>> --
>> Andrei Gherzan
>>
>
> Yes I'd like to wrap this up too. Can we take a step back first and
> revisit the earlier patch-set to update to 3.8.16 and add support for
> 4.1.3 kernels first? If so I'll try to test with what seems to be the
> latest long term kernels on kernel.org, 3.8.22 and 4.1.10.
>
> With that in place I can then add the kernel fragment support on top.
> (And then start looking into Dockerification which looks intriguing... ;)
>

Tomorrow everything will be updated. If they still compile and run :)


--
Andrei Gherzan

