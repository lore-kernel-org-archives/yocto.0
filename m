Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9D1EE00961; Mon,  2 Sep 2019 08:33:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	NUMERIC_HTTP_ADDR, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	*  1.2 NUMERIC_HTTP_ADDR URI: Uses a numeric IP address in URL
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.50 listed in list.dnswl.org]
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com
	[209.85.222.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE430E0082A
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2019 08:33:57 -0700 (PDT)
Received: by mail-ua1-f50.google.com with SMTP id n6so1166988uaq.3
	for <yocto@yoctoproject.org>; Mon, 02 Sep 2019 08:33:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=3ikFNbPKAkpL/qB/4tpVDUWF3nq0v9Bk0pfx9s8BEA0=;
	b=ppqfCi4FXPIDSAhHQi8Tux+2+VYV+/Ao0D+DcEzW+LxNSOf4YbR1Tv2L5vpUaUIyFo
	Oy4feNTvjxHIMoJXFsA36UyRy9FcbqNaJOV+E01ZLA3zxaOpG2A+4yyfMDZZCNyhTu98
	Qgb5YV1UkKsUXpa43Bmo8uDksFq6z9fiGpRpafI7SPprp902V3CkJr0OMIegzPsbt1wR
	SELuFX6EInDU9j+sEazoLYls4bJviBrvXCR79x7qerNuzx7o1Q5WdpQNCGmTuLLSWFz2
	gQWuVpCCKOoHK0Pjo0+xwDmxsUc9aMpbWGccpVzzZ10cknU6xQTxytjZAZV3E8HPcgG5
	ovyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=3ikFNbPKAkpL/qB/4tpVDUWF3nq0v9Bk0pfx9s8BEA0=;
	b=scof83ObgMyPDAatvE2YrOGrgcv3FmGPsx75qaB/DJiM3ve6rd+OB5P4CzMaXlkafP
	jpfMFY9+3cVdwJbN77WiriCK62KbraFPgh9URjBwlT2vozmT3aSXJ4iowWtRpBvskGlx
	TMpHjcMV4gu9v7rxxDQq9/6q1vy6WSg8sgrEmZT6yreGkk6v05pKzFjgFz6g3BVhsqlg
	Ev+GmVs+xviXL3bT3O1C8fXEDZ/K3/KY0iUInxOfVswRPvpcBeGV9IH/L/zjWAXUXo/8
	jzT3Qy1gavqatZUjhCCxnN9xTJx7Rayd9I2LSGhFwVTGBom+VTs6xuZVgwlBnZ/RDZFO
	RCxA==
X-Gm-Message-State: APjAAAVlHrgYBk6X82t1Mj6nIGQrRpZtEf2DFkcJ8p5U7YLnWwDgdnmV
	vUK+TtqaGos0uOI86pX7cws+4ZETLj0j8O49SBo=
X-Google-Smtp-Source: APXvYqxxP6L5cqFIBA0dg1XIBj1Fi8gYq0TbfzS9sCLnhZt8ynA/cvutkVBHQfvcaTB4P376Y4JLDX2jnaNQtwzkjVs=
X-Received: by 2002:ab0:7097:: with SMTP id m23mr318516ual.89.1567438437157;
	Mon, 02 Sep 2019 08:33:57 -0700 (PDT)
MIME-Version: 1.0
References: <CACsETSsjtVOpXdR6_oWisx2LZM4hkKr37NfT+WmS_goDUZTO8g@mail.gmail.com>
	<CANNYZj9=-t+=BZ4ahnJqvYufakkNa00gzjh0ksyoMR88HKMQ1g@mail.gmail.com>
	<CACsETSurbOjmE5JRXO2gZKopAqM_LA22q=EsANiZWGgY-Z1UUg@mail.gmail.com>
In-Reply-To: <CACsETSurbOjmE5JRXO2gZKopAqM_LA22q=EsANiZWGgY-Z1UUg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 2 Sep 2019 17:33:45 +0200
Message-ID: <CANNYZj8MY_h00dhWVF1ewefWXaBxOhxt0fZdqhkrwow_z9U0iA@mail.gmail.com>
To: sateesh m <sateesh0457@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: ptest-runner yocto build sytem issue
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
X-List-Received-Date: Mon, 02 Sep 2019 15:33:59 -0000
Content-Type: multipart/alternative; boundary="00000000000041117a059193b39e"

--00000000000041117a059193b39e
Content-Type: text/plain; charset="UTF-8"

On Mon, 2 Sep 2019 at 16:06, sateesh m <sateesh0457@gmail.com> wrote:

> Sure, sir. If you don't mine can you please share where this log file will
> present.
> I am seeing /tmp-glibc/work/riscv-oe-linux/ptest-runner/2.3.4.../temp/
> I am seeing here but log.do_rootfs file is not Present here.
>
> Can you please tell me where I can found this file.
>

I do not know what image you are building; it is in build directory of that
image. Use 'find' to locate it :)

Alex

--00000000000041117a059193b39e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail=
_attr">On Mon, 2 Sep 2019 at 16:06, sateesh m &lt;<a href=3D"mailto:sateesh=
0457@gmail.com">sateesh0457@gmail.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div dir=3D"auto">Sure, sir. If you do=
n&#39;t mine can you please share where this log file will present.<div dir=
=3D"auto">I am seeing /tmp-glibc/work/riscv-oe-linux/ptest-runner/<a href=
=3D"http://2.3.4." target=3D"_blank">2.3.4.</a>../temp/=C2=A0</div><div dir=
=3D"auto">I am seeing here but log.do_rootfs file is not Present here.</div=
><div dir=3D"auto"><br></div><div dir=3D"auto">Can you please tell me where=
 I can found this file.</div></div></blockquote><div><br></div><div>I do no=
t know what image you are building; it is in build directory of that image.=
 Use &#39;find&#39; to locate it :)</div><div><br></div><div>Alex<br></div>=
</div></div>

--00000000000041117a059193b39e--
