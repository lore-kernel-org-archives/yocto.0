Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2D88E0084A; Mon, 26 Jun 2017 12:29:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.179 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.179 listed in list.dnswl.org]
Received: from mail-qt0-f179.google.com (mail-qt0-f179.google.com
	[209.85.216.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4C6AE00C5C
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 12:29:06 -0700 (PDT)
Received: by mail-qt0-f179.google.com with SMTP id 32so9294531qtv.1
	for <yocto@yoctoproject.org>; Mon, 26 Jun 2017 12:29:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=n1sC7LBOkrCUQfTWhK5Ybz+jeKc6QNkOXUeWPZrdC2s=;
	b=Slhc0N41RkVxifTxo33uJrIXF/vJEaDN6fZ3NPoistezl7u9x8WPbantSs0hrKYc3M
	sb8BJjDg2JeYShfYuajqLcQhrQ8XZIpgrECej16XhJt8uOsk8JJv80ZB6mFzXywEhdrC
	oYZmezFFwinyPpCiuB4EfGEMOLEkTbyV70pzMyugjtj7Jab06DzfK8u2zRfi/gbZQsse
	d2fU02Wd+6/QK95ZNpTaFP05xYG0UuLv50n4MQeHNGssG+gi8tRlcjkuZNRNIDe95gfo
	w846ZFLzZdEd3/UoAAx9rP2rmE+4FZdeiKrKlMfIeYu+CXYKMEJR6dc7myTBNivKzJAu
	zOeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=n1sC7LBOkrCUQfTWhK5Ybz+jeKc6QNkOXUeWPZrdC2s=;
	b=bcXmBlD8ejIbMOCsPkyacJOPxHy3fl4JwpZLp5YEJ5Ro2ZcYgnTZndvFYAQ7wC84wA
	N1yNZsvfddWtxxA1VQCl4LQXzsUlWDegxuotae8ZcD8NMmCXzcsFAOJf07OjF/N9HU85
	afkJDAXI4eej9Qqxruoee65t9FCNnNHT3A3Poqbz2zDT9/Cyt9HretuCjg8KsPYaehBK
	uTXMPQCd7zk9aNHtZO2sGODGFX+t8+o4HDn5LM0J3irU4Z6dtrWq9ew9833snd/F+lsq
	g8YX8W6yCmsWDwkkL6PM154RGh2wkX8cNqZLehM8XATXceo6eGg9+P7mMmzjgnCsQPPZ
	jo2A==
X-Gm-Message-State: AKS2vOzq3QsBHZpHX1rihD23W8RIj26wwV6YYINedkocguaeFxq3R3rk
	q2GeKsxkCZmoHY5uDJZD5WAs9Iz8PtPM
X-Received: by 10.200.45.221 with SMTP id q29mr2417067qta.177.1498505345880;
	Mon, 26 Jun 2017 12:29:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.31.118 with HTTP; Mon, 26 Jun 2017 12:28:45 -0700 (PDT)
In-Reply-To: <f1a19479-9b91-cf94-b19c-3d3cd59480e1@gmail.com>
References: <f1a19479-9b91-cf94-b19c-3d3cd59480e1@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 26 Jun 2017 20:28:45 +0100
Message-ID: <CAJTo0LZ5dfPjtxdoW8sS-YNU34tEprSjSh0==aCej8+egWLp1Q@mail.gmail.com>
To: Jimi Damon <jdamon@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How can I add a library to my SDK
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
X-List-Received-Date: Mon, 26 Jun 2017 19:29:11 -0000
Content-Type: multipart/alternative; boundary="001a114516d0d5e5fd0552e1f6a1"

--001a114516d0d5e5fd0552e1f6a1
Content-Type: text/plain; charset="UTF-8"

On 26 June 2017 at 20:21, Jimi Damon <jdamon@gmail.com> wrote:

> *TOOLCHAIN_HOST_TASK_append = " zeromq"*
>
> For a target recipe you want TOOLCHAIN_TARGET_TASK_append.

Ross

--001a114516d0d5e5fd0552e1f6a1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 26 June 2017 at 20:21, Jimi Damon <span dir=3D"ltr">&lt;<a href=3D"mailt=
o:jdamon@gmail.com" target=3D"_blank">jdamon@gmail.com</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex"><p><b>TOOLCHAIN_HOST_TASK_append
        =3D &quot; zeromq&quot;</b></p>
    <p></p></blockquote></div>For a target recipe you want TOOLCHAIN_TARGET=
_TASK_append.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail=
_extra">Ross</div></div>

--001a114516d0d5e5fd0552e1f6a1--
