Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A0C5E00955; Mon, 12 Dec 2016 15:56:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.194 listed in list.dnswl.org]
Received: from mail-ua0-f194.google.com (mail-ua0-f194.google.com
	[209.85.217.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 09FB6E0085D
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 15:56:00 -0800 (PST)
Received: by mail-ua0-f194.google.com with SMTP id 50so10269693uae.2
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 15:55:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=wDCjQzuMMPyxHJwF1NHfCJrhjuIQcxoy0fzEIuw4MqQ=;
	b=LNWWkbPyZFnvyK8nrZzoQ4VsuM5xCPgkQvYX/1H+Jsro9rNNx0Lt/6QEAP6cT+OilA
	p4eD9BFHJCMRjV2Mn+hYlvAZImh8sN2pPLMyyPEOnh6+vNmz2H3rIfdY0t+zTQ1VI2lb
	foJ2o/N/8PnAa9ruq9xDOfpLVKYqajh4sM7s0Lal1lt2WrvuBSqDqH3gfc8lG4KNrjL2
	xP1wtEaN1pZTveEJISY4gHywb5L0pLdaF5JEuExMoLSr9A9wr3RsPgg/PJswTOSoBCdG
	BHxczX0isddhT+J6NxpnSIaXNyJ2PsVxTsVhQvzv/CNBZ4mshgCS2sA76tIhr9sEuejR
	5iNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=wDCjQzuMMPyxHJwF1NHfCJrhjuIQcxoy0fzEIuw4MqQ=;
	b=C+VycOJ9DFXeA4veqIHbj1+Q+WXnjRFwJWMNXCy+7gJ0CTfcPADg6Ty4a7fShJb8fk
	ZqcKLY3LsFHE8wkTkBO839NCxXII9vZ5g2jc++rUBObgVfhsAx392e5CdTfr0hFfSHar
	B7yySoO2+SlZzGlfpdcF2tIdqotGiyAWgWOdudy+rVFf6A5L76HZAOwKsKhD5X6B2QNv
	lB2J/9Xh+XpN+T58u+76VIKmJ6bTFXz8tkcY+CtlK6c9JWKG7Beq43I7b3oSMrOZmREY
	ATDJPrW9OGcg4bG3wH2sfqlouY36IfmYBLXf2ajuo3/3pEU053K97zQi5MZF0leQEEI4
	DOzQ==
X-Gm-Message-State: AKaTC01IIMO6QLVnV1r/yYiivrmfGuUhNmhdRwpX8jOE1rxcwTp9G8h+tPeWnwBtUPpEcZEuon77T6E8P6djJg==
X-Received: by 10.176.0.180 with SMTP id 49mr76833652uaj.32.1481586959355;
	Mon, 12 Dec 2016 15:55:59 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.85.157 with HTTP; Mon, 12 Dec 2016 15:55:58 -0800 (PST)
In-Reply-To: <7a0cc3acfeddd7ccc0de8c3b465d9f52@technux.se>
References: <1481193612-18179-1-git-send-email-schnitzeltony@googlemail.com>
	<CAMKF1srbGTypEP2FrNHHKxqdxg595EgdCxn=9dy9OVEA-s2PAw@mail.gmail.com>
	<7a0cc3acfeddd7ccc0de8c3b465d9f52@technux.se>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Tue, 13 Dec 2016 00:55:58 +0100
Message-ID: <CALbNGRQ9s_9wYs-ytD8WZm6OhJNXJ31gWzgKi9OeSOcsHqUeRg@mail.gmail.com>
To: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi-base.bbclass: remove version hack
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
X-List-Received-Date: Mon, 12 Dec 2016 23:56:07 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Dec 12, 2016 at 11:33 PM, Petter Mab=C3=A4cker <petter@technux.se> =
wrote:
> 2016-12-12 06:21 skrev Khem Raj:
>
> On Thu, Dec 8, 2016 at 2:40 AM, Andreas M=C3=BCller
> <schnitzeltony@googlemail.com> wrote:
>
> * no more required (version > 3.17 | > 4.3.x | > 4.4.5) * causes error wi=
th
> rt kernel
>
> I think this is ok to apply now.
>
> Signed-off-by: Andreas M=C3=BCller <schnitzeltony@googlemail.com> ---
> classes/linux-raspberrypi-base.bbclass | 15 --------------- 1 file change=
d,
> 15 deletions(-) diff --git a/classes/linux-raspberrypi-base.bbclass
> b/classes/linux-raspberrypi-base.bbclass index 3a6e33d..dc2330a 100644 --=
-
> a/classes/linux-raspberrypi-base.bbclass +++
> b/classes/linux-raspberrypi-base.bbclass @@ -14,21 +14,6 @@ def get_dts(d=
,
> ver=3DNone): from the kernel staging ''' ver =3D
> get_kernelversion_file(staging_dir) - if ver is not None: - min_ver =3D
> ver.split('.', 3) - else: - return dts - - # Always turn off device tree
> support for kernel's < 3.18 - try: - if int(min_ver[0]) >=3D 4: - if
> (int(min_ver[1]) < 4) or (int(min_ver[1]) =3D=3D 4 and int(min_ver[2]) < =
6): -
> dts =3D ' '.join([(re.sub(r'(.*)\.dtbo$', r'\1-overlay.dtb', x)) for x in
> dts.split()]) - elif int(min_ver[1]) < 18: - dts =3D "" - except IndexErr=
or: -
> min_ver =3D None - return dts -- 2.7.4 --
> _______________________________________________ yocto mailing list
> yocto@yoctoproject.org https://lists.yoctoproject.org/listinfo/yocto
>
> I think you should go even one step further and revert the entire commit
> merging this obsolete functionality: "git revert
> 4a4373c02d3d8355a2e5faa10af61450e5b093d8" .
>
> BR Petter
To be honest: I have forked meta-raspberrypi and don't use it any
more. Just wanted to be a good boy. So maybe you want to send the
revert here?

Andreas

