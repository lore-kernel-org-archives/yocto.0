Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qa0-f53.google.com (mail-qa0-f53.google.com
	[209.85.216.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 893ECE01602
	for <yocto@yoctoproject.org>; Tue,  1 Oct 2013 09:08:04 -0700 (PDT)
Received: by mail-qa0-f53.google.com with SMTP id k4so3455249qaq.5
	for <yocto@yoctoproject.org>; Tue, 01 Oct 2013 09:08:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=zmp/PL072kAP66h4WKgaO8nfCycwYuE/iGZCxeCoskU=;
	b=kpvAD+iBu7wp6Bv6hsIHAVFA4YmXzh4V2LJDUp9A36NW/a/gP3nG4GEEh3JNo12akS
	+flViWsLOB8soL8PK9VO4TaO+66gmpoERV+JvPcvsJFvnmJiJlWWTJ0g5SakNA0fXowp
	CdtzuM2IIblMps17JTaHBGFX0lZoDTFnkAfSH0jbjfbqP4CIB/7TC3ckE/miw8qdGmUf
	zmCHqutb0KYucbgNydnSxT06aFDaOtiDd9PzRc9l8x0v6pJEhSyjif8a5JDI4ELCFabS
	Pl12HcURlyOx5wXqdhsEc5nnexWa5zZ2IsdzXo94seuhD5WMwubEnL7WlSxCRAG2RIUa
	IxsQ==
MIME-Version: 1.0
X-Received: by 10.49.0.234 with SMTP id 10mr36523319qeh.67.1380643683127; Tue,
	01 Oct 2013 09:08:03 -0700 (PDT)
Received: by 10.49.57.197 with HTTP; Tue, 1 Oct 2013 09:08:03 -0700 (PDT)
Date: Tue, 1 Oct 2013 18:08:03 +0200
Message-ID: <CAFyqS9qVWnwvecQQGv04UVtyGwzQJ4VOT=wZLABqv7J9OwHDJA@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Can I extend split_and_strip_files() in packages.bbclass with Erlang beam support ?
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
X-List-Received-Date: Tue, 01 Oct 2013 16:08:04 -0000
Content-Type: text/plain; charset=ISO-8859-1

Ok, so now I am at it again :) The package.bbclass is missing support
for stripping .beam files. Nothing strange about that.
But, now I wish to extend this class with support for erlang .beam
files. Initially I do not wish to add this functionality directly into
package.bbclass since it will require an erlang execution environment
+ an erlang escript to run. I do not know if we want that ;) Is it
possible to extend the split_and_strip_files() function in some other
way using eg the _append postfix? Since this function is a real a
beast (with good reason), copying it and making it a strict beam
detector (instead of elf) might not be the most attractive solution
though :( I assume I need to sneak in the beam stripping in the middle
of the processing somewhere since once split_and_strip_files() is
completed, actual packaging will commence, and after that it will be
too late.

Any ideas? Might patching package.bbclass be an alternative? In that
case, how to avoid dragging in an erlang-native dependency into
package.bbclass if it is not needed?
(also considering erlang is not yet officially supported by Yocto/OE-core).

Thanks.
Hans

