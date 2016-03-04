Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2A411E00BE2; Fri,  4 Mar 2016 15:27:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.182 listed in list.dnswl.org]
Received: from mail-qk0-f182.google.com (mail-qk0-f182.google.com
	[209.85.220.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5765E00BA0
	for <yocto@yoctoproject.org>; Fri,  4 Mar 2016 15:27:07 -0800 (PST)
Received: by mail-qk0-f182.google.com with SMTP id s5so27404689qkd.0
	for <yocto@yoctoproject.org>; Fri, 04 Mar 2016 15:27:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=DnkGFe+tumeEsJgr2i9J0rkIfJiIGZR0EikHLzzdQUA=;
	b=jI29qu5ygtxx9/LUizIwRf/MrFHJDM354J7Wr5Q0kuj3FKz02YVbwTYQTzZlIL27we
	JalQVfams3yTWtoo0W7Wq2dj5WAho8CgKGoFNmYtediSdBh/0RbRcY2gp1vRRhtNFBfv
	Ctz+/7GYqBhyHXRIUf25UlPSn0yPB9LxnTjYxtF7iAN/4F5qRhKcZyG2LZOGtHQvKeap
	arHhktyKXVx9+XD10bGz1FF7KNA4l65P7VAH1E/wWUx01ivov+K2Vy4/YlbyIt3m5JFK
	gFfPZy7QgdK/LVSQmHmrP1AxPTzW4zjsBWzslefIdYdp/L8brlEEpMc5O2nMZgw5XQYX
	Nl1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=DnkGFe+tumeEsJgr2i9J0rkIfJiIGZR0EikHLzzdQUA=;
	b=GS0EyRJdL1RyLbYyYO/2DOyOkbTshbtbIsor7fLEbb5XzRb1ebnEo90T+lYtEO4HOO
	hAapi/LLIMjD5PLqU0gHzfiEn1h/gTuEaqbEcUB4Z94vGlSuJE7pSn+QdhQiJSCQqQDD
	xGwHuxVDLllQ1WBgZtu761RHExOE2fTiT4OOJrscxB1jbDACS2CdJ6D6TdL2M3oX3v+S
	hdb/UIa3nboe5LtG/VwecRSe3RoM32oDj58LQ6l/e3gI4Jj7UGqc/X78vqUIvp+SC8DR
	XJwJ6dXn0u6XtoyeTmHqM6crG/ORhy16Oj6lXZthTPVbBINq2IurA68onHYQPYM7PumF
	VR/A==
X-Gm-Message-State: AD7BkJKWixTQX2DbGs9MDCesJTC84mBT8mutPPysyKsBoLtNLEnyVse6qPQyolgzwYHxtvbXh3UsB/XpIoxciw==
X-Received: by 10.55.80.68 with SMTP id e65mr13663469qkb.46.1457134026836;
	Fri, 04 Mar 2016 15:27:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.130.196 with HTTP; Fri, 4 Mar 2016 15:26:37 -0800 (PST)
In-Reply-To: <OF21316994.A2EBE251-ON88257F6C.007FC931-88257F6C.007FFBBB@selinc.com>
References: <OF21316994.A2EBE251-ON88257F6C.007FC931-88257F6C.007FFBBB@selinc.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 5 Mar 2016 07:26:37 +0800
Message-ID: <CAMKF1sqwf11WhEAtCtRf+VrqR=BVCegRCVsnc2MeaUK7ReoH3A@mail.gmail.com>
To: robert_joslyn@selinc.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: btrfs-tools Requires libgcc_s.so.1
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
X-List-Received-Date: Fri, 04 Mar 2016 23:27:09 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 5, 2016 at 7:17 AM,  <robert_joslyn@selinc.com> wrote:
> I'm building an image using btrfs and I noticed a problem with the
> btrfs-tools recipe in Jethro (using core-image-minimal and a 64-bit
> machine). The recipe builds fine, but I get the following error when
> attempting certain operations using btrfs, such as trying to start a
> scrub:
>
> root@test:~# btrfs scrub start /
> scrub started on /, fsid 79dc4fed-a0f7-43e2-b9e7-056b1a2c4cdd (pid=333)
> libgcc_s.so.1 must be installed for pthread_cancel to work
>
> I can solve this by adding libgcc to RDEPENDS for btrfs-tools.

thats fine.

 I'm not
> very familiar with libgcc, but is this just an oversight, or is there some
> reason it was not included?

its dlopened in this case I think thats why it has to  explicitly
called out as rdep.

Should it be statically linked instead?

no

