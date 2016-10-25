Return-Path: <winotu.email@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB586E00953; Mon, 24 Oct 2016 23:55:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (winotu.email[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 512DCE00912
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2016 23:55:31 -0700 (PDT)
Received: by mail-vk0-f48.google.com with SMTP id b186so174796355vkb.1
	for <yocto@yoctoproject.org>; Mon, 24 Oct 2016 23:55:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=2WxSbTIBy2TVzoXew1Uxv89T+MLaTSOqxioFU687Fac=;
	b=nATFW6vO8e3lYTDm96Ctlm8hzBm0Sjk9FGVXTxSWoh8WTIRH9FIiSAfCLPiYjcCXiK
	VngBup2ua1Qbs+2EioSsnmAybzMe8mLpCel1XNlqg4fwl35nJnbRpYwYzmIaPFhPqJM/
	ZhpOo+D+XRRMU5HQ4MXhgpVyJf6X7znsWRritCX1uvMheRMH/jmgJYpe+lKOIm6Mvy7L
	vEnw6EU85Qyrqrj3kYrhu2To11KwQD9AA9bxinHtnzhBqTOG0IuK2O1H0gM8cak9A4CM
	KaoHKsngBQIXe6z9CbMu0LTx03dfWYqKSvVeSTK7WA7FSXPNElsKUXP31bXW5qEW5eFv
	eq0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=2WxSbTIBy2TVzoXew1Uxv89T+MLaTSOqxioFU687Fac=;
	b=dq4LfoQoCbhJN7EehAHD6zBjwAeKqHV2KaHa5Qa3nl0b/IcUN1FqKVDg3qMcgHoeDf
	fI2Nt5Kg2oXdQoLoLSUzyPtQpUg7G+3C0nuzJzghmXAEd76eh5J4l23qZ2W9bOIHCN61
	SfVUfIgZVNcUb1bj6OrzyO64mKK+uhWD9Lf3+7xBZvQIHWTD4Wh/s1FwsfiAoRgtP3Wu
	X9Ms2DxlLNvY5I8kjRM1/6ke0jn0UDNdy3VsYgSzbpmm7NPaqitMHmgp9t/vRmXvWV4Z
	ERMVz5iI4/z1v9+kTUiHu64St+DPxpmUvoxUBoTuGyFahxaD3CGBr13Eq7pxpP5ut21C
	vX4Q==
X-Gm-Message-State: ABUngvcPRXwfgfh4tl5c0yT+MipgSET6hL4o1PLuBt6lhL9SeQdb2qY4Lwg+6gQnnz3PqAzbN43gdWZOljF3vg==
X-Received: by 10.31.108.133 with SMTP id j5mr13880243vki.161.1477378531106;
	Mon, 24 Oct 2016 23:55:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.83.207 with HTTP; Mon, 24 Oct 2016 23:55:30 -0700 (PDT)
In-Reply-To: <CAGMz-a6-5hKCJ2E1f2Z2jtawWH6n8kguUC2iqWcgBbGKEb-czA@mail.gmail.com>
References: <CAGMz-a6-5hKCJ2E1f2Z2jtawWH6n8kguUC2iqWcgBbGKEb-czA@mail.gmail.com>
From: "Chris Z." <winotu.email@gmail.com>
Date: Tue, 25 Oct 2016 08:55:30 +0200
Message-ID: <CAEjjReKVvJfgen4=PCT8_eGBMfKrRCY7vTZfi9QOYByM5T2RXA@mail.gmail.com>
To: Jonathan Poulin <jopoulin@gmail.com>
Cc: yoctoproject <yocto@yoctoproject.org>
Subject: Re: New bitbake task dependency
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
X-List-Received-Date: Tue, 25 Oct 2016 06:55:32 -0000
Content-Type: multipart/alternative; boundary=001a114783648ba451053faafea5

--001a114783648ba451053faafea5
Content-Type: text/plain; charset=UTF-8

HI,

Check temp directory for taskorder and check if this task is run. Check if
this task is not omitted by sstatecache mechanism.

P.S.
you have EXPORT_FUNCTIONS for this task ?

On Tue, Oct 25, 2016 at 6:29 AM, Jonathan Poulin <jopoulin@gmail.com> wrote:

> Hello,
>
> I add a new task in my image recipe that inherit of core-image like below :
>
>
> ***************************
>
> do_uimage() {
>     cat ${DEPLOY_DIR_IMAGE}/zImage-imx6d-axion.dtb >>
> ${DEPLOY_DIR_IMAGE}/zImage-initramfs-${MACHINE}.bin
>     mkimage -A arm -O linux -T kernel -C none -a 0x12000000 -e 0x12000000
> -n "Linux Kernel" -d ${DEPLOY_DIR_IMAGE}/zImage-initramfs-${MACHINE}.bin
> ${DEPLOY_DIR_IMAGE}/uImage
>     md5sum ${DEPLOY_DIR_IMAGE}/uImage | cut -d' ' -f1 >
> ${DEPLOY_DIR_IMAGE}/uMD5
> }
>
> addtask do_uimage after do_deploy before do_build
>
> ***************************
>
> The task is run the first time I call  "bitbake prod-image" but for the
> subsequent call the task uimage isn't called. I have to call "bitbake -c
> uimage prod-image" to run it.
>
> How can I make this new task run each time the task do_deploy need to be
> run?
>
> thanks for your help
> Jonathan
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a114783648ba451053faafea5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>HI,<br><br></div>Check temp directory for taskor=
der and check if this task is run. Check if this task is not omitted by sst=
atecache mechanism.<br><br></div><div>P.S.<br></div><div>you have EXPORT_FU=
NCTIONS for this task ?<br></div></div><div class=3D"gmail_extra"><br><div =
class=3D"gmail_quote">On Tue, Oct 25, 2016 at 6:29 AM, Jonathan Poulin <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:jopoulin@gmail.com" target=3D"_blank">j=
opoulin@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><=
div dir=3D"ltr"><div><div><div><div><div>Hello,<br><br></div>I add a new ta=
sk in my image recipe that inherit of core-image like below :<br><br><br>**=
*************************<br><br>do_uimage() {<br>=C2=A0=C2=A0=C2=A0 cat ${=
DEPLOY_DIR_IMAGE}/zImage-<wbr>imx6d-axion.dtb &gt;&gt; ${DEPLOY_DIR_IMAGE}/=
zImage-<wbr>initramfs-${MACHINE}.bin<br>=C2=A0=C2=A0=C2=A0 mkimage -A arm -=
O linux -T kernel -C none -a 0x12000000 -e 0x12000000 -n &quot;Linux Kernel=
&quot; -d ${DEPLOY_DIR_IMAGE}/zImage-<wbr>initramfs-${MACHINE}.bin ${DEPLOY=
_DIR_IMAGE}/uImage<br>=C2=A0=C2=A0=C2=A0 md5sum ${DEPLOY_DIR_IMAGE}/uImage =
| cut -d&#39; &#39; -f1 &gt; ${DEPLOY_DIR_IMAGE}/uMD5<br>}<br><br>addtask d=
o_uimage after do_deploy before do_build<br><br>***************************=
<br><br></div>The task is run the first time I call=C2=A0 &quot;bitbake pro=
d-image&quot; but for the subsequent call the task uimage isn&#39;t called.=
 I have to call &quot;bitbake -c uimage prod-image&quot; to run it.<br><br>=
</div>How can I make this new task run each time the task do_deploy need to=
 be run?<br><br></div>thanks for your help<span class=3D"HOEnZb"><font colo=
r=3D"#888888"><br></font></span></div><span class=3D"HOEnZb"><font color=3D=
"#888888">Jonathan <br></font></span></div>
<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a114783648ba451053faafea5--
