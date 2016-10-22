Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 219C7E00712; Sat, 22 Oct 2016 09:33:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A4FFE00510
	for <yocto@yoctoproject.org>; Sat, 22 Oct 2016 09:32:59 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id r16so11673840pfg.3
	for <yocto@yoctoproject.org>; Sat, 22 Oct 2016 09:32:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=AZOtzq7PWkB3ztsN16/zpkcVc95I5KuDYYqbjcdZZw8=;
	b=0qYPrFIW3CDnnIFoOYCdquh7Ex1idjGt6qPvjBrPmKEZMrAk6FpGLteodjd70qKtwm
	ap11qjtcuM9kElMwdY/52Wh884e6rm6Hli5aXNbZu2nJ+No11oGujJcTw28FwwjxDTzS
	BFxLMaCl1dOaOZgoAUWrILGU8Be6FRU7KyPwNXr5mi5aPEj0rLqCpIPHYhcqqDt1r7Vc
	IEhwkJCCEaA/BWSgq/LDtTmlzcJJabNwH/AlKGPLcP3XJoDaIym1zlzdwrbFuDspwswH
	Cuvm7wvw4aKXQoOvkT0a9fFxn2P+uCAxWPjCszh5hf5aOQUZy/3VDbrE1w82xU1jJrpK
	TptA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=AZOtzq7PWkB3ztsN16/zpkcVc95I5KuDYYqbjcdZZw8=;
	b=NqyG/2CMkEbwEtYgWvhagtZnmNPF/3eJhA3vguGPHjHgpoV0xlRSt6CPVEaiK61E/v
	VR7/jsUZUMLdo7AydJSnx2nitrLGlliz62LazcCeNgzoXUp2njvXFUZRY+K+4XI9+Ays
	xJucwKwPhhIvEJks0xxAK+EgIgLFzrzuiqEtjFLWXSd/hO9I3FOCQ65nyBgN5V+FaVbj
	PS+8p7QgiONePh8ONwO1gDvz1xYpw1JAJ3kqbWK3pnmNb8AY9ltl+/RbwVSllX6EAIKN
	U/Mon2vvLEq5ZIF/jjjSyUPFvq3rEGIDEoLZw3AdqXg43/vwn0nple8UzcBK5KsrZ2SY
	B4yg==
X-Gm-Message-State: ABUngvd8fqZv3Ue+BkIkSfQ+uKxIpY0yiwxfAx0p15uqitJxbr1CqJGhsXFpftuU+cw47w==
X-Received: by 10.99.111.67 with SMTP id k64mr10532200pgc.14.1477153979013;
	Sat, 22 Oct 2016 09:32:59 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:69a1:6763:cf15:8ed8?
	([2601:646:8882:b8c:69a1:6763:cf15:8ed8])
	by smtp.gmail.com with ESMTPSA id
	m25sm13472622pfg.14.2016.10.22.09.32.58
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 22 Oct 2016 09:32:58 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1477049218.1960.1.camel@iki.fi>
Date: Sat, 22 Oct 2016 09:32:53 -0700
Message-Id: <C3A8AF4E-B5F7-4013-9CE5-C6147503E822@gmail.com>
References: <1246ee4f-398f-63d5-fc48-f7911c4cbd92@elfin.de>
	<1477049218.1960.1.camel@iki.fi>
To: Tanu Kaskinen <tanuk@iki.fi>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Sat, 22 Oct 2016 16:33:04 -0000
X-Groupsio-MsgNum: 32574
Content-Type: multipart/signed;
	boundary="Apple-Mail=_B4A8EA1D-195A-4EA8-8330-131332865F78";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_B4A8EA1D-195A-4EA8-8330-131332865F78
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii


> On Oct 21, 2016, at 4:26 AM, Tanu Kaskinen <tanuk@iki.fi> wrote:
>=20
> On Fri, 2016-10-21 at 12:08 +0200, Piotr Lewicki wrote:
>> Hi,
>>=20
>> I want to use aplay to play a sound on raspberry pi 3, but for some
>> reason it does not work for me.
>>=20
>> I have built a new "rpi-test-image" with only one difference from
>> original- I added "alsa-utils" to the image.
>>=20
>> My steps:
>>=20
>> 1. I ssh'd to the board with the built image,
>>=20
>> 2. downloaded wav sample ("wget
>> http://freewavesamples.com/files/Korg-Triton-Harmonica-C5.wav"),
>>=20
>> 3. enabled the sound kernel module ("modprobe snd-bcm2835"),
>>=20
>> 4. tried to play it with "aplay" tool.
>>=20
>>=20
>> It did not work and I got an error:
>>=20
>> root@raspberrypi3:~# aplay ./Korg-Triton-Harmonica-C5.wav
>> ALSA lib ../../alsa-lib-1.1.2/src/confmisc.c:767:(parse_card) cannot
>> find card '0'
>> ALSA lib ../../alsa-lib-1.1.2/src/conf.c:4371:(_snd_config_evaluate)
>> function snd_func_card_driver returned error: No such file or =
directory
>> ALSA lib ../../alsa-lib-1.1.2/src/confmisc.c:392:(snd_func_concat) =
error
>> evaluating strings
>> ALSA lib ../../alsa-lib-1.1.2/src/conf.c:4371:(_snd_config_evaluate)
>> function snd_func_concat returned error: No such file or directory
>> ALSA lib ../../alsa-lib-1.1.2/src/confmisc.c:1246:(snd_func_refer) =
error
>> evaluating name
>> ALSA lib ../../alsa-lib-1.1.2/src/conf.c:4371:(_snd_config_evaluate)
>> function snd_func_refer returned error: No such file or directory
>> ALSA lib ../../alsa-lib-1.1.2/src/conf.c:4850:(snd_config_expand)
>> Evaluate error: No such file or directory
>> ALSA lib
>> ../../../alsa-lib-1.1.2/src/pcm/pcm.c:2450:(snd_pcm_open_noupdate)
>> Unknown PCM default
>> aplay: main:786: audio open error: No such file or directory
>=20

Which kernel version are you using ?
with 4.4+ you will have to enable alsa in boot config since it is =
disabled by
default which was not the case with 4.1. test it by setting
dtparam=3Daudio=3Don in /boot/config.txt if it works then perhaps you =
can patch
it in recipes-bsp/bootfiles/rpi-config_git.bb and add a knob to =
enable/disable
alsa


> It looks like the default alsa device is configured to use card 0, but
> card 0 doesn't exist. What do "cat /proc/asound/cards" and "ls -l
> /dev/snd" print?
>=20
> --
> Tanu
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_B4A8EA1D-195A-4EA8-8330-131332865F78
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlgLlLkACgkQuwUzVZGdMxS3eACff3+d3tl3oqeGOD3Z1qkk4Q8J
sOUAmwZWTrt6Tb4gLJFfAoRFpf9jdb+E
=96Xc
-----END PGP SIGNATURE-----

--Apple-Mail=_B4A8EA1D-195A-4EA8-8330-131332865F78--
