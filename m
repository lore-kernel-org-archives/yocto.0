Return-Path: <kapare@rogue-research.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04203E007AB; Fri,  6 Feb 2015 11:23:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 133 seconds by postgrey-1.32 at yocto-www;
	Fri, 06 Feb 2015 11:23:46 PST
Received: from mail.rogue-research.com (mail.rogue-research.com [68.67.54.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC6CFE00753
	for <yocto@yoctoproject.org>; Fri,  6 Feb 2015 11:23:46 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.rogue-research.com (Postfix) with ESMTP id 7A3A14259CE
	for <yocto@yoctoproject.org>; Fri,  6 Feb 2015 14:23:46 -0500 (EST)
X-Virus-Scanned: amavisd-new at rogue-research.com
Received: from mail.rogue-research.com ([127.0.0.1])
	by localhost (kingu.rogue-research.com [127.0.0.1]) (amavisd-new,
	port 10024) with ESMTP id GWxYlrrmiNJ4 for <yocto@yoctoproject.org>;
	Fri,  6 Feb 2015 14:23:46 -0500 (EST)
Received: from mail-qa0-f45.google.com (mail-qa0-f45.google.com
	[209.85.216.45])
	by mail.rogue-research.com (Postfix) with ESMTPSA id 1330C4259C0
	for <yocto@yoctoproject.org>; Fri,  6 Feb 2015 14:23:46 -0500 (EST)
Received: by mail-qa0-f45.google.com with SMTP id n8so12418819qaq.4
	for <yocto@yoctoproject.org>; Fri, 06 Feb 2015 11:23:45 -0800 (PST)
MIME-Version: 1.0
X-Received: by 10.224.125.198 with SMTP id z6mr11127078qar.64.1423250625390;
	Fri, 06 Feb 2015 11:23:45 -0800 (PST)
Received: by 10.96.87.38 with HTTP; Fri, 6 Feb 2015 11:23:45 -0800 (PST)
In-Reply-To: <46557CEF4ABDB54B92C59390D2741FD1BD8C9A@PCISGEX.pciltd.com.sg>
References: <46557CEF4ABDB54B92C59390D2741FD1BD8C09@PCISGEX.pciltd.com.sg>
	<CACgAsMev7C2tTpHTYdQEr=Lb5mXJsi6nAHuJd-fR-4bqkreU2A@mail.gmail.com>
	<46557CEF4ABDB54B92C59390D2741FD1BD8C9A@PCISGEX.pciltd.com.sg>
Date: Fri, 6 Feb 2015 14:23:45 -0500
Message-ID: <CACgAsMePDEXFvKen5isTiMWhw+pf1yp7yh3R5Xi2HmTEb_LCDA@mail.gmail.com>
From: =?UTF-8?Q?Kevyn=2DAlexandre_Par=C3=A9?= <kapare@rogue-research.com>
To: "Alvin D.M. DIZON" <adm.dizon@pciltd.com.sg>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Confused with adding drivers to kernel via bitbake -c menuconfig
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
X-List-Received-Date: Fri, 06 Feb 2015 19:23:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Alvin,

On Thu, Feb 5, 2015 at 11:53 PM, Alvin D.M. DIZON
<adm.dizon@pciltd.com.sg> wrote:
> I tried "cat tmp/work/<PATH>/linux-imx/<VERSION>/build/.config | grep CON=
FIG_BT" but there was no "build" folder inside linux-imx/<VERSION>, right a=
fter the version folder there is only bt.cfg, which is my configuration fra=
gment. and defconfig. I have built the needed modules outside of Yocto, but=
 I still want to try adding modules via bitbake. I have also configured the=
 drivers as modules, not as built-in to the kernel. I'll post updates once =
I make some progress.
>

I should have said to look in the Build directory of linux-imx in your
${WORKDIR}

http://www.yoctoproject.org/docs/1.7.1/dev-manual/dev-manual.html#build-dir=
ectory
http://www.yoctoproject.org/docs/1.7.1/kernel-dev/kernel-dev.html#modifying=
-source-code

-KA

