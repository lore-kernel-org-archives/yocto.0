Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0A1B4E00E57; Wed, 11 Jul 2018 13:36:25 -0700 (PDT)
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
	*      [209.85.217.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f174.google.com (mail-ua0-f174.google.com
	[209.85.217.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1BA0E00D6A
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2018 13:36:18 -0700 (PDT)
Received: by mail-ua0-f174.google.com with SMTP id k25-v6so8098275uao.11
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2018 13:36:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=W+2ntenEZo6IT1DHWxmd310V7PRil7ZLriKxOludx0c=;
	b=CnmhJ5E/TYVsHRt+ZOr3lXiQfhT7cw7Xu14NMRbg3dopL/0+Sw+rwievYm9ve+n3aJ
	7LcC2bt3M2+O3iE23Ar3zWECHV8ZIwHtF9y0IiYvsVGU5KW5+nRbqf0m2dVylxRzftLH
	HdMarKEafHFxO12PaLNuGk+4wOCdjcnZN/z+aCMWt9eOQzjjZoXPIhfA8RRcSn9SyJal
	PvPGQl26A/z6IzgsAlp1ZWu9K+AhUu3qG2vLDpzCRS3itdkMZmOuypeeH0fdTSE+yhUx
	VZ0GVhmWg9PnxD76ocZ3gRVO5TwUeTM/eg1vp0zBFploTFr1NeEgcn2CM4H6eO7Q0tXA
	XwAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=W+2ntenEZo6IT1DHWxmd310V7PRil7ZLriKxOludx0c=;
	b=RXk0xQXzvAVGCTQZnZsvx8eEt4rwbqHCR3/faq3ekkbqVxJNJEoxNm+4+Wa0tcayNe
	PjYF4dzSOaeXMVfHaCReJP77AwmWqxVDPIS2Te3lA8u9MQ3BeNkkzP219QDJrYiMzn7n
	yDKA7875xvKyTWFzOrTVOInPbK9sjvBLcvmbzvhM7MrKuec4ln0Zo3bfW7OBZAsgScFW
	NrDv+9pgSb6vNGZrVesTR6WmM0rWdsbV+tNYp5j+w435HK+zFpj/8wXfCeHf0PxkW7WU
	l/7PdnjqwtiWb+Ep5/V8tBT9G3otLJysegFmmyNQU3xkhMURjpXn67t2wio/EwCKbqWh
	hd8g==
X-Gm-Message-State: AOUpUlFNAYJUYALVILQ1Y5DLv75r6prs/i1t9cSpHl89HfwhBS0tW//S
	6yjpyvRdIAqORPflPzroDNWA1GqlgABi4vdsUl0rRQ==
X-Google-Smtp-Source: AAOMgpfIYKBwsvWf3axlvQLXIecPnjSi5++Df+xFOhLJYaJOmiaJF/pEw/Y0NO4PZNR4Wo3rjXvzwazTOu580mMufvw=
X-Received: by 2002:ab0:5323:: with SMTP id x32-v6mr95461uax.139.1531341377526;
	Wed, 11 Jul 2018 13:36:17 -0700 (PDT)
MIME-Version: 1.0
References: <D5656CB5-D7A6-4244-A803-4CC13ECD108E@korgrd.com>
In-Reply-To: <D5656CB5-D7A6-4244-A803-4CC13ECD108E@korgrd.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 11 Jul 2018 14:35:51 -0600
Message-ID: <CAMKF1srY0ESiV45_+m2mz3k73gM5cyb3nRT9rrJseX1QMWDieQ@mail.gmail.com>
To: Steve Pavao <stevep@korgrd.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] dtb mising from raspberrypi3-64.conf
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
X-List-Received-Date: Wed, 11 Jul 2018 20:36:25 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Steve

Can you open an issue on https://github.com/agherzan/meta-raspberrypi
On Tue, Jul 10, 2018 at 11:52 AM Steve Pavao <stevep@korgrd.com> wrote:
>
> Would you please add the bcm2710-rpi-cm3.dtb to the KERNEL_DEVICETREE lis=
ting in raspberrypi3-64.conf in sumo branch?  It=E2=80=99s missing.
>
> - Steve Pavao
> Korg R&D
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

