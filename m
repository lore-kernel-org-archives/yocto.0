Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 203E7E00BCC; Wed, 20 Feb 2019 03:30:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.54 listed in list.dnswl.org]
Received: from mail-ot1-f54.google.com (mail-ot1-f54.google.com
	[209.85.210.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4CC40E0091D
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 03:30:25 -0800 (PST)
Received: by mail-ot1-f54.google.com with SMTP id 32so39480137ota.12
	for <yocto@yoctoproject.org>; Wed, 20 Feb 2019 03:30:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=h9ODpy6go9tL/oCX6bOizaaLlDgF4WvU/lKKiTrzx+Q=;
	b=im/7VjirixwT3b0UYgtOHCffivYsmPLX+XXicml6oeRSgbfENryGu+m+GzfaHejuGT
	GVjiTiPVmoVD89FRDKjS5XXWAlxhGAHvlMb45UzNKGcqP24I3H7Hp9sFEEJzNIesIBy/
	Ly6fWGTq8SZh6rpticH7NYWX87UdeQuwxmn+2GyeHpxQtTLh9q/DyqWPhdd0bg8Q1TVo
	jSD83ZakwfOetAy+WszPCBf/QJIhwDKy4KpIGOty0sj+l1SLWhD7wsJYAAC7fIKPU6tW
	K3Pm7HbnrfAw0ThsO8HkGVDErViiDdHxxA8I8zhzmWFuFO2Dx9uwLPiUjhQ0aar6RLC2
	K3cA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=h9ODpy6go9tL/oCX6bOizaaLlDgF4WvU/lKKiTrzx+Q=;
	b=P92FFaTR0Rqt+4pcvMzafZUzrwG5djuJgVu4RCvQhYrMRi07FyV4feglB8OKeF64f7
	6q8VGCahx3YOF+wBP70azTm712Ab/cZTf1jK3gLB7byUp5Ey8tVtVYgwmK8QcUxdPdGt
	PuRJWzgZxGKq6KxFZE2WSh1bDZ7+4t6Fm2ZT+PAg+H6KlEcMs+goDij+qHG99EYeQyME
	f+YdP25VqZmtwZFBuM17RmmDygWQBDP3F6J5hK9DNGN9A+bOUXtpzVKJD5A39DZYtLMC
	kfWNvq63K5OiQjzHoXypt2QMp1EywqtZqeKwdVrECCg0NXO+8ekJ1nNkMQjaJcpaCGX7
	7+ag==
X-Gm-Message-State: AHQUAuY+KfhdXcvF7DQjf/UxaghNvI/tuhUxQPWWtwhR51sfY6fYevL+
	9rkFOHB2tPDM0Dhw8HghflwELbXSzFP0K7Q+axc=
X-Google-Smtp-Source: AHgI3Ib+3O7i2tXlqhKzqkyFvvpKQaUOHEw4xg6d2z8xqIn6Q5MZJkTOIYuw01j4joHTHt0c9SbwNZRK/PZTcWqZCt8=
X-Received: by 2002:aca:4c58:: with SMTP id z85mr5420618oia.140.1550662224658; 
	Wed, 20 Feb 2019 03:30:24 -0800 (PST)
MIME-Version: 1.0
References: <CAMTWR-PmwAqwoAzNAr10Ubk_pAKoq1+6wcfBJUMLLXvqeUDYxA@mail.gmail.com>
In-Reply-To: <CAMTWR-PmwAqwoAzNAr10Ubk_pAKoq1+6wcfBJUMLLXvqeUDYxA@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 20 Feb 2019 12:30:13 +0100
Message-ID: <CANNYZj_h17p-pdGtPv552V+a3EOU+7pmT-oobxpn6-Ztrq9GaQ@mail.gmail.com>
To: Piotr Piwko <piotr.piwko@gmail.com>
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
X-List-Received-Date: Wed, 20 Feb 2019 11:30:27 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, 20 Feb 2019 at 12:25, Piotr Piwko <piotr.piwko@gmail.com> wrote:
> I would like to add cmd.py library to my final image. In order to do
> so I modified python2-manifest.json file from poky delivery.
>
> This solution works fine. However, is there any possibility to do not
> change the global poky/python2-manifest,json file and get the same
> result? I would like to provide this library only for particular image
> not for all my supported ones. I tried to put new manifest file in
> upper layers of my meta, but it seems to not be taken into
> consideration by python recipe.

I'm not sure why you had to modify the manifest, as cmd.py is provided
by python-shell package according to the manifest. If you show your
changes, it may be easier to understand the issue.

Alex

