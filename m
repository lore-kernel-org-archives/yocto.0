Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6677E00C4C; Thu,  7 Apr 2016 08:41:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 46EDBE00C28
	for <yocto@yoctoproject.org>; Thu,  7 Apr 2016 08:41:51 -0700 (PDT)
Received: by mail-io0-f172.google.com with SMTP id o126so76226469iod.0
	for <yocto@yoctoproject.org>; Thu, 07 Apr 2016 08:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=hrDbq1rF9cecWMdYGYlhWSEra7v4aplk2KvXjoEFdiA=;
	b=H2CUkVy/RBhHrNrdSTqyVEkdYcof3YHXBiuzn75vaM4NN+f+UIZ6DbpO9X3w0JQbPe
	WNDulV0ly/YxcX6tbXxMve5EjNmPFtzGJC9F6A1WuOF/IKgeZt+LoR2g6O5FypCXsvJu
	iBwLCMKZKhUbemvBfHDqVjHKQLkC7SuyYXynkm1hK+UEMznpGUCB8pWNY8tEg4h4jm0R
	oQQggN4yrZK7NTU2zVcHrtTPX8oW6CFyJo0+nXS1C2S87sGE+TLYTfrLIEAus54zwm6n
	h5I3CfG3CZ++4iguhXxhqdXTOttSAv/Jdr6k55VzXM6YzskZyK205funi+NllMov8k75
	/7Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=hrDbq1rF9cecWMdYGYlhWSEra7v4aplk2KvXjoEFdiA=;
	b=QIlNodfHIorYhgTIuvqPlpNaT2u9Dl0k5VFKzCcdlFcKB7L3xSVYvmFN5g2ujsMOff
	Qgsa3u6xAIbbFC3kwZXxXp+2DByoNsr9/wfYCGW8IgCtYZBYk4E05Bp4UdAzNJlk3Bx0
	ZdyZBsOKTAtVKu84BCxJyB16IjzWuEbIxy3HkJjXn6m1bVJuy+mAT/McoJILw4F979Y/
	bLynOZjd0dyGzt/iFZlq7CRXZPbl4NUsAa9rZvg2Wmkk+qWJUb6F7CwxgQf28erK++98
	8uJXym/FlhyrD+BcNx8UwdG1HaqJDuEpm664WHfcDoLuKQ9Y/lGGj9WyQqG4hf4o+pdK
	bxPA==
X-Gm-Message-State: AD7BkJKAxgTQtzKGXoQJVOwcTJmr0RSoJ9LWXJZDqRl+vUpetFPTLLW8rRU4ForHzTKQrHX5dbegQQbVsp9hrycf
X-Received: by 10.107.135.74 with SMTP id j71mr4565556iod.133.1460043710624;
	Thu, 07 Apr 2016 08:41:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.132.24 with HTTP; Thu, 7 Apr 2016 08:41:31 -0700 (PDT)
In-Reply-To: <570660C6.9020601@gctnet.de>
References: <570660C6.9020601@gctnet.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 7 Apr 2016 16:41:31 +0100
Message-ID: <CAJTo0LY8Wk_oas8YiumBmW1WNmYgZc1y=8k+oF_-ccXD9C_UCQ@mail.gmail.com>
To: bader@gctnet.de
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Error including PHP
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
X-List-Received-Date: Thu, 07 Apr 2016 15:41:54 -0000
Content-Type: multipart/alternative; boundary=001a113f9218bac343052fe6eabd

--001a113f9218bac343052fe6eabd
Content-Type: text/plain; charset=UTF-8

On 7 April 2016 at 14:29, Hans-Georg Bader <bader@gctnet.de> wrote:

> Here is the output:
> bader@ubuntu64:~/oe-core/build$ bitbake -b php_5.4.36
> WARNING: Buildfile specified, dependencies will not be handled. If this is
> not what you want, do not use -b / --buildfile.
>

The clue is in the output.  Don't use -b as it doesn't build dependencies,
which is why configure fails.  Just do:

$ bitbake php

Ross

--001a113f9218bac343052fe6eabd
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 7 April 2016 at 14:29, Hans-Georg Bader <span dir=3D"ltr">&lt;<a href=3D=
"mailto:bader@gctnet.de" target=3D"_blank">bader@gctnet.de</a>&gt;</span> w=
rote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex"><div text=3D"#000000" bgcolor=3D"#F=
FFFFF">Here is the output:<br>
    <small><small>bader@ubuntu64:~/oe-core/build$ bitbake -b php_5.4.36<br>
        WARNING: Buildfile specified, dependencies will not be handled.
        If this is not what you want, do not use -b / --buildfile.</small><=
/small></div></blockquote></div><br>The clue is in the output.=C2=A0 Don&#3=
9;t use -b as it doesn&#39;t build dependencies, which is why configure fai=
ls.=C2=A0 Just do:</div><div class=3D"gmail_extra"><br></div><div class=3D"=
gmail_extra">$ bitbake php</div><div class=3D"gmail_extra"><br></div><div c=
lass=3D"gmail_extra">Ross</div></div>

--001a113f9218bac343052fe6eabd--
