Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB04BE00282
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 22:52:00 -0700 (PDT)
Received: by eaab16 with SMTP id b16so8462eaa.35
	for <yocto@yoctoproject.org>; Mon, 16 Jul 2012 22:51:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=/ZslV2MZV9D0XnFRhPEUssSLh46NTzpEefpc+lxIWF4=;
	b=RL7VKd4FADKO4lMzPqezA76dmV3o8FSEZWFPVDRdqpiUM9apF9B7eWtYlsFmOOOXw9
	SF0YDide4RqNg417D3GcOe+jILqdw3apM3tuZBJySkNsmaVBTAFzdVtrKsBj70K7V3WR
	1miF/8U76QwxiAWd+KCbXfSfVaRwQSQtPYyte0ugjYSv3VJttNCKJcqrxy5b1rhUjguz
	Hc975wXlvxCXNLjnm8yFp+QgNG9gnRP9AEcaxMLOI4hrRp/YUtk0epkqPZbWEeAqzgrG
	3hHrMuonL8TzqGq4p4v3DOaSxm2OktSGK36aBmzsPoDm/qB3gh2dZLOIis6ynqMfLjeZ
	7nLg==
Received: by 10.14.214.65 with SMTP id b41mr1254427eep.33.1342504319412; Mon,
	16 Jul 2012 22:51:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.210.199 with HTTP; Mon, 16 Jul 2012 22:51:29 -0700 (PDT)
In-Reply-To: <CAEsOVNcas4rN6sRaZSOLjy-xNTONdRXaepTiANkpjVh9jr0P_A@mail.gmail.com>
References: <E16513A01CAAFF40B65178C63CE45EEC19154E26@IRSMSX102.ger.corp.intel.com>
	<CAEsOVNdtHsAaJX9NdtiWSa70aRcK+Q+dvUgV7FWXu_tEkSEQYg@mail.gmail.com>
	<CAEsOVNcas4rN6sRaZSOLjy-xNTONdRXaepTiANkpjVh9jr0P_A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 16 Jul 2012 22:51:29 -0700
Message-ID: <CAMKF1srAY+iyR+oRTsCfWqEsHaBKV4OTFFhHQr7Reaha6p_--A@mail.gmail.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: 1.1.2 Full Pass consolidated Test Report
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
X-List-Received-Date: Tue, 17 Jul 2012 05:52:01 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Jul 16, 2012 at 10:31 PM, McClintock Matthew-B29882
<B29882@freescale.com> wrote:
> }
> -       rm -rf ${SSTATE_BUILDDIR}
> +       strace rm -rf ${SSTATE_BUILDDIR}

strace is probably eating the return value

