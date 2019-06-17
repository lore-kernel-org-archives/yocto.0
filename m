Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8888AE00D5D; Mon, 17 Jun 2019 05:03:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
	[209.85.166.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD11DE00D89
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 05:03:42 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id u13so20637076iop.0
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 05:03:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=NwRE6ew5xVL53KhY+mz2RMukyNy0BZ0E0gWQVOthqPc=;
	b=NhhUTz+yhaV0CPDOjGSly956l8ILQrhxZHyA/esFI1ngkPnGUwVuElzO7Fnv3a1dYW
	+gQ2JhBYiMawG6tWOTeeVYR7daXGqcbwsg6TLDIBIXCM4Qu/pmufXWQszp/fcu4nQhyT
	diDS5Hzoo10/b6vXRPH1Zrl3Emlb65h9sPAze9uwVK8T3AF0aAa2EhU1Gg2/fBMoaSXk
	FkLXEiamWF/Jyw3Y8vNL1YzRcAyPmjDfunptfx7CTRIikUdd+GNuaJ0rQDa44SEMPbFN
	f4nTGCjsgFAcnDKXXPDBUQFGs4HpJp3YlFdkTPSZ+1OknNH47FvuTnkiSZ2ywaEM8c3F
	tMPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=NwRE6ew5xVL53KhY+mz2RMukyNy0BZ0E0gWQVOthqPc=;
	b=Zua3NV8aAqH45ySAyM4+Rji39zCQr00AxtOL7PmUlzPL2tapKYnqTAT5yHS8cwmJuG
	+nnTFx1MhP05weG4wzaf0plz0SwWU5jlciZt00sQsjE/XvsYPRBJBLAlg37LPHdkPDFc
	i0PsbqaIx52+MLvD0X6a7ALVPx49J1vvEsAznmZTQqmhBLwuLUErxNQFdJQJFcwEbzQL
	UwAUngdTYigc3+8lavs9nvf0TDOXXJpCNh5YO0JqPg5MrOcvNvrpQEKfHwkKPw4eIqXc
	O/+l7SKfzi2ECSR1Ll5vQqTBsBsAdY8mkp5igG3qwnI6S6Q0RRFLt8WlPCJz+QDAZ9mA
	n1jw==
X-Gm-Message-State: APjAAAWdOSaWPO+76qltQpXYMbki4r6BVBJhNqnmtjcuV/uM8jpwJpZm
	6D9nwjPE4cvqxCiZTxWkPdOzUF1cdJBVx7DOBrTefeGd
X-Google-Smtp-Source: APXvYqyI1w7NMLFkA6iJ7n3M+Dmg/JnkN80RMmVUy7eXKMvZy1UZ2A+DvRNVM78E0eNz1pyW35G+RhyGh43oLvR8tXg=
X-Received: by 2002:a6b:6611:: with SMTP id a17mr19729918ioc.179.1560773022372;
	Mon, 17 Jun 2019 05:03:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAAx3WaCCPCnnTmwtr6p=nZ1Z2CG=Ohq8JHzuGTcWZx-ZYrkxGA@mail.gmail.com>
In-Reply-To: <CAAx3WaCCPCnnTmwtr6p=nZ1Z2CG=Ohq8JHzuGTcWZx-ZYrkxGA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 17 Jun 2019 13:03:30 +0100
Message-ID: <CAJTo0Laj3JiNaQTEg6sx=3xgJ3UM464XEqc+31opRvKYXaLV_Q@mail.gmail.com>
To: Gabriele Zampieri <gabbla.malist@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Share SSTATE_DIR between instances
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
X-List-Received-Date: Mon, 17 Jun 2019 12:03:43 -0000
Content-Type: text/plain; charset="UTF-8"

It's always a good idea to share sstate between builds.

Ross

On Mon, 17 Jun 2019 at 12:32, Gabriele Zampieri <gabbla.malist@gmail.com> wrote:
>
> Hi all,
>
> is it a good idea to share the SSTATE_DIR between a docker container (used with GitLab pipelines) and the local bitbake instance? They both work on the same MACHINE.
>
> Gabriele
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

