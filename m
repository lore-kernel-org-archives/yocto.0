Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0EE30E0056A; Thu, 10 Jul 2014 02:27:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from stoexhub03.domain01.net (STOEXHUB03.domain01.net
	[83.145.59.144])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7ABE5E00559
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 02:26:55 -0700 (PDT)
Received: from ad.chargestorm.se (213.114.64.43) by stoexhub03.domain01.net
	(10.12.10.3) with Microsoft SMTP Server (TLS) id 8.3.279.1;
	Thu, 10 Jul 2014 11:26:52 +0200
Date: Thu, 10 Jul 2014 11:26:32 +0200
From: Anders Darander <anders@chargestorm.se>
To: Natural Groove <natural_groove@hotmail.fr>
Message-ID: <20140710092632.GA30958@ad.chargestorm.se>
Mail-Followup-To: Natural Groove <natural_groove@hotmail.fr>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <DUB128-W333CD3D967FBE45F67D02920E0@phx.gbl>
MIME-Version: 1.0
In-Reply-To: <DUB128-W333CD3D967FBE45F67D02920E0@phx.gbl>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.23 (2014-03-12)
X-GFI-SMTP-Submission: 1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: crossbuild for arm :FFPLAY not build
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
X-List-Received-Date: Thu, 10 Jul 2014 09:27:05 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline


Not that I've been building ffmpeg et.al. myself, but:

* Natural Groove <natural_groove@hotmail.fr> [140710 11:04]:
>    Im trying to crossbuild ffmpeg for arm (colibri-t20).
>    I wrote a simplest recipe in order to achieve this, but even if ffmpeg,
>    ffprobe and ffserver are build, ffplay isnt, i first thought that i had
>    forgotten some dependencies but i dont see which could be missing.
>    Any idea why this isnt working?

>    The recipe:
>    EXTRA_OECONF = "--arch=arm --enable-cross-compile
>    --cross-prefix=${CROSS_COMPILE} --target-os=linux --enable-gpl
>    --enable-libtheora --enable-libvorbis --extra-libs="-ldl"
>    --enable-ffplay --enable-shared --enable-pic"

If this is what you have in your recipe, I'm not surprised that it
doesn't work. As it seems that you're using " both to surround the
EXTRA_OECONF, but also inside that expression. Try to change " to '.

You should also use bitbake -e <recipe-name> to check that EXTRA_OECONF
looks OK.

Cheers,
Anders

-- 
Anders Darander
ChargeStorm AB / eStorm AB

