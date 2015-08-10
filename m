Return-Path: <yoctomailinglist@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D483E0034B; Mon, 10 Aug 2015 04:21:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yoctomailinglist[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.66 listed in list.dnswl.org]
Received: from mail-qg0-f66.google.com (mail-qg0-f66.google.com
	[209.85.192.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 15257E00306
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 04:21:17 -0700 (PDT)
Received: by qgeg42 with SMTP id g42so8602711qge.0
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 04:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=9eyV8TgRJT0AqY0kJO7UOSfmwXU1An5QynS6UcLYMrU=;
	b=wLdc2M0L3MAupk/JmWFDn6f/BaVe+ytLecooBEa5BGW9XbH68SoPhU5krewqZJq4M5
	teNC1rnUdBj21/+F3Gj/ZImv6mgzGNJYZSD8zFFvVW6RjX1hWQG1YjCPpgyxg6jU/XIP
	sET2iTzJymqRUOotAhEN/ZTxw5H1IvVu3+hWwxgdwMj/gkL6iWzrmGT7Hi2REq1KA/1s
	cBH74wjPGl8mYgbJQE/gSW/6btjV1YmQwkZVsb9lHMDG6hZGRHSHUQo/CSjH3OjWDIKj
	+4XSZn2A97MHsqBV+HN5xRTTIqt8tRN7snBXG0HmMzYp3Io0bjoEG2QkkV48lBr9BMSd
	v4vg==
MIME-Version: 1.0
X-Received: by 10.140.133.145 with SMTP id 139mr38847865qhf.76.1439205677251; 
	Mon, 10 Aug 2015 04:21:17 -0700 (PDT)
Received: by 10.140.39.148 with HTTP; Mon, 10 Aug 2015 04:21:17 -0700 (PDT)
In-Reply-To: <CAJTo0LYOJ_T3rTg9o2=Qo1twUfHFi1OTKBBnLqed1u+rxHKWTw@mail.gmail.com>
References: <CACTu1LjN5JStnAA8Gyu=xJED4feXTpj7JA-GNiE_f7JbKUhy_w@mail.gmail.com>
	<CAJTo0LYOJ_T3rTg9o2=Qo1twUfHFi1OTKBBnLqed1u+rxHKWTw@mail.gmail.com>
Date: Mon, 10 Aug 2015 13:21:17 +0200
Message-ID: <CACTu1LgS7CmxYjUf58VzE+--EvsZSE63CO2ZC0kGuScZonoqsg@mail.gmail.com>
From: yocto yocto <yoctomailinglist@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Header-Files of DEPEND recipe not found
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
X-List-Received-Date: Mon, 10 Aug 2015 11:21:21 -0000
Content-Type: multipart/alternative; boundary=001a1136f73626c115051cf32fd8

--001a1136f73626c115051cf32fd8
Content-Type: text/plain; charset=UTF-8

2015-08-10 13:16 GMT+02:00 Burton, Ross <ross.burton@intel.com>:

>
> The first step would be to verify that the sysroot does in fact have the
> headers installed in
>
> Ross
>

Thank you for your response! How do I verify that?

--001a1136f73626c115051cf32fd8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
2015-08-10 13:16 GMT+02:00 Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;=
</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div class=3D"g=
mail_extra"><span class=3D""><br><div class=3D"gmail_quote">The first step =
would be to verify that the sysroot does in fact have the headers installed=
 in</div></span></div><span class=3D"HOEnZb"><font color=3D"#888888"><div c=
lass=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></font>=
</span></div>
</blockquote></div><br></div><div class=3D"gmail_extra">Thank you for your =
response! How do I verify that?</div></div>

--001a1136f73626c115051cf32fd8--
