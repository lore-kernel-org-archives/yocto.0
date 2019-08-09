Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7A9FE00D89; Thu,  8 Aug 2019 22:28:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.53 listed in list.dnswl.org]
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com
	[209.85.128.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85292E00C4F
	for <yocto@yoctoproject.org>; Thu,  8 Aug 2019 22:28:56 -0700 (PDT)
Received: by mail-wm1-f53.google.com with SMTP id v19so4423045wmj.5
	for <yocto@yoctoproject.org>; Thu, 08 Aug 2019 22:28:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gherzan.ro; s=google;
	h=date:user-agent:in-reply-to:references:mime-version
	:content-transfer-encoding:subject:to:cc:from:message-id;
	bh=3nZgLb2e1U56ccQFVX8DOV4XwqGZ5UHeDbVhLIG5SC8=;
	b=l8JytfkBHNQGFmdCtMDul6ydSOP6cMjc86O0XBYVVou74gasYFTENkWi8XejtkIF2S
	VmHic1QHhUzkblxR3cYPxby1vEWfDAWeBN0AxpzLzQ2lkLmOv9NOV89BPF+1d/qTAgel
	jO1x2TWmom2P0VtKs0T+2QhdnlJEyYi5XdU0ASUgXMUxmYZY1B0rGqnYto9TCf6QVJpW
	gEyEHRNKyuCwAkJEjgkQr4AwhXbJtcdvDLb4/TDg86rcHQV7nxml6eb0rLInAZX0B028
	1Ti4s8wDOPYtWq6ZAwPEy11JwWCL8HwUuCuvNfpWmq4hSpI1KT+anCwAz46vyMbyy/Lr
	wQAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:user-agent:in-reply-to:references
	:mime-version:content-transfer-encoding:subject:to:cc:from
	:message-id;
	bh=3nZgLb2e1U56ccQFVX8DOV4XwqGZ5UHeDbVhLIG5SC8=;
	b=ER0B5pme7AkmtvHTqhxXqpPoeSSlczRvB3O/QKbaSpDcZ6tjfk8trd3/DJtgYGzJC+
	a1MgGqdy9ODv46vOaOahd+HowIdbV/ng8ljjx8Ga0t9LAQWnCK9/+E+Ze0DXMuQIpAOx
	2YH1KGwwsDngoLeBTUkR4bgGy+M2Bboe25KDwaVqTy3sjKrycMEXG959hdi7fdxFXMOa
	lVrmjKtbSjE+iswKpHA4SyowJlcgBuGIHskX5nI5JquN41VguHFy5+JVuLHaqfYNUbFF
	5VNq1jEKRMJs57SzOqqj4ka3yeAOcgKCAaXHV72pElul2EIa9SVOSExjuVjGbTv/W+Wl
	C2EQ==
X-Gm-Message-State: APjAAAXvo+sVRCrOA+2hm15K7XxO/v4XItJQQxMyD47owEy2KdKDU5qu
	7lWuAPSaiNIiPSVCSL8OA5Idne9rFOY=
X-Google-Smtp-Source: APXvYqxKsnk0ESVokb7hHCVrO9/Ei7WK15EigLWLcHiH7u+Kx/um14hE3cJyKTDL0v30gAzehU2/uA==
X-Received: by 2002:a7b:c155:: with SMTP id z21mr983165wmi.137.1565328535109; 
	Thu, 08 Aug 2019 22:28:55 -0700 (PDT)
Received: from localhost ([185.69.144.254]) by smtp.gmail.com with ESMTPSA id
	s64sm3253368wmf.16.2019.08.08.22.28.54
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 08 Aug 2019 22:28:54 -0700 (PDT)
Date: Fri, 09 Aug 2019 06:28:48 +0100
User-Agent: K-9 Mail for Android
In-Reply-To: <CAMKF1sp83LreXgyGTgVuqUrtjKbTEcgYVDQHwabDEvjupimj+w@mail.gmail.com>
References: <36866779-21f7-483f-f7a0-f28d4318135f@faresoftware.it>
	<CAMKF1sp83LreXgyGTgVuqUrtjKbTEcgYVDQHwabDEvjupimj+w@mail.gmail.com>
MIME-Version: 1.0
To: yocto@yoctoproject.org, Khem Raj <raj.khem@gmail.com>,
	Mauro Ziliani <mauro@faresoftware.it>
From: Andrei Gherzan <andrei@gherzan.ro>
Message-ID: <35F0F69A-5957-4137-82CA-35CB1ED3542E@gherzan.ro>
Cc: Yocto discussion list <yocto@yoctoproject.org>, scott@jumpnowtek.com
Subject: Re: meta-rpi vs meta-raspberrypi. Which one?
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
X-List-Received-Date: Fri, 09 Aug 2019 05:28:57 -0000
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable



On 8 August 2019 20:59:03 BST, Khem Raj <raj=2Ekhem@gmail=2Ecom> wrote:
>Meta-raspberrypi
>
>On Thu, Aug 8, 2019 at 12:57 PM Mauro Ziliani <mauro@faresoftware=2Eit>
>wrote:
>
>> Hi all=2E
>>
>> I'm working on a RPi3B with pyro and qt5/qml
>>
>> Which layer between rpi and raspberrypi?

TIL : there is a meta-rpi layer=2E It could use a better readme descriptio=
n because the current one can be confusing=2E

--
Andrei Gherzan
gpg: rsa4096/D4D94F67AD0E9640 | t: @agherzan

