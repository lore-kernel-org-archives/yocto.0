Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3BD7EE00DF4; Fri, 21 Oct 2016 03:08:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.215.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f48.google.com (mail-lf0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0CE9E00DEA
	for <yocto@yoctoproject.org>; Fri, 21 Oct 2016 03:08:33 -0700 (PDT)
Received: by mail-lf0-f48.google.com with SMTP id b75so134903100lfg.3
	for <yocto@yoctoproject.org>; Fri, 21 Oct 2016 03:08:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding;
	bh=f5SW0nzewae21APrjOVoJG/W1E2fVUKCDQe6qM3TxcY=;
	b=QlGPhXeR6xAae+0DxMj5MzsjIxfS7vgzzsNSnDZzukoAftefObIRBK52M8n+T1ig//
	ZTwT4jaIDWFFCIGAt8kByV3ePcXcUoyEE5lGlYt5AqYC8aEp7P0r94zAiJHjl5YrgyVE
	wjPdZf56I3zUdWHcSzoVfcGY9EqS5voBkpWzcSLFE5VrSvkYIjQ9iHeTmjtL7es5ZzAD
	AOdVL8EDGNR4VaiXPj0aDE7VZEoNHlxcdu6li4L272IDn4UISH+yRL8qVgpcGfKTHTbT
	HLifGzQgM80GJQKk2QhoaNf10k6I95bY6zLH74gNWk+vt+Mu9WsJ4S6ZJwN1dD9XGbYY
	nK9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding;
	bh=f5SW0nzewae21APrjOVoJG/W1E2fVUKCDQe6qM3TxcY=;
	b=mIOqBiUMOqqgC7kJn2hCpvcCY1UjlqKVOjglk5C6U1vNugmaphszTu3VFPbS+mLKlF
	axAcQP/TywjYCp8E8VWESJvUY9bifSmUPQMd7a066gGp3wbOFatRaBuq4k+zl5wO6wYv
	vG1lQxZRQF+7nVOdsz6+H57cKCQ/gAXpsUFrNrpybiELajGm3cDhvnwlkVb167BOYTNY
	mibjQykOcfKB60rsOrTNvRuB9uGy0TThT/bxFMbI78L/R8me+WGYjkgedblxNxY4z9Ua
	VXbS1BfZ5Aztwg79/UeMBX1A16t3HU/bVRKxMjKo2zYCdcdCXJ9Q6KSLN1KMwydowF9h
	g0+g==
X-Gm-Message-State: AA6/9RnSTIwvACmenzs9y34jui+LxgAbS7HXL7dqKppPUPVO7oAYEhzSDGv/aC6v1cCgGw==
X-Received: by 10.28.140.136 with SMTP id o130mr6447258wmd.4.1477044511441;
	Fri, 21 Oct 2016 03:08:31 -0700 (PDT)
Received: from [192.168.2.176] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114])
	by smtp.gmail.com with ESMTPSA id a7sm2046690wjj.22.2016.10.21.03.08.30
	for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 21 Oct 2016 03:08:31 -0700 (PDT)
To: yocto@yoctoproject.org
From: Piotr Lewicki <piotr.lewicki@elfin.de>
Message-ID: <1246ee4f-398f-63d5-fc48-f7911c4cbd92@elfin.de>
Date: Fri, 21 Oct 2016 12:08:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.3.0
MIME-Version: 1.0
Subject: [meta-raspberrypi][question] how to setup alsa on rpi3?
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
X-List-Received-Date: Fri, 21 Oct 2016 10:08:38 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I want to use aplay to play a sound on raspberry pi 3, but for some 
reason it does not work for me.

I have built a new "rpi-test-image" with only one difference from 
original- I added "alsa-utils" to the image.

My steps:

1. I ssh'd to the board with the built image,

2. downloaded wav sample ("wget 
http://freewavesamples.com/files/Korg-Triton-Harmonica-C5.wav"),

3. enabled the sound kernel module ("modprobe snd-bcm2835"),

4. tried to play it with "aplay" tool.


It did not work and I got an error:

root@raspberrypi3:~# aplay ./Korg-Triton-Harmonica-C5.wav
ALSA lib ../../alsa-lib-1.1.2/src/confmisc.c:767:(parse_card) cannot 
find card '0'
ALSA lib ../../alsa-lib-1.1.2/src/conf.c:4371:(_snd_config_evaluate) 
function snd_func_card_driver returned error: No such file or directory
ALSA lib ../../alsa-lib-1.1.2/src/confmisc.c:392:(snd_func_concat) error 
evaluating strings
ALSA lib ../../alsa-lib-1.1.2/src/conf.c:4371:(_snd_config_evaluate) 
function snd_func_concat returned error: No such file or directory
ALSA lib ../../alsa-lib-1.1.2/src/confmisc.c:1246:(snd_func_refer) error 
evaluating name
ALSA lib ../../alsa-lib-1.1.2/src/conf.c:4371:(_snd_config_evaluate) 
function snd_func_refer returned error: No such file or directory
ALSA lib ../../alsa-lib-1.1.2/src/conf.c:4850:(snd_config_expand) 
Evaluate error: No such file or directory
ALSA lib 
../../../alsa-lib-1.1.2/src/pcm/pcm.c:2450:(snd_pcm_open_noupdate) 
Unknown PCM default
aplay: main:786: audio open error: No such file or directory


Playing the same wav file with omxplayer ("omxplayer -o local 
./Korg-Triton-Harmonica-C5.wav") works fine.


Do you know how can I set up alsa to make it work on rpi3 board?

Does anybody have it working?

I don't know whether I should start with the alsa configuration or some 
missing packages, or the problem lays in the sound driver.

Any help appreciated,


Thanks,

Piotr Lewicki


