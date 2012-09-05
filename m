Return-Path: <twoerner@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4E85E014CE
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 08:20:50 -0700 (PDT)
Received: by lboi15 with SMTP id i15so525052lbo.35
	for <yocto@yoctoproject.org>; Wed, 05 Sep 2012 08:20:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Y5z12Sb6fWd5EJCKdqxchVhVSNpzL3WoKW9Wbe0ViEQ=;
	b=jUJw3J1N1xofRQf+CtScFqE08PxpxcxI4vGuJS5hF9SUrkh6tdwkBWHFnX3h4pLnHA
	oB9KezQUq3ax3hqSEy7lS4M3MS5QRC5aeE7z6ncMVecnQ5nPSOiYgZrV6+TfTSXCD/1N
	VPXlE/UDY5AAWw3gMtnMFEBKGLNIi9gnVg25iH7nMVCXabd8q6ByzeykScVpPC9SMqFw
	vnLi7MCzjJ8A8yL7ip+whFRNUGl4kbbIAPTLNiOfqsdOh3wggqnw90k1SDF7Wjr57yaK
	mNDzyP3TReeFdLynZ+7ELk/aIdVnCx0R5b4EEoDxgbcPtyqHjxkdso/VOTkdpkb3Du64
	TxwA==
MIME-Version: 1.0
Received: by 10.152.122.9 with SMTP id lo9mr12913639lab.41.1346858435283; Wed,
	05 Sep 2012 08:20:35 -0700 (PDT)
Received: by 10.112.37.2 with HTTP; Wed, 5 Sep 2012 08:20:35 -0700 (PDT)
In-Reply-To: <50472249.1010009@communistcode.co.uk>
References: <5044EE55.4050208@communistcode.co.uk>
	<50451A77.1020609@r-finger.com>
	<50472249.1010009@communistcode.co.uk>
Date: Wed, 5 Sep 2012 11:20:35 -0400
Message-ID: <CAHUNapQmyBhDVfCHD2H2JO1NmSN6atW1XO7uQr+sH-nGJKgiKg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: ml@communistcode.co.uk
Cc: yocto@yoctoproject.org
Subject: Re: Building a Custom Raspberry Pi Image using OpenEmbedded and Yocto
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
X-List-Received-Date: Wed, 05 Sep 2012 15:20:51 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Sep 5, 2012 at 5:58 AM, Jack Mitchell <ml@communistcode.co.uk> wrote:
> This is now livefor anyone interested.
> http://www.pimpmypi.com/blog/blogPost.php?blogPostID=7

Shouldn't the instructions include a step adding the meta-raspberrypi
layer to conf/bblayers.conf?

