Return-Path: <otavio.salvador@gmail.com>
Received: from mail-yk0-f174.google.com (mail-yk0-f174.google.com
	[209.85.160.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B57EE007DA
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 02:44:32 -0800 (PST)
Received: by mail-yk0-f174.google.com with SMTP id 20so18776029yks.5
	for <yocto@yoctoproject.org>; Thu, 13 Feb 2014 02:44:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:date:message-id:subject
	:from:to:cc:content-type;
	bh=sQUrWqA1wtLveFtikNTNficZkdX1w9sLPm4B/sWP/fM=;
	b=gLaQv1TpWD+EIk1wNVrMZ8/my2aJurxbzz3cGEDnuh4wN7yMaI+orzpOglRCXLfdpV
	xEt9QgcYKC0UB3t9g6EBqrGn+tqq9QVKOrmZ7sIaI49eC4NTgCD36cDTxdNFeYGd+Sin
	RSjRCDDXG7Si7kFw7mlrl1GENi0nxyqu4pTFAhysUFarC5786PLq7trXvF/+JpYCuEmw
	kQZA6+7pbnRF+ocLzEC/SZZ7K24002SpMe8CpcoGzOecUzhwgd4UR+Y3WGtiZTAG3Dzy
	LmzxFSz1OCyNRyxeb6s7rUInA3CoVPmko1oSkOmvd8MsFup9zYVbpEI7RI6GSH2ZmV79
	20mg==
MIME-Version: 1.0
X-Received: by 10.236.130.138 with SMTP id k10mr616109yhi.31.1392288272036;
	Thu, 13 Feb 2014 02:44:32 -0800 (PST)
Sender: otavio.salvador@gmail.com
Received: by 10.170.161.3 with HTTP; Thu, 13 Feb 2014 02:44:31 -0800 (PST)
In-Reply-To: <CAPhnLPCCyEijt5JJh8=EBbXNjP-+FZ7XoXFcwxEr=R2KG0hfNQ@mail.gmail.com>
References: <CAPhnLPCCyEijt5JJh8=EBbXNjP-+FZ7XoXFcwxEr=R2KG0hfNQ@mail.gmail.com>
Date: Thu, 13 Feb 2014 08:44:31 -0200
X-Google-Sender-Auth: YzB7G6HycuJu8IYHvjKK1_ppUes
Message-ID: <CAP9ODKrA9CJ70GytDYrFR=aVvpFJiR3k5OeDG_hb=Y82Yp+67Q@mail.gmail.com>
From: Otavio Salvador <otavio@ossystems.com.br>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: 1.6_M3.rc1 availability
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
X-List-Received-Date: Thu, 13 Feb 2014 10:44:33 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Feb 13, 2014 at 5:19 AM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> 1.6_M3.rc1 will soon be available at:
>
> http://autobuilder.yoctoproject.org/pub/nightly/20140213-1
>
> bitbake     56321b18808f5ed932543d907b9ebcfbf4420233
> eclipse-poky-juno     26bfc407781aa185f244a47ba63120343cee4a37
> eclipse-poky-kepler     f4d8e9243f9355424a01e2d72fd1abbf68d3bb7c
> meta-fsl-arm     cf08433a22de0538d96f7959fb7a677b59b3f267
> meta-fsl-ppc     1536064e02f15761e90f784d88f2a930784f7f3d
> meta-intel     49b97a90ea3bce2a61a8578cface01f32a97e2b3
> meta-minnow     32e4d6f17917027c3babe1ab738480de9691024d
> meta-qt3     4772424ab69908d4e3b9d6d4717ca889468e6acd
> oecore     b188bda18690dc1af1cb5d18bb0f3ad40c9a6cc6
> poky     b70a10ca3ee4a0add90d387e2c8288e531aaa47c

In the meta-fsl-arm this is quite broken. I sent a fix to the
kernel.bbclass to solve the kernel build regression but it has not
been applied so no machine succeed.

-- 
Otavio Salvador                             O.S. Systems
http://www.ossystems.com.br        http://code.ossystems.com.br
Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750

