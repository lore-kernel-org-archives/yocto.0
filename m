Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E1A3E00717
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 23:28:25 -0700 (PDT)
Received: by mail-ee0-f48.google.com with SMTP id b45so96949eek.35
	for <yocto@yoctoproject.org>; Wed, 03 Oct 2012 23:28:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=wR+gN9BtEyLoP7TWQ+btWOF/V5JV+PAjfnFqkt+CPs4=;
	b=Sqh/eKwuqQpM8CNUdHc05td+RP1VdJu2QAPEmHQutNyMMjBaC8e/0MjOUenI34zltE
	vjuAZLuY4qC5l84srViJLiiuY3payr5gQXAST++/QWOfMnhH5sQQxZJw+iEvAz8Y9uve
	326oQ20wZLNAiGBKZU6bJhXZsVF2NpbG2uOFNsWfYy3FnSJb1l9YwudtSYSqIi2Rn+r8
	+ogGm4NzNEleY75K+gyQd9wFXqgtm57bOUq/e3ba7LBgxxc/PRY56PSFdyrRI5PMYRDW
	+LaGruKoUdRQmHjG5T0YDO88dS80B8NldNvzoliGP5uA2TwqfBlNfTXSEeUxlYo4zO41
	FKwQ==
Received: by 10.14.204.72 with SMTP id g48mr5900789eeo.45.1349332103888; Wed,
	03 Oct 2012 23:28:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.173.69 with HTTP; Wed, 3 Oct 2012 23:27:53 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 3 Oct 2012 23:27:53 -0700
Message-ID: <CAMKF1sp8-NT_JDrYjr4N7duFuMTndtrj-y4nv+2uaPn=+Nxnug@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [danny] multilib ends up with multiple provider error for virtual/lib32-libintl
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
X-List-Received-Date: Thu, 04 Oct 2012 06:28:25 -0000
Content-Type: text/plain; charset=UTF-8

Hi

On danny branch I am seeing below error when multilib is enabled for
x86-64 anyone seen it ?

ERROR: Multiple .bb files are due to be built which each provide
virtual/lib32-libintl
(virtual:multilib:lib32:/work/yocto/poky/meta/recipes-core/eglibc/eglibc_2.16.bb
virtual:multilib:lib32:/work/yocto/poky/meta/recipes-core/gettext/gettext_0.18.1.1.bb).

