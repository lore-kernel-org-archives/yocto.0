Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f178.google.com (mail-ve0-f178.google.com
	[209.85.128.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6C3FE00BE0
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 08:06:26 -0700 (PDT)
Received: by mail-ve0-f178.google.com with SMTP id jw12so3492831veb.37
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 08:06:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=tX6OC08ORNMzjO2EhzgAnK500Wuwgr3bh5D3u2v0rxQ=;
	b=vvsRupFgFUH/2o8e1b8sBHdmYnBSUfBnjRL1yXIe/59lBU4Q0Gz9rMeCaWu5agVmWY
	6fVvqtAheT2ZqJWu49/t1wMm9r7UiDLZBmwg87B5Xc37/kECY2W5V7n2RDwynonJIhvd
	QV0yAWD8Kli55OnmVA52x1nwbeFSsB9gMmgqiLY1SARsYzRVmUSS3BsO5rFFgdjaTaSR
	JzfOfbP9XJfITJRDY3LPfD1ue2Q1bOWTYay7Lny/D5LN+PaCTtoTOwXFTt9L6FAhaSsu
	U9Hv1CK5SM/E3yE5OBQpnzt5HauRaPCLy+QdgD7RjccuzpXdz8m1bnMB4Zkpr5iGUN60
	tDaQ==
X-Received: by 10.58.181.170 with SMTP id dx10mr1322965vec.25.1397142385808;
	Thu, 10 Apr 2014 08:06:25 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.221.5.133 with HTTP; Thu, 10 Apr 2014 08:05:45 -0700 (PDT)
In-Reply-To: <CAKfC58tJSvWfPF0OZnBgawqw7+-7FOEzOikb=Qhwtz0vJFaTWQ@mail.gmail.com>
References: <CAKfC58sPYyCdKCLusG_gbu4B1fCie0PM6YFz+chdda61Sah7RA@mail.gmail.com>
	<2070676.utD6R3GvnO@peggleto-mobl5.ger.corp.intel.com>
	<CAKfC58tJSvWfPF0OZnBgawqw7+-7FOEzOikb=Qhwtz0vJFaTWQ@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Thu, 10 Apr 2014 16:05:45 +0100
X-Google-Sender-Auth: ebfXZcs5ZwKWJZJw4TgR4HOwKuk
Message-ID: <CANyK_8fCEVx3K-tzK8HRfeOVu1JQsqrZ9X-WKsqfMdRHV433OA@mail.gmail.com>
To: Romain <romain145@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: PREFERRED_PROVIDER entry in local.conf
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
X-List-Received-Date: Thu, 10 Apr 2014 15:06:27 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 10 April 2014 15:53, Romain <romain145@gmail.com> wrote:
> Hi Paul,
>
> I am now using "openssh-sshd" in IMAGE_INSTALL and it solved the problem.
> For jpeg unfortunately it can't be solved like this because others recipes
> depends on jpeg. I think the PREFERRED_PROVIDER is the only solution to
> choose between jpeg and libjpeg-turbo.
>

I've had these in my local.conf and working for a long time:

PREFERRED_PROVIDER_jpeg = "jpeg"
PREFERRED_PROVIDER_jpeg-native = "jpeg-native"

Have you tried these?

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

