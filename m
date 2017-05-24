Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0733FE0053F; Wed, 24 May 2017 09:18:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.43 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.43 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B8A1EE0048B
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 09:18:03 -0700 (PDT)
Received: by mail-it0-f43.google.com with SMTP id c15so41537194ith.0
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 09:18:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=FEZe0gOXWbjT+Ewi3cqSE4vHQz8HFs3ZTQNIBmM4J0M=;
	b=0KC/sz9LEt8ZC7Jj704TOV71mbivAC5+6dUFWMDYhq7M6vqDnv9co1o7gaYPHx3ai/
	ZhVgmzWYKmJ9lj07YUsvv9k5p+i4d7HvpOkkAxw4HVTXE9iVjLvKD2Fx7ccLkUrhOqY7
	yyr4OUB5JKQuwWJTTxgZAqs61Vl3VraISYrz4llzA60HBImHcuaUFsOKYxpfjiF+8CAf
	rNFQqZLt2LsjAMqLVSAgz27yvXDMWGr1XZLOMxt8aSxsVoCtcZtOmwRCcrCCcRiTZ8my
	TLAxw8rOnqF2hTW2v+svbUoWpW04GD3/1p6Y8VsAnVvvW0HoYlc263bRVrbFmRsomT7f
	yZnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=FEZe0gOXWbjT+Ewi3cqSE4vHQz8HFs3ZTQNIBmM4J0M=;
	b=Zm88lG+q/CHwN82JIx1sykx+X0FiX6K7gLK0a264Tei/tbydgxYn93rREWbylHn8Hc
	dNdmkwgEqB8P1qmy9shVyRPIiUiJKYnP1Re24fAIQGGONTWfOwrcfgPL73JjbtsGIylb
	1nKaQWHB8eU88jlV5RWpGdJecH1g26dOBRWN/6tJDaOwmMTvI9GxZ3ySAUQ8gBGHh3/b
	ObyPKiSyFg6PFYmayfmXD2K+JfvVeyY6uisHAZNmQWpTg0QcEihnbCohtaFqcwT5/qc6
	uvjkl5nA9PTrz6EVIAQdO6qKGIZHHQJv1HRUripPGKZZE1PR1j1iaK6Rh6wFa+SP5lAS
	70rA==
X-Gm-Message-State: AODbwcCAIAztansmvu9G5VhyhOaG5gsa3St6DPbLvKRQlF800Oi3Xsue
	iQwguaHPSWHmu9yucUlCbGDX3yvGMGt8MhQJVw==
X-Received: by 10.36.87.84 with SMTP id u81mr9633502ita.35.1495642682730; Wed,
	24 May 2017 09:18:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.27.207 with HTTP; Wed, 24 May 2017 09:17:22 -0700 (PDT)
X-Originating-IP: [31.52.113.35]
In-Reply-To: <1480362661-11072-1-git-send-email-frank@meerkoetter.org>
References: <1480362661-11072-1-git-send-email-frank@meerkoetter.org>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 24 May 2017 17:17:22 +0100
Message-ID: <CAK18fxEVx6XPTs5vDcohq-noX9s_NmjtOJ3imrW_OmT1OxHi8A@mail.gmail.com>
To: Frank Meerkoetter <meerkoetter@googlemail.com>
Cc: yocto@yoctoproject.org, Frank Meerkoetter <frank@meerkoetter.org>
Subject: Re: [meta-chip][PATCH] Fix unclosed file
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
X-List-Received-Date: Wed, 24 May 2017 16:18:06 -0000
Content-Type: multipart/alternative; boundary="001a1134f23ad0c4280550477229"

--001a1134f23ad0c4280550477229
Content-Type: text/plain; charset="UTF-8"

On Mon, Nov 28, 2016 at 7:51 PM, Frank Meerkoetter <
meerkoetter@googlemail.com> wrote:

