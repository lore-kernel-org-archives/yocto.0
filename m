Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39C59E00AB3; Thu,  6 Sep 2018 04:52:56 -0700 (PDT)
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
	*      [209.85.218.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E391E00A85
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2018 04:52:54 -0700 (PDT)
Received: by mail-oi0-f46.google.com with SMTP id v198-v6so2217685oif.9
	for <yocto@yoctoproject.org>; Thu, 06 Sep 2018 04:52:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=JxygH50Ba3u0NS6TMRCXurCF4+tU6DvQYcCCys+paUA=;
	b=RWWmdgFNJsnAfy4yD7WzyZew3Fed9FdWPe2SfI9PAuHlItGsMGpAHGDbGiT2tAvLH2
	RBQzw1ZBGV0P9MU9sRVru6EtwLV2+gdF7z9rILRP+2drDdIREOyOapTaA7quXjiafsom
	C211hzkJyPWEFSXIq0UWrp8THxq6exBcSaC7QFXJf4JM0WSkz++QlCz8qXtyui9Z+vdt
	S8bBJIw10G12vZKYmHZS6A1I56Z1oNatjR/zi6FUMfPAOWZWQGV3Rp50M/DojFHopvSt
	mmUaiKgFM05tPmQSpyBDEhOtJCOkkmco+QBqD2qUYZAjAfG1qtxj/04bBjK1zev/4qZC
	eoAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=JxygH50Ba3u0NS6TMRCXurCF4+tU6DvQYcCCys+paUA=;
	b=TY6QgEiegGGjxNMTgUJxdbb+IPfBH4yqWsN+zvpFbK4hyBlGmnVRvZbJpSsdq2q5dG
	+HXXE5GZD+gQsyXilkb0MxD16qtILfqiBN/97I7mXUNHymVZ3Wvnt62AAsJd/Hotf8Mn
	Qw4vgcq6nuiDZOtuedIAiPio/7+xn/ccQ2YsBQyIkUIvGuh6uCBFouPIdimN/Ff0EN3q
	rqJkpowkPEMUsE+c0C4BvQyautluvsOSL7dH0nWhq9dyhrxd4zCwVskdbpZ5QosS9Pow
	JGGfoCFAiY4Dkj0zqHjK8OW2CSBn7eGEhqmgHgtQquqgIjasLY6a/1ff2tYIndx2x46D
	E0Rw==
X-Gm-Message-State: APzg51Bw17zuEQIsVXYZ0zNJ3CjOOKe7l8hjsLZtcxs4ihoJ1gSSlhfc
	nNbAQ+TJ4REQXelvg8IAeGS2yNbaObCtXnMztck=
X-Google-Smtp-Source: ANB0VdbBQbadxmifE71fLyYkLYMFXKFGORqOpo3JYk1K1iGAjuyKSXMoWg5dlLAQSa2UOUK/ljvxAt7JJO3A2aCl7lg=
X-Received: by 2002:aca:3ad4:: with SMTP id
	h203-v6mr2359418oia.294.1536234774436; 
	Thu, 06 Sep 2018 04:52:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:5c9b:0:0:0:0:0 with HTTP;
	Thu, 6 Sep 2018 04:52:53 -0700 (PDT)
In-Reply-To: <CAEhQi8=UHJzm-Kfx_6sBZLAtjxJCChfxKaQtHkoAUCAWt60Xhg@mail.gmail.com>
References: <CAEhQi8=UHJzm-Kfx_6sBZLAtjxJCChfxKaQtHkoAUCAWt60Xhg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 6 Sep 2018 13:52:53 +0200
Message-ID: <CANNYZj9B75b6rak5_SESjeSiL=vgMkFS82TFdaToKcw73cRvhQ@mail.gmail.com>
To: =?UTF-8?B?TcOlbnMgWmlnaGVy?= <mans.zigher@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [Question]: do_configure fail if cmake project is making use of ExternalProject
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
X-List-Received-Date: Thu, 06 Sep 2018 11:52:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Sadly, Yocto is not well equippped to deal with projects that download
stuff from the internet as a part of the build process. I'd say if
it's just one project, write a separate recipe for it, and build it
via that. Then install into the original recipe's sysroot or build dir
as needed, and make sure the project doesn't attempt to download it
anymore.

Alex

2018-09-06 13:05 GMT+02:00 M=C3=A5ns Zigher <mans.zigher@gmail.com>:
> Hi,
>
> I have a cmake project that is making use of ExternalProject_Add. The
> external project will make use of git clone to pull down the project. The
> problem that I am seeing is that the do_configure will fail because it
> cannot find git which is not part of the sysroot the reason for git not
> being part the sysroot is that git-native is included in ASSUME_PROVIDED
> which prevent me from getting it into the sysroot and when running
> do_configure it will only look for it in the sysroot and not on the host =
if
> I am not mistaken? What would the best way be to proceed to solve this
> problem?
>
> BR
> M=C3=A5ns Zigher
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

