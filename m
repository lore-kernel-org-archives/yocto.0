Return-Path: <ionelbadisor@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7A6AE00D98; Thu,  2 Jun 2016 23:08:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ionelbadisor[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B075CE008FF
	for <yocto@yoctoproject.org>; Thu,  2 Jun 2016 23:08:45 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id a136so21061785wme.0
	for <yocto@yoctoproject.org>; Thu, 02 Jun 2016 23:08:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:subject:to:references:cc:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=BGvwtH9wKevCWytrrNFN6r/eWiwSHmbSZm61mdRf13o=;
	b=s/ZYjDUZPIZmUCUmEBnxumcHUKNacgt9nwrESDBP2AUWj5P6CEp6AxLtftxvX8LVw5
	BQ8TzQBhU4ZYWpue6de854QvKGiA+xQayH609ecX+UiOlVrWX7gp9tBtwI/DNz/07K+R
	69BF1gxpLR3bJTjbEFDousKPLa9vnGmEyIVnHm3wlDhr+ASZvDDaPuFbswb33OBLnVCc
	0w9coJBJ6CaHNR1SiC/RO9BwoAI+aR3hNZXzcyg+akguQ6hb73grm0ReYdX1mbAlVPOa
	QfzFWf4jo5JwOkVr2tiRxP0rpSJwQ9xvOxb4VCyWlCMOcjfB7eDNqUznrGhcqBLAOHPW
	OKNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:subject:to:references:cc:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=BGvwtH9wKevCWytrrNFN6r/eWiwSHmbSZm61mdRf13o=;
	b=mS7vCM6z9k91cVecBJkFOxyCbjGdhYlwG36OckzszwIOvzVgP7vCz++Jeb48l0Z1t+
	jpSm1DSiS4QRW7jB2TAw7SM0p0CCiV5V0m5+ke04f55EF8c+XGlyTc0VmW3Rh4/fo8qb
	ZWBg6gt1E50O/iMkca8cBE745Q4rsEcSPFnyb7i0KcG5GvA8U0+6qMw698yqugfCGcOm
	o25PXgBUeLAJYLBzdPOel6nD1ihxrBCwqzrbL4W/IMzhgKw/eKhRo7Bxp16TrOtPE1g8
	CMU1MnAJwMZbekRn0NZze0TkptETE2I3xB68q89+aaHnlkwmDfkwlHe1SQ24+TRsUU9o
	7kCQ==
X-Gm-Message-State: ALyK8tK2FSov832+x4yvZ6uc9EY1rGXiD1bWSbAp0yCvlFym+bSDP81jqYwsfFJoaCrLew==
X-Received: by 10.194.94.165 with SMTP id dd5mr1602612wjb.31.1464934124056;
	Thu, 02 Jun 2016 23:08:44 -0700 (PDT)
Received: from [172.168.0.70] ([217.10.196.2])
	by smtp.googlemail.com with ESMTPSA id
	y76sm4666868wmd.3.2016.06.02.23.08.42
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 02 Jun 2016 23:08:43 -0700 (PDT)
From: Ionel Badisor <ionelbadisor@gmail.com>
X-Google-Original-From: Ionel Badisor <ionel.badisor@gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
References: <1464537553-24915-1-git-send-email-paul@paulbarker.me.uk>
	<1464537553-24915-2-git-send-email-paul@paulbarker.me.uk>
	<CAMKF1sqhn+RckCxE0Kf68MFdNQMVP5d8K_8Rg3WkSaACsEbv_g@mail.gmail.com>
	<20160530091128.31b01008@nuc.betafive.co.uk>
	<CAMKF1srR=kqT5h4n+o7GSXtEO2yntURB+Ak70RxMJgd0+swucw@mail.gmail.com>
	<20160530231646.7557d3b4@nuc.betafive.co.uk>
	<CAMKF1sry_vLP59S+FJyHtUpEYBxdnQ-QUMJcSjdPu4TQ7y5D7Q@mail.gmail.com>
	<20160601185500.30c54bd7@nuc.betafive.co.uk>
	<9933cb0e-fccc-1b87-134d-06a9ca273b12@gmail.com>
	<20160602222519.48afd77f@nuc.betafive.co.uk>
Message-ID: <259f2b97-1f00-7d6e-785e-1e6887f933c1@gmail.com>
Date: Fri, 3 Jun 2016 09:07:37 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.1.0
MIME-Version: 1.0
In-Reply-To: <20160602222519.48afd77f@nuc.betafive.co.uk>
X-Mailman-Approved-At: Mon, 06 Jun 2016 07:18:26 -0700
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/6] linux-raspberrypi: Allow override of PV
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
X-List-Received-Date: Fri, 03 Jun 2016 06:08:46 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 06/03/2016 12:25 AM, Paul Barker wrote:
> On Thu, 2 Jun 2016 10:59:37 +0300
> Ionel Badisor <ionelbadisor@gmail.com> wrote:
>
>> On 06/01/2016 08:55 PM, Paul Barker wrote:
>>> On Tue, 31 May 2016 10:39:03 +0300
>>> Khem Raj <raj.khem@gmail.com> wrote:
>>>
>>>> On May 30, 2016 3:15 PM, "Paul Barker" <paul@paulbarker.me.uk>
>>>> wrote:
>>>>>
>>>>>
>>>>> I'm trying to build from a source archive instead of a git
>>>>> repository (to avoid a ~1.3GB git clone operation) so the use of
>>>>> ${SRCPV} is causing me trouble.
>>>>>
>>>>
>>>> Can you override the whole PV
>>>
>>> I've given this another look and I can get the recipe to parse if I
>>> require linux-raspberrypi.inc before setting PV instead of
>>> afterwards. However do_kernel_configme then gets confused looking
>>> for a "standard/raspberrypi" configuration. It only works if I
>>> modify linux-raspberrypi.inc as per my patch and set PV before
>>> requiring that include file.
>>>
>>> I'm starting to think that I might be doing something wrong here -
>>> is there a supported way to build a kernel from an archive instead
>>> of a git repository within OE?
>>>
>>> Thanks,
>>> Paul Barker
>>>
>> Are you trying to avoid repeated cloning operation to save bandwith
>> and time or you are trying to save disk space?
>
> I'm trying to reduce "time to first build" on a new build machine as
> well as the amount of space/bandwidth needed to mirror downloaded
> files.
>
> Instead of setting PV in each recipe I could just duplicate
> linux-raspberrypi.inc into my own layer with the change I need. That's
> probably the simplest approach for now, I'll just have to keep my eye
> on meta-raspberrypi going forward for any changes to
> linux-raspberrypi.inc which I'd need to incorporate.
>
Maybe you can use the `DL_DIR ?= "/path/to/downloads/"` in your 
conf/local.conf file for multiple build directories and if you want you 
can copy downloads directory to new machine and point to it the new 
local.conf  then all do_fetch operations are already performed, except 
new changes in which case the git fetch operation is performed when git 
is used and takes less time then when fetching entire archive.

note: multiple builds on same machine can use same downloads directory.

