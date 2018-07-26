Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D698E00CEA; Thu, 26 Jul 2018 08:19:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19DA0E00CE0
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2018 08:19:08 -0700 (PDT)
Received: by mail-oi0-f65.google.com with SMTP id k12-v6so3587513oiw.8
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2018 08:19:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=XkoIfUYrmPcptPqDgd9PEvyU2ORMMAyQ6sLSckf7K68=;
	b=Up3ZTThOG9LwXxJHolAZevFMgAH/4ErNeGR0zlv8t01sIpaeLJvMBVPVKEU5NUeurY
	LQVf9qRWgNksCQT9ziNB51o62Lph87azzyE/RNe+mjQSq7dxmNeCLC5eHYZB9DouEfrB
	m5njamPQyVElIR0vbigHnvpnWr1mJYAvqWZ3jC1giAwfi8O1fM7Bo7Q+jH/TK8df0cxn
	so/egvl6qnR/qxTNOIuJoV3eX2if9bARrFuT+d/7tKOXhhUQRtuQ+BKOxuU51GO+Zgdc
	jCUnw1OYpB8klo3KmEmny4N5WNgEPsJlsGqGN7F7Fvw0bR6mKnEjioolomkTs8Vwihar
	tHGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=XkoIfUYrmPcptPqDgd9PEvyU2ORMMAyQ6sLSckf7K68=;
	b=RsbviCAypUT/133Q57FVB8yxqF64con7o7nTbBzrPMCkpUGwNBjHVgigrSytrb3Bg8
	qStaRnn9fGxjsdomiJXdNAYLA+8O7s1LZTDc/2hUouMeGv9IcA8sISDUXMaRuqYq+JkA
	IuyWN/qT9/QDkHJWDGNH5DHQ+HU83HPIEGXJguLXyM8cv9pfIeAKziwvhVBzDK//fz9O
	BtupDFtsEGSDuAB3DVEi+j5d9aaiewroqZV9BybCtJzAZd2utMJrMlyNV9KvbSReRLwH
	Hi7dH0/dePoKPjqn2jYI6FIhbMan4uvK6qOCnjXwwsbwYddNTcv4d7DEDHF2BJjQ6pw5
	OYuQ==
X-Gm-Message-State: AOUpUlGDfPSi3qx3UE4iJPTbZRKBpHA7UzsVOCNTcZ9ond6Ksewt5DxQ
	4Zv2QLLTFSUOI7kyjYeOUe68is3+JEUlqny9MEE=
X-Google-Smtp-Source: AAOMgpfwbr5L0iYu2KUTtSbuunCljbKyDVPi9V70UlbVW6Ng+MVRtsInilXNsnJEHfaPcHIh15s+tCxol3BbMsvte9Y=
X-Received: by 2002:aca:e80c:: with SMTP id
	f12-v6mr2609353oih.38.1532618348584; 
	Thu, 26 Jul 2018 08:19:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90c5:0:0:0:0:0 with HTTP; Thu, 26 Jul 2018 08:19:08
	-0700 (PDT)
In-Reply-To: <CA+-BmJY3L5ur9MWSG4G-+T_5zd3H+8Wo0-cPD7qONimtoXfjUg@mail.gmail.com>
References: <CA+-BmJY3L5ur9MWSG4G-+T_5zd3H+8Wo0-cPD7qONimtoXfjUg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 26 Jul 2018 17:19:08 +0200
Message-ID: <CANNYZj8uUuZeLB-ij=towgBEuhxKrLxgxK+XrKpGhCnZtPgECA@mail.gmail.com>
To: Ayoub Zaki <ayoub.zaki@googlemail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Intel machine with 64 Bit kernel and 32 Bit user space
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
X-List-Received-Date: Thu, 26 Jul 2018 15:19:09 -0000
Content-Type: text/plain; charset="UTF-8"

2018-07-26 14:56 GMT+02:00 Ayoub Zaki <ayoub.zaki@googlemail.com>:
> Is it possible to define a MACHINE configuration with a 64 Bit kernel and 32
> Bit user space ?
>
> The user space should not be using a  x32 ABI.

I think (but I am not sure), that you can do it with multilib. Define
a configuration like this:
https://github.com/openembedded/openembedded-core/blob/master/meta-skeleton/conf/multilib-example.conf

Then build lib32-core-image-minimal. That image should include only 32
bit user space, but the kernel will be 64 bit.

Alex

