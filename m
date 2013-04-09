Return-Path: <twoerner@gmail.com>
Received: from mail-we0-f171.google.com (mail-we0-f171.google.com
	[74.125.82.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 833C3E01460
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2013 14:34:38 -0700 (PDT)
Received: by mail-we0-f171.google.com with SMTP id d46so5564287wer.2
	for <yocto@yoctoproject.org>; Tue, 09 Apr 2013 14:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=WucYMtC9J8drPgEBL4O8u/qEyV/YQqyjoz8N9XUIupM=;
	b=UE+O9OtoOXcgQgXtCZhUtaULaD2ukktrPeijKmSRyui+PWntPYTKBKROnJHfr4Bcbl
	mK9/p7WnICCiUINExx1rfRozDiGFtfERNW2Fn8Mci9Yw21BCEuJoy/LBZkjkAMjk8gzn
	/eyrPUH1dNAHA7w9EAxswgm1mDVF6UnZI6+yHAf/g6Kw6OSHkqdVRqlNyqC5W2Gz/Iu0
	KJv0wAiAzPEIQ418r/GWMUYu5KaxTrfP3GMxDmylNv2ykOiFSK6EMGMwMfLqnKkTj77S
	yo6RuDOHtHemf8yUKYf/Qd0b+TU13oNTFG1NLGKRiX6AKtymTgYuUeO9P07NcAekpRzX
	mx+g==
MIME-Version: 1.0
X-Received: by 10.180.39.207 with SMTP id r15mr22563740wik.16.1365543277702;
	Tue, 09 Apr 2013 14:34:37 -0700 (PDT)
Received: by 10.194.45.100 with HTTP; Tue, 9 Apr 2013 14:34:37 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1304091728430.4537@oneiric>
References: <alpine.DEB.2.02.1304081135020.23038@oneiric>
	<1365469127.17697.70.camel@empanada>
	<alpine.DEB.2.02.1304090729220.4184@oneiric>
	<CAHUNapRQTMvCE=8RLNhae+sm6=VN7pP4TfbBBM0nvcCR5aTmkQ@mail.gmail.com>
	<alpine.DEB.2.02.1304091728430.4537@oneiric>
Date: Tue, 9 Apr 2013 17:34:37 -0400
Message-ID: <CAHUNapRkDBZOLdwpQWpKnnV6TmojkoY61t9oT4a16y75ODJLww@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: working my way through the kernel hands-on labs finally
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
X-List-Received-Date: Tue, 09 Apr 2013 21:34:38 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Apr 9, 2013 at 5:29 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>   does this mean PACKAGE_CLASSES should be *exclusively* ipk, or that
> ipk simply be in there?

Yes, that's how I had been testing it (exclusively package_ipk).

