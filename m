Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10FBEE00D72; Tue, 31 May 2016 00:21:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f66.google.com (mail-vk0-f66.google.com
	[209.85.213.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6365E00D2F
	for <yocto@yoctoproject.org>; Tue, 31 May 2016 00:21:26 -0700 (PDT)
Received: by mail-vk0-f66.google.com with SMTP id c189so20627397vkb.3
	for <yocto@yoctoproject.org>; Tue, 31 May 2016 00:21:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=JwsCbnjT0tXdLfCG/FGBAZ1Ec73oaWJcr0cUkv/hOrM=;
	b=q/nc20l9aQjJDAF8tzbpUhx7Nx0walcOi0GykN2GTBuAfu+qaj6UnqWdW0rvjP/9Kx
	R8DPRK6hMgzm3QwSEJ/H2rJgdt60yQRWnDgrSBTFdBzgKYNnpULh0mjW8R5ju8dmGvD/
	ZPwsSCS61P46A1eioudyxptzlbPpVdLniVUf61WEgBMvTb0lxP1CN+nTubAT3zzIbE1l
	gUGUiiWXweJz8LZ2svzm9Bhk0Rj+066Q4lJKsAs08hY1gbTPRTYaGjKDqFOaeSTyFakk
	r7gAIYWko1ylw5sg255DwXleby16AO40TmOqilFW+XJMAjiMa+oGj7HrcMcxkQ8GNB7Q
	HgtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=JwsCbnjT0tXdLfCG/FGBAZ1Ec73oaWJcr0cUkv/hOrM=;
	b=VGkeEV7ISbLpR+kW/ttMCSWyddiyjiT+0sWvNdEo159Q8nYGt2RXcrwRWowlJb9Gcm
	rDrORDbfJ1I+CSj6r6NlKIWqFD8i0gKcis8H9Ri21LO28uP+lrqUlcNy9ZBb2qTcuAoy
	hxintrtjGChWVC+VC3UyfEePIwlWkUsUyPlt3ibdUVNXOcK+P9Afgro/iMTYyw4ZSTQD
	U7sWdsx/qbRRZP/YYWVDH+eRisOUCcnfHxoyQoRcr+7xydaiBDWxsf0itA94TIfHIFhi
	uakfN9z8jvTexAzvTdC9QrfL8PktbVkdJA8fFaVHzZohIztUzSt6DRgVQwf3FWplKT1f
	B55A==
X-Gm-Message-State: ALyK8tL0fukaddDvIM4rV3jIQJWofMEDuX+V2gvZxwAwaGC+BiHcz0a5SSCa+3EcNsPfoKyRY/bSwPY0z7Zmpg==
MIME-Version: 1.0
X-Received: by 10.176.69.202 with SMTP id u68mr16393111uau.111.1464679285694; 
	Tue, 31 May 2016 00:21:25 -0700 (PDT)
Received: by 10.159.39.68 with HTTP; Tue, 31 May 2016 00:21:25 -0700 (PDT)
In-Reply-To: <1464678539-110008-1-git-send-email-herve.jourdain@neuf.fr>
References: <1464678539-110008-1-git-send-email-herve.jourdain@neuf.fr>
Date: Tue, 31 May 2016 09:21:25 +0200
Message-ID: <CALbNGRRE+H3pHQnLqf0C62gdRKd_NHNoswAXSXvHSicnQiQ8gQ@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH v3] Support for .dtbo files for dtb overlays
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
X-List-Received-Date: Tue, 31 May 2016 07:21:30 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, May 31, 2016 at 9:08 AM, Herve Jourdain <herve.jourdain@neuf.fr> wrote:
> v3: rebased
> Recent kernels tend to use .dtbo files for device tree overlays, instead of .dtb before.
> .dtb are still used, but only for the "real" device trees (not the overlays).
>
> On some platforms (meta-raspberrypi for instance), recent firmware only loads .dtbo files for overlays.
>
> This patch tries to address this issue, while not breaking support for .dtb overlays.
> It allows the installation/deployment of both .dtb and .dtbo files, for device trees and overlays.
>
> This is in line with the behavior of kernels 4.4.6+
>
> Herve Jourdain (1):
>   linux-dtb.inc: Support for .dtbo files for dtb overlays
>
>  meta/recipes-kernel/linux/linux-dtb.inc | 18 +++++++++++-------
>  1 file changed, 11 insertions(+), 7 deletions(-)
>
If I am not mistaken this is a patch for oe-core layer and should be send to

openembedded-core@lists.openembedded.org

Andreas

