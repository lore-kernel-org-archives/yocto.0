Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 509DEE009E5; Fri, 12 Dec 2014 06:56:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.182 listed in list.dnswl.org]
Received: from mail-qc0-f182.google.com (mail-qc0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B99BE009E4
	for <yocto@yoctoproject.org>; Fri, 12 Dec 2014 06:56:29 -0800 (PST)
Received: by mail-qc0-f182.google.com with SMTP id r5so5665931qcx.13
	for <yocto@yoctoproject.org>; Fri, 12 Dec 2014 06:56:28 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=TVK7GrNAmcLhx5b0QFGxbHc+ShQ0Sl5C4g3LP9oQSMU=;
	b=jRMzU+/5I0HTpF8GmglzDbxtcYtiOHpPF6Lp3mbsWYAFMN1sdVZ6AEGsAwLpHs/qdM
	JeczdeqpR/azqOAifKe5DayDpo5z5CNICkWXSIVnT4Gg/+usmEFdWGROilHWCeNghCEc
	b4E4cKwav9cVNX6iXChN8q6O+LCmoQBfhjzONKUts+3JZcPxCYkPOcCkcS8qaoqLVXKG
	IWwbyNo3e15eDBjUPG81dxqCabfJGoFnOT13cIEAcep3y6Oa+pbZItidu3fWDw1gGvPq
	BZUEpCQDrGkL7840nkmF6Jzo27ZT3aOXx99ee6vK8Xb+x2oAJ7K7ubmeAW3voAlbg+uA
	sOeQ==
X-Gm-Message-State: ALoCoQkt1HVc7TR+e0rKiIf7SuQswA3cufdxEi+gQW5ZEzNW8wMkLP3Euc2UDUbcttC+aqTccZwt
X-Received: by 10.229.249.68 with SMTP id mj4mr31551989qcb.23.1418396188469;
	Fri, 12 Dec 2014 06:56:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.48.231 with HTTP; Fri, 12 Dec 2014 06:56:08 -0800 (PST)
In-Reply-To: <95CF81BBD42FB348A182716C4D4310A80548C44C@G1W3650.americas.hpqcorp.net>
References: <95CF81BBD42FB348A182716C4D4310A80548C44C@G1W3650.americas.hpqcorp.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 12 Dec 2014 14:56:08 +0000
Message-ID: <CAJTo0LZwnFS6h51KRMfXECzftLq8N1CdYx4c2ZPnUWnVbZECdA@mail.gmail.com>
To: "Koehler, Yannick (HP Networking)" <yannick.koehler@hp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Package Feature compile/runtime dependency
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
X-List-Received-Date: Fri, 12 Dec 2014 14:56:40 -0000
Content-Type: multipart/alternative; boundary=001a1133525cf70cc6050a06188e

--001a1133525cf70cc6050a06188e
Content-Type: text/plain; charset=UTF-8

On 12 December 2014 at 14:13, Koehler, Yannick (HP Networking) <
yannick.koehler@hp.com> wrote:
>
>
> DEPENDS="linux-yocto-tiny:fhandle,autofs4,ipv6?,devtmpfs,libc:ftraverse,posix-clang-wchar,spawn,utmpx"
>
> Etc...  Disregard the syntax as it is simply an idea/example and not
> intended as a specification.
>

A lot of those features are DISTRO_FEATURES, so there should be heavier
user of the distro_features_check class.  For example, there are recipes
that require systemd to be used, so they set
REQUIRED_DISTRO_FEATURES=systemd.

Ross

--001a1133525cf70cc6050a06188e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 12 December 2014 at 14:13, Koehler, Yannick (HP Networking) <span dir=3D=
"ltr">&lt;<a href=3D"mailto:yannick.koehler@hp.com" target=3D"_blank">yanni=
ck.koehler@hp.com</a>&gt;</span> wrote:<blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div =
id=3D":15n" class=3D"a3s" style=3D"overflow:hidden">=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 DEPENDS=3D&quot;linux-yocto-tiny:fhandle,autofs4,ipv6?,devtmpfs,libc=
:ftraverse,posix-clang-wchar,spawn,utmpx&quot;<br>
<br>
Etc...=C2=A0 Disregard the syntax as it is simply an idea/example and not i=
ntended as a specification.</div></blockquote><div><br></div><div>A lot of =
those features are DISTRO_FEATURES, so there should be heavier user of the =
distro_features_check class.=C2=A0 For example, there are recipes that requ=
ire systemd to be used, so they set REQUIRED_DISTRO_FEATURES=3Dsystemd.</di=
v><div><br></div><div>Ross</div></div></div></div>

--001a1133525cf70cc6050a06188e--
