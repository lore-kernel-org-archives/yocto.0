Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 970E9E00852; Wed, 27 Jan 2016 11:18:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACD25E0079A
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2016 11:18:22 -0800 (PST)
Received: by mail-io0-f181.google.com with SMTP id 1so29996528ion.1
	for <yocto@yoctoproject.org>; Wed, 27 Jan 2016 11:18:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=bYdlnK3iPK04hGBvSr7IiDZlKSQqec5aSdDiM0w6KLw=;
	b=YropYZfR4aDu5wxIXVuPdnBZiGeqq/m24O7/76DRMXQU1SB+EuS4j+CrpxsbdhL9J/
	CzmfWUhNvtmD2C8cmupdNOl6UxyI9EyNxcIyDHvLKtykYbi8QKxKInNcd+rrciMK+OZ7
	Xc3MFq6/shxlZzVU9XcDRpQp90xz5uW2sOcTZPj8EveP1iiH5tkzrf+8McZ6VSVjHzYj
	YH+mndzfR4ekAOSE1P4OdHmEOc3Dslt+W0+J4OOzwxIci4dOIeFDDpz07jLikg0YobGO
	0zML4SiTU+AHVRXtcmhCCxL4ex2zILFCMw5qJST6oCDehb8ANblfH27SVvx3rQTV5BQf
	jE6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=bYdlnK3iPK04hGBvSr7IiDZlKSQqec5aSdDiM0w6KLw=;
	b=l4Po7wp8Z8wwLrF6/FJT5DtHOfEKtSw38BMQtW+pAoWOnqS4vM3hfITtUztxdCN8kC
	fbgx+gI6Zbg9oNypno4dbaRACRzaB3HcBJkzeZGawcdBVwcPZyWhNhpWbzhHrKVSbM9o
	ZFnUoWGsYEA5jSEKjaYxNEYKo867GanCX9lv9e99uPKzkyFhSqOlmNLHZ5MTr5zlXUIq
	gF6iYJ/GhHPnt+to9B0Y+/mwXu8sqv51AnscOgh02srLJjFJZVZ+DPwXHtL2yfM++L9B
	FSSiWf/a/I14wcfQg2BUZmFJtYIswBqIr4aPUMifjHHdmMhER3wlSHQ3+exzVbxd2cCz
	s7TQ==
X-Gm-Message-State: AG10YOR+NFUIjRKRGkDZuWK/0gbVlLlsx+JuHiuAvd4PDSLD0BdaMoxTQHYJGwNRUNYQ+oqibTKdQ40ul4a3yw==
X-Received: by 10.107.34.79 with SMTP id i76mr34659963ioi.195.1453922301456;
	Wed, 27 Jan 2016 11:18:21 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.16.74 with HTTP; Wed, 27 Jan 2016 11:17:52 -0800 (PST)
In-Reply-To: <14d020d8b9fa445d8094c9a4a7825750@serv031.corp.eldorado.org.br>
References: <14d020d8b9fa445d8094c9a4a7825750@serv031.corp.eldorado.org.br>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 27 Jan 2016 14:17:52 -0500
Message-ID: <CAMKF1spKdbHLRKmdFbzQRPCcq99OVHRkWcd6=4uWX_pA7W6kFw@mail.gmail.com>
To: Alexandre Freire da Silva Osorio <alexandre.osorio@eldorado.org.br>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: do_compile fails in Jethro
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
X-List-Received-Date: Wed, 27 Jan 2016 19:18:27 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jan 27, 2016 at 11:11 AM, Alexandre Freire da Silva Osorio
<alexandre.osorio@eldorado.org.br> wrote:
> Hi!
>
> The first time I tried to upgrade my build to Jethro I received the following error message while do_compiling krb5:
>
> (...)
> | .build/tmp/sysroots/x86_64-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/5.2.0/ld: plugins.so: relocation R_X86_64_PC32 against symbol `krb5int_open_plugin' can not be used when making a shared object; recompile with -fPIC
> | .build/tmp/sysroots/x86_64-linux/usr/libexec/x86_64-poky-linux/gcc/x86_64-poky-linux/5.2.0/ld: final link failed: Bad value
> | collect2: error: ld returned 1 exit status
> | make[2]: *** [libkrb5support.so.0.1] Error 1
> | make[2]: Leaving directory `.build/tmp/work/core2-64-poky-linux/krb5/1.13.2-r0/krb5-1.13.2/src/util/support'
> | make[1]: *** [all-recurse] Error 1
> | make[1]: Leaving directory `.build/tmp/work/core2-64-poky-linux/krb5/1.13.2-r0/krb5-1.13.2/src/util'
> | make: *** [all-recurse] Error 1
> | ERROR: oe_runmake failed
> | ERROR: Function failed: do_compile (log file is located at .build/tmp/work/core2-64-poky-linux/krb5/1.13.2-r0/temp/log.do_compile.9043)
> ERROR: Task 1764 (.meta-openembedded/meta-oe/recipes-connectivity/krb5/krb5_1.13.2.bb, do_compile) failed with exit code '1'
>
>
> This error doesn't occur when I was using Fido. Please, could anyone give me a help?

what happens if you add

CFLAGS += "-fPIC -DPIC" to concerned .bb file.

>
> Thanks in advance.
>
> Regards,
> Alexandre
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