> WARNING: /projects/meta-chip/recipes-kernel/linux/linux-chip_git.bb:
> <string>:14: ResourceWarning: unclosed file <_io.TextIOWrapper
> name='/projects/meta-chip/recipes-kernel/linux/linux-chip/defconfig'
> mode='r' encoding='UTF-8'>
> ---
>  recipes-kernel/linux/linux-chip_git.bb | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/recipes-kernel/linux/linux-chip_git.bb
> b/recipes-kernel/linux/linux-chip_git.bb
> index 6f0b193..38df4ad 100644
> --- a/recipes-kernel/linux/linux-chip_git.bb
> +++ b/recipes-kernel/linux/linux-chip_git.bb
> @@ -69,4 +69,6 @@ python () {
>      if 'CONFIG_KERNEL_LZO=y\n' in configfile.readlines():
>          depends = d.getVar('DEPENDS', False)
>          d.setVar('DEPENDS', depends + ' lzop-native')
> +
> +    configfile.close()
>  }


Fixed in master and pyro. Thank you.
--
Andrei Gherzan

--001a1134f23ad0c4280550477229
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br>
<br><div class=3D"gmail_quote">On Mon, Nov 28, 2016 at 7:51 PM, Frank Meerk=
oetter <span dir=3D"ltr">&lt;<a href=3D"mailto:meerkoetter@googlemail.com" =
target=3D"_blank">meerkoetter@googlemail.com</a>&gt;</span> wrote:<br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">WARNING: /projects/meta-chip/r=
ecipes-<wbr>kernel/linux/<a href=3D"http://linux-chip_git.bb" rel=3D"norefe=
rrer" target=3D"_blank">linux-chip_git.bb</a><wbr>: &lt;string&gt;:14: Reso=
urceWarning: unclosed file &lt;_io.TextIOWrapper name=3D&#39;/projects/meta=
-chip/<wbr>recipes-kernel/linux/linux-<wbr>chip/defconfig&#39; mode=3D&#39;=
r&#39; encoding=3D&#39;UTF-8&#39;&gt;<br>
---<br>
=C2=A0recipes-kernel/linux/<a href=3D"http://linux-chip_git.bb" rel=3D"nore=
ferrer" target=3D"_blank">linux-<wbr>chip_git.bb</a> | 2 ++<br>
=C2=A01 file changed, 2 insertions(+)<br>
<br>
diff --git a/recipes-kernel/linux/<a href=3D"http://linux-chip_git.bb" rel=
=3D"noreferrer" target=3D"_blank">linux-<wbr>chip_git.bb</a> b/recipes-kern=
el/linux/<a href=3D"http://linux-chip_git.bb" rel=3D"noreferrer" target=3D"=
_blank">linux-<wbr>chip_git.bb</a><br>
index 6f0b193..38df4ad 100644<br>
--- a/recipes-kernel/linux/<a href=3D"http://linux-chip_git.bb" rel=3D"nore=
ferrer" target=3D"_blank">linux-<wbr>chip_git.bb</a><br>
+++ b/recipes-kernel/linux/<a href=3D"http://linux-chip_git.bb" rel=3D"nore=
ferrer" target=3D"_blank">linux-<wbr>chip_git.bb</a><br>
@@ -69,4 +69,6 @@ python () {<br>
=C2=A0 =C2=A0 =C2=A0if &#39;CONFIG_KERNEL_LZO=3Dy\n&#39; in configfile.read=
lines():<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0depends =3D d.getVar(&#39;DEPENDS&#39;, F=
alse)<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0d.setVar(&#39;DEPENDS&#39;, depends + &#3=
9; lzop-native&#39;)<br>
+<br>
+=C2=A0 =C2=A0 configfile.close()<br>
=C2=A0}</blockquote><div><br></div>Fixed in master and pyro. Thank you.<br =
clear=3D"all"><div><div class=3D"gmail_signature"><div dir=3D"ltr"><div dir=
=3D"ltr">--</div></div></div></div><div>Andrei Gherzan =C2=A0</div></div></=
div></div>

--001a1134f23ad0c4280550477229--
