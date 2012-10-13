Return-Path: <elvis.dowson@gmail.com>
Received: from mail-da0-f48.google.com (mail-da0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36D8DE003D6
	for <yocto@yoctoproject.org>; Sat, 13 Oct 2012 07:43:33 -0700 (PDT)
Received: by mail-da0-f48.google.com with SMTP id z8so2331081dad.35
	for <yocto@yoctoproject.org>; Sat, 13 Oct 2012 07:43:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=2IdMQ59p5KKwZPn3gEbXZhT9isQQowFRKMZFe13jDBU=;
	b=k3SE2bavnLV3uloQVqhewJOadSrZAWfah+Rgio1tiBsH9v2NplRidavPabdoeZ8c41
	lDOLOiX8DaJ8d4uo/yOGlp5s6Gt1xZb80/vQcyGYE0AUL1TJc54NaRHDxl2aSSFXUPAt
	Q00d43HCnEQ/6sNj64F+R00R5lTbsfEXwGq8h0GD56NcqNjXYQ5CKPb1lOUZoFgDFOV2
	1CYj1hSY6XTCbBZ2N7v1GedrjZisyVmVY9lCvbGJBeQsGd+wzfNX2urQ8jf2LOAwQJTI
	whx52jORQQy9wKMaxGO/iqocFSp4O81mEe2siHVqrGIwS5V2b2L5oUf3tJsqC+Dmz+5r
	0m/A==
Received: by 10.66.83.201 with SMTP id s9mr19211902pay.74.1350139410756;
	Sat, 13 Oct 2012 07:43:30 -0700 (PDT)
Received: from [192.168.1.100] ([94.205.106.220])
	by mx.google.com with ESMTPS id pw9sm6121968pbb.42.2012.10.13.07.43.28
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 13 Oct 2012 07:43:29 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <50797907.2060606@windriver.com>
Date: Sat, 13 Oct 2012 18:43:23 +0400
Message-Id: <34D3AD2D-1302-4F7F-B3F3-973FC0E95136@gmail.com>
References: <A1BA209A-96E5-45BB-BA77-52FB84A5C735@gmail.com>
	<50797907.2060606@windriver.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
X-Mailer: Apple Mail (2.1499)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Any updates to meta-zynq in the pipeline?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 13 Oct 2012 14:43:33 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Bruce,

On Oct 13, 2012, at 6:21 PM, Bruce Ashfield =
<bruce.ashfield@windriver.com> wrote:

> There are updates planned, but with some vacations (mine and others), =
since
> that last update things slowed down a bit. But work is proceeding,
> I expect something in the next few weeks.
>=20
> In particular, as an initial item, the BSP can be bumped to the Yocto
> 1.3 (3.4) kernel, and complete some work on remaining issues with the
> layer.
>=20
> After that, SDK updates, and other enhancements would be in the
> pipeline, but i don't have a complete visibility into those yet.

I'm more interested in updates to the machine configuration and tune =
files for the Zynq-7020 processor. Are there any updates planned for =
these? The processor uses a ARM Cortex A9 dual core CPU, so I was =
wondering where one draws on from, in order to get an accurate =
representation of the processor. e.g. use TRM for Zynq-7020 and then =
look a a TI OMAP 4430 or Freescale i.MX 6 dual core machine =
configuration, etc?

The kernel and u-boot recipes, I can migrate to the latest 3.5 and =
2012.x versions, so that shouldn't be a problem for me.

Best regards,

Elvis Dowson



