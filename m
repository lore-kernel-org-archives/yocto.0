Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3719E00EA9; Thu,  4 Aug 2016 01:54:56 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B2E2E00E56
	for <yocto@yoctoproject.org>; Thu,  4 Aug 2016 01:54:55 -0700 (PDT)
Received: by mail-io0-f175.google.com with SMTP id b62so265823455iod.3
	for <yocto@yoctoproject.org>; Thu, 04 Aug 2016 01:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=w3NFWQGykqrMq4/dyGpKfjjLUpuca5RTOQ5wF7l0VkE=;
	b=Z4khXcIKe3U/vi+68NK270Nyfjwfi4TL5MSmiot/9PUwepxmcPVeB3PRoRQVzDEFro
	l699LNEGulxieF70oeavDDAzyaEvpoawLOu2QiXs7g5JrZ+WYFXvh/weCUS7PMakjdpj
	wYTE8iFZrvWi+a0PyZkqoo8dBF4XZ5diggbnOUP/V4B41udwZqGDfBBAL4KsXrxYkhzj
	pKf5daVm9z6ISWrPu7lNrMNuRlqoj6TzxBcTaal+yAaRMD1vWuvgGrWC/Jqa682RJr+a
	lwmf2fpPeZEDBHm0FEnmX20GvK+IPaZ7rX7+M6lztrDSx8yYXBZ/HUfFbNf33q+XrQzK
	egRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=w3NFWQGykqrMq4/dyGpKfjjLUpuca5RTOQ5wF7l0VkE=;
	b=h+XxM3xQkR8aizWNwA3I7KEHmMF47O0UWHonvHp4zQ2tgIzQmqMT04ZOIg5/eIXyT0
	nJxTrgVNrzgAteE78Ewe66swRPf4+YrqlVZGxf2dj+WueY2q0hAqddgHGfjlpbZpg2UW
	DRcj2HAAdwZyCMAtZ2XhCLuqnA5wMZR6yujPB21mt8gEh1PWpnV8tqzN4iFtDSpzW3z/
	SPRbuqA0+0Xj83spgJBjgNl8RuEyqmvn8Z3yQ1POU4kAaP1Qq+pzwCKpQC2YP4IsmyHj
	EySjfS7EHfI2yBW8hkwv1i5I4KGGRBpTgl8CecsvfGSpOT8EpSbUIjUtNvnP6//T84l1
	/quQ==
X-Gm-Message-State: AEkooussmDqLcDSSq6ok4q3FW9JN/Bdatzt+Ifk/uP0spqsoUYjZ1z3mY4mLVJMbrdyB7/0TjWZ0dYV1FKRPoanX
X-Received: by 10.107.135.142 with SMTP id r14mr79979878ioi.133.1470300895223; 
	Thu, 04 Aug 2016 01:54:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.18.17 with HTTP; Thu, 4 Aug 2016 01:54:34 -0700 (PDT)
In-Reply-To: <BN3PR1201MB09639BE40A5AC001D0C64DB3A5070@BN3PR1201MB0963.namprd12.prod.outlook.com>
References: <BN3PR1201MB09639BE40A5AC001D0C64DB3A5070@BN3PR1201MB0963.namprd12.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 4 Aug 2016 09:54:34 +0100
Message-ID: <CAJTo0LZvUWmfuf1_HPGpejrFPU=jr3Pr7ebYRtdcsmkVyUVVvw@mail.gmail.com>
To: Richard Zhang <richard.zhang@pica8.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Install multi files in shared area Error
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
X-List-Received-Date: Thu, 04 Aug 2016 08:54:57 -0000
Content-Type: multipart/alternative; boundary=001a113eccbc92b3aa05393b1ae6

--001a113eccbc92b3aa05393b1ae6
Content-Type: text/plain; charset=UTF-8

On 4 August 2016 at 09:46, Richard Zhang <richard.zhang@pica8.com> wrote:

> Which tmp dir should I wipe out?Thanks
>
>
The tmp/ inside your build directory.  If it happens again, then libnetconf
is doing something very wrong.

Ross

--001a113eccbc92b3aa05393b1ae6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 4 August 2016 at 09:46, Richard Zhang <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:richard.zhang@pica8.com" target=3D"_blank">richard.zhang@pica8.com</a=
>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p class=3D"MsoNormal=
"><span lang=3D"EN-US">Which tmp dir should I wipe out?Thanks<span class=3D=
"HOEnZb"><font color=3D"#888888"><u></u><u></u></font></span></span></p><sp=
an class=3D"HOEnZb"><font color=3D"#888888">
<p class=3D"MsoNormal"></p></font></span></blockquote></div><br>The tmp/ in=
side your build directory.=C2=A0 If it happens again, then libnetconf is do=
ing something very wrong.</div><div class=3D"gmail_extra"><br></div><div cl=
ass=3D"gmail_extra">Ross</div></div>

--001a113eccbc92b3aa05393b1ae6--
