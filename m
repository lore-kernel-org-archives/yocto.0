Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 12C53E0077F; Mon, 25 Apr 2016 09:10:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.161.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f179.google.com (mail-yw0-f179.google.com
	[209.85.161.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8882FE0073D
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 09:10:13 -0700 (PDT)
Received: by mail-yw0-f179.google.com with SMTP id t10so221685266ywa.0
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 09:10:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to; 
	bh=svnRXrfnAPTnmMlccBHrWjpW/B3TpKkW+JH5BuaNigI=;
	b=YgyoBQ9hA5MI7GHVqWUjZkddpAB2oio5y2NuFe9wfkKQvdPm7042jSiQB2D5OCYkxp
	VYwRbC1jgYhgvvpXKzlZC197zngUTPxXgYPZO+94KcWKG0u5c+N+k4e1Y8WWrPWRigq0
	Lp8eGM72HJXip/LkxWJXgRcpNDGwu+khamx1s+2vlSkTA997JCZg1tt5JcLSQXV2hK41
	b/blqcXjqzCCtKt5sBPXMbDYkeSoNv0lZkwoeQ+FDkgiCGrdy9OcgB79S2J/Fw52ntTh
	bJ+2c8VkpXlbL9fu0rfnJSHqKgCQn3p0tt5ytMzagDfp/YofNwL7VMh3/LygMkQKbjpB
	VLfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to;
	bh=svnRXrfnAPTnmMlccBHrWjpW/B3TpKkW+JH5BuaNigI=;
	b=jovLjtCmPjxriUmH5jcgNhr54sE+usafmWXaOuAk5CO2igHUgnL+SeUuNH/dW0oOhy
	1oLuvF/T9m12O/XWkADjScFpaKG8X5k6YlSu8pWLTd0mDc5gM5tGUoiK+u3lsZM12usc
	x7DG5OJpJDqBABp5pqp3aQEEm365btjtdJHDLUXMIJzyxyVSy7B+ckoYUv8UClAyBWtI
	IBoMtgRIpYO5N9DfF/mBJoF4lCDsQFsFKMbHOu/5ST2HpX7/QvpGNXowVl/QBeR7vFyi
	IDeZJDiaZpysVKqa0AjFCM1OUL2Bbb07dcjiNMu/frmie7hwN0GHhqiW7nunlH+pmCqE
	JWzQ==
X-Gm-Message-State: AOPr4FW2WSwOJNzz7wpoWoZ7jOD8xBvJO4MD9vSXH80BaAxDLceuX1eSd78gQaN9AMpLOZQuG5HyF7uO5yvzTw==
MIME-Version: 1.0
X-Received: by 10.176.6.161 with SMTP id g30mr9607233uag.142.1461600612215;
	Mon, 25 Apr 2016 09:10:12 -0700 (PDT)
Received: by 10.176.66.227 with HTTP; Mon, 25 Apr 2016 09:10:12 -0700 (PDT)
In-Reply-To: <CAF3SDA6udbSNzcx3to0E8aKVo+q6K02KXcKDMV2n1rbzbdhz5w@mail.gmail.com>
References: <CAF3SDA6udbSNzcx3to0E8aKVo+q6K02KXcKDMV2n1rbzbdhz5w@mail.gmail.com>
Date: Mon, 25 Apr 2016 13:10:12 -0300
Message-ID: <CAF3SDA5tuX+G6b6_yhmzx68eVxGA3PzSHeP3FzgBP1nROuiuzw@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Compiling tollchain at x64 to run at x86
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
X-List-Received-Date: Mon, 25 Apr 2016 16:10:14 -0000
Content-Type: multipart/alternative; boundary=94eb2c047ca04b75ea053151693e

--94eb2c047ca04b75ea053151693e
Content-Type: text/plain; charset=UTF-8

Hi everybody, download a ready to run script from
http://downloads.yoctoproject.org/releases/yocto/yocto-1.6/toolchain/i686/poky-eglibc-i686-core-image-sato-armv7a-vfp-neon-toolchain-1.6.sh
and worked fine!

Cheers,

2016-04-25 11:26 GMT-03:00 Daniel. <danielhilst@gmail.com>:

> Hi everybody
>
> I need to install a toolchain compiled by Yocto but my machine (where the
> toolchain will be compiled) is a x64, and the machine where the toolchain
> will run is x86. How can I achieve this?
>
> Best regards,
> - dhs
>
> --
> *"Do or do not. There is no try"*
>   *Yoda Master*
>



-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--94eb2c047ca04b75ea053151693e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi everybody, download a ready to run script from <a =
href=3D"http://downloads.yoctoproject.org/releases/yocto/yocto-1.6/toolchai=
n/i686/poky-eglibc-i686-core-image-sato-armv7a-vfp-neon-toolchain-1.6.sh">h=
ttp://downloads.yoctoproject.org/releases/yocto/yocto-1.6/toolchain/i686/po=
ky-eglibc-i686-core-image-sato-armv7a-vfp-neon-toolchain-1.6.sh</a> and wor=
ked fine!<br><br></div>Cheers,<br></div><div class=3D"gmail_extra"><br><div=
 class=3D"gmail_quote">2016-04-25 11:26 GMT-03:00 Daniel. <span dir=3D"ltr"=
>&lt;<a href=3D"mailto:danielhilst@gmail.com" target=3D"_blank">danielhilst=
@gmail.com</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"lt=
r"><div><div><div>Hi everybody<br><br></div>I need to install a toolchain c=
ompiled by Yocto but my machine (where the toolchain will be compiled) is a=
 x64, and the machine where the toolchain will run is x86. How can I achiev=
e this?<br><br></div>Best regards,<br></div><div>- dhs<span class=3D"HOEnZb=
"><font color=3D"#888888"><br></font></span></div><span class=3D"HOEnZb"><f=
ont color=3D"#888888"><div><div><div><div><br>-- <br><div><div style=3D"tex=
t-align:right"><i>&quot;Do or do not. There is no try&quot;</i><br><i>=C2=
=A0 </i><i><b>Yoda Master</b></i><br></div></div>
</div></div></div></div></font></span></div>
</blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail_sig=
nature"><div style=3D"text-align:right"><i>&quot;Do or do not. There is no =
try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b></i><br></div></div>
</div>

--94eb2c047ca04b75ea053151693e--
