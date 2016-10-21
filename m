Return-Path: <tanuk@iki.fi>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B44BE00DFE; Fri, 21 Oct 2016 04:36:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [66.111.4.25 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 559 seconds by postgrey-1.32 at yocto-www;
	Fri, 21 Oct 2016 04:36:19 PDT
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B37BE00DF7
	for <yocto@yoctoproject.org>; Fri, 21 Oct 2016 04:36:19 -0700 (PDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 2F290207ED
	for <yocto@yoctoproject.org>; Fri, 21 Oct 2016 07:27:00 -0400 (EDT)
Received: from frontend1 ([10.202.2.160])
	by compute1.internal (MEProxy); Fri, 21 Oct 2016 07:27:00 -0400
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; d=
	messagingengine.com; h=content-transfer-encoding:content-type
	:date:from:in-reply-to:message-id:mime-version:references
	:subject:to:x-sasl-enc:x-sasl-enc; s=smtpout; bh=MCp3npM2YBUobVk
	0Nzi9d35I5hQ=; b=Ki3IvdsH4yvZA7/1Jb8paXxK+zVaNLEsz4n0pWEOelQi+5o
	YdOy3idAzySg9ypo/wjhvH7+/ppx7C0w9p3lJt81HQZIjXFAwrC+Q0vnZN44Mn6h
	schV/kTks6q8IG6kSAwGIQ7Zqus2+c4x6V0piNwBBk02pKBSSfz+LALNTN80=
X-Sasl-enc: b/d0579kQKCBZF6H8HlzxIU0WRI+FphjTaYJpjCdoKc7 1477049219
Received: from laptop (a88-113-211-72.elisa-laajakaista.fi [88.113.211.72])
	by mail.messagingengine.com (Postfix) with ESMTPA id AFB26F2D31
	for <yocto@yoctoproject.org>; Fri, 21 Oct 2016 07:26:59 -0400 (EDT)
Message-ID: <1477049218.1960.1.camel@iki.fi>
From: Tanu Kaskinen <tanuk@iki.fi>
To: yocto@yoctoproject.org
Date: Fri, 21 Oct 2016 14:26:58 +0300
In-Reply-To: <1246ee4f-398f-63d5-fc48-f7911c4cbd92@elfin.de>
References: <1246ee4f-398f-63d5-fc48-f7911c4cbd92@elfin.de>
X-Mailer: Evolution 3.22.0-2 
Mime-Version: 1.0
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
X-List-Received-Date: Fri, 21 Oct 2016 11:36:21 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2016-10-21 at 12:08 +0200, Piotr Lewicki wrote:
> Hi,
> 
> I want to use aplay to play a sound on raspberry pi 3, but for some 
> reason it does not work for me.
> 
> I have built a new "rpi-test-image" with only one difference from 
> original- I added "alsa-utils" to the image.
> 
> My steps:
> 
> 1. I ssh'd to the board with the built image,
> 
> 2. downloaded wav sample ("wget 
> http://freewavesamples.com/files/Korg-Triton-Harmonica-C5.wav"),
> 
> 3. enabled the sound kernel module ("modprobe snd-bcm2835"),
> 
> 4. tried to play it with "aplay" tool.
> 
> 
> It did not work and I got an error:
> 
> root@raspberrypi3:~# aplay ./Korg-Triton-Harmonica-C5.wav
> ALSA lib ../../alsa-lib-1.1.2/src/confmisc.c:767:(parse_card) cannot 
> find card '0'
> ALSA lib ../../alsa-lib-1.1.2/src/conf.c:4371:(_snd_config_evaluate) 
> function snd_func_card_driver returned error: No such file or directory
> ALSA lib ../../alsa-lib-1.1.2/src/confmisc.c:392:(snd_func_concat) error 
> evaluating strings
> ALSA lib ../../alsa-lib-1.1.2/src/conf.c:4371:(_snd_config_evaluate) 
> function snd_func_concat returned error: No such file or directory
> ALSA lib ../../alsa-lib-1.1.2/src/confmisc.c:1246:(snd_func_refer) error 
> evaluating name
> ALSA lib ../../alsa-lib-1.1.2/src/conf.c:4371:(_snd_config_evaluate) 
> function snd_func_refer returned error: No such file or directory
> ALSA lib ../../alsa-lib-1.1.2/src/conf.c:4850:(snd_config_expand) 
> Evaluate error: No such file or directory
> ALSA lib 
> ../../../alsa-lib-1.1.2/src/pcm/pcm.c:2450:(snd_pcm_open_noupdate) 
> Unknown PCM default
> aplay: main:786: audio open error: No such file or directory

It looks like the default alsa device is configured to use card 0, but
card 0 doesn't exist. What do "cat /proc/asound/cards" and "ls -l
/dev/snd" print?

-- 
Tanu

