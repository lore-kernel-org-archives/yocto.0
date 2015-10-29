Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A08EE007FE; Thu, 29 Oct 2015 12:06:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.182 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (edwingate8[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f182.google.com (mail-ig0-f182.google.com
	[209.85.213.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 677E5E0059B
	for <yocto@yoctoproject.org>; Thu, 29 Oct 2015 12:06:44 -0700 (PDT)
Received: by igdg1 with SMTP id g1so139460322igd.1
	for <yocto@yoctoproject.org>; Thu, 29 Oct 2015 12:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=OgBQhUYn0cOPeMHK1Rekd5cTXhyoMcBjCmDGxp5mIiQ=;
	b=dYkW6yiqdivA6aF9EbBBAAVWBjpa5q4bo5vQmLVeoYwH/3PX+/benqbxX5oR8UGZwg
	ou9gH0C0bcAZKMfjOMMwoe0z9GLdvqKaL/1lu7nKJZlUVvopF9PJYffcsDPviF7myg4s
	3K2pAYUBLzFjaRW8OO+cGu0F5NxKZC9Xo5gts9W2eyKZYA9t7dHa7xwAFy79cww1FOaN
	OFztHvh03+pU8J4XhCKEf/f9TUARkDrK0IJ+S34neAbRQyVux/sVg2W4wSqVOsVaRxlB
	QE5aRLd7wRf8Xn1V8cw9edHuEdXhvrJ4I7Sh3F0wUCNazhey6qgVpu4xRKRMuIxvnVIh
	z24w==
MIME-Version: 1.0
X-Received: by 10.50.150.68 with SMTP id ug4mr5621846igb.16.1446145604488;
	Thu, 29 Oct 2015 12:06:44 -0700 (PDT)
Received: by 10.107.142.202 with HTTP; Thu, 29 Oct 2015 12:06:44 -0700 (PDT)
In-Reply-To: <56321AB5.1050108@windriver.com>
References: <CAGMdoFmGGd6QWhRWWhYQYajjmhVYugZh3zga0WNXbwN+vNWSBQ@mail.gmail.com>
	<3581319.5ZKXkvWLxe@peggleto-mobl.ger.corp.intel.com>
	<CAGMdoFn5tQ7TO07WpqHi0sR7kOKpNsmi=_MOnsNf=4J47_7mJQ@mail.gmail.com>
	<CAF3SDA4v=-43Ege2hxyc-61RJXA8U2yqQKD2VQmy5D016W7USA@mail.gmail.com>
	<CAGMdoFnz_0sw1KDvH2Drx-k_qpF87SEmMtq7sNLXTNRJMcT9uw@mail.gmail.com>
	<56321AB5.1050108@windriver.com>
Date: Thu, 29 Oct 2015 12:06:44 -0700
Message-ID: <CAGMdoF=2QJd1DEH7f7p7sRcMP56vz_pGx8VFUOANWt+fiMShTQ@mail.gmail.com>
From: Edward Wingate <edwingate8@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
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
X-List-Received-Date: Thu, 29 Oct 2015 19:06:46 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 29, 2015 at 6:10 AM, Bruce Ashfield
<bruce.ashfield@windriver.com> wrote:
> That's the kernel's configuration subsystem at play, it still has to
> process the the defconfig (which was placed as .config before starting
> the kernel build). Invalid options are removed, others are selected
> by Kconfigs, etc. So what you end up with is the processed .config and
> your old one in .config.old.

Ah, OK, it's possible the option I wanted (CONFIG_REMOTEPROC) is not
available for my machine (imx6/wandboard) and so removed.  Where can I
look to see if a config option is valid for a particular
machine/architecture?

Thanks for the help.

