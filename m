Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 66362E00798; Fri, 25 Jul 2014 11:40:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A2FD1E003C1
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 11:39:56 -0700 (PDT)
Received: by mail-ie0-f175.google.com with SMTP id x19so4143215ier.20
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 11:39:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=ZjbN8dEznFrmEcztnqTk28X0wAc/+hs1ZUMZihnIkhU=;
	b=pwvCM85y0VZ826hhcZDZr5s6mbG1s5HJa3THrJ8NFMC9jeoPk5u1Ge1+2KYyzAVxWx
	m1BZO+BcHwTJHHjtePpuGQCZpX9cOwKe5lnBw5VkPXsIa7wYL808wXHYG9N1SP9FtKV7
	IygTmcFfiVMWBIkNX1R2xwdU3vQ7ypMI3Mu6ryvsRJSwkAIgUTw4Hjr4s/hOzE3lPQhi
	MDqgnm6Fh6p7FJWuFCtL4uorovTJmpuB+oCD2lbseWPCmQqhknhXBSEzk/Fpu/fDFx6z
	c+JlCnA0xpAvjwy+RWIdNo01dCUfhKapfM7BOPvKdrc2vsf43YqPTC82iiM0Jn85gDGo
	MSMQ==
X-Received: by 10.50.25.71 with SMTP id a7mr6596946igg.17.1406313595852; Fri,
	25 Jul 2014 11:39:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.78.105 with HTTP; Fri, 25 Jul 2014 11:39:25 -0700 (PDT)
In-Reply-To: <alpine.LFD.2.11.1407251345130.8665@localhost>
References: <alpine.LFD.2.11.1407251345130.8665@localhost>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 25 Jul 2014 11:39:25 -0700
Message-ID: <CAMKF1sqOKng=hwjc9hyYbCMW8E=BOvC3bKbAwby0kgxk=wn9bQ@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: dev manual definition of "Image" is totally wrong
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
X-List-Received-Date: Fri, 25 Jul 2014 18:40:04 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Jul 25, 2014 at 10:47 AM, Robert P. J. Day
<rpjday@crashcourse.ca> wrote:
>
>   here:
>
> http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#yocto-project-terms
>
> the definition of "Image" refers to the generated artifacts of a
> build, whereas the standard usage (as typified by the link) more
> correctly refers to things like core-image-minimal.

core-image-minimal is just a name/type of image and image is a
generated artifact ( output result ) of a build using OE

>
>   i'll let someone higher up the food chain resolve that.
>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

