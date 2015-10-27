Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66632E009C5; Tue, 27 Oct 2015 05:36:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f182.google.com (mail-yk0-f182.google.com
	[209.85.160.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 211B7E00927
	for <yocto@yoctoproject.org>; Tue, 27 Oct 2015 05:36:19 -0700 (PDT)
Received: by ykft191 with SMTP id t191so33614388ykf.0
	for <yocto@yoctoproject.org>; Tue, 27 Oct 2015 05:36:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=M+fVrI3EJHtSkEk4mTrW2stOK9bnPR2M27MIPnhLsr4=;
	b=ONpOa4Ng+1HaMbKSMwA+6/ZNVEzsNUJGN83lxNoVRlHv72uLNi6ZI5Zb2s+9o2fTls
	GfmlBIYBR7O6k5gU8PjyHCeYEBrZRi91QZ0sUnlOu6YGRu0bkxRLMxhviD2gIDx1P+h5
	xfIUIxmxzhx3g2bOleHyH5clp0VCANIfDcjoNImM7Wwdn78iAkMA6wwNCD0noMMWwekS
	WwtYF2rx7w4GNav5lekdQ9dCFaujn2wCJ5K3iIprsnCGSeaPXRw1LACbj6xYAHYHNNPb
	fKnf4LTra6dRo3GFkbrY1vd6Zr4GCW2/tY2Zc6YMu5QLxjmdSd3mzWwZibynQdmghved
	Lmog==
MIME-Version: 1.0
X-Received: by 10.129.135.3 with SMTP id x3mr29106590ywf.131.1445949379187;
	Tue, 27 Oct 2015 05:36:19 -0700 (PDT)
Received: by 10.129.155.134 with HTTP; Tue, 27 Oct 2015 05:36:19 -0700 (PDT)
In-Reply-To: <CAGMdoFn5tQ7TO07WpqHi0sR7kOKpNsmi=_MOnsNf=4J47_7mJQ@mail.gmail.com>
References: <CAGMdoFmGGd6QWhRWWhYQYajjmhVYugZh3zga0WNXbwN+vNWSBQ@mail.gmail.com>
	<3581319.5ZKXkvWLxe@peggleto-mobl.ger.corp.intel.com>
	<CAGMdoFn5tQ7TO07WpqHi0sR7kOKpNsmi=_MOnsNf=4J47_7mJQ@mail.gmail.com>
Date: Tue, 27 Oct 2015 10:36:19 -0200
Message-ID: <CAF3SDA4v=-43Ege2hxyc-61RJXA8U2yqQKD2VQmy5D016W7USA@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: Edward Wingate <edwingate8@gmail.com>
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
X-List-Received-Date: Tue, 27 Oct 2015 12:36:25 -0000
Content-Type: text/plain; charset=UTF-8

I suggest that you do an "bitbake -fc configure YOUR_KERNEL" and
inspect the .config WORKDIR folder. Is that yours .config?

Cheers,

2015-10-27 2:46 GMT-02:00 Edward Wingate <edwingate8@gmail.com>:
> On Mon, Oct 26, 2015 at 1:03 AM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
>> Kernel modules are packaged separately and typically not included in the image
>> by default; if you wish to include them you have two choices:
>>
>> 1) Install the kernel-module-<modulename> package(s) individually for the
>> module(s) you wish to use
>>
>> 2) Install the kernel-modules package to bring in all packages for modules you
>> enabled in the kernel configuration.
>
> Thanks Paul,
>
> "kernel-modules" worked to include all the modules. But I also figured
> out I was using "kernel-module-ftdi_sio" instead of the correct
> "kernel-module-ftdi-sio" (and because I was using
> MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS, it didn't complain.)
>
> Now to go back to the original problem of why my defconfig is being overridden.



-- 
"Do or do not. There is no try"
  Yoda Master

