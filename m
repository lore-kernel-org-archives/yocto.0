Return-Path: <piotr.piwko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C554BE00C1B; Wed, 20 Feb 2019 03:37:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (piotr.piwko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.208.178 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com
	[209.85.208.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42EABE00546
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 03:37:27 -0800 (PST)
Received: by mail-lj1-f178.google.com with SMTP id d14so9322865ljl.9
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 03:37:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=EKGW+Lae19F4GJFogJq82oynwnh4gSlMC1rS5jVTgro=;
	b=cShsGmPOrfJB59IFetXIIyjyIx0B/rVJC3Hml6VIl//hxIwp4/aIwy2yJX7K1X6ZlG
	g0YZ+XmXsWWWpB+6uYbMOwE30GtiZ65zvqpes0WgZ9KPeSX19gWwWLm6kOM6FpQeG/yO
	it205YkiCEgO+CvlRNx29eN6DtIrmc76bnW1PjJJiVBL+gEmIANLkBbdusS9QgZX4Vy5
	oTwjatEWDpiRGwZa8K6wHgj/FQK9ygWUo41rolOcrMYcmVmvr1g44ylJLaRzfp5ti8RS
	hCU7+HBrZxjj7x5zfp4rS27I9mAMJ7EvEBhnXbMVJxLftbEPDU9C7IJnq+s/YDmu95kR
	CyiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=EKGW+Lae19F4GJFogJq82oynwnh4gSlMC1rS5jVTgro=;
	b=mKCtai5fcQHGIw8JDUr4smq22OEdCejbL6LyoOH1nAfarN9Q/5xdPi+EU7hrAmeJpv
	wvnvT5y0NP2tdm7Li84Omp0eyE00ukl9V844HllTGfsFE9Oai+BeBVFEBO7WgBBOVZXg
	BW5J/F+qyaHMUzmGWOiSN0lBGZwTCca7bwzJLFQSg4mEviyBd9797HQAC8nOgsbrSkL6
	5j067SCPD8ZyiYskojUMEqfkIUjbwBkP7Jgpl4n7IFC3/NBioRag8xEVXnOdMcW3JCkZ
	lX1iMHXP9HP6hz/GCTTTPs9M0KdynB9RgOj1IIJ7qMkuA7rp+YFgZfPtjEFgeaV7xLLj
	ioPA==
X-Gm-Message-State: AHQUAuaRd2wClzEVnTCbSMyJ0F3DIoEZvpKHaGmaK1PiagruwaK/4g2V
	VYReDUC0+laxY2GibC+loUAJVqyTVzvnFn5Zrp8=
X-Google-Smtp-Source: AHgI3Iao+giE5nzVYpHeE93Pk+T34XoH6cXlK+0wP/0ZAjT7INUcYmZOqPSXAD+pMHe94/+sHZJIyPhpKAWEp7HKw7M=
X-Received: by 2002:a2e:5d54:: with SMTP id r81mr19769682ljb.183.1550662646036;
	Wed, 20 Feb 2019 03:37:26 -0800 (PST)
MIME-Version: 1.0
References: <CAMTWR-PmwAqwoAzNAr10Ubk_pAKoq1+6wcfBJUMLLXvqeUDYxA@mail.gmail.com>
	<CANNYZj_h17p-pdGtPv552V+a3EOU+7pmT-oobxpn6-Ztrq9GaQ@mail.gmail.com>
In-Reply-To: <CANNYZj_h17p-pdGtPv552V+a3EOU+7pmT-oobxpn6-Ztrq9GaQ@mail.gmail.com>
From: Piotr Piwko <piotr.piwko@gmail.com>
Date: Wed, 20 Feb 2019 12:37:14 +0100
Message-ID: <CAMTWR-MrgEYx5s0kKx8WMkysJ-xjS7CKy_uwCNPcjT9ry6+pJA@mail.gmail.com>
To: Alexander Kanavin <alex.kanavin@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Add cmd.py library for python-core package
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
X-List-Received-Date: Wed, 20 Feb 2019 11:37:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

=C5=9Br., 20 lut 2019 o 12:30 Alexander Kanavin <alex.kanavin@gmail.com> na=
pisa=C5=82(a):
>
> On Wed, 20 Feb 2019 at 12:25, Piotr Piwko <piotr.piwko@gmail.com> wrote:
> > I would like to add cmd.py library to my final image. In order to do
> > so I modified python2-manifest.json file from poky delivery.
> I'm not sure why you had to modify the manifest, as cmd.py is provided
> by python-shell package according to the manifest.

Yes, you are right. I've overlooked it. Thanks a lot!

--=20
Piotr Piwko
http://www.embedded-engineering.pl/

