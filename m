Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2931BE0082A; Mon, 16 Jan 2017 03:19:33 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.169 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f169.google.com (mail-qt0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3136E00805
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 03:19:29 -0800 (PST)
Received: by mail-qt0-f169.google.com with SMTP id x49so100832126qtc.2
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2017 03:19:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=rZHKP4emsKgL9br0p9Dmr6MQCLtvfsYUSxky7GJ/0XY=;
	b=NbVvvNriQ0V/dN1B6R1E+V6SM/tZCgujg+sjm6DQsPm1ZkV3JgYkmjld4YC8fLyo4H
	X+FmfHJ5MxpoC/zjBRJBL9oS2Q2Jp1BOs4RPaeqhJuOvKHFq3kzTl2e+Vv0ELyeC24/G
	lgCC/BgP7nHAGjPurobzLMaF8ujE3LW6qEDvrphNJ5ZiftoUn+Vv/TAEB9v341EJpPXf
	RuWud/lw1zYF3sVVNS00QhLMR4jYZd0FNyoE5Ir4R92JfgG8TlcdQwt4dxZbuF3/6z/q
	ffrerPFMUhru4Dj/xxzUz+IsE/zItOoH+LMoX/i16dlObfSC0SBIXFvdRoFlDLLpOY9l
	9Cqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=rZHKP4emsKgL9br0p9Dmr6MQCLtvfsYUSxky7GJ/0XY=;
	b=lSG/eOx22PPPX3aoZwU5uqudG6rXNZkTDs/XsRHGemzhQ3H3GKjLmwEcYXk8L1D3rr
	+db7KObPDc7EuH5UlO46zZyyMpY/01zo0IXcoC2QurBWUP5USDWZ5ST6/W93kEVyeo+w
	nHXDCfUwdgBio5l26USh3V2YBoBvqE5irwBzKcaMExVt3PgomaG9PO4rVfo+Kyjwodf2
	9BMLWpVDYoZ1PL41Ue3AfUOzUm3RpVlUslMO4zFLk19381LlyFAzuDevIcMJZ4jFF9Pi
	7RT7kM4rEXvdzdvWly/ztyan2EwRNmVq7yRcNzFy/VctW8EC2LSDa9Ai5xqVCfq967Zw
	QlcA==
X-Gm-Message-State: AIkVDXKgzm9PFeHZD63fAJ2PhQjs1vdeuZui5vVTrXtJVjuZjCewXBz0udtObUD+zuwMxu+kXZWsKadsVERMvmXg
X-Received: by 10.200.45.247 with SMTP id q52mr31190762qta.197.1484565568857; 
	Mon, 16 Jan 2017 03:19:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.103.233 with HTTP; Mon, 16 Jan 2017 03:19:08 -0800 (PST)
In-Reply-To: <656A5471-015B-4BE2-BEDA-7B9C98423EB8@sentientblue.com>
References: <F2336301-06DF-41BD-B64E-82D421DB9366@sentientblue.com>
	<CAJTo0LZiwodwfYbokKD1n9hK_ddxYFFzpTiLixZSkVnzTtQxVQ@mail.gmail.com>
	<990F24BD-1C6F-4985-8E33-0C8E5B59E84A@linux.intel.com>
	<CAAfyv36YrBOVfui1Udia8Ba3dwzBn9Sb59w7k8L4p+EGLWLzLg@mail.gmail.com>
	<CAC+thW2das3i_qYatGthx9pm27xEtW-2OHxhEy-qQNasrMLwVQ@mail.gmail.com>
	<448FE605-0D5E-4057-BF49-9EFFBC5CB8DD@sentientblue.com>
	<a0f910e1-e4e3-a36c-54f8-029cd72bae83@windriver.com>
	<23A9A636-C738-4FF6-962F-DCDC107A7AA8@bmw-carit.de>
	<656A5471-015B-4BE2-BEDA-7B9C98423EB8@sentientblue.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 16 Jan 2017 11:19:08 +0000
Message-ID: <CAJTo0LbUawbpsCcadCCgSVct7Qx56ExKtBK+mTxc9eUW_B-4gw@mail.gmail.com>
To: Roger Smith <roger@sentientblue.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building on MacOS X
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
X-List-Received-Date: Mon, 16 Jan 2017 11:19:33 -0000
Content-Type: multipart/alternative; boundary=001a1139cdf060bf070546345b9e

--001a1139cdf060bf070546345b9e
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 14 January 2017 at 19:45, Roger Smith <roger@sentientblue.com> wrote:

> Is Building Yocto project on a POSIX system, a desire for the Yocto
> project? It would allow support on all bsd UNIX=E2=80=99s including macOS
>

Making OE itself work isn't rocket science - fix a few Linuxisms in
bitbake, port pseudo to macOS.

The hard bit is then convincing the hundred-odd recipes that are often
Linux-centric if not Linux specific to build under something that isn't
Linux.  My ross/darwin branch (from before the security changes) has a
patch to gmp as 'echo' has different semantics. unlink() has different
error codes between macOS and Linux.  There's a very long tail of
differences that will need patching and testing.

But if this is something you care about, patches welcome!

Ross

--001a1139cdf060bf070546345b9e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 14 January 2017 at 19:45, Roger Smith <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:roger@sentientblue.com" target=3D"_blank">roger@sentientblue.com</a>&=
gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":4zk" class=
=3D"a3s aXjCH m1599e84c1ff775a5">Is Building Yocto project on a POSIX syste=
m, a desire for the Yocto project? It would allow support on all bsd UNIX=
=E2=80=99s including macOS<br></div></blockquote></div><br>Making OE itself=
 work isn&#39;t rocket science - fix a few Linuxisms in bitbake, port pseud=
o to macOS.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_e=
xtra">The hard bit is then convincing the hundred-odd recipes that are ofte=
n Linux-centric if not Linux specific to build under something that isn&#39=
;t Linux.=C2=A0 My ross/darwin branch (from before the security changes) ha=
s a patch to gmp as &#39;echo&#39; has different semantics. unlink() has di=
fferent error codes between macOS and Linux.=C2=A0 There&#39;s a very long =
tail of differences that will need patching and testing.</div><div class=3D=
"gmail_extra"><br></div><div class=3D"gmail_extra">But if this is something=
 you care about, patches welcome!</div><div class=3D"gmail_extra"><br></div=
><div class=3D"gmail_extra">Ross</div><div class=3D"gmail_extra"><br></div>=
<div class=3D"gmail_extra"><br></div></div>

--001a1139cdf060bf070546345b9e--
