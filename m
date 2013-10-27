Return-Path: <wd@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D4B0E0172A
	for <yocto@yoctoproject.org>; Sun, 27 Oct 2013 01:39:35 -0700 (PDT)
Received: from frontend1.mail.m-online.net (unknown [192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3d6stY3NXdz4KK4F;
	Sun, 27 Oct 2013 09:39:33 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3d6stY3DK0zbbhS;
	Sun, 27 Oct 2013 09:39:33 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from smtp-auth.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024)
	with ESMTP id rT4wiQ78TdmM; Sun, 27 Oct 2013 09:39:32 +0100 (CET)
X-Auth-Info: SyM8RL+8RKfCtwMHpvRD7T9aYgJBhCVbvivaFlOsvKM=
Received: from diddl.denx.de (host-80-81-18-216.customer.m-online.net
	[80.81.18.216]) by smtp-auth.mnet-online.de (Postfix) with ESMTPA;
	Sun, 27 Oct 2013 09:39:32 +0100 (CET)
Received: from gemini.denx.de (gemini.denx.de [10.0.0.2])
	by diddl.denx.de (Postfix) with ESMTP id 3E25C1A4FA3;
	Sun, 27 Oct 2013 09:39:32 +0100 (CET)
Received: from gemini.denx.de (localhost [IPv6:::1])
	by gemini.denx.de (Postfix) with ESMTP id 049CB380495;
	Sun, 27 Oct 2013 09:39:32 +0100 (MET)
To: Edward Vidal <vidal.develone@gmail.com>
From: Wolfgang Denk <wd@denx.de>
MIME-Version: 1.0
In-reply-to: <CANwz6nzQq8a1RnqL3Ety2tJ-CkTOnOObQtiEVXu6+TOhve5LAA@mail.gmail.com>
References: <CANwz6nzQq8a1RnqL3Ety2tJ-CkTOnOObQtiEVXu6+TOhve5LAA@mail.gmail.com>
Comments: In-reply-to Edward Vidal <vidal.develone@gmail.com>
	message dated "Wed, 23 Oct 2013 10:09:45 -0600."
Date: Sun, 27 Oct 2013 09:39:31 +0100
Message-Id: <20131027083932.049CB380495@gemini.denx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf Streif <rstreif@linuxfoundation.org>
Subject: Re: uimage instead of zImage
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
X-List-Received-Date: Sun, 27 Oct 2013 08:39:41 -0000
Content-type: text/plain; charset=UTF-8
Content-transfer-encoding: 8bit

Dear Edward,

In message <CANwz6nzQq8a1RnqL3Ety2tJ-CkTOnOObQtiEVXu6+TOhve5LAA@mail.gmail.com> you wrote:
> 
> A uImage file is a kernel with a modified header for u-boot. A tool called

No header gets modified.  Instead, a new header gets prepended.

> mkimage is used to convert a zImage (regular kernel compressed image) to a

Actually it's pretty stupid to use a zImage inside an uImage.  It is
much better to use normal (uncompressed) kernel image, compress it
using just gzip, and use this as poayload for mkimage.  This way
U-Boot does the uncompresiong instead of including yet another
uncompressor with each kernel image.

> uImage file. And No, zImage files, as they are, are not compatible with
> U-Boot. You must convert them

You can boot zImage files directly with U-Boot.  That's what the
"bootz" command is for.


Best regards,

Wolfgang Denk

-- 
DENX Software Engineering GmbH,     MD: Wolfgang Denk & Detlev Zundel
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: (+49)-8142-66989-10 Fax: (+49)-8142-66989-80 Email: wd@denx.de
Hacking's just another word for nothing left to kludge.

