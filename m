Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f182.google.com (mail-ve0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41068E002E2
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 10:33:11 -0700 (PDT)
Received: by mail-ve0-f182.google.com with SMTP id m1so1135481ves.27
	for <yocto@yoctoproject.org>; Wed, 31 Jul 2013 10:33:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:x-google-sender-auth:message-id
	:subject:to:content-type;
	bh=vdxI+QwlgkyLXci7VQapiR536vGimEAyB44Ef8FteDY=;
	b=gyet4chyImHQKJyqitA0UzGJ6NDMtGfsxRJVD4vMXc6/31d7BILrQywdrkTzoTd1yi
	1nM5T231mjMe3b6fV8eEj9iRPNNFbwU43oPgdcKa9pUFrGxDapoCsdnXUkfz7KP5Hh8S
	BOTS+5eo3/8sfiZDeERcxhICzP1hJAHDePbIhiBJyvKpWbrhGvPUgy0srvydMf4h2wZh
	CPjiUi92G/QgJH+6A4tiFJXWgS23w7YvIVnM+Bhi0f8OItnoeOO8AVXuaFDDKZWVToKz
	YxQxpPiHf42Nj93qH17fPsEVlT/ebwFtmTnmVUGiahQSukVDazZksg/nvMlu3AYT8yA2
	1x2w==
X-Received: by 10.52.157.98 with SMTP id wl2mr9729172vdb.39.1375291990831;
	Wed, 31 Jul 2013 10:33:10 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.195.201 with HTTP; Wed, 31 Jul 2013 10:32:30 -0700 (PDT)
From: Paul Barker <paul@paulbarker.me.uk>
Date: Wed, 31 Jul 2013 18:32:30 +0100
X-Google-Sender-Auth: fGXg9vV4XMa9Io_iFEhGBtpBHVU
Message-ID: <CANyK_8fY=7P0MvFOJ1mSxwL0N7xDBQetfaoCiLZZTMU5khcKdg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Minnowboard
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
X-List-Received-Date: Wed, 31 Jul 2013 17:33:12 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

So I've just read about the Minnowboard, an Atom E640T single-board computer.

http://uk.farnell.com/circuitco/minnowboard/atom-e640t-platform-sbc/dp/2319581

The datasheet says "Yocto Project 1.3 compatible" so I think I'll be buying one!

Does anyone know what layer the support for this will be in? I'm
wondering whether it's in meta-yocto, meta-intel or something
Angstrom-specific.

Cheers,

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

