Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4682DE00CBD; Mon, 17 Jun 2019 05:17:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.182 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com
	[209.85.160.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDB01E00C43
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 05:17:58 -0700 (PDT)
Received: by mail-qt1-f182.google.com with SMTP id n11so10358574qtl.5
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 05:17:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=hbrBhcqHdr3ctC3w6cAATLrwZZxxYZHoHNPaOhwTJIQ=;
	b=sUnhPkAA+49fg3ZTlbiNwlDGlHGUxlPjobxrttlgzFENjdyMFxancmYmZpHHjML9B1
	RIHFpp3p7f5BpG1GpY2Qxfw9372ZOnZpqEwEVpZ7nEIAiatGkmokFzL3NyspTrOh6OZ/
	h9XogytiFjzbwwwaKeZQgDUOqJVbZgUGqIf9/Si2yDm3lTJ2RNxaFw04VHWWzIJByQNp
	/Mlt+4ZO0rE9tSjR04TMTnfczzpIlWsgcQSc7cYtgBAziJwkewqeXdWLQcnM8oqtdLNo
	oDwNINTmyz2ihjOkzKnNOjD6EExgF1Vxl0RH0zoGs3HXFBn0C/U6j7jwp1NQ1YlChtzU
	mD1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=hbrBhcqHdr3ctC3w6cAATLrwZZxxYZHoHNPaOhwTJIQ=;
	b=Gme+8otGTgnUBFjCdO+q5UN3E0tBi4iKsGUl6W7owmfEGBeINtXxAtyeqr81YWi1DD
	Hj6SjNrjtHKQrXYoTQT1PYHRSepXGto2120b78qcotczlkMVtUVtwr24WvBxy+Wxxsr2
	YuV2XIcW6jkJHgvoQQjafSf10ySi6fVyzHIet1CirHNrY5HB0W5U7B5ZeLRBkbo2M7u5
	QzrzG5D41UroeSpG29Ekivfzhx5xBdBetR0FMV6PoJ4oCXaAz6JqjDIHHHgM2NKLl2FB
	MBrYc947uMYyDmiavjyYyVB/7hdrcPNrBVByXrvm7CzZuwGcZZlps1F/Ru4CHkpFlSkr
	3c/A==
X-Gm-Message-State: APjAAAVhrPW6pbXVsYggwKegidWFWLEjaLqFJjpZLkuFnLzNUYnVG75o
	a5e3IwiCqv32LMyFxYj8xbYok46HuksIjpH4f8s=
X-Google-Smtp-Source: APXvYqyjnbqFpKdDnO96MLHzeiWmZdRZvHCJDQDgE77ph5TkYGNXZTyLerKR3RFcgAJJoqHFr8h+EnONdRa850goSt0=
X-Received: by 2002:ac8:877:: with SMTP id x52mr94464673qth.328.1560773878196; 
	Mon, 17 Jun 2019 05:17:58 -0700 (PDT)
MIME-Version: 1.0
References: <trinity-1bbd10a3-ee46-4746-90c7-0b5a49a62f26-1560772981350@3c-app-gmx-bs08>
In-Reply-To: <trinity-1bbd10a3-ee46-4746-90c7-0b5a49a62f26-1560772981350@3c-app-gmx-bs08>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 17 Jun 2019 14:17:46 +0200
Message-ID: <CAGAf8LyBsd9Ya+RV94FQj+19f5Um+AypitaAoO0pn5_w+rq+nA@mail.gmail.com>
To: Arno Steffens <star@gmx.li>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: cortexa9t2hf instead of cortexa9hf
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
X-List-Received-Date: Mon, 17 Jun 2019 12:17:59 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Arno,

Your question, per say, has little to do with YOCTO forum. But I'll
try (as my best) to answer your question.

Cortexa9hf should be armv7 A9 Hard Floating (it contains HW FP unit).

Cortexa9t2hf is by analogy armv7 A9 T2 Hard Floating. Now, the
question is what is T2? T2 is addition to the previous architecture
Cortexa9hf, and addition is Thumb-2 mode.

Hope this helps,

Zoran
_______

On Mon, Jun 17, 2019 at 2:03 PM Arno Steffens <star@gmx.li> wrote:
>
> I switched from Yocto 2.5 to 2.7 and recognised a new architetcure name.
> Instead of cortexa9hf it is now build for cortexa9t2hf? Did I do something wrong or what exactly does this t2 mean?
> Target system is a Zynq7020 system.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

