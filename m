Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54F39E00CE0; Thu, 14 Feb 2019 02:27:42 -0800 (PST)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.42 listed in list.dnswl.org]
Received: from mail-ot1-f42.google.com (mail-ot1-f42.google.com
	[209.85.210.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E1DCE00C71;
	Thu, 14 Feb 2019 02:27:37 -0800 (PST)
Received: by mail-ot1-f42.google.com with SMTP id w25so9562064otm.13;
	Thu, 14 Feb 2019 02:27:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=IaKMhelcxcy33YeSuz6H7xTFhVhaq+nNNXxM+U6HhCY=;
	b=HJiDWFOx+aqg5yWybo+cT38uqJlgDVeI29/Idu7KXAXDbQBEHrzfTtzMBC34RwfVCp
	Lz5z5Bd2qXnXErtbERCsRRL3kp7zfqDFdzJjvbadzliGrJMiwEZmh3Sr/OFG/gRUMgfP
	FhkYm5JMv50L3i00n+Wb5FXMhHRwLYdNPnOm4nFvPtnjjP47HDtLn5B82D0pvuytn6QJ
	bmh1NQ0SjFuMgs5ge0ZFsmUjsY4HAgezFNCmcXggwOAUZJTQGoiGeeGMjiS0vMSUgbQ9
	Bg/a5ScdxR02thmXMH4fmsxI5swhuOFchQ1/kdu1159nbQSgOGHDu/NfsCGbyvbG8HSz
	U84A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=IaKMhelcxcy33YeSuz6H7xTFhVhaq+nNNXxM+U6HhCY=;
	b=J+O/MjBgxyYTDEEZFd7VE8c0qvzzWoSi0EeyCIhYWNmZUWRvrjRk0W8JA+eQRaYe7D
	91jqOY2fRUU2xN2ELL1qwHVC9Suxhu2DxADG+PREME2BkGSQw30zOIvHdlHD40Q/Erxq
	6G2x+YT8vZFpPK7W7ULWt1Kb0UGL4Rn2IZv4YvvJIuLYTTEKklNABimXCT7kI8GFobyc
	UZodmcAuTBPinJb73NyMp2JYEGnsmskorGRnLXD+cXS1z2HkCzG1Yp39JRhR1gDXjVvb
	0P+Y2ZcWjaYWRMklfRoh9jxRsIEZxeUIQWxf1rQr5us2pK05d1mgiGAl195mFb5ZCvry
	qlcQ==
X-Gm-Message-State: AHQUAuZQSb10OkttW0H/wGzqmW6Mn+IrsCqUcZT/jQ2JchfRrrIT7Mhf
	+94cGL71qwzhaGw/AB3pAptzkfTjnNC4vnavD1c=
X-Google-Smtp-Source: AHgI3IawDzRWVcywSIVGSETvrt7xlr208gFXyWoNX2H953g4tUNeg/5n9lE/Kq9BtJu4kY65M68k5Bwt6OOIjPl2s0M=
X-Received: by 2002:a9d:4c85:: with SMTP id m5mr621540otf.367.1550140056673;
	Thu, 14 Feb 2019 02:27:36 -0800 (PST)
MIME-Version: 1.0
References: <03b301d4c2ed$7497f360$5dc7da20$@gmail.com>
	<CANNYZj_PY61tmw=JjP7PPqqSVJff6kd=rsv=daNscx9eSkNWSA@mail.gmail.com>
	<1634479.1jWiZZ8UfD@localhost.localdomain>
	<6cc49be5-a9f3-bf38-2570-b12048dc4471@linuxfoundation.org>
In-Reply-To: <6cc49be5-a9f3-bf38-2570-b12048dc4471@linuxfoundation.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 14 Feb 2019 11:27:25 +0100
Message-ID: <CANNYZj-Lb0o6fO=RYrGd=2E_5Dqh7eFcovieDc2wBJp7SuPJcA@mail.gmail.com>
To: Michael Halstead <mhalstead@linuxfoundation.org>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	OE-core <openembedded-core@lists.openembedded.org>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [OE-core] Yocto Project Status WW07'19
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
X-List-Received-Date: Thu, 14 Feb 2019 10:27:42 -0000
Content-Type: text/plain; charset="UTF-8"

I think it looks right now, thanks :)

Alex

On Thu, 14 Feb 2019 at 10:13, Michael Halstead
<mhalstead@linuxfoundation.org> wrote:
>
> The regular 3 hour update wasn't installed on the new server. I have
> repaired that and added the RRS updates as well..
>
> The update has been run several times in testing and I'm curious if RRS
> has caught up as expected.
>
> On 2/12/19 5:57 PM, Paul Eggleton wrote:
> > Hi Alex
> >
> > On Wednesday, 13 February 2019 6:22:23 AM NZDT Alexander Kanavin wrote:
> >> On Tue, 12 Feb 2019 at 17:10, <sjolley.yp.pm@gmail.com> wrote:
> >>> The recipe reporting system integration with the layer index is available
> >>> at: https://layers.openembedded.org/rrs/recipes/OE-Core/2.7/M3/ and the
> >>> historical data has now been imported.
> >> Sadly the new RRS still seems to be suffering from the 'outdated info'
> >> problem. For example glibc, or python3 recipes have been updated to
> >> latest versions, yet RRS still shows that they haven't been.
> > We're reliant upon the layer index updating and it appears that's not working
> > at the moment. I have asked Michael to look into it. Thanks for the report,
> > I'll reply back here when things are sorted out.
> >
> > Cheers,
> > Paul
> >
> --
> Michael Halstead
> Linux Foundation / SysAdmin
>

