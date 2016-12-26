Return-Path: <mhalstead@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F669E0080A; Mon, 26 Dec 2016 10:10:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.83.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f50.google.com (mail-pg0-f50.google.com [74.125.83.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD99AE0052B
	for <yocto@yoctoproject.org>; Mon, 26 Dec 2016 10:10:37 -0800 (PST)
Received: by mail-pg0-f50.google.com with SMTP id y62so84659886pgy.1
	for <yocto@yoctoproject.org>; Mon, 26 Dec 2016 10:10:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=subject:to:references:cc:from:organization:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=ou8IC4O0jZog/AT2i2XAUe+Zied0puDFNtzS4uH/pU8=;
	b=DiguNXD1Xb6HJnb0Wiq81B+lVXKMFqawPb3nPeiopSOFJ94rtlcvmbuWYc1IL4zAy0
	9HIlxpVzCSTjmsA8JSMoAu5lAWa+ShinK9aDHJnpDpVcM/7KZkqCuCtrEyM8QHKSNNTX
	Vw71aAYwnRtiSmwJuX1PXm5D8t75pzbKBJ81E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:organization
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding;
	bh=ou8IC4O0jZog/AT2i2XAUe+Zied0puDFNtzS4uH/pU8=;
	b=gPQt9qRYLN/tladg0SIji9vBEMpukbqLuLnrdqwdeO61ooOG1LRNN9Vdh1MdYhdqQm
	lh3o9c+x9pxaiiPzCjQoScR9J0KvdyDJQmgG0tJGVRvtexQ4MPoF2lQUOxrPx2xNkuwP
	2VsUvnGiXo+HIjz4vq0SwY3eGWU7SXQWG0ekFbieEbOnMi9VZPzcLum4EUoamVDVVvGY
	PsAs2g1cjlnAN9Z447J9QKtK94Ab3IORNFW9TuoSYH3+v7NyOGoiSibxIsaWH3V1z2t1
	k5IpYEFM3nb68ztVoAE+R7jmkOdEFsoxfvfvxp7iRD18SJ4YGCJw2xynSvjsq+zfpS3j
	x4+g==
X-Gm-Message-State: AIkVDXIPCI4KPJi4fw6O5bkZWGCqrweLyV4tLad4/G6PGPUNX80W+KjS95Qz8nus5xYsxGnx
X-Received: by 10.99.121.69 with SMTP id u66mr50617238pgc.96.1482775836991;
	Mon, 26 Dec 2016 10:10:36 -0800 (PST)
Received: from yct-lpt.lan (50-39-165-77.bvtn.or.frontiernet.net.
	[50.39.165.77]) by smtp.gmail.com with ESMTPSA id
	p1sm84451553pgc.29.2016.12.26.10.10.35
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 26 Dec 2016 10:10:35 -0800 (PST)
To: Martin Jansa <martin.jansa@gmail.com>
References: <CAHQecY48gVbt4S+88MHivSbv-Xdn29WRq5RPL6+QDVGYUPCwYw@mail.gmail.com>
	<E628426E-84F8-4EA4-A296-D32C3339DF1C@gmail.com>
	<CAHQecY4oXXwGeLsdXrgjFmouTiwvsJXa6K1Qbp--9WZ0=3O5CQ@mail.gmail.com>
	<74b16359-8b63-4f34-b9b7-618bd8aa4cb6@linuxfoundation.org>
	<20161226074300.GB3242@jama>
From: Michael Halstead <mhalstead@linuxfoundation.org>
Organization: Linux Foundation
Message-ID: <102a1d1d-008e-b38f-0745-fb741edb2cdf@linuxfoundation.org>
Date: Mon, 26 Dec 2016 10:10:34 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <20161226074300.GB3242@jama>
Cc: yocto@yoctoproject.org, bitbake-devel@lists.openembedded.org,
	openembedded-devel@lists.openembedded.org,
	yocto-infrastructure@yoctoproject.org
Subject: Re: [bitbake-devel] [oe] Infra Full Stop 12/26-12/29
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
X-List-Received-Date: Mon, 26 Dec 2016 18:10:38 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 12/25/2016 11:43 PM, Martin Jansa wrote:
> On Sun, Dec 25, 2016 at 08:06:50PM -0800, Michael Halstead wrote:
>> In preparation for the scheduled maintenance I have moved
>> git.openembedded.org to a new server temporarily. E-mail and Patchwork
>> hooks may not work correctly. All other git operations as well as
>> listings at http://git.openembedded.org/ should continue working.
>>
>> If you have a git remote pointed directly at openembedded.org it will
>> fail. Please update your remote to point at git.openembedded.org and try
>> again.
> It doesn't seem to be working here:
>
> error: Could not fetch origin
> fatal: unable to connect to git.openembedded.org:
> git.openembedded.org[0: 104.236.212.160]: errno=Connection refused
> git.openembedded.org[1: 2604:a880:800:10::2127:2001]: errno=Network is unreachable
>
> But that's OK for me, I was prepared to do some holiday celebrations
> thanks to planned downtime :). And I have some local mirrors in case
> I got tired of celebrations before the downtime is over.
This is fixed now. I fulled tested push access but not normal anonymous
clones. Sorry about that.
>
>> Other services that will stay up during the maintenance are:
>>
>> Layerindex https://layers.openembedded.org/
>> Mailman http://lists.openembedded.org/
>> Patchwork https://patchwork.openembedded.org/
>>
>> I'd like the share my appreciation for the OpenEmbedded volunteer
>> sysadmins who are taking time away from their holiday celebrations to
>> make this downtime as convenient for the rest of us as possible.
>>
>>
>> On 12/22/2016 09:19 AM, Tom King wrote:
>>> Schedule is  06:00UTC 27DEC16 for the full stop.  Things will start coming
>>> back (estimated) about 48hrs later.
>>>
>>> Tom
>>>
>>> On Tue, Dec 20, 2016 at 11:16 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>>
>>>>> On Dec 20, 2016, at 10:50 AM, Tom King <ka6sox@gmail.com> wrote:
>>>>>
>>>>> Hi All,
>>>>>
>>>>> We have been looking for a time when we could do a full stop of the infra
>>>>> to upgrade some bits and clear out some faults.
>>>>>
>>>>> This will involve shutting down the main machine that we use for *most*
>>>> of
>>>>> the OE infra.
>>>>>
>>>>> Our goal is to put up a backup git master but other services such as:
>>>> wiki,
>>>>> patches, etc will be offline for some or all of that period.
>>>>>
>>>>> We have delayed doing this much needed maintenance to try to work around
>>>>> Yocto and OE release schedules and it is necessary that we take this time
>>>>> to do the work.
>>>>>
>>>> I guess, you need to come up with a tentative down-time schedule.
>>>>
>>>>> Tom
>>>>> (for the OE Infra Team)
>>>>> --
>>>>> _______________________________________________
>>>>> Openembedded-devel mailing list
>>>>> Openembedded-devel@lists.openembedded.org
>>>>> http://lists.openembedded.org/mailman/listinfo/openembedded-devel
>>>> --
>>>> _______________________________________________
>>>> Openembedded-devel mailing list
>>>> Openembedded-devel@lists.openembedded.org
>>>> http://lists.openembedded.org/mailman/listinfo/openembedded-devel
>>>>
>> -- 
>> Michael Halstead
>> Linux Foundation / SysAdmin
>>
>>
>
>
>
>> -- 
>> _______________________________________________
>> bitbake-devel mailing list
>> bitbake-devel@lists.openembedded.org
>> http://lists.openembedded.org/mailman/listinfo/bitbake-devel
>

-- 
Michael Halstead
Linux Foundation / SysAdmin


