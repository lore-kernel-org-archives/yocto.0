Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51423E00FBC; Wed, 23 Sep 2015 17:44:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6185AE00E22
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 17:44:12 -0700 (PDT)
Received: by igbkq10 with SMTP id kq10so4361507igb.0
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 17:44:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=g6ik7SyRtF0OfGPp2Jp4WgqL703slWHawyHH+LXDtWk=;
	b=sP5I1TpLCHM8Xf559cOHGm0dyTTA5QgQKkgXZv5/KSZ3vCVYCyXnFMhQgggnlu1x0K
	xV8cQ3COM7Lhmc6LL6i+A/EEtSxVhHX9K1z6xhWYXnWgV2LcnkRTsTaGJEWGoativ/GH
	Nm5enYmOylLsa3eJ/xgZ86pjlnd7GFwNhFlKpKJq+MAGvKbQck6+SvhS1qutm97G3rp8
	6e0Jv6FOWarhwziuBB978RUcCsiU66/MhOZ2SEytKIPjstS9C0I2b06DoGvwJSd1+t2J
	zkaXL24Rz/87Bp136Q+pgp0+wMVE9eaG0T/jXliCx7WkqP+tEkwAJ2JY4dT0I8e3PX+T
	lxww==
X-Received: by 10.50.66.230 with SMTP id i6mr27645074igt.31.1443055452071;
	Wed, 23 Sep 2015 17:44:12 -0700 (PDT)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	j9sm1412638igx.3.2015.09.23.17.44.10
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 23 Sep 2015 17:44:11 -0700 (PDT)
To: Andrei Gherzan <andrei@gherzan.ro>, Jonathan Liu <net147@gmail.com>
References: <55ECF934.80902@gmail.com> <55F2304B.6070601@gmail.com>
	<CANwerB3PB=JQRQmjcHkCrpW8_fTSN1DrmPFFT70CA3WJtN6CYw@mail.gmail.com>
	<20150923201253.GA23493@resin>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <56034757.1010909@gmail.com>
Date: Wed, 23 Sep 2015 20:44:07 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.2.0
MIME-Version: 1.0
In-Reply-To: <20150923201253.GA23493@resin>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] du giving non-integer result?
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
X-List-Received-Date: Thu, 24 Sep 2015 00:44:16 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 09/23/15 16:12, Andrei Gherzan wrote:
> On Thu, Sep 17, 2015 at 02:14:21PM +1000, Jonathan Liu wrote:
>> On 11 September 2015 at 11:37, Trevor Woerner <twoerner@gmail.com> wrote:
>>> From the feedback, it looks like I'm the only one seeing this issue.
>>> That's okay, but I'll update this issue with new information in case
>>> it's useful to others. Today I also had some other strangeness with the
>>> "make sd card image" portion of a build, this time for cubietruck
>>> (meta-sunxi):
>>>
>>>
>>>     ERROR: Error: The image creation script
>>>     '/z/tmp/build/tmp/work/cubietruck-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/create_image.sunxi-sdimg'
>>>     returned 1:
>>>     0+0 records in
>>>     0+0 records out
>>>     0 bytes (0 B) copied, 3.0606e-05 s, 0.0 kB/s
>>>     expr: non-integer argument
>>>     WARNING:
>>>     /z/tmp/build/tmp/work/cubietruck-poky-linux-gnueabi/core-image-minimal/1.0-r0/temp/create_image.sunxi-sdimg:1
>>>     exit 1 from
>>>       parted -s
>>>     /z/tmp/build/tmp/deploy/images/cubietruck/core-image-minimal-cubietruck-20150910182624.rootfs.sunxi-sdimg
>>>     unit KiB mkpart primary ext2 $(expr ${BOOT_SPACE_ALIGNED} \+ 2048)
>>>     $(expr ${BOOT_SPACE_ALIGNED} \+ 2048 \+ 10240.0)
>>>
>>>
>>>
>>> Not only am I getting the floating point again, but it looks like
>>> "BOOT_SPACE_ALIGNED" isn't getting expanded!
>>>
>>> The frustrating part is that simply rerunning "bitbake
>>> core-image-minimal" fixes the problem. The second time it completes
>>> without error.
>>> --
>> I sent a patch to openembedded-core mailing list for ROOTFS_SIZE not
>> being an integer.
>> It seems http://git.openembedded.org/openembedded-core/commit/?id=af37bb8ae71c4f932e2126bb620b3fb2b11cc466
>> results in ROOTFS_SIZE now being set as a bitbake variable.
>> meta-raspberrypi will need to be updated to not have a conflicting
>> ROOTFS_SIZE variable as ${ROOTFS_SIZE} is being substituted by bitbake
>> instead of the shell there.
> Hi guys,
>
> I'm testing and reviewing this as we speak. As well, it would be a good idea to drop
> the sd card generation class for good and replace it completely by wic support.
>
> Something to be done. Wnat to pick this up? I know that there were people
> around testing wic and we had configuration too.

Jonathan's patch does work for me, and it was premature of me to put
[meta-raspberrypi] in the subject line since I saw this same failure on
other BSPs (and other people reported even more failures on other BSPs).
But it wouldn't hurt to move to wic either. It's probably about time I
started using it anyway :-)

