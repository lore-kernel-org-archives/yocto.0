Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0A21E00997; Thu, 29 Mar 2018 14:05:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f45.google.com (mail-lf0-f45.google.com
	[209.85.215.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33FB1E0090A
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 14:05:40 -0700 (PDT)
Received: by mail-lf0-f45.google.com with SMTP id g203-v6so10170344lfg.11
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 14:05:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=X6J33E69ekzDURjw0MZcGe+PsFVqU5OWAj8TeNL5TzQ=;
	b=hOwvxoI8DH7kxBrkEwoBVpAPHjM6z8xdvv0cJyO7mgZxSCaNg7XIvzJGD7t5rq+2QD
	41sx4hrsu+VKbgzYQpJya1Aejw2eYNOy3RovUotCTOKnazAgKTPvZYLS8gtAu7+S11RA
	dah3spM8uJlahvTWHfbR8T9Z4LIk+U3UE3q5zE951LBpWs8mIm73DOXlRvciRN8qV1/G
	xpmirr+qytL8zs+3j+rhtKv+7Uxzb/A3GYFYMeWLDiZujglWkBwZ7KNzru5QPDL6ImEM
	Aj7/EFQ8dUX1+fAnczKZ3WilP7W7tc8RMiOfrOTvWhNk391b/SP1Mfz3cNswjTX3BA8e
	aL0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=X6J33E69ekzDURjw0MZcGe+PsFVqU5OWAj8TeNL5TzQ=;
	b=TfZfSjIbMSqPZ9isc4gKFeZgSdLWq1o9e2DRThzDAer8zXLsyua3FxHx/DS1Ujgokr
	gQHZ0M1UNDl0YgMqkNWEK3Yh2TEmJwiuPuzkhVX4x8SVT2tHoOENdybhagWqWC7U/9FL
	RjDnK53dPBOShepW0aagcscDE1TxCM6ZcArW5brSbNDw2kMHvExwtToTmtOeyF7TPrPR
	x2gnk6cRX0sNXhS1dlujf0oXoRHphSj22tR++/WFLNPhScd5BajZ/bb675kqTpmDa4i2
	L5xeFfs6duMdsyYH/mzFSIj2csB2TVFYcBNwNAeVwhPiK1s/DwwBdV2k2vEvnoOP001L
	mq+g==
X-Gm-Message-State: AElRT7FRU7avWtADvWrlovkY5dyD7PHQnGQVO/V48EZAPZ9waVhqlg9R
	PKRS2bI2qaKOrj6uGUc86CU6iYz0LfBt+ERD1ZY=
X-Google-Smtp-Source: AIpwx48qZaD50j/2U8uMUl8uakaP6z0e4eXoj14sHMBCDV3IlJbjWa6321AMAH2PUk9dL1ehqqL55w01O8BOOrjE43s=
X-Received: by 2002:a19:1619:: with SMTP id
	m25-v6mr6662014lfi.17.1522357540013; 
	Thu, 29 Mar 2018 14:05:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a19:d80f:0:0:0:0:0 with HTTP; Thu, 29 Mar 2018 14:05:39
	-0700 (PDT)
In-Reply-To: <CALbNGRS06u3NTU=2XYRiga=B_rPj_rNyLwv2dC8hRUkx=mJt+A@mail.gmail.com>
References: <CALbNGRRA3Ev3mPT4ZDRO_koC_uwVWy4qXc8onJN5nSeXnE3JRg@mail.gmail.com>
	<CAHUNapQhvr8UWBuF-Z5y0ojhsfF=fUU3nfgmRdxNGi4iKdkbqA@mail.gmail.com>
	<CAMKF1sonaNhe0jznAaVFySa5z-JOBdqxDRjifq-F04kra=_rfg@mail.gmail.com>
	<CALbNGRR0qo=yS2dop-3pfpAZVSC9NekDyg_aFCzURs7NM3UGvg@mail.gmail.com>
	<CALbNGRTKdu+H4eW8U1D4FxM9+LjfoOeZUC0c=irJyHmK69bdMQ@mail.gmail.com>
	<CALbNGRS06u3NTU=2XYRiga=B_rPj_rNyLwv2dC8hRUkx=mJt+A@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Thu, 29 Mar 2018 17:05:39 -0400
Message-ID: <CAHUNapQP=2OYu6qjf5QLmMbcurXRFo_O1fWg0_oiqCXDZykccA@mail.gmail.com>
To: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Has anybody run VC4 + X + recent meta/masters lately
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
X-List-Received-Date: Thu, 29 Mar 2018 21:05:41 -0000
Content-Type: multipart/alternative; boundary="00000000000064cd8f0568937cce"

--00000000000064cd8f0568937cce
Content-Type: text/plain; charset="UTF-8"

I've seen the 'Modifier 0x0 vs. tiling(0x7000000000000001) mismatch' error
and blank screen hundreds of times while working on getting chromium-x11
accelerated. It would happen if chromium was trying to use the system
gl/gles libraries instead of the ones it builds.

--00000000000064cd8f0568937cce
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;ve seen the &#39;Modifier 0x0 vs. tiling(0x700000000=
0000001) mismatch&#39; error and blank screen hundreds of times while worki=
ng on getting chromium-x11 accelerated. It would happen if chromium was try=
ing to use the system gl/gles libraries instead of the ones it builds.<br><=
/div>

--00000000000064cd8f0568937cce--
