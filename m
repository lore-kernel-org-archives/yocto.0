Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f173.google.com (mail-ve0-f173.google.com
	[209.85.128.173]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 1AAEAE0146E
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 00:55:28 -0800 (PST)
Received: by mail-ve0-f173.google.com with SMTP id oz10so1074156veb.18
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2013 00:55:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=SmimlW5/9g006Db5ZgFik5FNQ8r+usg7xzyXiEtDe0Q=;
	b=IC2HusCwSjpOMUnacKpil5XtjP+oNSmeRNacv1zbRoi0Kd546fCh0SdMCiqG5aD8/G
	I75CNBymcXh4M8dh+14dxD3nQWIUba/Vk1sBZKSFieCkb4drFBhnnUl/FH3WUYqkOMH7
	eC5hQ1eA2gWTQpex3CFk8+F6ZOB6UJxUA205mcjWQFCzkGGa8+Q6cHxizQ/FbqItDzB9
	G7M3M9ex7Y+8EfTZ6QuvTg4KJ9GvDvcLV583l9MD+rgh8+LvHBEBvuuQBcwKja3Qh3M1
	roubh3IvXGTkzT7ll5/HO4RhbQ7V1KzXYbpGumhyIl4gYhpD2ZYcE1GAHm0x9JU0Wmgp
	oPag==
X-Received: by 10.52.92.225 with SMTP id cp1mr543002vdb.41.1362732927781; Fri,
	08 Mar 2013 00:55:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.219.195 with HTTP; Fri, 8 Mar 2013 00:55:07 -0800 (PST)
In-Reply-To: <38dd620e.10d77.13d457220af.Coremail.huanmateme@163.com>
References: <CAFD161nCzH4RB-1dsa2Gy7wYgq0ytsFM-TqiwMCrOxLxKor7-A@mail.gmail.com>
	<5133CBD7.5020903@communistcode.co.uk>
	<38dd620e.10d77.13d457220af.Coremail.huanmateme@163.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 8 Mar 2013 08:55:07 +0000
Message-ID: <CAJTo0LYLUK+QiLa7V8iOnAGKshB5XHMab-58wcxu2mkkcP-DQQ@mail.gmail.com>
To: Biao <huanmateme@163.com>
X-Gm-Message-State: ALoCoQljQqUb7EHRaMv+Nr/gheh5sh5fc7X3lhf8PGEQfc6krGnb7OtFq8tO1j5QOuAKgmsCmD9K
Cc: yocto@yoctoproject.org
Subject: Re: Trying to bitbake core-image-minimal on Archlinux
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
X-List-Received-Date: Fri, 08 Mar 2013 08:55:29 -0000
Content-Type: text/plain; charset=UTF-8

On 7 March 2013 15:22, Biao <huanmateme@163.com> wrote:
> One dummy question, how to find out the list of all "sanity tested distro",
> i just saw a long list from the output of "git tag".

Have a look in meta-yocto/conf/distro/poky.conf, specifically
SANITY_TESTED_DISTROS.

Related: if you get the warning but your system is fine, then you can
set that variable to "" in your local.conf.  I do this as I run Debian
Unstable, which for obvious reasons isn't certified.

Ross

