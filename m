Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22F46E00726; Thu, 29 Jun 2017 08:49:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.176 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f176.google.com (mail-io0-f176.google.com
	[209.85.223.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0FBBE0048B
	for <yocto@yoctoproject.org>; Thu, 29 Jun 2017 08:48:56 -0700 (PDT)
Received: by mail-io0-f176.google.com with SMTP id z62so9399087ioi.3
	for <yocto@yoctoproject.org>; Thu, 29 Jun 2017 08:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=v4OIyu76DQHJV7RDgF8xkX77zTWCcV1BhpV2AtV/XcE=;
	b=sy82756O/A3CmXZ71TL2X+kRCg6pgZ88BXz8DqQhQ0By9hJKrhnJFW6wb5jah0LgUs
	jx7loc9rMAb8f8wN+VAmZ1edIvWVxKd5svMP1f/NhqEvXTA7DzwGsW48u/oe+ibu+KwB
	BkxYo5elMYtYSyx01D5YBKX94jCpAXv+6Pc+hYLfF3GOM6qWoLvn27cMfQV02NlXLYJ9
	VDgkUWoGZn9SM6YKslx2hioJpd7bu2ANB39cPHecDKf1xXhZACBdvvFH/pXAnMFKMc5e
	BZRzh+5/k4u6QBGlWcHhEb1MXHqn4iSHzU/uH7hTJhgInWmW0qqsh5klWkjIYpTMY77T
	0nQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=v4OIyu76DQHJV7RDgF8xkX77zTWCcV1BhpV2AtV/XcE=;
	b=Rcg+RAtJUYQ2y7cdXof0LIGVGRMYkhG0xwHqDyU9xhjgpn1PGGmZlCVmcet0uraHdu
	XUYNCVzdG+84BxYLsq8waOLs/2JxgP0H2W3zA4DoWpT7owVq5hNlW5MoMxzE/8Su35zP
	BWnomNuqtlkNzH5kHjGzEvkLkQ8r5VOZOq10wMfa10HrfAmTNLsx6ETq6Au6UlwOrihg
	PEzNtPghnnpxPLvYLmKUrn3ViUecdK8gvdTv0NVhbN+uEJ/EjQiu34U2OP7T4qstNGQ7
	o5vgXj/F+zp30yLYLlGc3yIf++SVQXi9s9AqsB2wbS1xDu5iQ9CTNh92MJcRAlere1KF
	Slcg==
X-Gm-Message-State: AKS2vOw0aKYHbXyvHpBIUj5XD5B/ARUvHfL6nBUOgjZ8EwEe8KT8xM2M
	+Kvj5chN3A72bsN2DKBCpn0UsY5sh68FFGY=
X-Received: by 10.107.39.12 with SMTP id n12mr13510414ion.127.1498751336142;
	Thu, 29 Jun 2017 08:48:56 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.13.5 with HTTP; Thu, 29 Jun 2017 08:48:15 -0700 (PDT)
X-Originating-IP: [86.141.163.120]
In-Reply-To: <cover.1498698415.git.drew.moseley@mender.io>
References: <cover.1498698415.git.drew.moseley@mender.io>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 29 Jun 2017 16:48:15 +0100
Message-ID: <CAK18fxGH0hRjYaj2dT+gdWVuHrB-HwJ0qaWoM=orRa4EyvEm0A@mail.gmail.com>
To: drew.moseley@mender.io
Cc: yocto@yoctoproject.org
Subject: Re: [meta-chip][PATCH V3 0/4] Initial attempt at flashing instructions.
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
X-List-Received-Date: Thu, 29 Jun 2017 15:49:00 -0000
Content-Type: multipart/alternative; boundary="001a114082acff9b0f05531b3c7f"

--001a114082acff9b0f05531b3c7f
Content-Type: text/plain; charset="UTF-8"

Hi,

On Thu, Jun 29, 2017 at 2:12 AM, <drew.moseley@mender.io> wrote:

> From: Drew Moseley <drew.moseley@mender.io>
>
> * V3:
>
> Cleanup README.
>
> Add CHIP_UBI_PAGE_SIZE variable to reuse the data from the machine
> configuration.
>

Merged to master. Thanks, Drew.

Andrei

--001a114082acff9b0f05531b3c7f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi,<br>
<br><div class=3D"gmail_quote">On Thu, Jun 29, 2017 at 2:12 AM,  <span dir=
=3D"ltr">&lt;<a href=3D"mailto:drew.moseley@mender.io" target=3D"_blank">dr=
ew.moseley@mender.io</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
">From: Drew Moseley &lt;<a href=3D"mailto:drew.moseley@mender.io">drew.mos=
eley@mender.io</a>&gt;<br>
<br>
* V3:<br>
<br>
Cleanup README.<br>
<br>
Add CHIP_UBI_PAGE_SIZE variable to reuse the data from the machine configur=
ation.<br></blockquote><div><br></div><div>Merged to master. Thanks, Drew.<=
/div><div><br></div><div>Andrei</div></div></div></div>

--001a114082acff9b0f05531b3c7f--
