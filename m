Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 140DAE00B01; Thu,  1 Jun 2017 05:54:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.52 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.52 listed in list.dnswl.org]
Received: from mail-vk0-f52.google.com (mail-vk0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8786E00992
	for <yocto@yoctoproject.org>; Thu,  1 Jun 2017 05:54:55 -0700 (PDT)
Received: by mail-vk0-f52.google.com with SMTP id w1so23991546vkd.2
	for <yocto@yoctoproject.org>; Thu, 01 Jun 2017 05:54:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Pu899DrCFcWk/hIkmRgve9t0Ke23mAE5QT9cVAtDECk=;
	b=J2GDkC7eEPmbbXbz9iOq/819Vkpv3E4pPmAhD/qnmdqVtHEr+BIFTl+QIq2eWg7hAT
	LWRQS9wuY3aoPqtWQpbzX1iLoHmE4pSsfOC7JKbNpeSBuKXCuOczozvETcDqeT3drkYO
	TQb1808Fbe4qC2lxU1dGDspzDUCxOBLUVyYdtsNpyr5t79qDwZj6CsrNXmOr9lgLHhVu
	9yMBYga1q2tIkVhgfIEyMdZ+z2S3Zoj0pD7l9NVmU+7ZBcn6ge1B3ofMUiCDPl5FwyUZ
	ysxvYeoG8ZJgXXs2lNPPJa4wrFo0u5hNVQjSh5FIIqiqHZMOtCtVE4DSGbMKVplDXmli
	04NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Pu899DrCFcWk/hIkmRgve9t0Ke23mAE5QT9cVAtDECk=;
	b=FxqWJw6+Fc3tXvpJTYHhSUJEsm1Bdk4A6K68r8Pb9saz2iqogZcwsVG9v85w+VsOXF
	PxjN/xg67vDgYTfYwj8XclrGckuceH45/rOQSET2Y+pppfLoYnoAvi9o8ox8SsLKAhuk
	GSZJw/3SJAQI8KLcMGaQ9QU/xEJfxpTbkvg2fqjHxhTj34VTaAXthPMrFaud74IxHzVu
	sRZ2NZlK1CYy5FYDPjkMJEaj167HLe0z8PIkRE65oTHdvrhZB5I55M0dgPlox+iwYtFK
	FJEGfakat4SCuAKUVM3Wln+RplhkVaZo62UGnWy3c/6yKDKuYE/8WNwyhCxHRsBusUtW
	AG/A==
X-Gm-Message-State: AODbwcBbn+tHXbvog4uePK2sRRA4wi6nV2ZmVFhectjcgbbpSZpi9rj+
	2nspqX97sOkd7g/G6Qdg7kpyFoOrSw==
X-Received: by 10.31.76.132 with SMTP id z126mr523491vka.137.1496321694593;
	Thu, 01 Jun 2017 05:54:54 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.67.199 with HTTP; Thu, 1 Jun 2017 05:54:53 -0700 (PDT)
In-Reply-To: <CAOLEWZVXCpJ3PQA=xqeu4P7fLfW1qPFPoMjFLCpzLujF0iHjdA@mail.gmail.com>
References: <CAHUNapSYmEfVLLdLE4_Nr8XEJt830R5cvHMrcnsohYF5sXSaVw@mail.gmail.com>
	<CAHUNapRGHVwA5agFkp26Vv46qQbyDXYdhvR=wxdU-bAYifS0Eg@mail.gmail.com>
	<CAHUNapR=ucND-LTtiGgPGMCpXc_WRJwWOSFPeJ6LMwC40_zhHQ@mail.gmail.com>
	<CALbNGRTyPU74ipKJwuZpVP+btn7vcca-QJQxUNun8JLSQ0yMgA@mail.gmail.com>
	<CAOLEWZU7Jj+gSoh-gdTSDd9fvYC5Kb2VpTKkeDv7h5PccLsTgQ@mail.gmail.com>
	<CAHUNapQnCjZRDtZX4O3T0nHn2YNibX-6+aNQLT3frOQHnAtS0g@mail.gmail.com>
	<CAOLEWZWP6zx6Kp=Pox6LHwtzcjk6BWsCckKEqrofMU3A2RnsFA@mail.gmail.com>
	<CAOLEWZVXCpJ3PQA=xqeu4P7fLfW1qPFPoMjFLCpzLujF0iHjdA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Thu, 1 Jun 2017 08:54:53 -0400
Message-ID: <CAHUNapRnfM7EOXBOT+NWfRj5+4QwWqQxmkoMT=4WkPES2PiqVg@mail.gmail.com>
To: Stephen Arnold <stephen.arnold42@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-freescale] etnaviv image
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
X-List-Received-Date: Thu, 01 Jun 2017 12:54:56 -0000
Content-Type: text/plain; charset="UTF-8"

Hey Steve,

That's great to hear, and thanks for the followup :-)

Otavio has since pushed everything to master, so hopefully the kludges
aren't required anymore.

Best regards,
    Trevor

