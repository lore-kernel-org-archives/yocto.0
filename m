Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFF00E007FE; Thu, 29 Oct 2015 00:22:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99609E0071C
	for <yocto@yoctoproject.org>; Thu, 29 Oct 2015 00:22:02 -0700 (PDT)
Received: by igbdj2 with SMTP id dj2so24473288igb.1
	for <yocto@yoctoproject.org>; Thu, 29 Oct 2015 00:22:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=h8K4bUklqLm2bqk3/eq6bHIbhZSs4Rk2Uv6p4bSUxlg=;
	b=TH4s7Sk9f+oRTTa+/hIj+SM0FdBZwxVTB9TVHuCzbyBbhgqQ6Nik6qmJrZv+ZdTec7
	DBmjXcGHsFJ1mZknSzVNHpyInPyTed9VEKgeKEYNV0mQ+289V8U1olI4PlXealIQGANK
	m4kGI7htBc5Oi4ipa3TE4/dMMyz54Wn0MzIewkAnclAYmbMwdop47kwgDzVbdwcXbZ15
	cJt7+KQ+cs3j+MNiooNMiic0XjZNi/aeK2KsuZWBjS3+cY565bBd2S53sMao3iH6UOc7
	TIVCXFdKz+lyibJGeM1UgnGK9+yDcglBxOiUceF2VrM1ZhF5f07aNaKO7t93dd9dPltd
	bv0Q==
MIME-Version: 1.0
X-Received: by 10.50.178.145 with SMTP id cy17mr7599606igc.1.1446103322061;
	Thu, 29 Oct 2015 00:22:02 -0700 (PDT)
Received: by 10.107.142.202 with HTTP; Thu, 29 Oct 2015 00:22:02 -0700 (PDT)
In-Reply-To: <CAF3SDA4v=-43Ege2hxyc-61RJXA8U2yqQKD2VQmy5D016W7USA@mail.gmail.com>
References: <CAGMdoFmGGd6QWhRWWhYQYajjmhVYugZh3zga0WNXbwN+vNWSBQ@mail.gmail.com>
	<3581319.5ZKXkvWLxe@peggleto-mobl.ger.corp.intel.com>
	<CAGMdoFn5tQ7TO07WpqHi0sR7kOKpNsmi=_MOnsNf=4J47_7mJQ@mail.gmail.com>
	<CAF3SDA4v=-43Ege2hxyc-61RJXA8U2yqQKD2VQmy5D016W7USA@mail.gmail.com>
Date: Thu, 29 Oct 2015 00:22:02 -0700
Message-ID: <CAGMdoFnz_0sw1KDvH2Drx-k_qpF87SEmMtq7sNLXTNRJMcT9uw@mail.gmail.com>
From: Edward Wingate <edwingate8@gmail.com>
To: "Daniel." <danielhilst@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: kernel defconfig configuration
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
X-List-Received-Date: Thu, 29 Oct 2015 07:22:08 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 27, 2015 at 5:36 AM, Daniel. <danielhilst@gmail.com> wrote:
> I suggest that you do an "bitbake -fc configure YOUR_KERNEL" and
> inspect the .config WORKDIR folder. Is that yours .config?

I'm not sure if this is the WORKDIR I'm suppose to be looking at, but
after I ran that bitbake command, I found my defconfig in
build/tmp/work/wandboard-dual-poky-linux-gnueabi/linux-wandboard/3.14.28-r0

It is also in .config.old in
build/tmp/work/wandboard-dual-poky-linux-gnueabi/linux-wandboard/3.14.28-r0/build

The .config in in
build/tmp/work/wandboard-dual-poky-linux-gnueabi/linux-wandboard/3.14.28-r0/build
is not mine.  My .config seems to have been renamed to .config.old and
replaced with this one.

