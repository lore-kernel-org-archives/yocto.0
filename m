Return-Path: <vijayakumarmb@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED67AE00E08; Thu, 21 Jul 2016 14:51:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vijayakumarmb[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.66 listed in list.dnswl.org]
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5621E00DFF
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 14:51:55 -0700 (PDT)
Received: by mail-vk0-f66.google.com with SMTP id r135so7801652vkf.3
	for <yocto@yoctoproject.org>; Thu, 21 Jul 2016 14:51:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=y9sF5JPC+kdpemK2aoePmDy6oBIiUZklKZToXcC4k34=;
	b=Z01Us8HtkFVjOOyFmAzVBxBcvcy4TRNzvAxnZqbGikXmBpgTHDE2GQGO/Wo3qWAwkf
	T9S38Ps95arESHlBSCBaOlKwGl+wXPlyYSatLws/iB/9ifdT0eX1oOJ0vcadxtjEvatV
	OnPAbbgsw2F4C7zRtcwAcz6/xIjWAUepvodE+gXInygCK02K1Cxhr2oCHNwtsu8NyjtG
	5WXQqbV3wsia3dMAjBlo2cOjrL4qg3SARl9KK7DkxHyB11KsRRIw/0MFpKnkDDeDhFXL
	nGKwCdiu1o8YuIqF/7QXLN2LqldfiJExBmq/kBtikhU5DSbhoKepfkNy3QSnOiQxGONO
	obNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=y9sF5JPC+kdpemK2aoePmDy6oBIiUZklKZToXcC4k34=;
	b=LxcBPGAbZT7DLog8Q0CLVtG8VtmIpIiHLC7cwrbpVKeh5mIZBYAkxXlEoT4SqnbVmE
	pMP/jFmFYH1MH4KHTReDFO5Z204tvO7zaRixPrP34Kj7lDwxb8g5wkY0Cs+4KA9S9bnf
	8MbsSN7t22mg4g93POXFsAZKaEGdIHaDBPWdwK3+lYm/VO0i1iu6COPEaoXqKDjw/cn+
	Ucbdlm8WR13gFZ1CGAKV6jqSyED5mSFrUUVi7XQwQQqVqTsT0dlZGw97PpQguCZQ6EEv
	1c9EE6LCea4sQe6fLRmgHv5lQtloJkzbpzXM+QUdNehKO9JWyH97k0su0xsy3PPPWakC
	Y69A==
X-Gm-Message-State: AEkooutPOjRNuueFVVhhM1JWtybKbv7NsXuDg8GPvhBUjGLyOL/RxdQAUIMhQKqg66SOF1ULpJPGjkAVoMA6ZA==
X-Received: by 10.159.38.108 with SMTP id 99mr249336uag.126.1469137913814;
	Thu, 21 Jul 2016 14:51:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.70.7 with HTTP; Thu, 21 Jul 2016 14:51:34 -0700 (PDT)
From: Vijayakumar Badiger <vijayakumarmb@gmail.com>
Date: Thu, 21 Jul 2016 14:51:34 -0700
Message-ID: <CAJ58UNn4pFMngrKG8MeffP+GQGTd-qQVE3_Roc01PcWpK_FF9Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Error during adding a new recipe.
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
X-List-Received-Date: Thu, 21 Jul 2016 21:51:59 -0000
Content-Type: multipart/alternative; boundary=001a113aaed67aa46105382c53a0

--001a113aaed67aa46105382c53a0
Content-Type: text/plain; charset=UTF-8

Hello all,

I am facing error while integrating a new recipe in to my Yacto project.


/local/mnt/workspace/c_vbadig/LV/poky/build/tmp-glibc/work/aarch64-poky-linux/system-core/git-r17/system/core/libsync/sync.c:24:24:
fatal error: linux/sync.h: No such file or directory
compilation terminated.
make[2]: *** [libsync_la-sync.lo] Error 1

Not sure why its complaining about this missing header file. I am trying to
integrate the system/core in to the Yacto baseline . Please can some one
help as I am blocked because of this. Thanks.

Cheers,
Vijay

--001a113aaed67aa46105382c53a0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello all,<div><br></div><div>I am facing error while inte=
grating a new recipe in to my Yacto project.=C2=A0</div><div><br></div><div=
><br></div><div><div>/local/mnt/workspace/c_vbadig/LV/poky/build/tmp-glibc/=
work/aarch64-poky-linux/system-core/git-r17/system/core/libsync/sync.c:24:2=
4: fatal error: linux/sync.h: No such file or directory</div><div>compilati=
on terminated.</div><div>make[2]: *** [libsync_la-sync.lo] Error 1</div></d=
iv><div><br></div><div>Not sure why its complaining about this missing head=
er file. I am trying to integrate the system/core in to the Yacto baseline =
. Please can some one help as I am blocked because of this. Thanks.</div><d=
iv><br></div><div>Cheers,<br>Vijay</div><div><br></div></div>

--001a113aaed67aa46105382c53a0--
