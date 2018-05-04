Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 05288E009F8; Fri,  4 May 2018 13:18:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f175.google.com (mail-pf0-f175.google.com
	[209.85.192.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F095E009DC
	for <yocto@yoctoproject.org>; Fri,  4 May 2018 13:18:28 -0700 (PDT)
Received: by mail-pf0-f175.google.com with SMTP id p14so6888357pfh.9
	for <yocto@yoctoproject.org>; Fri, 04 May 2018 13:18:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=JEu0Rh3S95i35W/9CZOOCXxhWLb9oKVtVaMHRU3uTlw=;
	b=GB0nE74XBzfYk3C1ki9eV6unfZW8p2ZMroqpE5BZOfe41SDHtuuqzBiqCtsTIGdgSC
	B+hym9Xy0L/lbyXohSnYUJMItpomwBVunLfXlng+q6h1d5xPTFr96K13hUVdMzskIW7o
	eedDOuG+OZPVdMpIa19e8uTSUaRWWlXDP8Uy7ihv39y32wVDUoyYA37WjbtjqbdSYbyq
	k5bcWf/wTeQXBmrp/prYTS/G3klLsUZ63QC5gLirRun6JMXk506Vdt50TzAYdu2FljPJ
	N+kA3sBHm6YZ8lqIpAPxRARDhbhM73+9HqLm40XgU2cG2xOPE/ukn2c88klFGbJZr4R8
	53pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=JEu0Rh3S95i35W/9CZOOCXxhWLb9oKVtVaMHRU3uTlw=;
	b=X+hS4hQRXStS2c4F4ImZTaHcu05G0GyeI85xNve4phjhq8lnQFH8UW8jqpvAwzMlsX
	hcbbdG5NR3GMcAA6ldHSBxShdVUY50mLYOsvq1Zsjjd6yp/WmT+C/gnBNG/2K/lus4EN
	S1qYHWrAOaxvneExPkho8XnrAG3LMY/mTLuvkMhWORatouMRTd5soe6iHAZDqI9lWtlO
	jpEctTSYDJrx/6DsN2NHFKBQVcV1bBQGIgQIVF+w1jqZTSLfcBGBhw8ZuC9UbK7dYcSL
	FDnPceB1h2fuMCkyyDkIo2JGVPHaWMwGAXodlGqAEryceiPdQm37dLez5IrGmnj7cVh+
	0ZWA==
X-Gm-Message-State: ALQs6tBLF7rCycn1+Fibr/Kd7iiDGC/li/fPy0HQa+EiqOpug5Ck1jft
	E5eaPgeRctxHqSr8gM0N4fovCP8CfFqUVCSIP4M9KA==
X-Google-Smtp-Source: AB8JxZpJbF0Ih3sZ6xIj3v4ZmF89DMakpgh24RN+E/rPqmIh4O3w13JCNl2PjuEBm4kfExlVx1cGNSXXPkN03OGpjjw=
X-Received: by 10.98.7.75 with SMTP id b72mr20900631pfd.133.1525465107404;
	Fri, 04 May 2018 13:18:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.236.159.145 with HTTP; Fri, 4 May 2018 13:17:57 -0700 (PDT)
In-Reply-To: <957f73cec1664ee293ecca5f6e227e33@csoftware.co.uk>
References: <957f73cec1664ee293ecca5f6e227e33@csoftware.co.uk>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 4 May 2018 13:17:57 -0700
Message-ID: <CAMKF1sotLiLq1nmUus2zu1o5h8HpGWGQuzyQiBr7MapUF+Q+GA@mail.gmail.com>
To: Tom Gibson <tom.gibson@csoftware.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Enabling SD Card Detection for USB SD Card Reader
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
X-List-Received-Date: Fri, 04 May 2018 20:18:29 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, May 4, 2018 at 4:33 AM, Tom Gibson <tom.gibson@csoftware.co.uk> wro=
te:
> Hi,
>
>
>
> We would like to enable our Yocto distribution to auto-detect when an SD
> card is inserted in a USB SD card reader, in much the same way as a card =
is
> detected on desktop linux such as Ubuntu. We have got our USB card reader
> working with the generic-storage driver, but at the moment we have to do
> something like =E2=80=98fdisk -l=E2=80=99 to refresh the attached storage=
 after a card is
> inserted or removed in order for it to it to be listed in /dev. The card
> reader shows up as /dev/sda regardless of whether there is a card present=
 or
> not, but the partition on the card only shows up as /dev/sda1 after forci=
ng
> the refresh.
>
>
>
> Any pointers towards which service we need to install to enable this
> functionality appreciated!
>

perhaps you should be able to use udisks2

