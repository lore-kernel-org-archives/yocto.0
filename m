Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A9959E00DFE; Fri, 21 Oct 2016 04:45:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.170 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f170.google.com (mail-qt0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C629E00DF7
	for <yocto@yoctoproject.org>; Fri, 21 Oct 2016 04:45:24 -0700 (PDT)
Received: by mail-qt0-f170.google.com with SMTP id f6so84523273qtd.2
	for <yocto@yoctoproject.org>; Fri, 21 Oct 2016 04:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-transfer-encoding;
	bh=oI2e4abJTX+LGgo5troqEwY3VCTENFr6qjlQyR8bRhM=;
	b=P2b++yKNJ9QExPq9YQgFMPnCKRSAvNY3NiHFW54NYbdUfs5KY7yitbq1LpHJw4/dYw
	57SN2ZJY+1NBVmAMH0pZr7AReHsXd8XWg6NTXJeopWwuOX1BWd+KxvUjA8DvpDuho0ZO
	dm67IG+emaugsYiMBCL9BG3l5UMm08wmdWNLltuLv4ssUS0s92/qZkna6uQ8g5onxVVn
	tGVNe2R2b+uGimxKuh9cVVSFZlCxgGfp/tTxDn6I8KGgV7Lqg5nqNIw6u//O8mzg3ntf
	1ljs+dtcbzPkSV6xOjHH6Lyr9SM/3N2MKBtTDl8yEKjI7/5SwAGQOhh9Y2zbvoCpddFm
	bUxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=oI2e4abJTX+LGgo5troqEwY3VCTENFr6qjlQyR8bRhM=;
	b=X4Tk0INgQGrnBZ89WqOe6+Odm9HCDI9DAYzCfEtp34rt8F7aan5Z8qRJwyMhXNAc31
	vTWBGMy8RqBf/Ji4ZXVy0OFi6NyxNn6zHUqbds6dWRyM1HDTjSTr687E1KSyi82FHhdv
	7akpbP3sOcG55tK2oVFxbUpy8NpyFu5+nH0u8GnKKSDxilc6PRWfSZwbFBndQu/Fa/KN
	cOnbdZeWkpU3zBdP4EW6YLV0N6caGMLrHPrrL4QPAijan5lmHWJV9TrRsOjaImUhjEeX
	cRlfImZg7UjqxKx1ELedislAALPTEOyXXnMBZRuQsuxnogLGCys5tnJKbVxLLCApFaPo
	BMuQ==
X-Gm-Message-State: AA6/9RnUwDXtm0kVJVFzvMY74W6kb2iMXZQfU+r4qfYmlb+rHpWCIgIXKx3ILZX+v2+uTg==
X-Received: by 10.28.228.5 with SMTP id b5mr2552373wmh.101.1477050323911;
	Fri, 21 Oct 2016 04:45:23 -0700 (PDT)
Received: from [192.168.2.176] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	kg7sm2452325wjb.34.2016.10.21.04.45.23
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 21 Oct 2016 04:45:23 -0700 (PDT)
To: Tanu Kaskinen <tanuk@iki.fi>, yocto@yoctoproject.org
References: <1246ee4f-398f-63d5-fc48-f7911c4cbd92@elfin.de>
	<1477049218.1960.1.camel@iki.fi>
From: Piotr Lewicki <piotr.lewicki@elfin.de>
Message-ID: <507bf35d-b637-e6f1-ca8e-dca0f1a65162@elfin.de>
Date: Fri, 21 Oct 2016 13:45:22 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <1477049218.1960.1.camel@iki.fi>
Subject: Re: [meta-raspberrypi][question] how to setup alsa on rpi3?
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
X-List-Received-Date: Fri, 21 Oct 2016 11:45:27 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 21.10.2016 13:26, Tanu Kaskinen wrote:
> On Fri, 2016-10-21 at 12:08 +0200, Piotr Lewicki wrote:
>> Hi,
>>
>> I want to use aplay to play a sound on raspberry pi 3, but for some
>> reason it does not work for me.
>>
>> I have built a new "rpi-test-image" with only one difference from
>> original- I added "alsa-utils" to the image.
>>
>> My steps:
>>
>> 1. I ssh'd to the board with the built image,
>>
>> 2. downloaded wav sample ("wget
>> http://freewavesamples.com/files/Korg-Triton-Harmonica-C5.wav"),
>>
>> 3. enabled the sound kernel module ("modprobe snd-bcm2835"),
>>
>> 4. tried to play it with "aplay" tool.
>>
>>
>> It did not work and I got an error:
>>
>> root@raspberrypi3:~# aplay ./Korg-Triton-Harmonica-C5.wav
>> ALSA lib ../../alsa-lib-1.1.2/src/confmisc.c:767:(parse_card) cannot
>> find card '0'
>> ALSA lib ../../alsa-lib-1.1.2/src/conf.c:4371:(_snd_config_evaluate)
>> function snd_func_card_driver returned error: No such file or directory
>> ALSA lib ../../alsa-lib-1.1.2/src/confmisc.c:392:(snd_func_concat) error
>> evaluating strings
>> ALSA lib ../../alsa-lib-1.1.2/src/conf.c:4371:(_snd_config_evaluate)
>> function snd_func_concat returned error: No such file or directory
>> ALSA lib ../../alsa-lib-1.1.2/src/confmisc.c:1246:(snd_func_refer) error
>> evaluating name
>> ALSA lib ../../alsa-lib-1.1.2/src/conf.c:4371:(_snd_config_evaluate)
>> function snd_func_refer returned error: No such file or directory
>> ALSA lib ../../alsa-lib-1.1.2/src/conf.c:4850:(snd_config_expand)
>> Evaluate error: No such file or directory
>> ALSA lib
>> ../../../alsa-lib-1.1.2/src/pcm/pcm.c:2450:(snd_pcm_open_noupdate)
>> Unknown PCM default
>> aplay: main:786: audio open error: No such file or directory
> It looks like the default alsa device is configured to use card 0, but
> card 0 doesn't exist. What do "cat /proc/asound/cards" and "ls -l
> /dev/snd" print?
root@raspberrypi3:~# cat /proc/asound/cards
--- no soundcards ---
root@raspberrypi3:~# ls -al /dev/snd/
drwxr-xr-x    2 root     root            60 Oct 21 09:53 .
drwxr-xr-x   11 root     root         13200 Oct 21 09:53 ..
crw-rw----    1 root     audio     116,  33 Oct 21 09:53 timer


I wonder what is used by omxplayer that it works, but alsa does not.
>
> -- 
> Tanu
--
Piotr

