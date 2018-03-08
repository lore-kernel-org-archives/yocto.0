Return-Path: <pbarker@toganlabs.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CDD2E00DE5; Thu,  8 Mar 2018 03:17:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.128.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f170.google.com (mail-wr0-f170.google.com
	[209.85.128.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78A2BE00971
	for <yocto@yoctoproject.org>; Thu,  8 Mar 2018 03:17:54 -0800 (PST)
Received: by mail-wr0-f170.google.com with SMTP id v65so5271634wrc.11
	for <yocto@yoctoproject.org>; Thu, 08 Mar 2018 03:17:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=toganlabs-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=REQ0Cs1102GEviH08W4Dntf1hR9INRkZ7tTa7LlxVpI=;
	b=VSTW6LkftJKjA+5+fH8PmXyOhT40b6h3Y73+yR17+eLdIWj0ST7rjkDkD0aCs7RbEH
	jr0GCp8uH3qYzDyggNA2oD6fbYUFfr1K58GfU1+JTqo95CbgQvl62CUGQYoC9ZcDypAt
	N/dX0cajfPCiv/TN7GoXOQBs55kxUclH4cW0gyo2MnkP9t3+Vpu3ZxVMlU43/bev3Uco
	WjXPqiZunHZqq7WWyrdIOerdnLVUE3A4USEQX5I41orSTNvjRqDrcPcoC2L6LJotMa+f
	LGqY0/a9X/vtROvso8jYfoMvakzG61nVQJI6YAhMQfT9L1l/lq9XvhkjIQGRv/D/pe3Z
	ZT1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=REQ0Cs1102GEviH08W4Dntf1hR9INRkZ7tTa7LlxVpI=;
	b=CIx6i/hY5vrN1hg+vaO5dXXkC/iqPPH8Zl27/Cf6+aN9l/n/LUJHcjX2mfZcDBYZkR
	hEfmwqbGIVbboIhzECqtTTiP1zakivi/Iz82SQ9nFBxkpCiV6JX2oCTJUEfaiCk2fYTt
	UtltA5NpbTd4tYZWua9mUp9lx5hT3qZUGgpR8E2Fn5Y48FE/FTOMNnnGX2oUgXhdiXR5
	dRndhrdat/gZVam+nAJRmude+Qn4w5qIdNo8zMp09IBWDskV5W17GF48M3DN9ScU4PWs
	CKtrw6+GtvjntEzuIWBA/I2IbR0Dupjot2h+m6w9cgqoH2AzujL5Wne99LWvVGX5elqq
	+j4Q==
X-Gm-Message-State: APf1xPAjDY+EnvcmfTvKoSGeN0OcUCpAWhR57jfnM1HxR2GDE44fKrdR
	Tt3y4sxe4dwKbTkf2zLtjyYuABcojnz/Ep0G+LyZRA==
X-Google-Smtp-Source: AG47ELuxTmwV50JUgqmZxsa0APSZDo+Kj2Evhc9Ic9qyj17sJYIEKH/gNi+4tszTYdC4mvGc9UMqPgJHZWR+CTbKbJA=
X-Received: by 10.223.192.76 with SMTP id c12mr21306733wrf.177.1520507873155; 
	Thu, 08 Mar 2018 03:17:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.153.48 with HTTP; Thu, 8 Mar 2018 03:17:52 -0800 (PST)
In-Reply-To: <CAKHP1duYgAf5jG3Y=Jm4yCPF+H9mcC+VS8u_aeYHGCTrBz1rZQ@mail.gmail.com>
References: <CAKHP1duYgAf5jG3Y=Jm4yCPF+H9mcC+VS8u_aeYHGCTrBz1rZQ@mail.gmail.com>
From: Paul Barker <pbarker@toganlabs.com>
Date: Thu, 8 Mar 2018 11:17:52 +0000
Message-ID: <CAPyrkgxqsR+ejJUod_C227BMn4VLusQwx=f3f8+aK1YGvAxFQw@mail.gmail.com>
To: kk <pinganddu90@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] how to install rpi-config package?
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
X-List-Received-Date: Thu, 08 Mar 2018 11:17:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Mar 8, 2018 at 6:20 AM, kk <pinganddu90@gmail.com> wrote:
> This is ok:
>     $ bitbake rpi-config
> But I check the image directory under workdir, I found nothing in it, and=
 no
> command raspi-config.
>

The rpi-config recipe creates the config.txt file in the
"tmp/deploy/images/<MACHINE>/bcm2835-bootfiles/" directory (if I've
got the path right) which is then copied to the boot partition for an
SD card image.

I believe raspi-config is specific to the Raspbian distribution and
isn't used in images built with OpenEmbedded.

--=20
Paul Barker
Tog=C3=A1n Labs Ltd

