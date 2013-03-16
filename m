Return-Path: <insop.song@gmail.com>
Received: from mail-wi0-f182.google.com (mail-wi0-f182.google.com
	[209.85.212.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B1DCE0121B
	for <yocto@yoctoproject.org>; Sat, 16 Mar 2013 01:20:39 -0700 (PDT)
Received: by mail-wi0-f182.google.com with SMTP id hi18so1153171wib.15
	for <yocto@yoctoproject.org>; Sat, 16 Mar 2013 01:20:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=1TK/P90nr9bjzAVeNPiTVdbIGbWov7kzuBlUqRlQI9M=;
	b=nWzf4Zjh10kP1hX+QRhikg6s3VC5DLtRU2Z9eXlVINQktKiLoSUxbGUYPxYk/drDsU
	y1/z3ahdgxdC5Z2U4mmsOAeTLP5LoPX3SPoRsQ8AA1bQsXJfU+fLAfRoPKMmcy8aWgCs
	nBhed1YyQu6mkqtfnPJtZUSYMXPwRl8/F+vpZCm5SPDVVNmEF5sn/EAM38xH1LdwQZJp
	15ejeKDZJRd9dtbm/QDjHZCjd1U0zrNU9abakj1rP+65p5kO+gi/1akCUpr/UgwvYAKM
	++JC3ZkhbUC40GM/EPdU7weEsA5aRluGS7BUIsZ2974OHj6+d7IoDYX1ECxjs1FXY6ln
	ix2Q==
X-Received: by 10.194.76.37 with SMTP id h5mr15477613wjw.21.1363422038198;
	Sat, 16 Mar 2013 01:20:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.235.41 with HTTP; Sat, 16 Mar 2013 01:20:18 -0700 (PDT)
In-Reply-To: <5143451E.9000807@linux.intel.com>
References: <CACzyEJ_9EjNYwy=uy-h-wAyfFXfFQqiHKdavMPaTS8Fcso1H1w@mail.gmail.com>
	<5140B150.7050606@linux.intel.com>
	<CACzyEJ9apjW=+w7=9aLUD6UQtwmO6eyoac+XPBA_83MxEKdQdw@mail.gmail.com>
	<51422FD2.6070605@linux.intel.com>
	<CACzyEJ9TQd-ORK-ndiNi9ZrshPrbmSiwt6JiQF4AGyTwD0q9Rw@mail.gmail.com>
	<5143451E.9000807@linux.intel.com>
From: Insop Song <insop.song@gmail.com>
Date: Sat, 16 Mar 2013 01:20:18 -0700
Message-ID: <CACzyEJ8Uabr3EduqMWBR+-2MKLU1YCSw3k5SJ=HOnJLFqhB-Rg@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Loading a new yocto image to Intel Fri2 board
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
X-List-Received-Date: Sat, 16 Mar 2013 08:20:39 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Mar 15, 2013 at 8:58 AM, Darren Hart <dvhart@linux.intel.com> wrote:
>
> Check this image, I think you'll find that rootwait is missing for this
> image.
>

yes, no rootwait for "sda" type generation.

Regards,

Insop

