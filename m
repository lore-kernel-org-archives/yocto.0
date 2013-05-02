Return-Path: <twoerner@gmail.com>
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1EC2EE014DB
	for <yocto@yoctoproject.org>; Thu,  2 May 2013 09:18:58 -0700 (PDT)
Received: by mail-wi0-f179.google.com with SMTP id l13so784799wie.6
	for <yocto@yoctoproject.org>; Thu, 02 May 2013 09:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=KUYKqTiLFkFDhSbcpB2M6w0ssRd5LOVtD3bF1JOIlbY=;
	b=YY6qDRnDmibk7YqdttIrZJgFv0eX/jGGf1T4hVg9lGkhD1i+sQwlPWTQ3Txk96k3RL
	BP7rN9xRmMZlTfLxQpeFvH36/Seu0CopWVndVOD1SNvhCa+fNOcjkjq83yjsiRbGPu1U
	KqkHBDOysQ1XVt1NI8c4s7lQAo73TIBob65dEyL3qWwi1OUuPjPVz5mTR5RI9Tbg5zPz
	qmxe9xpYMTxQH+vWhgJIMw3M1Lyx3pZoL/gLQyNwKjnJ1+mg++dgNH9pYvm0YYqfLXGm
	f7F4CVTxVztZWRnlCmOPOOj41qEecZJ8bnM66r3Emo7BK1slSCEELbiy6gyDD3jDNkpf
	M+5A==
MIME-Version: 1.0
X-Received: by 10.180.185.135 with SMTP id fc7mr26760787wic.29.1367511537844; 
	Thu, 02 May 2013 09:18:57 -0700 (PDT)
Received: by 10.194.5.132 with HTTP; Thu, 2 May 2013 09:18:57 -0700 (PDT)
In-Reply-To: <CANyK_8erAWaRzrXxDOCwaa9xkfxqVM5Fk5hukGPoyapZJTMw5w@mail.gmail.com>
References: <CANyK_8c2tTqktkHFuR+vzAGbsb3AKyFow1T4rU_aEnb8pdQnuw@mail.gmail.com>
	<CAK18fxFMKykJQnuMqrU6eLkD0E_Ht+Vyo2tmayukvNU_eyV6aw@mail.gmail.com>
	<CANyK_8fVfKbTHq3X1hdSWOFdwsz4cZLaaispiwC_hJJbimM1ig@mail.gmail.com>
	<CAHUNapRr4y47FGqp90NZwKwwE0PGSj6A2vN1nRujqjBSL9oOZw@mail.gmail.com>
	<CANyK_8erAWaRzrXxDOCwaa9xkfxqVM5Fk5hukGPoyapZJTMw5w@mail.gmail.com>
Date: Thu, 2 May 2013 12:18:57 -0400
Message-ID: <CAHUNapTKpNPZkj=aPYwAAoSHsr_QWx2Gv9wecuriAzcd7-2Dxg@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Zenity is in meta-gnome
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
X-List-Received-Date: Thu, 02 May 2013 16:18:59 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, May 2, 2013 at 11:52 AM, Paul Barker <paul@paulbarker.me.uk> wrote:
> Sounds great though it may take a long time to copy files to an SD
> card (I noticed a similar opinion at
> http://www.raspbian.org/RaspbianInstaller). May be quicker to generate
> an image file with the correct size first then dd that to the card.

If you prefer that route, to make it even faster you could
additionally make use of the bmaptool:
https://lists.yoctoproject.org/pipermail/yocto/2013-January/013759.html

I've used it with the i.MX53 QSB and the improvement was noticeable.

I found it hard to get the image to be exactly the right size. There
was always a little room left-over (or the image would be too big and
wouldn't copy over to the card). This method doesn't (I don't think)
support a flexible partition layout, just the generic 2-partition
FAT+EXTx.

