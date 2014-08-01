Return-Path: <tharsani.yuka@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0815FE006B7; Fri,  1 Aug 2014 04:33:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tharsani.yuka[at]gmail.com)
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
	*      [209.85.219.46 listed in list.dnswl.org]
Received: from mail-oa0-f46.google.com (mail-oa0-f46.google.com
	[209.85.219.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B32D8E00572
	for <yocto@yoctoproject.org>; Fri,  1 Aug 2014 04:33:45 -0700 (PDT)
Received: by mail-oa0-f46.google.com with SMTP id m1so3004429oag.5
	for <yocto@yoctoproject.org>; Fri, 01 Aug 2014 04:33:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:cc:content-type;
	bh=TqFaxs7e7OhilRG800r5KvUggLuL5JKsw30WsLWckvk=;
	b=c2F+60LONMK0330FtrJZh5oeTaVlEsc164UWMfzdTQxZePDyVlGhO91VA3Jy1aLs5T
	0Un/UjWCac0el7qehtWQHFop1EySpJfXVwCVhMkU2Ev1wJhOYAkyj0kpmMgBKJrlurvx
	IcvjbsDrBDx8C610trJejvJ97AbcATyAzCI7+FPi5FkYo8mFrH/wF9Fp6XxS28AmTdDB
	a1DaLPAD22CtNJkwIThqz0IoJstEf6UzaPw7d7QWIveGDGONVNKflJYA0qibiSNMH95Y
	GOC/Q1wJ9WvfwnL6NYE88lB1/Q9zI4lXahAP/BAw+407mxL8Kz2Uhby6VAypHAs1+DKs
	0xKQ==
MIME-Version: 1.0
X-Received: by 10.182.114.131 with SMTP id jg3mr7278175obb.9.1406892823708;
	Fri, 01 Aug 2014 04:33:43 -0700 (PDT)
Received: by 10.76.33.35 with HTTP; Fri, 1 Aug 2014 04:33:43 -0700 (PDT)
Received: by 10.76.33.35 with HTTP; Fri, 1 Aug 2014 04:33:43 -0700 (PDT)
Date: Fri, 1 Aug 2014 17:03:43 +0530
Message-ID: <CAL82V-D4oYU==MutKkzW9-k2VE7CU9Y5gAVnqdtkfPX1ifzsDw@mail.gmail.com>
From: yuka tharsani <tharsani.yuka@gmail.com>
To: pushpa@jtechindia.in
X-Mailman-Approved-At: Fri, 01 Aug 2014 08:10:15 -0700
Cc: yocto@yoctoproject.org
Subject: Re: yocto Digest, vol 46, Issue 109
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
X-List-Received-Date: Fri, 01 Aug 2014 11:33:55 -0000
Content-Type: multipart/alternative; boundary=001a11c2e396fe87c904ff8fc211

--001a11c2e396fe87c904ff8fc211
Content-Type: text/plain; charset=UTF-8

Hi Pushpa,
  Please remove one forward slash after YOCTO in the below url and provide
md5sum in your recipe and try to build.
  http://www.freescale.com/lgfiles/NMG/MAD/YOCTO/libfslcodec-3.0.11.bin.

Note : Check whether http or https defined in your configuration file.

Thanks and Regards,
Yukatharsani J.

--001a11c2e396fe87c904ff8fc211
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Hi Pushpa,<br>
=C2=A0 Please remove one forward slash after YOCTO in the below url and pro=
vide md5sum in your recipe and try to build.<br>
=C2=A0 <a href=3D"http://www.freescale.com/lgfiles/NMG/MAD/YOCTO/libfslcode=
c-3.0.11.bin">http://www.freescale.com/lgfiles/NMG/MAD/YOCTO/libfslcodec-3.=
0.11.bin</a>. </p>
<p dir=3D"ltr">Note : Check whether http or https defined in your configura=
tion file. </p>
<p dir=3D"ltr">Thanks and Regards,<br>
Yukatharsani J.</p>

--001a11c2e396fe87c904ff8fc211--
