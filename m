Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EEE45E00D89; Tue, 19 Dec 2017 12:49:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, HTML_OBFUSCATE_05_10,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.66 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f66.google.com (mail-it0-f66.google.com
	[209.85.214.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B5B11E00C0F
	for <yocto@yoctoproject.org>; Tue, 19 Dec 2017 12:49:28 -0800 (PST)
Received: by mail-it0-f66.google.com with SMTP id b5so4274428itc.3
	for <yocto@yoctoproject.org>; Tue, 19 Dec 2017 12:49:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=f1BPB4zN0Q9tGFqJT3+TR2yA3hOAX41l7HUSQuempio=;
	b=DLMcldHVBXIlgPsYiH6u04MWnZFaZGdS1iBz/AUy4S0AgxHQFCno54Iz3FPiYwWWr4
	zo/r4MAHIJmXzArKwUBzAKZZLTybqT9N9uJ5iTyjaQXbzg9ZLKdTzqQA7zE7hHzTCU4z
	DjAelWYIrJBiqTzpISJLj0iVAcvpgFR7mLLwSEwzOPEkZepwuDXlHJ871Y3KrveXRJY1
	Ucc0vkZxQyxbbtn55RYVavYkcSZwc9NCq/cMXJimnv0+ZfqtyfSr8XJY6zIGiOdlKe2q
	ho3Y+EPOhba2nxaNspHCi4dMtvSAtclj2xhDzHaFqd65Lg2bNsLSgOvjEw8FspexqtuR
	lfoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=f1BPB4zN0Q9tGFqJT3+TR2yA3hOAX41l7HUSQuempio=;
	b=dRzGxxW1tcb1hpITWhwM50DTu/tFwqLx4t0kB8xCfggQUEduylV+ezdlYoVs6wQN4N
	cjW5hc2MEYCzG7szMTOKjYBftATw0CcBUQkFmRSrKHeLcDg/Ge4EYgawCzkxWHsmyw8I
	MCiG7ZLwgIs4FaByBP/+gXq08+lGZkSJAx1T8L/iHHnQfeTKS1OpbCpGv2P9icgHShK7
	Kbj1wbiLMxpB7VZ/evDvM8LV5P4P4+y5QQJ22yHFy3ZkwLT2i+1Qn1NGJWI24BpES9iL
	rty0P0KnpZvGA7QBUNICA4rjDBjOkzr3N4JRM4wziCLGHXJwihPy9HTkyC+cn5HHjz92
	s0NQ==
X-Gm-Message-State: AKGB3mJwb7DZLv51D9Tgd9fw0f2N2rZ1wL6935AvQ2fBVRdliEyePO9a
	CoPF7Fgsj995kt4tPKs4a3I8JGSfRjBgBM/Ry91G6w==
X-Google-Smtp-Source: ACJfBosQ39rV5Gy16U1DBpW90KSYn/ESJbH1F2udYzKSBfPnDn44M74hh8eMBX84UyaIciRQIpd3E6dtW8ONWsNwwwY=
X-Received: by 10.36.17.15 with SMTP id 15mr4965850itf.53.1513716567977; Tue,
	19 Dec 2017 12:49:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.141.20 with HTTP; Tue, 19 Dec 2017 12:49:07 -0800 (PST)
In-Reply-To: <1513634888-32057-1-git-send-email-armccurdy@gmail.com>
References: <1513634888-32057-1-git-send-email-armccurdy@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 19 Dec 2017 20:49:07 +0000
Message-ID: <CAJTo0LYUju359fnPb4coNdrQk-dWFWRd3BN9FJ_aYLeeYStBZg@mail.gmail.com>
To: Andre McCurdy <armccurdy@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-gplv2][PATCH 0/3] Consolidated re-send of previously submitted patches
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
X-List-Received-Date: Tue, 19 Dec 2017 20:49:30 -0000
Content-Type: multipart/alternative; boundary="001a11445d6853468f0560b79a89"

--001a11445d6853468f0560b79a89
Content-Type: text/plain; charset="UTF-8"

Merged to master, sorry for the delay.  The gnutls one was already merged
locally but I forgot to push...

Ross

On 18 December 2017 at 22:08, Andre McCurdy <armccurdy@gmail.com> wrote:

> Andre McCurdy (2):
>   gnutls: update 3.3.27 -> 3.3.28
>   elfutils_0.148: musl build fixes
>
> Phong Tran (1):
>   gettext: fix compilation with securityflags enabled
>
>  ...grep-fix-compile-error-Werror-format-secu.patch |  88 ++++++++++++++
>  recipes-core/gettext/gettext_0.16.1.bb             |   1 +
>  .../musl-support-for-elfutils-0.148.patch          | 133
> +++++++++++++++++++++
>  recipes-devtools/elfutils/elfutils_0.148.bb        |   9 +-
>  recipes-support/gnutls/gnutls.inc                  |   9 +-
>  recipes-support/gnutls/gnutls_3.3.27.bb            |  17 ---
>  recipes-support/gnutls/gnutls_3.3.28.bb            |   8 ++
>  7 files changed, 241 insertions(+), 24 deletions(-)
>  create mode 100644 recipes-core/gettext/gettext-
> 0.16.1/0001-gettext-libgrep-fix-compile-error-Werror-format-secu.patch
>  create mode 100644 recipes-devtools/elfutils/elfutils-0.148/musl-support-
> for-elfutils-0.148.patch
>  delete mode 100644 recipes-support/gnutls/gnutls_3.3.27.bb
>  create mode 100644 recipes-support/gnutls/gnutls_3.3.28.bb
>
> --
> 1.9.1
>
>

--001a11445d6853468f0560b79a89
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Merged to master, sorry for the delay.=C2=A0 The gnutls on=
e was already merged locally but I forgot to push...<div><br></div><div>Ros=
s</div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On 1=
8 December 2017 at 22:08, Andre McCurdy <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:armccurdy@gmail.com" target=3D"_blank">armccurdy@gmail.com</a>&gt;</sp=
an> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;=
border-left:1px #ccc solid;padding-left:1ex">Andre McCurdy (2):<br>
=C2=A0 gnutls: update 3.3.27 -&gt; 3.3.28<br>
=C2=A0 elfutils_0.148: musl build fixes<br>
<br>
Phong Tran (1):<br>
=C2=A0 gettext: fix compilation with securityflags enabled<br>
<br>
=C2=A0...grep-fix-compile-error-<wbr>Werror-format-secu.patch |=C2=A0 88 ++=
++++++++++++<br>
=C2=A0recipes-core/gettext/<a href=3D"http://gettext_0.16.1.bb" rel=3D"nore=
ferrer" target=3D"_blank">gettext_<wbr>0.16.1.bb</a>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0|=C2=A0 =C2=A01 +<br>
=C2=A0.../musl-support-for-elfutils-<wbr>0.148.patch=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 | 133 +++++++++++++++++++++<br>
=C2=A0recipes-devtools/elfutils/<a href=3D"http://elfutils_0.148.bb" rel=3D=
"noreferrer" target=3D"_blank">elfu<wbr>tils_0.148.bb</a>=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 |=C2=A0 =C2=A09 +-<br>
=C2=A0recipes-support/gnutls/gnutls.<wbr>inc=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A09 +-<br>
=C2=A0recipes-support/gnutls/<a href=3D"http://gnutls_3.3.27.bb" rel=3D"nor=
eferrer" target=3D"_blank">gnutls_<wbr>3.3.27.bb</a>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 |=C2=A0 17 ---<br>
=C2=A0recipes-support/gnutls/<a href=3D"http://gnutls_3.3.28.bb" rel=3D"nor=
eferrer" target=3D"_blank">gnutls_<wbr>3.3.28.bb</a>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 |=C2=A0 =C2=A08 ++<br>
=C2=A07 files changed, 241 insertions(+), 24 deletions(-)<br>
=C2=A0create mode 100644 recipes-core/gettext/gettext-<wbr>0.16.1/0001-gett=
ext-libgrep-<wbr>fix-compile-error-Werror-<wbr>format-secu.patch<br>
=C2=A0create mode 100644 recipes-devtools/elfutils/<wbr>elfutils-0.148/musl=
-support-<wbr>for-elfutils-0.148.patch<br>
=C2=A0delete mode 100644 recipes-support/gnutls/<a href=3D"http://gnutls_3.=
3.27.bb" rel=3D"noreferrer" target=3D"_blank">gnutls_<wbr>3.3.27.bb</a><br>
=C2=A0create mode 100644 recipes-support/gnutls/<a href=3D"http://gnutls_3.=
3.28.bb" rel=3D"noreferrer" target=3D"_blank">gnutls_<wbr>3.3.28.bb</a><br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
1.9.1<br>
<br>
</font></span></blockquote></div><br></div>

--001a11445d6853468f0560b79a89--
