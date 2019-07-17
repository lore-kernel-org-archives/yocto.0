Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79C2FE00D46; Wed, 17 Jul 2019 03:01:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f43.google.com (mail-io1-f43.google.com
	[209.85.166.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55BAFE00A5C
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2019 03:01:27 -0700 (PDT)
Received: by mail-io1-f43.google.com with SMTP id h6so44756304iom.7
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2019 03:01:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=7bLBHhuOMVuNweIjeDZKYTKNZiGU8Uc4yAYRSfvk760=;
	b=Jl9xBj+3v7SE1uWaJx+9Jz761iZUbEjf6aaXRNqB7TcL2QgwdYF2IrdMvsHkOec8We
	sPA2zW5ReOSoqACpVbncSutDsIdkDDWPzq7lZS6ajswovr8igdzWo9fuBLwrm0O4kfic
	HJ96MQKL0USJiML/lOWynvKG8rRl7lf3X8Ykeug7qREXQhHP/hrT6h0CBWh9xn335uJi
	UUT3tBSgsV3FFwD3epBZns4SBRxGxInCyqN1G1MZPTgPlBtqjUf7+0XxqTxzilWfiYQx
	7kQaD6hPNS8uI7WQxAz0hJHmyjJwtoBCRAoiXGYXOWBzOM23XvYtOiLTrgcLjzmKWDbg
	H56w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=7bLBHhuOMVuNweIjeDZKYTKNZiGU8Uc4yAYRSfvk760=;
	b=k0IU4tCtUzNEcIcfZ+rl+cLUy6IfrL5G49p5BtHadtTmtWsvS1DTa2N7YwEyUb9uwr
	0Fo3ocUSHud6zDXVPydKBdfZp3FplQGVTyprH2d4FYx5jBokh3eT0OW26iCdCCIb+d0K
	/lG8By5JM5eqmpR+CH/rlnZh1hoFJALYITT9l32rrEybHczu673oWm+YTyBsp9RR533d
	WiEJ3FL2VjJhrvSwrxkgjmGnvYqLaCjGRo0LNtwhWvRCwCmQHHBil7k4iXDJyFbtblwC
	Li4uOadHEQf17haXms/HT/IMi4Hurb2zX7cB9AdbqX3m0ZTUlx5gnK6+pQZbMvjdhKPa
	Z/4w==
X-Gm-Message-State: APjAAAVhjz0l0+uJC+wQvsq2/72r5vhg8PyTVj/RwEgbyQFjvp+e2QnW
	58wwoqR7Qx2zyM8KZ9QAfb182hE5Bl85pZrfAAqKSw==
X-Google-Smtp-Source: APXvYqwUezjxZPsqUb49xIvtb3W7pSco5OEi35h5F2OBx16JHXE9QUtBaF+78aQYHKsdq4lAR9q/6lQA12uiiuFVJSw=
X-Received: by 2002:a6b:6611:: with SMTP id a17mr13826784ioc.179.1563357686811;
	Wed, 17 Jul 2019 03:01:26 -0700 (PDT)
MIME-Version: 1.0
References: <DB7PR07MB386841A804D548629B676B8F89CE0@DB7PR07MB3868.eurprd07.prod.outlook.com>
In-Reply-To: <DB7PR07MB386841A804D548629B676B8F89CE0@DB7PR07MB3868.eurprd07.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 17 Jul 2019 11:01:16 +0100
Message-ID: <CAJTo0Lbm7Kuh3a+zd2_bPL==zUw_umt8Q8qv0tkRHRv227A=dA@mail.gmail.com>
To: "Siegel, Jeffrey (Nokia - US/Murray Hill)" <jeffrey.siegel@nokia.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Patching a file in $WORKDIR
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
X-List-Received-Date: Wed, 17 Jul 2019 10:01:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 16 Jul 2019 at 17:45, Siegel, Jeffrey (Nokia - US/Murray Hill)
<jeffrey.siegel@nokia.com> wrote:
> I am trying to use a bbappend file to patch a file in $WORKDIR. To my und=
erstanding, the native Yocto patching process only works for patching files=
 in $S.

No, the default directory for patch application is $S (for obvious
reasons).  You can change the path that is patched by using the
`patchdir` parameter:

https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-SRC=
_URI

Also as Gabriele said, only .patch and .diff files are applied
automatically.  Best to rename to inputrc.patch.

> Using devshell, I have confirmed that the =E2=80=9Cpatch=E2=80=9D program=
 being executed is the one from the Yocto environment ($BUILDDIR/tmp-glibc/=
hosttools), not the build host.

Have a look at what hosttools/patch actually is: you'll see it's just
a symlink to /usr/bin/patch.

Ross

