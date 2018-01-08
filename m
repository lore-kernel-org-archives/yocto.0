Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1956BE00DC9; Sun,  7 Jan 2018 23:10:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f54.google.com (mail-lf0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB189E00D92
	for <yocto@yoctoproject.org>; Sun,  7 Jan 2018 23:10:25 -0800 (PST)
Received: by mail-lf0-f54.google.com with SMTP id u84so11043517lff.7
	for <yocto@yoctoproject.org>; Sun, 07 Jan 2018 23:10:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CexAoCE6Zd6MrjbqqfkQnux6oNj6rOTn+ROUQcmvWh4=;
	b=0eByIKwbUbO7TSdhQ7tiekGfspSWv/UvFY4cMWErsmZi+8zl77GArLFivoK6ms+1ct
	LHd0D6BzKwMwN9bpTUkUx1Vl72fpSeK50pLz17Lz3M5vv9Gn0PGG7HApvFZ+6PHE7Jqr
	jc+kswOzVU/kL2/9RAdIE3MhS1c3uUptqb12c8xZerLQR47QfeP40BB1kAl+s7QnxskR
	C6PZpqZwyaZlI82ucK5hDAQoFYM8r/fWSDlKXHjKs8XAZ4Y7ox7DP/BuEFHQ564Bw3G0
	ATUb8Mtb+UQqO2rmAuqlyfys7crChFqv1zU72VGNfOvtW9okfDQLYh4njYdWqdz7GCBR
	iCZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CexAoCE6Zd6MrjbqqfkQnux6oNj6rOTn+ROUQcmvWh4=;
	b=f14wDtH6F+s3fjqZb9muYEDswggaanGaKTydv3SvYYjikttWLaS5PWMSP3P0JlLnUc
	G5XOKtbHmb8hMylZwJ7rknelLD7FgK/cgl7QpSUitMYp0T0CJ9u5uV0CjbC1n4mzvW8Y
	lhKP8Rf7ocSvC2xv3ea7sTDbTr2EAMXcJdjdzl8cXDd+gpK5M92j3dboHx3aq8NnpqXy
	/8G/5pAGZVsFKRzQt9r5OFqhcuDsUhTj+7sO287Vlz4hgUMgQm0absLHZ4AzczU9EKW6
	A5Hi4WB0YsSha0Lmz/6ri7zoHKwv1gLLqahvGpv8+Bec7T7dna/erWdgRVJ1dtpspvD8
	0EjA==
X-Gm-Message-State: AKGB3mJ7jUhCik0uatQtb44rLUGEnr8WuT7YVTNGBBJJnuBDBG0SL2h1
	P0YKh/IrLmDBEO4l2hof1ZzMpaStsOfGubPpQCpAOA==
X-Google-Smtp-Source: ACJfBovWMWx+5URc6MC1OmJH4ZeEufJBi9H8/41lzad6eoInbROWWUdtT/gmfYgFFOfMU1lPaVakcBoN3vUe5DFSLoE=
X-Received: by 10.46.31.17 with SMTP id f17mr4370431ljf.103.1515395424256;
	Sun, 07 Jan 2018 23:10:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.87.193 with HTTP; Sun, 7 Jan 2018 23:10:23 -0800 (PST)
In-Reply-To: <CA+JFif35T7yDxkeX3OAjjw079fxWOVqH4wnet8_GwNM3_9LRSw@mail.gmail.com>
References: <CA+JFif35T7yDxkeX3OAjjw079fxWOVqH4wnet8_GwNM3_9LRSw@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Mon, 8 Jan 2018 08:10:23 +0100
Message-ID: <CAOT_U5Yt8XpFir0TTXDPTqLA8Z20WeRFAjw=JNOo7O6w7bRUaQ@mail.gmail.com>
To: Mathew K Tharakan <mathewkunjumontharakan@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Reg: Yocto python library updation
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
X-List-Received-Date: Mon, 08 Jan 2018 07:10:27 -0000
Content-Type: text/plain; charset="UTF-8"

Have you added them also to the image?

On Mon, Jan 8, 2018 at 7:14 AM, Mathew K Tharakan
<mathewkunjumontharakan@gmail.com> wrote:
> Hi,
>
> I'm working with iMX6ULL yocto (version 2.1)project. I would like to add
> following python libraries along with the image. I tried adding .bb file but
> the packages are not getting integrated. Please reply some possible ways to
> solve this.
>
> Python libraries to be added,
>
> SciPy - 0.18.1
> NumPy - 1.11.1
> Pandas - 0.18.1
> Scikit-learn - 0.17.1
> math - 0.19
> Memory-profiler - 0.45
>
> Thanks and Regards
> Mathew. K. Tharakan
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

