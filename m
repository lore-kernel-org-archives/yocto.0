Return-Path: <twoerner@gmail.com>
Received: from mail-ob0-f182.google.com (mail-ob0-f182.google.com
	[209.85.214.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04656E01465
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 11:11:29 -0800 (PST)
Received: by mail-ob0-f182.google.com with SMTP id va7so1574309obc.27
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2013 11:11:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type;
	bh=3Nt375gZS4qgX8zJV6j3Gcl8TQ/SQkGhLNcPc5fujws=;
	b=RuzbWyauHw9dQcMY6mjp9mewvNj284J/VG2Jgq7BOdf9UPzvdEtMCavipYW4vSg2IB
	dckGBqPkBNjifSF94ILtjRWBYLLFDFIsnlKPr9Mg2zoK9BEKJZg3ikt+h3IJFwcvVMRe
	PxbmyGdMQ0OkpWk5JSL1ihrL8z3W5huHdqCPvzrXoe7O5lgQ5DPXnj3oUbQdRc+WWaPZ
	8DatEuB4w5cc5FLN2SaMQgytnqlAnjTrke6v/FJw1ml5WZooK2IF3bNY+R9kIRfuFyiJ
	yOyHva6iPA+/DivqQYTF23yO854laJbusF8KyWIUx6hHG+0WUCB7V78hGGr6M1Rrnp/V
	P7rQ==
MIME-Version: 1.0
X-Received: by 10.60.24.72 with SMTP id s8mr2766525oef.68.1362769888628; Fri,
	08 Mar 2013 11:11:28 -0800 (PST)
Received: by 10.76.173.138 with HTTP; Fri, 8 Mar 2013 11:11:28 -0800 (PST)
In-Reply-To: <CAMKF1spG1x5Ne_RiSoHV-Fp46YRo+o_2NovctR9RrVH9UfeA6w@mail.gmail.com>
References: <B4F9B2A0-7231-4DC8-90D1-D7F291818791@gmail.com>
	<CAMKF1sr+xH7Nb0-cG-Wky-A6842wwSPT8wWm2CDh583_BgdjOg@mail.gmail.com>
	<D06F52BA-6DC2-4C8D-8F1D-EB71A8EB83EB@gmail.com>
	<CAMKF1sqmNf9hfjC4BWF3eF=4iENxVkaFEFtqaroM6cGQDFOtbw@mail.gmail.com>
	<61562AF7-3671-408C-AD77-E638C8535263@gmail.com>
	<CAMKF1spG1x5Ne_RiSoHV-Fp46YRo+o_2NovctR9RrVH9UfeA6w@mail.gmail.com>
Date: Fri, 8 Mar 2013 14:11:28 -0500
Message-ID: <CAHUNapSrU-h6udfGRdNtfraj2zNeNmrN+U9wSt8rm17ovO3h6g@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Patching gcc-4.7.2 to add support for Xilinx MicroBlaze
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
X-List-Received-Date: Fri, 08 Mar 2013 19:11:30 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Mar 8, 2013 at 2:07 AM, Khem Raj <raj.khem@gmail.com> wrote:
> We have moved away
> from snapshots for gcc since git repo for gcc is in terabytes and

It sure would be nice if git had a feature whereby one could grab just
a specific snapshot without any history, or meta-information etc...
just the code of one specific hash.

(btw, I'm aware of shallow clones, they don't do what I'm asking for)

