Return-Path: <theodor@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 30C2AE00C55; Tue,  5 Apr 2016 18:30:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f196.google.com (mail-lb0-f196.google.com
	[209.85.217.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9269EE00C43
	for <yocto@yoctoproject.org>; Tue,  5 Apr 2016 18:30:43 -0700 (PDT)
Received: by mail-lb0-f196.google.com with SMTP id q4so2571314lbq.3
	for <yocto@yoctoproject.org>; Tue, 05 Apr 2016 18:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=WjgiAglv2m8HrXKfqTO5Gvntjs2mjs7UymFH+MpZ7Iw=;
	b=f+jYsPe+q5762/1bPgdqDnHTH5ee5jsabQnRcraZyjcit4rtjU2eV9QbeT2t4CZQrQ
	53weJ4us/IlzuDDI1RxYw1ylvPN8GdqRZ2fDc3VOG/IopFDCsqNWWq/wAfGhSL29eNlj
	vVeqf6zKI0Run+sN+b0gdOLE+9y7QnDKJOUHRv9+wYsg56FWR78n1C/Zv3Zi+YCrFOYx
	zkfcdDh1mjsQVvNef7P8Er8Nb+tm7wp+80L60pJ605yR7+p5YUVRYvw9gnBj1rIIjGYn
	OG7dGAeG37pCjXCK/0rw5AfCutgR12AiLLRLr1zOQXxS5ug+HMirlmM60HmhGHIlV4ey
	XjQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=WjgiAglv2m8HrXKfqTO5Gvntjs2mjs7UymFH+MpZ7Iw=;
	b=QxvkXJ4umiECOqYVYv7l9l24d9hrMUb2304bC1cEGhQ4YfRl58J6lsoNgdkOF19Rwi
	Hmd4AkYhow2A6CIlBNGhC46N2xKg0prPS9UvXjOoInvTzVLzcGGyCPG72MkkPjDSotIc
	wpPfBV3Wppi7kZ6Mu9z3ZbTA+fVyeg2jRUnUU/ggXN7BEg0K/jtO0FIMc/ZMyIwAYIWf
	wl2B7HDufXJbXE19soN9E9T8fR5kWlFJPKWn28l7DeQQwEQClCJMBq13Bk08zU4HkL3N
	mH20oRkA0zafUZIRBb0kAbZHBT7MPIamz8ki6+4mWCGzsIdEChDmXPd1hCoxL8GsJZjT
	H+vQ==
X-Gm-Message-State: AD7BkJKG+dNc2/g9fhVCp+Uw5Bgwm+me7jVZ/7OxVfolxCN1bmyRvT2dVwycPPwcJhuhvIF2q0f2hv2uBV2PKg==
MIME-Version: 1.0
X-Received: by 10.112.30.131 with SMTP id s3mr9271693lbh.124.1459906241974;
	Tue, 05 Apr 2016 18:30:41 -0700 (PDT)
Received: by 10.112.205.198 with HTTP; Tue, 5 Apr 2016 18:30:41 -0700 (PDT)
X-Originating-IP: [86.177.173.194]
In-Reply-To: <20160329220650.GD4325@resin>
References: <1457532907-49811-1-git-send-email-theodor@gherzan.ro>
	<1457532907-49811-4-git-send-email-theodor@gherzan.ro>
	<CANwerB3Xp2_vZ320gfiWWEWOuCQzvHVuXgDiPpopFD2AuVT3-w@mail.gmail.com>
	<20160329220650.GD4325@resin>
Date: Wed, 6 Apr 2016 02:30:41 +0100
Message-ID: <CAJjOg+H3TFZUw0wB8Gw+BP2pzyE7pgzThj84eJm9LqPd9_VgKg@mail.gmail.com>
From: Theodor Gherzan <theodor@gherzan.ro>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 4/6] linux-firmware: Add brcmfmac43430 firmware
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
X-List-Received-Date: Wed, 06 Apr 2016 01:30:48 -0000
Content-Type: text/plain; charset=UTF-8

I will have a look.

Theodor Gherzan

On Tue, Mar 29, 2016 at 11:06 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Fri, Mar 25, 2016 at 11:34:21AM +1100, Jonathan Liu wrote:
>> Hi Theodor,
>>
>> On 10 March 2016 at 01:15, Theodor Gherzan <theodor@gherzan.ro> wrote:
>> > From: Theodor Gherzan <theodor@resin.io>
>> >
>> > Signed-off-by: Theodor Gherzan <theodor@resin.io>
>> > ---
>> >  .../linux-firmware/LICENSE.broadcom_brcm80211      | 205 +++++++++++++++++++++
>> >  .../linux-firmware/brcmfmac43430-sdio.bin          | Bin 0 -> 368957 bytes
>> >  .../linux-firmware/brcmfmac43430-sdio.txt          |  66 +++++++
>> >  .../linux-firmware/linux-firmware_git.bbappend     |  29 +++
>> >  4 files changed, 300 insertions(+)
>> >  create mode 100644 recipes-kernel/linux-firmware/linux-firmware/LICENSE.broadcom_brcm80211
>> >  create mode 100644 recipes-kernel/linux-firmware/linux-firmware/brcmfmac43430-sdio.bin
>> >  create mode 100644 recipes-kernel/linux-firmware/linux-firmware/brcmfmac43430-sdio.txt
>> >  create mode 100644 recipes-kernel/linux-firmware/linux-firmware_git.bbappend
>>
>> I get the following warning when building an image that installs
>> linux-firmware-ralink package (but not any of the other firmware
>> packages):
>> [log_check] WARNING: The license listed Firmware-broadcom_brcm80211
>> was not in the licenses collected for recipe linux-firmware
>>
>> It seems the license is not being packaged correctly.
>>
>> Could you please have a look?
>
> Theodor,
>
> Any chance you can take a look on this?
>
> Cheers!
>
> --
> Andrei Gherzan

