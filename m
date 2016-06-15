Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A2CAE00C8B; Wed, 15 Jun 2016 02:31:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58D90E00C7D
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 02:31:22 -0700 (PDT)
Received: by mail-io0-f175.google.com with SMTP id 5so17712005ioy.1
	for <yocto@yoctoproject.org>; Wed, 15 Jun 2016 02:31:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rWF/hdg/Y5NsYlj0qSIxaPCq/jX4ZwB7GI0wMhpA9rc=;
	b=thWHKvIF/iP3TZ4D/aSQTqwk/ltXI02q9iOBbnr+VOjkQN+Z3gead5SUBa8tCsEKPu
	lAiOgGaN62JVwUy40Zv0BYbnYRb3ISqbunFT/9AQ5fLxxweip7Yx1j2Iur2VwPlgews/
	B5z6hO0Yw/wqB9rCxVolFmaQ2TJaVPT6Hequ6EpCZzNWSNkpHyOnbL35sN8Wgi2aE3DJ
	qxJy76rPKM+k5aQg1XXVCEJsLustFi4uXwnV8zSWDVnGnkhXtM/UiXXdSN2157cVDQ/b
	fgzBsBXxyQQkmwiIQvijD8THz4p2A0Hb+W+96MbAxTSigApwgRF0lf3TeeRZ9E9iMFDs
	XMLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rWF/hdg/Y5NsYlj0qSIxaPCq/jX4ZwB7GI0wMhpA9rc=;
	b=ij+BRkuKQyYpZGh8FtdaxjsnC4tWC1Uv3gqRW3Xb3I9xbIHRhs+gtLfKIcJu6UhRw8
	Ml9DAHp2mYyem+wlObzhPKOUSV6JrEcY9P/u0xSTfwRi45OQAYoue/WhmIH3H5iqv47z
	pQhtQcWjYLb7Ljlvigxkz+DgaEUCAzHIRIgMolfhUA8XK+F9c4H1fQ5LjPya6IyJukfa
	7Z6LC3R3i/O5z/8LqgkTRi8CIkB8wTQKUyr6A8fE+ufaIoTrji3FLaCEQgMX9FsmnKWx
	eZFnv9nMkDM2S8SBsiVE4hcSegtyxxwZeVQlcCvd73IlqCE71PrmZyiEuOYHUndo/2Xx
	bIbA==
X-Gm-Message-State: ALyK8tLMp5krV8AYusLnaakZsiDOEf8zERezgbnRNDiDz2e907ITGdv2HUJ8pMq/RYx+wPazDX3bS/RbbxGJM4d4
X-Received: by 10.107.138.201 with SMTP id c70mr36942081ioj.148.1465983081701; 
	Wed, 15 Jun 2016 02:31:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.162.6 with HTTP; Wed, 15 Jun 2016 02:31:02 -0700 (PDT)
In-Reply-To: <DB23C91B06C303459B24BC3208AF424A20F40A94@MBX114.d.ethz.ch>
References: <DB23C91B06C303459B24BC3208AF424A20F40A94@MBX114.d.ethz.ch>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 15 Jun 2016 10:31:02 +0100
Message-ID: <CAJTo0Lb3p=KJhk0+WUcNBWpR0Zp5VsCsxtoqqvAy6EMGQm+KFw@mail.gmail.com>
To: "Anicic Damir (PSI)" <damir.anicic@psi.ch>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 2.1 powerpc64 e6500 - postinstall intercept hook problems
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
X-List-Received-Date: Wed, 15 Jun 2016 09:31:26 -0000
Content-Type: multipart/alternative; boundary=001a113e8e6ad4f8d405354dc831

--001a113e8e6ad4f8d405354dc831
Content-Type: text/plain; charset=UTF-8

On 15 June 2016 at 09:27, Anicic Damir (PSI) <damir.anicic@psi.ch> wrote:

> The problem seems to be missing qemu-ppc64, see down "exit code: 127".
> qemu-* executables ( tmp/sysroots/x86_64-linux/usr/bin/qemu-* ) are built,
> but qemu-ppc64 is missing.
>

Fixing this is trivial, add ppc64 to QEMU_TARGETS in qemu.inc.


> If I build qemu-ppc64 (qemu 2.6) myself (install it to /usr/local/bin
> which is in PATH),
> then I get "Invalid instruction" from my qemu-ppc64.
>

Can you test this again with QEMU_TARGETS changed to see what happens with
our own (patched) qemu?

Ross

--001a113e8e6ad4f8d405354dc831
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 15 June 2016 at 09:27, Anicic Damir (PSI) <span dir=3D"ltr">&lt;<a href=
=3D"mailto:damir.anicic@psi.ch" target=3D"_blank">damir.anicic@psi.ch</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div style=3D"direction:=
ltr;font-family:Tahoma;color:#000000;font-size:10pt">The problem seems to b=
e missing qemu-ppc64, see down &quot;exit code: 127&quot;. <br>
qemu-* executables ( tmp/sysroots/x86_64-linux/usr/bin/qemu-* ) are built, =
but qemu-ppc64 is missing.<br></div></blockquote><div><br></div><div>Fixing=
 this is trivial, add ppc64 to QEMU_TARGETS in qemu.inc.</div><div>=C2=A0</=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div style=3D"direction:ltr;font-family:=
Tahoma;color:#000000;font-size:10pt">
If I build qemu-ppc64 (qemu 2.6) myself (install it to /usr/local/bin which=
 is in PATH),<br>
then I get &quot;Invalid instruction&quot; from my qemu-ppc64.</div></block=
quote></div><br>Can you test this again with QEMU_TARGETS changed to see wh=
at happens with our own (patched) qemu?</div><div class=3D"gmail_extra"><br=
></div><div class=3D"gmail_extra">Ross</div></div>

--001a113e8e6ad4f8d405354dc831--
