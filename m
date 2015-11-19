Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27D20E00985; Wed, 18 Nov 2015 22:59:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0A82E008B8
	for <yocto@yoctoproject.org>; Wed, 18 Nov 2015 22:59:20 -0800 (PST)
Received: by iofh3 with SMTP id h3so79919981iof.3
	for <yocto@yoctoproject.org>; Wed, 18 Nov 2015 22:59:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=dZYxb+bIyABpZo2I0CuXITk663L4Stsoh9S1/8XXhy8=;
	b=auXvrOWQ1JvKKzh8MHO37f8kCXgQqA66db/FrkwnnDSTdRxnvSbBHJi6Z1ucVckG9c
	I7+RQs22iGLejOWl3pJVt/SbuAnzV69txMRnqmIyhOB3bShDOF2Ui72k0AEr/w4hm50i
	eKngUODIuzasETWRIs7CBxapVvljyxVdeMBa7Eyshr+ExtNJ0bq/Ymd82iKgqCEWkut5
	TGSYYqa/vpz3dNOK6FP8vVNGXilN2hRxcs7bzoHNT7OddolsivUpXZKg21t5qDTtUjlW
	EXC6trS8xgH3Qwd4zCTTh4+M0qSS9xtKhW+1sjihH1JNHfqbibRCrPmJx7HpoJzHQsN+
	0Hog==
X-Received: by 10.107.162.137 with SMTP id l131mr6522471ioe.49.1447916359318; 
	Wed, 18 Nov 2015 22:59:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.12.205 with HTTP; Wed, 18 Nov 2015 22:58:50 -0800 (PST)
In-Reply-To: <CABc_YGDdnOuMuJChr8K32PZsfpDtMhGW5XQ7T2BCoqng0CLsFQ@mail.gmail.com>
References: <CABc_YGDdnOuMuJChr8K32PZsfpDtMhGW5XQ7T2BCoqng0CLsFQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 18 Nov 2015 22:58:50 -0800
Message-ID: <CAMKF1soaWKZUnR5RBP2UewT_Z4B2p3Kck+qfCnuJiFM9TtY3Hw@mail.gmail.com>
To: =?UTF-8?Q?Marcin_Krzemi=C5=84ski?= <mar.krzeminski@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: gcc cross canadian i n yocto 2.0 QA warning
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
X-List-Received-Date: Thu, 19 Nov 2015 06:59:23 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 18, 2015 at 5:20 AM, Marcin Krzemi=C5=84ski
<mar.krzeminski@gmail.com> wrote:
> Hello,
>
> I have just switched to yocto 2.0 from 1.8 and got this warning when I tr=
y
> to build SDK for 32-bit machine on x64 host.
>
> export SDKMACHINE=3D"i686"
> bitbake meta-toolchain
>
>
> WARNING: QA Issue: gcc-cross-canadian-arm: found library in wrong locatio=
n:
> /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnue=
abi/gcc/arm-poky-linux-gnueabi/5.2.0/liblto_plugin.so
> gcc-cross-canadian-arm: found library in wrong location:
> /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnue=
abi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1plugin.so
> gcc-cross-canadian-arm: found library in wrong location:
> /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnue=
abi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1.so.0.0.0
> gcc-cross-canadian-arm: found library in wrong location:
> /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnue=
abi/gcc/arm-poky-linux-gnueabi/5.2.0/liblto_plugin.so.0.0.0
> gcc-cross-canadian-arm: found library in wrong location:
> /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnue=
abi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1plugin.so.0
> gcc-cross-canadian-arm: found library in wrong location:
> /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnue=
abi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1plugin.so.0.0.0
> gcc-cross-canadian-arm: found library in wrong location:
> /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnue=
abi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1.so.0
> gcc-cross-canadian-arm: found library in wrong location:
> /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnue=
abi/gcc/arm-poky-linux-gnueabi/5.2.0/liblto_plugin.so.0
> gcc-cross-canadian-arm: found library in wrong location:
> /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnue=
abi/gcc/arm-poky-linux-gnueabi/5.2.0/libcc1.so
> gcc-cross-canadian-arm-dbg: found library in wrong location:
> /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnue=
abi/gcc/arm-poky-linux-gnueabi/5.2.0/.debug/libcc1.so.0.0.0
> gcc-cross-canadian-arm-dbg: found library in wrong location:
> /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnue=
abi/gcc/arm-poky-linux-gnueabi/5.2.0/.debug/liblto_plugin.so.0.0.0
> gcc-cross-canadian-arm-dbg: found library in wrong location:
> /opt/poky/2.0/sysroots/i686-pokysdk-linux/usr/libexec/arm-poky-linux-gnue=
abi/gcc/arm-poky-linux-gnueabi/5.2.0/.debug/libcc1plugin.so.0.0.0
> [libdir]
>
> I am using my custom layer, but I haven't seen this in 1.8. My question i=
s
> that the problem is releated with my layer or something changed in yocto?

a lot changed between 1.8 and 2.0 especially the version of gcc went
up from 4.9 to 5.2
these are new plugins in gcc and they are in correct location from
gcc's point of view but we flag them
since it finds target libraries in cross sdk sysroot., do you see any
problems due to this ?

>
> Regards,
> Marcin
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

