Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22E21E00ADD; Thu, 20 Apr 2017 04:56:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C30E8E00A31
	for <yocto@yoctoproject.org>; Thu, 20 Apr 2017 04:56:35 -0700 (PDT)
Received: from nbhjo (203-69-87-74.HINET-IP.hinet.net [203.69.87.74])
	by msfrf2622.sfr.fr (SMTP Server) with ESMTP id 2635B1C003228;
	Thu, 20 Apr 2017 13:56:33 +0200 (CEST)
Received: from nbhjo (203-69-87-74.HINET-IP.hinet.net [203.69.87.74])	(using
	TLSv1.2
	with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))	(No client
	certificate requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2622.sfr.fr (SMTP Server) with ESMTPSA;
	Thu, 20 Apr 2017 13:56:31 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (LOGIN)
	smtp.auth=herve.jourdain@neuf.fr
From: Herve Jourdain <herve.jourdain@neuf.fr>
To: 'Trevor Woerner' <twoerner@gmail.com>
References: <20170415133928.GA29433@linux-uys3>
	<CALbNGRQy1Lf1=hV47Lf+u7rQUgubXjdiQWhjNJN4a3sDwr419A@mail.gmail.com>
	<20170415163537.GA23175@linux-uys3>
	<CALbNGRRDv1d3GHBNMwXHajgyx8iee4pSfNkEcKxMDiraagC50g@mail.gmail.com>
	<005c01d2b988$0b2c9e50$2185daf0$@neuf.fr>
	<20170420071321.GA25443@linux-uys3>
In-Reply-To: <20170420071321.GA25443@linux-uys3>
Date: Thu, 20 Apr 2017 13:56:27 +0200
Message-ID: <007c01d2b9cd$27706fc0$76514f40$@neuf.fr>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AQI7YjmaY5b73bo5adVPjN/uNfcVfwJYbQZ/AUYAPzUCNRP7bQJ0tFt4AZMGhJGgrfmV4A==
X-sfr-mailing: LEGIT
Cc: 'Yocto Project' <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] gles2 on raspi3
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
X-List-Received-Date: Thu, 20 Apr 2017 11:56:42 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Content-Language: fr

Hi Trevor,

I agree with you that VC4 is easier to work with - and can be patched if =
there are issues.
But normally you lose the H.264 and MPEG2 HW decoders, and a bunch of =
audio codecs, provided by the userland/omx.
Depending on what you're doing, you may or may not notice the =
difference. But I'm not sure how well you can handle 1080p30 or 1080p60 =
in H.264 using only ffmpeg - if you're using chromium, that's what you =
should be using I guess.
My personal preference would be to use VC4, and that's what I do most of =
the time, but there is still a limitation for the moment, that I just =
wanted to point out.
And that's why I think we can't do only VC4, and probably have to keep =
userland a while longer.

Cheers,
Herve

-----Original Message-----
From: Trevor Woerner [mailto:twoerner@gmail.com]=20
Sent: jeudi 20 avril 2017 09:13
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: 'Andreas M=C3=BCller' <schnitzeltony@googlemail.com>; 'Yocto =
Project' <yocto@yoctoproject.org>
Subject: Re: [yocto] [meta-raspberrypi] gles2 on raspi3

On Thu 2017-04-20 @ 05:41:44 AM, Herve Jourdain wrote:
> Yes, VC4 indeed works for both 32bits and 64bits. It was first =
introduced  .
> for 32bits, actually Regarding why still using userland: at this point =
in  .
> time, we have accelerated HW codec (H.264, MPEG2, some audio) only if =
using.
> userland If one doesn't need that, then VC4 is, in my opinion, the way =
to  .
> go. Otherwise, userland still needs to be used                         =
    .

What decoder is needed to play youtube videos?

Using Andreas' meta-raspi-light (which removes userland and only uses =
vc4) I've spent the last hour or so watching youtube videos from my =
raspberrypi3 (32-bit build) in chromium, accelerated, with sound (both =
via the HDMI and the jack), both on the big monitor and the 7" waveshare =
touchscreen. Not to mention I can now run openGL and GLESx apps =
accelerated.

I wasn't able to do that with userland. In fact, it was quite a struggle =
just to get it to build!

Maybe I did something wrong with userland, but vc4 is successful, and =
certainly easier to work with.


