Return-Path: <ionelbadisor@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D09DE0071C; Wed,  2 Nov 2016 04:04:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ionelbadisor[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71B9DE006E9
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 04:03:59 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id c17so2430027wmc.3
	for <yocto@yoctoproject.org>; Wed, 02 Nov 2016 04:03:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:subject:to:references:cc:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=LEtNEHDCvtgoeBzKSdiqWyfRGwaV0k1UfB37PEr14ak=;
	b=P+ilaozlZELkgIhdDRFVQD3Ucq+M9jbBVNHHZJyb8PuOGtNiAgvLiJeaMPTkw5H/LY
	5wTI8Uq3xPrAOGvVon2t0APJqNo5yspMjymXCiCDrts4ctGQ49hl+MEeW3k7AuCaXQqZ
	Y9akqOtq1lYn1gcj7lsFWn/fNymyRzPOGE9iXw3sJhkexfBFb5h/cYCpDdeYyMgON4vv
	wNKKgEwGVIetkH+6jbMCLBg0hIrfrxrZlbMs3pziiQJDDX8IR7ft3SNa5O5dTdVD2dcO
	Xvv9JGEpM0OcyK7qW/7o8BwDDL9gotYhY9rw2EB3tDcjUGT0DFbUjHy08vAgaUXEX3fx
	r/+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:subject:to:references:cc:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=LEtNEHDCvtgoeBzKSdiqWyfRGwaV0k1UfB37PEr14ak=;
	b=LQfE+uWHtZuzZn2YC4f88kKp2JHIaZeMYjIEpadoHOM6a+AkOpvisXrVO5WE3dPPqK
	Hv6H/at36WrcW8c5wlaW0SvjqFL0Jrd82ADWphqGUQBBqcf5H0ptj/wRrCjRuic+UixS
	cLn9YFx0rKfE6tPKDlrYCoFbWw2aAnG6FNkL29MYPlPDZdwiGm4JV0lXTRjEujsGuR6h
	6wu74qESZLO/1+gAneZiCTJOluM/CBxqg5FD8rqQraGua6Yd9K1QaPfQ9kyU/Sw/Al/I
	M2183iZv3Rur/YTwKyGq3eygWzTNJC85XwcHZBYj3DpvKCnzfiEJVdmbOZa7ZFYYpmBh
	BYkg==
X-Gm-Message-State: ABUngvfscpAgSzKEmZVFRf7xri4RVmVUQFjdYSBGAvu32RN9qL1C54LWtjjRBbG8c/+tJQ==
X-Received: by 10.194.116.104 with SMTP id jv8mr2375804wjb.12.1478084637998;
	Wed, 02 Nov 2016 04:03:57 -0700 (PDT)
Received: from [172.168.1.70] ([217.10.196.2])
	by smtp.googlemail.com with ESMTPSA id
	e2sm2069478wjw.14.2016.11.02.04.03.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 02 Nov 2016 04:03:57 -0700 (PDT)
From: Ionel Badisor <ionelbadisor@gmail.com>
X-Google-Original-From: Ionel Badisor <ionel.badisor@gmail.com>
To: Karim ATIKI <karim_atiki@hotmail.com>, Paul Barker <paul@paulbarker.me.uk>
References: <DB5PR01MB188022E6CBBDB28E6758242592D70@DB5PR01MB1880.eurprd01.prod.exchangelabs.com>
	<HE1PR01MB1883059387B8E06758D4889092D70@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<20161022162610.28a9d1ed@nuc.betafive.co.uk>
	<HE1PR01MB1883F449B33898FC6A3C826D92D70@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
Message-ID: <c9233842-ae6d-1dd2-a90d-f0d60b4fdb24@gmail.com>
Date: Wed, 2 Nov 2016 13:03:31 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
In-Reply-To: <HE1PR01MB1883F449B33898FC6A3C826D92D70@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [raspberrypi3][meta-qt5] Failed to build meta-toolchain-qt5
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
X-List-Received-Date: Wed, 02 Nov 2016 11:04:00 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 10/22/2016 07:21 PM, Karim ATIKI wrote:
> Hi Paul,
>
>
> the compile log file is attached with this mail.
>
>
>
>
> ------------------------------------------------------------------------
> *De :* Paul Barker <paul@paulbarker.me.uk>
> *Envoyé :* samedi 22 octobre 2016 17:26
> *À :* Karim ATIKI
> *Cc :* yocto
> *Objet :* Re: [yocto] [raspberrypi3][meta-qt5] Failed to build
> meta-toolchain-qt5
>
> On Sat, 22 Oct 2016 15:16:18 +0000
> Karim ATIKI <karim_atiki@hotmail.com> wrote:
>
>> Actually, it looks like the issue comes from gstreamer1.0-plugins-bad
>> recipe.
>>
>>
>> This function, graphics_get_display_size, comes from libbcm_host
>> which seems to be present in sysroot.
>>
>>
>> In log.doconfigure i found:
>>
>>
>> checking for bcm_host_init in -lbcm_host... yes
>> checking bcm_host.h usability... yes
>> checking bcm_host.h presence... yes
>> checking for bcm_host.h... yes
>>
>> So it seems that it found the necessary library.
>>
>>
>> However, in the logfile of the compile error, there is no
>> "-lbcm_host" dependency at all.
>>
>>
>> Any idea to solve it ?
>>
>
> Could you post more of the compile log? It would be good to see the
> full set of arguments being used for compiling/linking.
>
> Thanks,
> Paul
>
>

I stumble upon this issue before. My solution was to add
LDFLAGS += " -lbcm_host"
In a bbappend to gstreamer1.0-plugins-bad_%.bbappend in my layer





