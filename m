Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DAC4E01425
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 21:22:55 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so3645446pbb.35
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 21:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=YLj/6E4RIIi2s0ApnU2Ttt7BDLxnwQC9qlSYyLcoNzk=;
	b=tWmw742rJIZVXLGIxwJWE6dh1KC42Ho+SOiRtqvwjKnqE1egLdmuQK87chhit37FvN
	iVKdM151ESw6/3wX7VQiu3YLTPlOeK4jkrdCqbNz24aGPY74jh/aGnIluT5X8JYxmeYj
	b8ZAkDZ9B3NL1WFXPyb8L4Ny2owBve3ZIrIlhmj1a/IHhKuSRf/du4f1vQC4R1ugqas3
	ziX5bK19pA0f9hic78NJjhs6V6BQ5WAOjSIHzXgHoaElqmVlr4dx7+GXpOV4qwUBf+1g
	EPWcYFGt+vxAjS8E85PU0UDcwzl84PvitSN9maMpQo0l1vlPP5PML3gj4ufJkiMw9V/A
	QElQ==
Received: by 10.68.222.163 with SMTP id qn3mr5372224pbc.135.1340338974984;
	Thu, 21 Jun 2012 21:22:54 -0700 (PDT)
Received: from [192.168.1.102] ([94.205.109.242])
	by mx.google.com with ESMTPS id jz4sm37718259pbc.17.2012.06.21.21.22.52
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 21 Jun 2012 21:22:53 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAMKF1sozLtK1GP_vMn2UtAmi_+H12z5UOKaicxkjvNWQjBJUsg@mail.gmail.com>
Date: Fri, 22 Jun 2012 08:22:48 +0400
Message-Id: <406C76A0-84D0-4B18-8B35-9B375A34E17C@gmail.com>
References: <A932C833-018B-430E-874B-2281A3B80E64@gmail.com>
	<CAMKF1sozLtK1GP_vMn2UtAmi_+H12z5UOKaicxkjvNWQjBJUsg@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Error: PATH contains '.' or '', which will break the build, please remove this.
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
X-List-Received-Date: Fri, 22 Jun 2012 04:22:55 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Khem,
                   I noticed that my PATH variable had an extra colon :  =
, once I fixed that, bitbake starts to work.

However, I still get the following warnings:

WARNING: BBPATH references the current directory, either through an =
empty entry, or a '.'.
	 This is unsafe and means your layer configuration is adding =
empty elements to BBPATH.
	 Please check your layer.conf files and other BBPATH settings to =
remove the current working directory references.

How can I fix this?

The output of the following command is empty

$ bitbake -e core-image-minimal | grep -e "^BBPATH=3D"

$

I don't know what to do, to diagnose the problem and get rid of the =
warning.

Best regards,

Elvis Dowson


