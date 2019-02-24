Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 97A0EE00C08; Sun, 24 Feb 2019 05:33:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com
	[209.85.210.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06147E00546
	for <yocto@yoctoproject.org>; Sun, 24 Feb 2019 05:33:17 -0800 (PST)
Received: by mail-ot1-f53.google.com with SMTP id v62so5686012otb.3
	for <yocto@yoctoproject.org>; Sun, 24 Feb 2019 05:33:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=u8ChIUnfr/4rEJq87k1kMCLkwpxwvsLVLBApHoq4re0=;
	b=S78eoKgKxF/BAMiztP78zRAB1/slFpLPX5psOSK62vYJJ9mOy28KoWwDCFB5oW5445
	IDISVaJkxcsvyb6VJ3iip1cmMDuuEk4TfQvpo4OudR7C8hHHqXfKwXkeU2ckmyLBEHB1
	xdcg4BmKXLANqJQMeU6qQCTMMG6QDCfzdajoeGOJ88NcRtLTg867xQEKA7f0lrS91+s1
	723cJ4+w/ub50Lxmu603bvbHyXmw6oQZ3bHAOw+CjRKD3FaEViujutzMmGyso5oRQgF9
	GvSjz+U2l4dayXJOe3yOEj+LrNbMUTTpGkUph96ZSt8UnjuE8tTTsiSrbItPP4KTv5AT
	qpMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=u8ChIUnfr/4rEJq87k1kMCLkwpxwvsLVLBApHoq4re0=;
	b=lqkptNNycM2Je/TJCCn555Llbc8RuZ3/SfgN8nH+edcwL+vZyu4RPdzGgEwyPTWFp3
	DtpA4584mlERhTpasTWG3smA0ENV2mdefIqB2hbTkPEa6H+rtGKJ8/gN0l6KP/VMaaqY
	VpsV72yAJy220kkWWuQtrvF1TW3KKlNqdePzSDCA0/Zx5jGRjudf7tCyc2mZ1G9PxkNn
	ZUsj6Jksk463WRP4ggEvqR2QHg4GrGEcG2i6dNiazmayfkSvYvFodOGydEvFs1vUb+oh
	CTnafHSEp5YRiBPrKs5o3NYaQvkSNbXAXAcJgpFN7pt56dGXb/qitVqFdbd1n5mM6S51
	nroA==
X-Gm-Message-State: AHQUAuYfaCOsy+dcW9qa9PybaR8CWpfUjsWijbdFp3MUkrrtjXPKmKue
	FQOlnuB88jBed05iwQKGp/Nm+lnRA/CSlxvrRd8vvk5n
X-Google-Smtp-Source: AHgI3IZJPWLeAGnxlt0m6U2RfTuDwp3S+DB/vMksFePgh2JSvCe8RoNyLHjsTBGTHTLJwx4LihwW61wjHetTGmt4sRY=
X-Received: by 2002:a9d:d0e:: with SMTP id 14mr9220120oti.360.1551015197156;
	Sun, 24 Feb 2019 05:33:17 -0800 (PST)
MIME-Version: 1.0
References: <3DFF1337-2E58-45DF-80D6-303934B303B8@redfish-solutions.com>
In-Reply-To: <3DFF1337-2E58-45DF-80D6-303934B303B8@redfish-solutions.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Sun, 24 Feb 2019 14:33:04 +0100
Message-ID: <CANNYZj94f4d+DafeJ4pzDGFErhor3TC3vW1qx2RVJxqjU04dkw@mail.gmail.com>
To: Philip Prindeville <philipp_subx@redfish-solutions.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Newbie questions on cross-building packages for PPC
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
X-List-Received-Date: Sun, 24 Feb 2019 13:33:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, 23 Feb 2019 at 22:18, Philip Prindeville
<philipp_subx@redfish-solutions.com> wrote:
> I=E2=80=99ve worked on a lot of embedded projects involving cross-buildin=
g (like AstLinux and OpenWrt), but I=E2=80=99m new to Yocto so please bear =
with the noob questions.
>
> I=E2=80=99d like to build packages (mostly RPM=E2=80=99s, plus a Linux ke=
rnel or three) on an x86_64 (AMD64) Linux (CentOS 7.6) platform, but for e5=
00v2 and 85xxDP PPC targets.
>
> What do I need to do to set up a toolchain and environment to be able to =
do that?

First, you need to figure out which BSP layer provides support for
your targets. What boards are you targeting?

> Ideally, I=E2=80=99d also like to set up an RPM target so I could use =E2=
=80=9Crpmbuild --target e500v2-unknown-linux=E2=80=9D (or whatever) and it =
would use the correct compiler, linker, archiver, sysheaders, etc.
>
> Advice on both of these, or just pointers to instructions on how to set i=
t all up, would be great.

I'd suggest you start with the yocto quickstart guide, so you'll know
the basic procedures.
https://www.yoctoproject.org/docs/latest/brief-yoctoprojectqs/brief-yoctopr=
ojectqs.html

> For instance, do I need one compiler only that can handle multiple proces=
sor variants via the --march=3D flag, or is this not the right way to go?  =
And similarly, since the linker can rewrite code (shortening branch offsets=
, peep-hole optimization, unreachable code removal, etc.) do I need differe=
nt linker versions for the 2 PPC variants?

This is what BSP layers do, they define a target machine (which
includes compiler and linker settings), and give it a name. Then you
place that name in your configuration file, and the target build
process will sort itself out.

Alex

