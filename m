Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C8388E00D5F; Thu, 15 Dec 2016 02:51:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f196.google.com (mail-ua0-f196.google.com
	[209.85.217.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98232E00D4E
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 02:51:21 -0800 (PST)
Received: by mail-ua0-f196.google.com with SMTP id b35so366468uaa.1
	for <yocto@yoctoproject.org>; Thu, 15 Dec 2016 02:51:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=TAIZQKVRxExAJKcTm8Py7iREEjF60KppalrcjYrmcIY=;
	b=h8DQwLkIzpuENI+47fk2/AF7C5vnYiTcP56hSb9I9KjDECqPODkI8AokAomn3lxj3c
	VXJbIVbT9GtQB9dWlZlGHWiXd8JyJ1Rs3BZskV85elJsLl7t4l2DtrcBSmeZ746s8WwO
	W8Sz/pj/Jd0YjoaLaUSBLIchfKJbNGYrZWgzranfAjKyKBkJ4LVOUuwlhTLEtA5Gewnn
	+8U+XfHSrUk5ZZ94aSOor0rY8gGB5dos+azJYC9tbrv9zTLtawtvKuGNIlZB+g7PK1xc
	wuqI63D+64Qze/OtA/k+D+99JEFx+IilLN76EBwPgoajIeQhrqfwWrom4zzObgfYfGGP
	DnTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=TAIZQKVRxExAJKcTm8Py7iREEjF60KppalrcjYrmcIY=;
	b=cpZoRgB7hXoGOnz7lAr7vmU+myJCYymaqhcf7wSI622FGa31ioJ0aWWSCyVL7KADGy
	pRStt3PtWX/Zt+Zcs/8dhoTS2AQzdJLfwbHKoTq8ETSGH3yOyeVdRUWByrIDrA2m9GmW
	YMWR3IiycoJQvXUx+UUPwV40uPCmwU7exNQh+YtzjhKde4O0OAuSuCk1VYEkN2dSRMfp
	towmVmuSf83oGdnkiDIZ+k1b04V8kA1xuKN8KiUegjQ994c+GNKNpqD9jtqQ+IOXUDrr
	0/xs4gJGdUGcOS/d1iVXv9FA9YDobNGDFbL0D00J0tXQFAw2mrE1UgqH8maOJSzOBjRZ
	V1og==
X-Gm-Message-State: AKaTC00xuF8W6w/nOQIQRbAQr3CozCBFhB3BUIrjm8ObfzZoJBNPJDINqK0uPiYpQY+zUl5V6V8VgmU5uOu3Zg==
X-Received: by 10.176.82.71 with SMTP id j7mr382167uaa.77.1481799081295; Thu,
	15 Dec 2016 02:51:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.85.157 with HTTP; Thu, 15 Dec 2016 02:51:20 -0800 (PST)
In-Reply-To: <1481796330-13908-1-git-send-email-piotr.lewicki@elfin.de>
References: <1481796330-13908-1-git-send-email-piotr.lewicki@elfin.de>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
Date: Thu, 15 Dec 2016 11:51:20 +0100
Message-ID: <CALbNGRRq_=CHfTUvTb-hWgFg1jHFWmPOF5dmEcOQHZzTkZpVPg@mail.gmail.com>
To: Piotr Lewicki <piotr.lewicki@elfin.de>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 0/1] linux-rpi: clean .config in before do_configure step
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
X-List-Received-Date: Thu, 15 Dec 2016 10:51:25 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Dec 15, 2016 at 11:05 AM, Piotr Lewicki <piotr.lewicki@elfin.de> wrote:
> Previously using bbappend files for linux-raspberrypi recipe did not allow to
> use "kernel_configure_variable" function to set kernel config variables.
> If user wanted to use it in his bbappend with "do_configure_prepend" it was
> cleared afterwards. This patch moves cleaning to a separate step.
> I'm unsure about whether CONF_SED_SCRIPT variable gets cleaned here. Please
> verify this.
^^ I would suggest to put this description into the patch itself

Andreas

