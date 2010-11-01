Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-iw0-f176.google.com (mail-iw0-f176.google.com
	[209.85.214.176])
	by mx1.pokylinux.org (Postfix) with ESMTP id 68D854C80132
	for <yocto@yoctoproject.org>; Mon,  1 Nov 2010 02:07:32 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by iwn7 with SMTP id 7so7137450iwn.35
	for <yocto@yoctoproject.org>; Mon, 01 Nov 2010 00:07:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:received:received:in-reply-to
	:references:date:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=iEyj3LrZgwhwxAoejU92011sDsQlQuSI4oAXM+1h6Ow=;
	b=LiIk5xSay28BWFNLkpqufUhEtpPRETwS9JX07vNWqmbHXQ5oQCD0/2BDCsyzd3e38v
	clA4YALBbTI8mft+Y0KGZa0LCj3wm/0909faNVk84grXSY5uIgb3sV7LXAhAadYoSOdE
	4zk+jntOU9rGnE/S0hfyJMnvYlrU/SgFP/grQ=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	b=sU+jpCZjvxKpJAOS2NQl5nEoU+DAXRg9muGsyl2nfOq2IAZdmbN6U+vmspYQ0Ariu2
	pfo9RSaN23f0+oc6POWF56Uq2WwHhrpSNxFE5owQA9QhmNnJgIxrU5/z2kOZVXkQ4eo8
	LZXX91uOPIfDQYVIsohvvXnTKSU2VIdh7fmRA=
MIME-Version: 1.0
Received: by 10.231.30.74 with SMTP id t10mr13031993ibc.171.1288595250462;
	Mon, 01 Nov 2010 00:07:30 -0700 (PDT)
Received: by 10.231.40.13 with HTTP; Mon, 1 Nov 2010 00:07:30 -0700 (PDT)
In-Reply-To: <B27EBC40D200ED48A3F4CC2EBEABAE0B25BC34EF5F@orsmsx501.amr.corp.intel.com>
References: <B27EBC40D200ED48A3F4CC2EBEABAE0B25BC34EF5F@orsmsx501.amr.corp.intel.com>
Date: Mon, 1 Nov 2010 08:07:30 +0100
Message-ID: <AANLkTinJYiqS9rTv6ioZUSdS5sbSob3WQ564T-6funmc@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: "Stewart, David C" <david.c.stewart@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Some photos of the four architecture demo
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.pokylinux.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.pokylinux.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.pokylinux.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 01 Nov 2010 07:07:32 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

2010/11/1 Stewart, David C <david.c.stewart@intel.com>:
> Check out
> http://www.yoctoproject.org/blogs/davest/2010/10/7/four-architectures-gro=
oving-together,
> my latest post to the Yocto Project blog. Some photos there of the UPnP
> demo.
>
>
>
> I also plan to post one up showing a little of the sausage-making=85 just=
 a
> little=85
>
>
>
> Let me know what you think.

Dave, the demo looked indeed quite impressive, and actually I was
trying to fetch the sources, but ....
git clone does not work for me. I've tried a few times and from
different systems/locations.
the poky master clones fine.

frans@frans-desktop:~/yocto$ git clone git://git.pokylinux.org/meta-demo
Initialized empty Git repository in /home/frans/yocto/meta-demo/.git/
fatal: The remote end hung up unexpectedly

Best regards, Frans

