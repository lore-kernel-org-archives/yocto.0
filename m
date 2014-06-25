Return-Path: <lukas@dramiel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48B8DE00509; Wed, 25 Jun 2014 07:43:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
Received: from mail-wg0-f44.google.com (mail-wg0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0469CE006B7
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 07:43:00 -0700 (PDT)
Received: by mail-wg0-f44.google.com with SMTP id x13so2148135wgg.15
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 07:42:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:content-type:mime-version:subject:from
	:in-reply-to:date:cc:content-transfer-encoding:message-id:references
	:to; bh=QyzEmZM/k02nzOzYt9oht1vbV1yMx12p81LAmByFkHM=;
	b=jGOB/MW2SeByo0bBYJ/CQ6U9oi8yQHCuNrJbX4guDX2CnG/QoWP+KH3FsASsbY8MCR
	MWhtWwLpEMl+Oi1nDP5LTaIDNgohEfe4yC6ddyIKY1QzALBcxK/RkPBuMUVsLlP8shH4
	Cc89OOlcfczlFKx7PiuF1gUYJBeGh8dJXnzajlCG6ogJxNAH18UKT7C7KlfemxBh1gBh
	e9+z0EZW38lL7nkP0HWDp4e/lXYCEUKf4tKSBtkHPl86Ss7BJ/pEkXcMx6eFNQBIzXry
	Z2KpXP6D9KMcflm6dItvkCFRrD+PgaS0oGzSxIbUhUWSbk3IkJmB3218Qn4RhEArnNcA
	Y3Zw==
X-Gm-Message-State: ALoCoQm7jhYrH+XBOTzsqyBWEjq6rnjfTnjqzPzP6Cq8YIhjtRJCbsL4/HjQzpxipGa6hkTcMLJD
X-Received: by 10.194.80.161 with SMTP id s1mr9937343wjx.47.1403707378129;
	Wed, 25 Jun 2014 07:42:58 -0700 (PDT)
Received: from [192.168.1.6] ([46.16.120.77]) by mx.google.com with ESMTPSA id
	hb8sm46074286wib.12.2014.06.25.07.42.56 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 25 Jun 2014 07:42:57 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.2\))
From: =?windows-1252?Q?Luk=E1=9A_Novotn=FD?= <lukas@dramiel.com>
In-Reply-To: <91B4C1B91AAEFD42AC985EA0F3D4E66886162A9F@kihagwinex01.int.kistler.com>
Date: Wed, 25 Jun 2014 16:42:49 +0200
Message-Id: <CC238BE1-8835-4D0B-9A22-45CBC530F7EF@dramiel.com>
References: <91B4C1B91AAEFD42AC985EA0F3D4E66886162A9F@kihagwinex01.int.kistler.com>
To: Isak Lichtenstein <Isak.Lichtenstein@kistler.com>
X-Mailer: Apple Mail (2.1878.2)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Create own image type
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
X-List-Received-Date: Wed, 25 Jun 2014 14:43:23 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Hello,

I can=92t directly help you with this, however I recommend taking a look =
at meta-raspberrypi ( https://github.com/djwillis/meta-raspberrypi ) as =
it adds it=92s own image type =93rpi-sdimg=94.

Lukas

On 25 Jun 2014, at 16:04, Isak Lichtenstein =
<Isak.Lichtenstein@kistler.com> wrote:

> Hi all,
> =20
> I=92m trying to create my own image type. I thought that it would be =
enough to create a myImage.bbclass file implementing IMAGE_CMD_myImage =
and extending IMAGE_TYPES +=3D =93 myImage=94.
> =20
> But this isn=92t working and I didn=92t find anything in the manual.
> =20
> It this possible at all ( can=92t imagine that it isn=92t) ?
> =20
> Would appreciate any hint possible.
> =20
> Best regards
> =20
> Isak
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


