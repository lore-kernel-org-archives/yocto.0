Return-Path: <prasoonkumar1295@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 794E6E00B58; Sun,  2 Jul 2017 23:26:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (prasoonkumar1295[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43655E00B2E
	for <yocto@yoctoproject.org>; Sun,  2 Jul 2017 23:26:52 -0700 (PDT)
Received: by mail-io0-f174.google.com with SMTP id z62so51548793ioi.3
	for <yocto@yoctoproject.org>; Sun, 02 Jul 2017 23:26:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=lI7lQJE76D/AMtoTWmN25IwCOkSp7QQcW+c+Jx+g4I4=;
	b=SXLD7goqtLlMGhTbVLx6ooj018Uz2Hj619/lvV2qwq0dtxH73xrkSYa3NOUuVGBObk
	mUs+NK4FyYlJlo1p7gLKeNncWAblUuo8JHwm0qsM2GqAQEUQYbfuEFkgzPn59EpZjUXi
	EZnNRQkWF9PLhYVkRmpugH3ADj8tWKxUeAPCiP2p1Jio6aaynN1nqNvbNJWk5MbmSLi7
	vvl40rAsO0O23FV7wU8ko2xw/0P5MevA9jRgYcC9tpsjKMnxklOoV5lyjYAj+5V2Wep0
	cvT9sA/gKa9VKEZHj24Ompc0mMMXNRuzfLcnO17l0Yht+1Pce+SAS0fbLhaGhuvV4jEv
	/WTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=lI7lQJE76D/AMtoTWmN25IwCOkSp7QQcW+c+Jx+g4I4=;
	b=dx5Ey34wo2CXQqaQulA5rppiCJcuiLUZjyp94qD66tJPzpWDpnQo13zDHeUc0MS9ZG
	8WwpibOL1t4GSz9gqPuOAdaJQauXjYB/B1yDDcnIgF2C6UaZxtqCumhtuyRqgkZrpfTI
	eW8mb2vmeqCM/saCoyQRpSE9/wYHghymTiqE8zMmV9fdM8xd2ZsGAvwiOfGz69KE58Ld
	aNY/NaTfLo5PWPzU/o7pFq/gqD3xnibzdR91NPO8wmd2D7tWQOzRu4HQm5mZ9vjIHlay
	y18Ck+0Fu85ySb8cqJOuPVf1HTsOO7Qi4850waVhYH2Zddtqvidf9gQzVt4kASgDHP/l
	o8bA==
X-Gm-Message-State: AKS2vOy0X+pxdKm8D3QirZ+3CzvTa+vJZNNvVqQgaQon3MXczglgrbtP
	n+zuFa9937AMUMx6vrdAQpfDKUXh4A==
X-Received: by 10.107.17.209 with SMTP id 78mr32671297ior.36.1499063211514;
	Sun, 02 Jul 2017 23:26:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.122.133 with HTTP; Sun, 2 Jul 2017 23:26:50 -0700 (PDT)
Received: by 10.79.122.133 with HTTP; Sun, 2 Jul 2017 23:26:50 -0700 (PDT)
In-Reply-To: <CAGAEfx5M6tzcfFxhHy-gY52Bm-eu6=ExTc-h=b1D_epTD45Ozw@mail.gmail.com>
References: <CAGAEfx5_j17h=PGTKC4WT_qi+gUEqQU9E_w_7vzRE_0OPasuow@mail.gmail.com>
	<CAGAEfx4B_sEGMb-ie+Ti9JZzQ_COf8VF+9FdptsKNwvzLqscxQ@mail.gmail.com>
	<CAGAEfx7gZt_JSdmTwWi7H5C8_9Lu8y3MvHaFdW163VRveqdfZw@mail.gmail.com>
	<CAGAEfx5M6tzcfFxhHy-gY52Bm-eu6=ExTc-h=b1D_epTD45Ozw@mail.gmail.com>
From: Prasoon Kumar <prasoonkumar1295@gmail.com>
Date: Mon, 3 Jul 2017 11:56:50 +0530
Message-ID: <CAGAEfx4=OdQr5cKcYS=pDBbmAYuFO+7FOCs8yOZrPfw2npbKaQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: How to make changes and build u-boot source code in yocto
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
X-List-Received-Date: Mon, 03 Jul 2017 06:26:58 -0000
Content-Type: multipart/alternative; boundary="001a113eeb2637e41d055363dad5"

--001a113eeb2637e41d055363dad5
Content-Type: text/plain; charset="UTF-8"

Hi,

I am trying to make some changes in u-boot code and using bitbake u-boot to
build. But it doesn't build.
I also tried bitbake u-boot -c compile and bitbake u-boot deploy. This also
didn't work.

Can I Get some help on how to change and build u-boot.

Thanks,
Prasoon

--001a113eeb2637e41d055363dad5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,<div dir=3D"auto"><br></div><div dir=3D"auto">I am try=
ing to make some changes in u-boot code and using bitbake u-boot to build. =
But it doesn&#39;t build.</div><div dir=3D"auto">I also tried bitbake u-boo=
t -c compile and bitbake u-boot deploy. This also didn&#39;t work.</div><di=
v dir=3D"auto"><br></div><div dir=3D"auto">Can I Get some help on how to ch=
ange and build u-boot.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"a=
uto">Thanks,</div><div dir=3D"auto">Prasoon</div></div>

--001a113eeb2637e41d055363dad5--
