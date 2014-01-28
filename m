Return-Path: <maxin@maxinbjohn.info>
Received: from mail-bk0-f45.google.com (mail-bk0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C2ABE00405
	for <yocto@yoctoproject.org>; Tue, 28 Jan 2014 07:30:00 -0800 (PST)
Received: by mail-bk0-f45.google.com with SMTP id v16so428278bkz.4
	for <yocto@yoctoproject.org>; Tue, 28 Jan 2014 07:29:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=lW+nljACWHaSQUK5aZ2LwGEORnC69APa5Ob+eU0TT44=;
	b=h/iAtVfWPM0TxruDdahsZdCkCRsFUJzWcqv8wpKXJBp0ARoXP1Qx8JWFQ8WcFXsY6M
	SV1MwrY0UKTec3FvFAwZ7NLOe3FAXm0R5sJRt/CUBYDfxISZtLLA2SaDkl15V3fJD/BK
	8NTW5Zm0Xh+OP6XuOGRqcAxwVlUaSUrXdyjAvzzECK9F6+wWpMd7pujKeMHadyS2ywuR
	QkLH16Q9qcGziu/YsYRo10kZOKtSj09tsQrAmzB6YEJNCjI+9RfC2ZkYcM2Xnh3JWqQg
	kZt9A9KrtSGOW+3sI4mx9kOQmsb7JXKOyJ+LFD47hynvoKaZ+BwJvO8pudunqvpyXykE
	65mg==
X-Gm-Message-State: ALoCoQmy0tRatiI0pqvYZhb7X5KC02cefSX7SMgj5FMWSsi5UGw8QWuCoDLeR/oKx2sfi7zd1P8D
MIME-Version: 1.0
X-Received: by 10.205.19.65 with SMTP id qj1mr2728396bkb.1.1390922999398; Tue,
	28 Jan 2014 07:29:59 -0800 (PST)
Received: by 10.204.165.81 with HTTP; Tue, 28 Jan 2014 07:29:59 -0800 (PST)
X-Originating-IP: [192.36.1.252]
In-Reply-To: <52E7C04E.8040301@einfochips.com>
References: <52E7C04E.8040301@einfochips.com>
Date: Tue, 28 Jan 2014 16:29:59 +0100
Message-ID: <CAFicg84ZVJt+1ydD8fwNfwOowNZBRgW2y+0uELo4GF-bYMir4A@mail.gmail.com>
From: Maxin john <maxin@maxinbjohn.info>
To: Rohit Borse <rohit.borse@einfochips.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: log4cplus compilation
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
X-List-Received-Date: Tue, 28 Jan 2014 15:30:01 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi Rohit,

On Tue, Jan 28, 2014 at 3:35 PM, Rohit Borse <rohit.borse@einfochips.com> wrote:
>
>
> Hi All,
>        I am facing problem while compiling log4cplus package. It gives error in do_configure().
> Please find attachment for error log.
>

From the log, the build failure is related to the Automake version.

" configure.ac:11: require Automake 1.12, but have 1.11.2
  autoreconf: automake failed with exit status: 1
"

I will look into this one.

> Thanks and Regards,
> Rohit

Best Regards,
Maxin

