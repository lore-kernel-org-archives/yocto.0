Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FE2BE00C9A; Mon, 22 Feb 2016 10:46:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.47 listed in list.dnswl.org]
Received: from mail-qg0-f47.google.com (mail-qg0-f47.google.com
	[209.85.192.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A923E00BB6
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 10:46:20 -0800 (PST)
Received: by mail-qg0-f47.google.com with SMTP id b35so118055893qge.0
	for <yocto@yoctoproject.org>; Mon, 22 Feb 2016 10:46:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=tIVrSrxxuOxhiGc4GZbEHp7DA8iGbR1EKQCgLA/PYhk=;
	b=VewbdRoG3VXgqT1oN2h8tvcMuqNNwjvr5mOoGbOmH8bvkJqJn2MV8us6T7p2r7X9dd
	/beDQTjhPuXmIVuociz4jI9Y2Stcl6mZYRT3sY1IREIhiHxu0YfkD1ebaIricnBqJIO+
	1BhFwthC64ovez1BzvTn3Oh49Ys3bPc/YidLJRwijQN+W9rBU80YjVoH7CaW6cfWFEk2
	tBJ/s1FPILIGj/FOBgTHQ1K9YzMsV4SucjTO/EPtBh2qFfXC/0jotHkILzZ3mElVmyqu
	S0YBNye9lT+jP2fMIL/srBaB+6BzqZznwr1MwQGmrAumlDQzQoT7zPAHQZokUZPnpnmx
	WRfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=tIVrSrxxuOxhiGc4GZbEHp7DA8iGbR1EKQCgLA/PYhk=;
	b=PDzGOFO0uWjo1iV4ZkkqQsz5x92zINimDksZLdD5EQ/uwoO288N11kFXcWI7asInMi
	LIMC3kGZIIyUSueCv83V15ljarS2Cze9a/WZPAUbGGraftG1V9/NqlceZz91VXci/ahY
	DGDjYPj6fokWbUOecQhm1XDqBK9whaFyJ6mgAdg1PGjjUzJlM3VmUJPVGWRrVzkAPCzQ
	O1PL10jUNs7GPuPyG3jB8bm7SkJuFyhltDogeWLIvz0VobhgghD859AnOBqM07hf0Qsu
	jaOL0960CxT6kwYSMaJuLdhUwZY2Y/noH880VlLjF+/CQA9NVMTCCzFQG3PUO1gOKIz5
	A1YA==
X-Gm-Message-State: AG10YOTNUHriQf2fMmlfbkUO9sgEUvC7WgKXCA7O6QkmPkRIOVwU/IQu1NyuU44I71xoAUKwCPSnjObFUOj/Ew==
X-Received: by 10.140.238.8 with SMTP id j8mr38635965qhc.76.1456166779585;
	Mon, 22 Feb 2016 10:46:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Mon, 22 Feb 2016 10:45:50 -0800 (PST)
In-Reply-To: <1943070027.12677279.1456155669938.JavaMail.yahoo@mail.yahoo.com>
References: <1943070027.12677279.1456155669938.JavaMail.yahoo.ref@mail.yahoo.com>
	<1943070027.12677279.1456155669938.JavaMail.yahoo@mail.yahoo.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 22 Feb 2016 10:45:50 -0800
Message-ID: <CAMKF1sqoauqS_MwfVNgWcXnM8RJkDY1mN-uHDML+MR5g12VfOA@mail.gmail.com>
To: Oliver <urnen81@yahoo.es>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Post Generation of debug information
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
X-List-Received-Date: Mon, 22 Feb 2016 18:46:26 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Mon, Feb 22, 2016 at 7:41 AM, Oliver <urnen81@yahoo.es> wrote:
> I have the need to generate some scripts for a debugger tool. As a first
> approach, these generated scripts could contain paths on where specific
> binary files are stored on the file system.
>
> Such purpose has been partially fulfilled with a recipe implementing the
> do_compile task to generate those files, assuming not implementing the
> deploying tasks, nothing gets integrated in the final image.
>
> Therefore the debugger tool could go to build/work/temp/=E2=80=A6/myrecip=
e/=E2=80=A6
> (WORKDIR of the recipe) as a startpoint for such scripts.
>
> 2 Questions:
>
> -          There would be a better solution for this task?
> -          The task has not been as successfully as expected. Ideally I
> would access variables of other recipes to know where they are their
> output/intermediate files. E.g. location of an elf file for u-boot. Is th=
ere
> any way around this?
>

There are ways implemented e.g. you can generate an image tarball in two pi=
eces
1. binaries
2. Associated debug info and symbols

The untar both in same place.

Point your cross gdb to this location via setting appropriate sysroot
in .gdbinit
and that will be it.

However its not clear if thats what you are looking for. If you want to poi=
nt to
components build directory instead of a full rootfs then you have to enhacn=
e
the .gdbinit a bit more.

I am assuming that gdb is the debugging tool you are trying to use

> Regards
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

