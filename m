Return-Path: <steve.rae@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8EA97E00D5E; Mon, 14 Mar 2016 11:51:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1E37E00D5F
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 11:51:10 -0700 (PDT)
Received: by mail-lb0-f176.google.com with SMTP id x1so251957107lbj.3
	for <yocto@yoctoproject.org>; Mon, 14 Mar 2016 11:51:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=yFxgZYm3f+EA15ti3/mW7UHfnNzlUfpWT7AyYNYkM50=;
	b=b+bkFgk2vdA59QK+3NC919O9LWCMxJniMeEB2uo9F+8Y9sF/0oxWJB7EYdxNxFW+N4
	6iPZj1RRygThZb/vCvi4JtX8Gbmt44kaEGwWkrugi9BtGCVnz0XfPG7BjlU3xujyw84T
	94sEg0sUXMAwA+ro+ydwohwEQ8JDl/8TNjIXI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=yFxgZYm3f+EA15ti3/mW7UHfnNzlUfpWT7AyYNYkM50=;
	b=dblfP9KQdMsO8rwdu4wLR+b0lKmfXkVcGXRUplturG2bdyrfpbG1rn8Vjkc6nITwyk
	KSNrpyTyZfqY2ZoIRY3saNjaogPEAgXOkWXf1oKXP9rJuQAbwWneSobt5pVszu/lgg8B
	BKPFoux3r9XaE8r5dTc1cTjoHOYy7z5kUcjJSAeseHFVaiXIPpIYl9FdmGn+EcLy4V6L
	f1sRGQIucwKBckacGSfov/eizcFS6wCMjMrRIdlxXNIQzBB5Tnkc+2+lvwImyHC3Ps3d
	YMThpsrg/ZlZcRYKIMifolUy/Mr9Oum/bo994p4fl5eYNLW7wnIuLIojShlKgp/moSFM
	uMyw==
X-Gm-Message-State: AD7BkJLImFrpxEZ6AHgQoHVcuR+PBqRMv+Udqkb6VecFDHMQ+4oYIS7qVgkvoRRVct0qlvf+P0bXojy4XPmgJ99h
MIME-Version: 1.0
X-Received: by 10.25.80.1 with SMTP id e1mr6487376lfb.165.1457981468825; Mon,
	14 Mar 2016 11:51:08 -0700 (PDT)
Received: by 10.25.24.163 with HTTP; Mon, 14 Mar 2016 11:51:08 -0700 (PDT)
In-Reply-To: <CAM7GXo=CpocNA8BJfP8_-qf+GPUf=V4KxWiNE_WTvBikHiko1A@mail.gmail.com>
References: <CAM7GXo=mfAE5p4tiiYk6wrpSXU6XQTdY7edQJ+kgew-ch9OLZQ@mail.gmail.com>
	<2731700.yuibnYHsdA@peggleto-mobl.ger.corp.intel.com>
	<22778070.Zm7ATvHsG7@peggleto-mobl.ger.corp.intel.com>
	<CAM7GXo=CpocNA8BJfP8_-qf+GPUf=V4KxWiNE_WTvBikHiko1A@mail.gmail.com>
Date: Mon, 14 Mar 2016 11:51:08 -0700
Message-ID: <CAM7GXo=vW1b8Kr2g1kOR_exWDi29dZMRD7RZCsKom7wNOVkHfQ@mail.gmail.com>
From: Steve Rae <steve.rae@broadcom.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: kernel: "devtool modify -x" issue
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
X-List-Received-Date: Mon, 14 Mar 2016 18:51:33 -0000
Content-Type: text/plain; charset=UTF-8

Paul -- please ETA for getting this into the "jethro" branch.
Thanks, Steve

On Fri, Mar 11, 2016 at 10:11 AM, Steve Rae <steve.rae@broadcom.com> wrote:
> OK - this seems to build successfully - Thanks!
>
>>> although I still do see the line:
>      Cloning into '/tmp/devtool6ZA4IK/workdir/source'...
>
> On Thu, Mar 10, 2016 at 7:07 PM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
>> On Fri, 11 Mar 2016 07:55:25 Paul Eggleton wrote:
>>> On Wed, 09 Mar 2016 10:12:30 Steve Rae wrote:
>>> > ( using jethro )
>>> >
>>> > I have a 'linux-yocto-custom' layer which builds successfully; then I run:
>>> >     devtool modify -x linux-yocto-custom ../../poky-dev/kernel
>>> > >>
>>> > >> I see a line:
>>> >   Cloning into '/tmp/devtoolfgiLXr/workdir/source'...
>>> >
>>> > Then I run:
>>> >     devtool build linux-yocto-custom
>>> > >>
>>> > >> it reports the following:
>>> > Log data follows:
>>> > | DEBUG: Executing shell function do_kernel_configme
>>> > | NOTE: kernel configme
>>> > | [INFO] Configuring target/machine combo: "standard/bcmjava"
>>> > | [ERROR] frag
>>> >
>>> > /tmp/devtoolfgiLXr/workdir/source/.meta/cfg/scratch/obj/tmp/devtoolfgiLXr/
>>> > wo rkdir/defconfig does not exist
>>> >
>>> > | [ERROR] No configuration fragments found, this typically is a
>>> >
>>> > misconfigured BSP.
>>> >
>>> > |         Check that fragments (or defconfigs) are referenced by the board
>>> >
>>> > description.
>>> >
>>> > | config of "standard/bcmjava" failed
>>> > | WARNING: exit code 1 from a shell command.
>>> >
>>> > which is true, because "devtool modify -x" deletes the temp directory
>>> > ("/tmp/devtoolfgiLXr") that it used to create this specified workspace....
>>>
>>> Hmm, it looks like the temporary path is leaking in somewhere. Is there an
>>> easy way I can reproduce this here so I can debug it?
>>
>> Actually I just realised, this task ought not to be running at all - in master
>> we've disabled it under these circumsances. There's also one other fix on
>> master that you'd benefit from in jethro - I've put them both on this
>> contrib branch:
>>
>>   http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/log/?h=paule/jethro-fixes4
>>
>> If you could let me know how it works for you that would be great; I'll send
>> it out soon.
>>
>> Cheers,
>> Paul
>>
>> --
>>
>> Paul Eggleton
>> Intel Open Source Technology Centre

