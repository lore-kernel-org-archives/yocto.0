Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 172A1E00BFD; Tue, 17 Jun 2014 10:34:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.128.182 listed in list.dnswl.org]
Received: from mail-ve0-f182.google.com (mail-ve0-f182.google.com
	[209.85.128.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A608BE00B5C
	for <yocto@yoctoproject.org>; Tue, 17 Jun 2014 10:34:31 -0700 (PDT)
Received: by mail-ve0-f182.google.com with SMTP id oy12so6156415veb.27
	for <yocto@yoctoproject.org>; Tue, 17 Jun 2014 10:34:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=P2bHMLUgAbUBd1mZ7Vh21ORtj3sjjKSttsr9yZainSk=;
	b=OwtSFu6Pt+iDjYG8GSA8qsPbquo7Qc5eDf3HC7Ku/B21tmQIKLtiryyBmdVLciGcyg
	RTS/QNGnmMez9iRqcw3wQPuwOr+5nIKm42d9ohbB38X0vp6OCQYIOcz/XP+8gQFw9pVT
	dRLrke0nSWiBqa3NteD47Z1li7zexeggoTqHnYGvzzV5YZdE+rQU0WG2q7FRYZX4wgKV
	nUEy/IfDoiZi0tGXI+utx1DMQSHNk9Mog9NdWPU6Xm31+O5Q35q4SrX+BFrY0U+X/atN
	cuSyBhV06o8Dw+D+F0BzW9x2d2hw4N/2k3Uhvru2OHjBFkveoMdpX7Q/ScIl4H+2vX7B
	H5qA==
X-Received: by 10.220.81.194 with SMTP id y2mr9656749vck.29.1403026470062;
	Tue, 17 Jun 2014 10:34:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.32.74 with HTTP; Tue, 17 Jun 2014 10:33:59 -0700 (PDT)
In-Reply-To: <1620545.PMXsL8JdT4@peggleto-mobl5.ger.corp.intel.com>
References: <CAF_dkJB6mJjhtZHZmo6bX+q611zSyij4OvXg+Yxv5At-RpWdOA@mail.gmail.com>
	<2289204.UWFViZiKz6@peggleto-mobl5.ger.corp.intel.com>
	<CAF_dkJDCDGLsYFDWJgOaXZwkiRLFE8XSkLAT-Knx-eX_qbH7tA@mail.gmail.com>
	<1620545.PMXsL8JdT4@peggleto-mobl5.ger.corp.intel.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Tue, 17 Jun 2014 13:33:59 -0400
Message-ID: <CAF_dkJA-vtNbL_tkGbeXVy50nd+i2Kx6c=-fp80ZBS-bmKuXcg@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [dora] x264: Update SRCREV to match commit in upstream git repo
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
X-List-Received-Date: Tue, 17 Jun 2014 17:34:42 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Jun 17, 2014 at 12:46 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> No problem - in this particular instance with x264 it was a bit of an
> unfortunate trifecta where the upstream project does not provide release
> tarballs so we build directly from their git repository; they recently decided
> to rewrite their git history without telling anyone, and we didn't notice
> immediately because we don't build it on our autobuilder regularly (since it
> has LICENSE_FLAGS set). Even when we did know about it though, it's fair to
> say we have been a little slow to correct for it; hopefully we can get this
> patch in soon and then it'll be taken care of, at least for the x264 recipes
> in master, daisy and dora.
>
In this particular instance, it was even more difficult as I just
learned that we don't have a mechanism for keeping our local dora
repository in sync with the Yocto repository.  Fortunately, I know how
to fix that :-)

> Cheers,
> Paul
Thanks for your help, and for your commitment to Open Source Software.

--wpd

