Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B978E0123F
	for <yocto@yoctoproject.org>; Sun,  5 Feb 2012 16:00:50 -0800 (PST)
Received: by lagw12 with SMTP id w12so3682794lag.35
	for <yocto@yoctoproject.org>; Sun, 05 Feb 2012 16:00:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=wIkQG+PmiEIo4/zhRynyGBwzdEyZlf4+6YrQBRvhjPQ=;
	b=v6SfANJu6Zi/D8JrqUEvclRV39LmxmICDQ9HtRNDAo7Z7Qhn7Hl17crhNN30p15Dbr
	Ln3c81G0SVWh0UxSIQ642KJfstcbNTQH+eL24zAs7y0RxplUFSGSNXrD82/uwnucChV2
	9rc3aHfmXWOLjbDSfiB194PmZLCLRUQjpVkcg=
Received: by 10.152.114.169 with SMTP id jh9mr8192307lab.20.1328486449280;
	Sun, 05 Feb 2012 16:00:49 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.5.201 with HTTP; Sun, 5 Feb 2012 16:00:19 -0800 (PST)
In-Reply-To: <000e01cce455$55a1c540$00e54fc0$@sjjmicro.com>
References: <000e01cce455$55a1c540$00e54fc0$@sjjmicro.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 5 Feb 2012 16:00:19 -0800
Message-ID: <CAMKF1srLO9pd57iUBRTRb5i54gPk-mRu04nAue9XYUnTRrGWYQ@mail.gmail.com>
To: Sean Liming <sean_liming@sjjmicro.com>
Cc: yocto@yoctoproject.org
Subject: Re: Build Error
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
X-List-Received-Date: Mon, 06 Feb 2012 00:00:51 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Feb 5, 2012 at 2:27 PM, Sean Liming <sean_liming@sjjmicro.com> wrote:
> Did I miss configure something? Wrong python version?
>
> There was a post about the dash vs. bash shell. I am not sure what shell is
> supposed to be using:

you could add something like below to your local.conf

INHERIT += "own-mirrors"
SOURCE_MIRROR_URL = "http://autobuilder.yoctoproject.org/pub/sources/"

that should help a bit

