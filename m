Return-Path: <mtownsend1973@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E7DEE00DF1; Thu, 13 Jun 2019 01:16:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mtownsend1973[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.53 listed in list.dnswl.org]
Received: from mail-ua1-f53.google.com (mail-ua1-f53.google.com
	[209.85.222.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 126EAE00D9D
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2019 01:16:20 -0700 (PDT)
Received: by mail-ua1-f53.google.com with SMTP id z13so6721590uaa.4
	for <yocto@yoctoproject.org>; Thu, 13 Jun 2019 01:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=VcV6mtEPUq+RIJLHT9iogeoNb38QS3OAOwoXvOT5hSI=;
	b=uq+N9ywfq+sng6/Fo8i3fpQwlrz71QHPpEDep8pnDXeltWxG98oEw18PLYfionelQu
	6KnuFAIODhTbl0z7bm8GHVaaybf+lRKltryO2juj60TCPXkVrhVN9WVJdc4WxEmqNXbs
	GZEJM+ibuxdON3fYAjfSOIiwdqeKy4e4EeaCMw8rX4qjaPKYHiw6JLHqOSAKL0gYNicZ
	RyPiMk3p1LTMTLkZB6odJinLRM3CFGXDo0a5KBSpWaxXQE+hwDLUjUJRm4G/dgkzlzh5
	Wf57waP9dWZBS5gyij2DKiv416U7Z+30WWV88pJ+Gv+2SZJIrilcGjJVidKk/RvIlvkb
	A/+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=VcV6mtEPUq+RIJLHT9iogeoNb38QS3OAOwoXvOT5hSI=;
	b=h7GHf06j2v3f+w+s7uyY7fEx2GILJA1OdXeylSx4oDBvbY+30q4A3rAcgG4dKo8xpV
	eUn8zmXIE2Ewfffhvd9Hf0ZuVEMGGPc7RyzJZmDHVNmenpniXv3mya4wy0gFDc8QD12i
	CR/g+WrhMKbAnnyJ67LJsIn7lu34YSv5aItlG3GGq6vqtQx5q8APH7NeNvhevoKE21Tj
	0zMTIkMXh2RgbFg3XPheqQTon/OUXDru9XORbiD2OIW0I0ocoxQQoO0ssaj/f1o104E9
	adn3X5OfQXQU/mQlrUZ5gzsvt0cqTGTgXTkhoVFm8QJzxC73ZSXgZwpRs96f7PpkWbUG
	Jodg==
X-Gm-Message-State: APjAAAXQvyXD787oUXveSAZinv4CgwKWuCgYo6uBbl+n0evEDFWjvtiJ
	+XYErFF45tIdBVrI1VJRlnWjQ2XoD9JaImlS7gdW0H/d
X-Google-Smtp-Source: APXvYqzT0QN2/u1nrQIKgKiv5UOlRJtiY+8vE6PkidGUqWT9vgry6UVvGDAQJWA423+HwqsBmCt8MeXADybIjcyIH1E=
X-Received: by 2002:ab0:2789:: with SMTP id t9mr7658563uap.69.1560413780084;
	Thu, 13 Jun 2019 01:16:20 -0700 (PDT)
MIME-Version: 1.0
From: Martin Townsend <mtownsend1973@gmail.com>
Date: Thu, 13 Jun 2019 09:16:09 +0100
Message-ID: <CABatt_zT5guZOOPS8hUkJ24RDTSMdjXJfe-OeC+UK-yk_uN6Ug@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
X-Mailman-Approved-At: Fri, 14 Jun 2019 08:08:25 -0700
Subject: nativesdk-expect configure error
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
X-List-Received-Date: Thu, 13 Jun 2019 08:16:22 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm seeing the following do_configure error when building
nativesdk-expect, this is in Rocko but the recipe doesn't look like
it's changed much in master.

 checking for Tcl public headers... configure: error: tcl.h not found.
Please specify its location with --with-tclinclude
| NOTE: The following config.log files may provide further information.
| NOTE: /ws/rufilla/curtisswright/yocto-rocko/build/tmp/work/x86_64-nativesdk-cwrsdk-linux/nativesdk-expect/5.45-r1/build/config.log
| ERROR: configure failed
| WARNING: exit code 1 from a shell command.
| ERROR: Function failed: do_configure (log file is located at
/ws/rufilla/curtisswright/yocto-rocko/build/tmp/work/x86_64-nativesdk-cwrsdk-linux/nativesdk-expect/5.45-r1/temp/log.do_configure.31445)
ERROR: Task (virtual:nativesdk:/ws/rufilla/curtisswright/yocto-rocko/sources/poky/meta/recipes-devtools/expect/expect_5.45.bb:do_configure)
failed with exit code '1'

To fix it I added

TCL_INCLUDE_PATH_class-nativesdk = "--with-tclinclude=${STAGING_INCDIR}/tcl8.6"

Is anyone else seeing this with newer Yocto versions? if so shall I
submit a patch for this?

Best Regards,
Martin.

