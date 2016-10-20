Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD48EE00D9C; Thu, 20 Oct 2016 13:18:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.174 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f174.google.com (mail-qk0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0F3AE00D72
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 13:18:46 -0700 (PDT)
Received: by mail-qk0-f174.google.com with SMTP id z190so116355014qkc.2
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2016 13:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=aJ0yggM37IQb2gZltmXxT/OuPQrGR77XeFjgBDWUtjk=;
	b=GZMgLaxR0PuNOOb2/qttXQi5QsEDm/k6/We+9INoKfelMap9aIbo/SRRjwdT+mn69E
	mcUQ2XHri0XrHprR7ANS3X6iXlnosLDf9PHkyeDc5iFx0lC6/DJ5dLT3oQysBXDl+dmI
	t2KpUaPKav3EfB5pqjFlpBY6mB2cGw3/Vf+c8nHrqc7N2vNpMbnQm1AL/I7XLisKQmMm
	8QKUQUeioYqj4FXQqipdSc4WPC8YK++LCckhbHg9Gcc67Cb3BUA5nu9DjmVsiwxzuKal
	s2KOD5RX/oHR3jJQRAHfcl+aRbTKnvFGeM85YcXFQK7t0EIta6nbBIvXQVVukm1xiUVO
	jJCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=aJ0yggM37IQb2gZltmXxT/OuPQrGR77XeFjgBDWUtjk=;
	b=D4uH0Gn/tLqUHQV6j9sTbi5FIdkRE+Q3LS9NoS6jaziXTiH5kPSYlWgHZdadHNmzb0
	Q+drjmWYkf3KTypJddXVxKuiM9QuE4ZGuTnf7YO8Xope2Zy/Ku1WGDfodHDkmAvi420L
	5+eh4ZNZhqGBObq4eVdI1ZC8Z+3bFQ/dqM4DycX4OYPoy0o38QkT94e1AFoVQqyNUYB7
	m5HTubIxuMGwrYeu6NmknyVCkftJZQeXswP8aafrzzwiQnJHzhW1VqgsNEo0LKYYdTeQ
	seUsOobvQ9vhUHrsXCDplSfxfxd+MayT2Duvd2QEqCzCqUk/c9cEFzUgfhIV1ssjNyM1
	EqPg==
X-Gm-Message-State: ABUngvdp6/C4FUuWXOaYBrk/NFSk4/CgzLN43UO1KmpYJbz+A35wXcZ7i9hfYR4Bwvs78AZvUAXDhDS6/vCuGobz
X-Received: by 10.55.32.195 with SMTP id g186mr2143779qkg.77.1476994725658;
	Thu, 20 Oct 2016 13:18:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.208 with HTTP; Thu, 20 Oct 2016 13:18:25 -0700 (PDT)
In-Reply-To: <C69CC27A-49C3-4FBF-8584-D78C113DB666@cisco.com>
References: <C69CC27A-49C3-4FBF-8584-D78C113DB666@cisco.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 20 Oct 2016 21:18:25 +0100
Message-ID: <CAJTo0La9OrGx2r7OmU2F2kivF+rizB8mL5rJsX4LWWft7R=99Q@mail.gmail.com>
To: "Dinh Nguyen (dinhn)" <dinhn@cisco.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"Srinivas Yedla \(sryedla\)" <sryedla@cisco.com>
Subject: Re: ppc-fixplt.patch - ERROR: Function failed patch_do_path()
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
X-List-Received-Date: Thu, 20 Oct 2016 20:18:49 -0000
Content-Type: multipart/alternative; boundary=001a11470c3af5749d053f51a155

--001a11470c3af5749d053f51a155
Content-Type: text/plain; charset=UTF-8

On 20 October 2016 at 19:41, Dinh Nguyen (dinhn) <dinhn@cisco.com> wrote:

> I am trying to build the luajit_2.0.3.bb recipe on our Yocto-1.7 base.
> It failed to path the ppc-fixplt.patch. Hers is my build configuration.
>

Looking back in history it's possible that both your BSP and meta-oe are
both attempting to apply the same patch, so check that your BSP layer
(meta-fsl-ppc-*) isn't bbappending it at the same time as meta-oe also
shipping the same patch.

Ross

--001a11470c3af5749d053f51a155
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 20 October 2016 at 19:41, Dinh Nguyen (dinhn) <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:dinhn@cisco.com" target=3D"_blank">dinhn@cisco.com</a>&gt;</s=
pan> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex=
;border-left:1px #ccc solid;padding-left:1ex"><div style=3D"color:rgb(0,0,0=
)">I am trying to build the <a href=3D"http://luajit_2.0.3.bb" target=3D"_b=
lank">luajit_2.0.3.bb</a> recipe on our Yocto-1.7 base.=C2=A0</div>
<div style=3D"color:rgb(0,0,0)">It failed to path the ppc-fixplt.patch. Her=
s is my build configuration.=C2=A0</div>
<div style=3D"color:rgb(0,0,0)"></div></blockquote></div><br>Looking back i=
n history it&#39;s possible that both your BSP and meta-oe are both attempt=
ing to apply the same patch, so check that your BSP layer (meta-fsl-ppc-*) =
isn&#39;t bbappending it at the same time as meta-oe also shipping the same=
 patch.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra=
">Ross</div></div>

--001a11470c3af5749d053f51a155--
