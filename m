Return-Path: <mbroadst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67056E00AF2; Sat,  9 Apr 2016 06:18:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mbroadst[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f53.google.com (mail-oi0-f53.google.com
	[209.85.218.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 220D4E00AD8
	for <yocto@yoctoproject.org>; Sat,  9 Apr 2016 06:18:48 -0700 (PDT)
Received: by mail-oi0-f53.google.com with SMTP id s79so164262254oie.1
	for <yocto@yoctoproject.org>; Sat, 09 Apr 2016 06:18:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to; 
	bh=ErFRuoDoNztgmnbrEDpx5lqKkRCBOUs+Lrsf1kzZiEU=;
	b=VKd0msNUSEwo6WfyH5A5f6JYKlWnebD5vLsc8QmZEZMgw/EPnIgE83hwZZ+AkbgNmy
	cGO8haMb0luEcdXKHwzfNEoRUNzG3iihWovbR8ofm645Z0nHoc1BDc8dnXY0je/lJs6q
	n/JaG7ZV9sMV+NhoM6vqBaiYH1utuwSMjpSF8WNJeQe56iiwVCzXeLL1zS913ZIP7wCs
	KOdF5J9h8Ov1Il2VbeznTW2IdMWii/QvkuhdMrgwEiAEEYzoKe6lpt6MqDJllwkpdsgC
	RBgisSkpINHvNFWZ49Kqu+jzGY41hWOvUnfMYbIw/Pllkj8MUH1hEJu3xfXeUwXIOAU9
	3Lyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to;
	bh=ErFRuoDoNztgmnbrEDpx5lqKkRCBOUs+Lrsf1kzZiEU=;
	b=Xda0fuT80WQ9HwXI64wGtiF/LWn97lYRtcUP0fzu0+BOnAm80Qth6FNFftbEEjbJX4
	czmY6hRueSif8baVwBHUSDTcV+Aa9NbKakKVh2dVCWenv13tCR6//UIe4WiAK1Hl8TQb
	fImcWwu4C6cc58ZmQODT/MqGEaiYCFwAFKbHsmew/xbcQZS0FsfOZTSjubiSET/voBLw
	17laNvFhrrmvzpvXHMU6ylwPU79ux8aqRiRsxzx7CewWBUozvvObqxss+NeLcnn5vdAo
	uXPDIeKybP1VsT32qykeVmf37YdF77NWObI977UZR7iaKGOJ3qJ//d6jPBqWesYSAmLw
	iiUQ==
X-Gm-Message-State: AD7BkJLchgLdFrLAxy3x3KBWWvHi6Akk415Lko5uca5vQtcswlBpBm/UWN4diaKo00e+r6qR2qEHgu6fcW83xg==
MIME-Version: 1.0
X-Received: by 10.202.242.2 with SMTP id q2mr6256044oih.137.1460207928433;
	Sat, 09 Apr 2016 06:18:48 -0700 (PDT)
Received: by 10.202.69.215 with HTTP; Sat, 9 Apr 2016 06:18:48 -0700 (PDT)
In-Reply-To: <CAMsD-yCziFjg1eeZ9q8r0ueFyPC2D0xyeeAHPCeKRHMGjahLBA@mail.gmail.com>
References: <CAMsD-yCziFjg1eeZ9q8r0ueFyPC2D0xyeeAHPCeKRHMGjahLBA@mail.gmail.com>
Date: Sat, 9 Apr 2016 09:18:48 -0400
Message-ID: <CAMsD-yCKYc=0eE5FPxKQE4x4DDP_i3syM-_xAkK6kuS9wMXXNQ@mail.gmail.com>
From: Matt Broadstone <mbroadst@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: cmake recipe find_file failure
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
X-List-Received-Date: Sat, 09 Apr 2016 13:18:53 -0000
Content-Type: multipart/alternative; boundary=94eb2c09532edf665c05300d2687

--94eb2c09532edf665c05300d2687
Content-Type: text/plain; charset=UTF-8

On Sat, Apr 9, 2016 at 8:43 AM, Matt Broadstone <mbroadst@gmail.com> wrote:

> Hi,
> I'm trying to build a recipe for apache qpid, which is a cmake-based
> project. Configuration is currently failing due to "find_file" not being
> able to find a file in the source directory for the build:
>
> find_file(QPID_VERSION_FILE NAMES QPID_VERSION.txt PATHS
> ${PROJECT_SOURCE_DIR}/.. ${PROJECT_SOURCE_DIR} NO_DEFAULT_PATH)
> mark_as_advanced(QPID_VERSION_FILE)
> if(NOT QPID_VERSION_FILE)
>   message(FATAL_ERROR "Cannot find QPID_VERSION.txt")
> endif(NOT QPID_VERSION_FILE)
>
> What's truly puzzling is that if I try the following:
>
> execute_process(COMMAND ls ${PROJECT_SOURCE_DIR} OUTPUT_VARIABLE
> TEST_OUTPUT)
> message("LS RESULT: ${TEST_OUTPUT}")
>
> the paths are indeed correct; the result of the ls contains the
> QPID_VERSION.txt file. This seems to indicate to me that something else is
> failing internally, but am not sure where I should be looking exactly.
>
> Has anyone experienced this before? Are there any general tips for
> debugging these types of failures in cmake projects in yocto?
>
> Regards,
> Matt
>

Continuing in the tradition of answering my own silly questions, this seems
to be related to the fact that the cmake.bbclass
overwrites CMAKE_FIND_ROOT_PATH's default value (empty) with yocto-specific
values so as to prevent bleed from the host. Hope this helps someone in the
future.

Matt

--94eb2c09532edf665c05300d2687
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On S=
at, Apr 9, 2016 at 8:43 AM, Matt Broadstone <span dir=3D"ltr">&lt;<a href=
=3D"mailto:mbroadst@gmail.com" target=3D"_blank">mbroadst@gmail.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px=
 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-=
left-style:solid;padding-left:1ex"><div dir=3D"ltr">Hi,<div>I&#39;m trying =
to build a recipe for apache qpid, which is a cmake-based project. Configur=
ation is currently failing due to &quot;find_file&quot; not being able to f=
ind a file in the source directory for the build:</div><div><br></div><div>=
<div>find_file(QPID_VERSION_FILE NAMES QPID_VERSION.txt PATHS ${PROJECT_SOU=
RCE_DIR}/.. ${PROJECT_SOURCE_DIR} NO_DEFAULT_PATH)</div><div>mark_as_advanc=
ed(QPID_VERSION_FILE)</div><div>if(NOT QPID_VERSION_FILE)</div><div>=C2=A0 =
message(FATAL_ERROR &quot;Cannot find QPID_VERSION.txt&quot;)</div><div>end=
if(NOT QPID_VERSION_FILE)</div></div><div><br></div><div>What&#39;s truly p=
uzzling is that if I try the following:</div><div><br></div><div><div>execu=
te_process(COMMAND ls ${PROJECT_SOURCE_DIR} OUTPUT_VARIABLE TEST_OUTPUT)</d=
iv><div>message(&quot;LS RESULT: ${TEST_OUTPUT}&quot;)</div></div><div><br>=
</div><div>the paths are indeed correct; the result of the ls contains the =
QPID_VERSION.txt file. This seems to indicate to me that something else is =
failing internally, but am not sure where I should be looking exactly.</div=
><div><br></div><div>Has anyone experienced this before? Are there any gene=
ral tips for debugging these types of failures in cmake projects in yocto?<=
/div><div><br></div><div>Regards,</div><div>Matt</div></div>
</blockquote></div><br></div><div class=3D"gmail_extra">Continuing in the t=
radition of answering my own silly questions, this seems to be related to t=
he fact that the cmake.bbclass overwrites=C2=A0CMAKE_FIND_ROOT_PATH&#39;s d=
efault value (empty) with yocto-specific values so as to prevent bleed from=
 the host. Hope this helps someone in the future.</div><div class=3D"gmail_=
extra"><br></div><div class=3D"gmail_extra">Matt</div><div class=3D"gmail_e=
xtra"><br></div></div>

--94eb2c09532edf665c05300d2687--
