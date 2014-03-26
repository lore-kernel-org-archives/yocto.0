Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f182.google.com (mail-ve0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 50078E00A44
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 04:16:51 -0700 (PDT)
Received: by mail-ve0-f182.google.com with SMTP id jw12so2101822veb.41
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 04:16:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=C96yhemOserkBgSJk3YAteSkGNlnK/Yuq2y+hQ/pAjk=;
	b=oXjs0lgwcYLb7NemL0O3nCumBtwhjkTp4FyZnUvfExxVAzTKyU4q6yirVTj0IFWvLd
	HNABeGsfSPQj/so4/ys2IHbLPxTXzHbxJ7qc8XBwtjgVqdXgUl4vqb7mFUsYi2wDRAqk
	iqzdLweyVPwYwLqvphnGqinVipLrF0m2Lu595jKvJTFcetl9eN+OjiRjWtuRwKLENwOQ
	RiQi9Xm9zQtkAdh99p/lAEj9aXz3fluDoOh0VrrWCsh5XAEgmeWkL+JfcRolQKLrW6mM
	jKnsEcmYTwEUjupj0ibu/QQgW6aFTWO/8f5h8/upw7buNNzNJmcyZLciT1RhrtcSvfd/
	7XYQ==
X-Received: by 10.52.166.103 with SMTP id zf7mr944514vdb.30.1395832611249;
	Wed, 26 Mar 2014 04:16:51 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.239.135 with HTTP; Wed, 26 Mar 2014 04:16:11 -0700 (PDT)
In-Reply-To: <CAMCfZKG3ku29ztup_Dc0HLrnTBB9SirC+VM2QFjChX6Pwv=oZQ@mail.gmail.com>
References: <CAMCfZKG3ku29ztup_Dc0HLrnTBB9SirC+VM2QFjChX6Pwv=oZQ@mail.gmail.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Wed, 26 Mar 2014 11:16:11 +0000
X-Google-Sender-Auth: nbsGLutAVnv4MfwDUpUZg3BGkME
Message-ID: <CANyK_8fBM+cR3GZ71PFpvrVkhDWzp4bWrQvCk7bxhuUGnEUASQ@mail.gmail.com>
To: Diego Sueiro <diego.sueiro@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Get rid of opkg install error
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
X-List-Received-Date: Wed, 26 Mar 2014 11:16:52 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 26 March 2014 09:47, Diego Sueiro <diego.sueiro@gmail.com> wrote:
> Folks,
>
> I have a image recipe which installs some custom files on rootfs.
> Instead of having a bbappend for each package that provides those files I
> want to concentrate it on image recipe.

Why do you want to merge all your custom files into one recipe? With
them separated into the packages they affect you can add/remove
packages a lot easier in the future.

>
> The problem is that I'm receiving the following error:
>
> "But that file is already provided by package"
>
>
> Is there a way to get rid of this error?

The only thing I can think of is to use bbappends to prevent the
original files from installing but not to add the replacement files.
Then have a single recipe which packages all the replacement files.
That way only one package provides each file.

Thanks,

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

