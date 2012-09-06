Return-Path: <autif.mlist@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4173E01371
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 06:24:57 -0700 (PDT)
Received: by dadz8 with SMTP id z8so1228409dad.35
	for <yocto@yoctoproject.org>; Thu, 06 Sep 2012 06:24:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=VEP7HqpKwDI223UZ5Pdlq1IMRBM/kLe7ct/sCWWmluc=;
	b=n/ogIXSq1AFxxyYEZZLbf2zYwXqAK3qxAXlx0lqpVNxX8u9Y94YI8HdVp1DdcefNM7
	sx+1kK7m2hR/rXKLt6Fx33yynF6aJ6r8IlHPLtN6FjjO2GnLCE22zi97Fyjk0T6QC5T6
	4MeVotG0vQk1XhlEKhCEhsOY5FG1JJfPPcJolCm95c5CrLPcUjZ5ckClYnIE341QRERk
	r/V1EV+3mPz0jON2mGH9rVkaCQ86F7pWEgV7ObPM/HvUty1mlZMOubvao5hoQtkMJq/l
	rRLcA4EBs5slOH1r4+b5sSeyATTTbFu47Eq1z1CDCVHz5jltPe75RlDuS9yqrQ5EHrwe
	sPuw==
MIME-Version: 1.0
Received: by 10.68.129.164 with SMTP id nx4mr4790288pbb.28.1346937892809; Thu,
	06 Sep 2012 06:24:52 -0700 (PDT)
Received: by 10.68.191.105 with HTTP; Thu, 6 Sep 2012 06:24:52 -0700 (PDT)
In-Reply-To: <7E29EF69110C17499E6B3A9844CD4FD917AF1EB1@szxeml526-mbs.china.huawei.com>
References: <7E29EF69110C17499E6B3A9844CD4FD917AF1EB1@szxeml526-mbs.china.huawei.com>
Date: Thu, 6 Sep 2012 09:24:52 -0400
Message-ID: <CADzUK1+xUomZYRFYM1dhyQyDJno9gMSk6-bEX2fQP_tzrYh7zQ@mail.gmail.com>
From: Autif Khan <autif.mlist@gmail.com>
To: Wangdawei <kyle.wangdawei@huawei.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to add a new environment in poky
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 06 Sep 2012 13:24:58 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 4, 2012 at 11:15 PM, Wangdawei <kyle.wangdawei@huawei.com> wrot=
e:
> Hi
>
>          I need to add a new environment that LD_LIBRARY_PATH when I use =
my
> own external toolchain .
>
>          I add 1 line in external-toolchain.inc =93LD_LIBRARY_PATH =3D.
> "${EXTERNAL_TOOLCHAIN}/i586-target-linux-gnu/lib:"=94,but there is no
> effect.when I used this toolchain to compile , there also isn=92t this va=
lue ,
> so I want to ask how to add a environment in poky ? the run.compile.xxx
> script can get the value ?

I do not use external toolchains, so I can not provide a quick answer.

However, this has come up before - several times.

Please search the mailing list archives for external toolchain integration.

