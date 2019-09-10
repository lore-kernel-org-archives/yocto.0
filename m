Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3730E00D84; Mon,  9 Sep 2019 23:15:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.54 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com
	[209.85.221.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5076DE00828
	for <yocto@yoctoproject.org>; Mon,  9 Sep 2019 23:15:40 -0700 (PDT)
Received: by mail-wr1-f54.google.com with SMTP id t16so17531905wra.6
	for <yocto@yoctoproject.org>; Mon, 09 Sep 2019 23:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:date:in-reply-to:references:user-agent
	:mime-version:content-transfer-encoding;
	bh=HfSWgd6Cchr/gL3hFnQH1abXv9zrJCs21KqiniDWa3E=;
	b=OTJzLhuH8i09ltx97Xop9sI2OSj3Asnh8dMWJXYnwkcB/tNtNtQRzQ77ytjR8wC8zC
	LtZ6KYGHCIkhDyp8cUkxD2HHjLXFdOsOIR4M6BwF15NmWf1he1rJtSndlFsJ6m2c7ycJ
	7rASR6RMvVSoIsFG36X6ZEWcm1CvW7rwx8RcI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=HfSWgd6Cchr/gL3hFnQH1abXv9zrJCs21KqiniDWa3E=;
	b=SWXHp/seg0OkL3lJN40YVHIEqUMqLxrA0hQuzDBedsDBjVhd5HqeWMww863nkbRomr
	66xQR5rjlLefHxZfI4DMGXiyRnScsPRYSuKM4ZmwgOXCRKJJx10a3aVhO/i7t+pll4zs
	3TDTOTOv2FwrrptYblDwtMVpB1seJ9mZmuV/NlfOQbi40EI0+sZT6eCDG2uyeGhi8oyZ
	Grm/GIaQ/a7LRbLubJVjVEgUFHMV0UX61eg28yeQKhxFEbULy5rvZ23OCvayujWEM3OF
	YCEEA0C4Dc0gvWcTR5n5cVrEHWOtS777NNqp/jGNrigJAHiW1R5x99Uspvthcg5DJGRf
	F/gw==
X-Gm-Message-State: APjAAAWWJJHb32NcsW5PcQJ5pOArmLKl9SI0ncuis+6e6hoMdVm0IG5H
	CGwPNYiPrcfq0PvC7G84mH88bFkcrFBm5w==
X-Google-Smtp-Source: APXvYqxMlkTe+aus1V9OybABEjQsO1MzsL2Uk+RAsirBTXpNsUEZjWr3FD+2o3EAY0/GOIBazd8IrA==
X-Received: by 2002:a5d:6648:: with SMTP id f8mr22867914wrw.167.1568096139401; 
	Mon, 09 Sep 2019 23:15:39 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	w125sm3593891wmg.32.2019.09.09.23.15.38
	(version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
	Mon, 09 Sep 2019 23:15:38 -0700 (PDT)
Message-ID: <c2be75ac2510e8fdf27f046a58754096037a9cc3.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Kaz Kylheku <kaz@kylheku.com>, yocto@yoctoproject.org
Date: Tue, 10 Sep 2019 07:15:35 +0100
In-Reply-To: <c0bca2ce55bd713b57c7a92ee3898a19@mail.kylheku.com>
References: <c0bca2ce55bd713b57c7a92ee3898a19@mail.kylheku.com>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Subject: Re: Pointless unlink-link in strip_execs?
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
X-List-Received-Date: Tue, 10 Sep 2019 06:15:41 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2019-09-06 at 11:52 -0700, Kaz Kylheku wrote:
> Hi,
> 
> I'm looking at meta/lib/oe/package.py, function strip_execs, under
> Yocto 
> 2.5.
> 
> It has this tidbit:
> 
>                      if s.st_ino in inodes:
>                          os.unlink(file)                     # <---
> of 
> interest
>                          os.link(inodes[s.st_ino], file)     #
>                      else:
>                          # break hardlinks so that we do not strip
> the 
> original.
>                          inodes[s.st_ino] = file
>                          bb.utils.copyfile(file, file)
>                          elffiles[file] = elf_file
> 
> If s.st_ino is in the inodes dictionary, doesn't that mean that the 
> paths
> inodes[s.st_ino] and file are already hard links to the same object?
> 
> In other words, those two link and unlink lines don't achieve
> anything?

I think its more subtle than this.

It will be in that inodes list if we already want to break hardlinks to
the copy having gone through the "else" section once before already. We
want one copy and all the hardlinks pointing to that copy.

The reason is so that we have one stripped copy and in our packaged
data, all copies hardlink to that copy.

Cheers,

Richard




