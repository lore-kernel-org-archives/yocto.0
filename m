Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2E42CE00C3A; Tue, 22 Aug 2017 16:45:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.193 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.128.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f193.google.com (mail-wr0-f193.google.com
	[209.85.128.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D8E3E00970
	for <yocto@yoctoproject.org>; Tue, 22 Aug 2017 16:45:21 -0700 (PDT)
Received: by mail-wr0-f193.google.com with SMTP id p14so118424wrg.1
	for <yocto@yoctoproject.org>; Tue, 22 Aug 2017 16:45:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=lAz38qCjNALe6vpUXyKkgUU1L/EJIKboFEqCWv+Zz8Q=;
	b=Zug/5TzEkAcWk9voh0+BoiWOOUw64NTECYobR4Ox90YpxOLLfkjf3OK2tUp1hNS94S
	oVqecK93mv6fmusM9DFLwOU85a3X2ESbCyIt9LT73pJ9zsiqPKrrF6fHbbufGxW6hbgz
	4M6mJe6EmmyAMIKvpN2WQkJb93xJe7CKCPY8dExkt7Xw+CxOohmVEiOifW+FcsuT1+YT
	cy2TYiAtSv8n0RfcQovYYmC0ayQ5lpMCLF46cbKd4cLAYx1nB5itN9SCmw77lprqpOw+
	iixwVG+iH/473luizt8cPRinsgBhTNAg1I6QXgKW9V7Qjp+rOeBy4kYZGQAZTM0uE75h
	XxKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=lAz38qCjNALe6vpUXyKkgUU1L/EJIKboFEqCWv+Zz8Q=;
	b=L4Pu/LZDUEQlzM9bM+HmA9fooleVfWeMxPFoUrsrkw5g7AIV26QDEN0VcA352QrbEW
	UN0GJeKZ2BxGRaV5N2KWcH6pSylXvtsm8/ZfOiFaW60SuWdpfgopW51vE1G/0HP2P/XH
	KoTCo3b2gKme5fcbnSMnLRqAq7Dokv37rJaPC/dkR83RhafHYAaebMPd4RIqYhgvu7i9
	XFdiBz/tcNtzByP1q5IxZXe1Vv/NyrehO1uLAA/gkmIxT1a4Uad5ggiyv1Ki4wfoiPB7
	bAvrJN5atiCSWlACIOpqad5zsDqng+NJgfRzENwH/S3V9FBLk43a4dDxvX0dM7390+mR
	iFPw==
X-Gm-Message-State: AHYfb5hBM4O7JtPqPGZksfUkPwW2RE8RSYKxxW+Wu+jib2jGs7xv4WGh
	0bPuHdMlAkL2QWYFFJ9cZkQQGA7DKg==
X-Received: by 10.223.175.8 with SMTP id z8mr448046wrc.16.1503445521051; Tue,
	22 Aug 2017 16:45:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.223.169.70 with HTTP; Tue, 22 Aug 2017 16:45:20 -0700 (PDT)
In-Reply-To: <CAHiDW_FtVmiKcFqwH9vedxrEdB1YnLDQROypCuiRyapt_uu01w@mail.gmail.com>
References: <0fe401d31b4c$ad25dac0$07719040$@ln-systems.com>
	<CAHiDW_H+OPiekHXkoU2yxSbOXcuFoLKVvEG6U5XxQ8Htsu=K0Q@mail.gmail.com>
	<1860092135.29844.1503412987767@email.1and1.co.uk>
	<CAHiDW_FtVmiKcFqwH9vedxrEdB1YnLDQROypCuiRyapt_uu01w@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Tue, 22 Aug 2017 16:45:20 -0700
Message-ID: <CAJ86T=U2e0ukN=pd5P9-kQrgOoBSDSXPq1kDjrm93QRwYT3m1Q@mail.gmail.com>
To: Jussi Kukkonen <jussi.kukkonen@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Custom recipe - resolving "do_package_qa: QA Issue: -dev package contains non-symlink .so"
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
X-List-Received-Date: Tue, 22 Aug 2017 23:45:23 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Aug 22, 2017 at 12:18 PM, Jussi Kukkonen
<jussi.kukkonen@intel.com> wrote:
> On 22 August 2017 at 17:43, Colin Helliwell <colin.helliwell@ln-systems.com>
> wrote:
>> > On 22 August 2017 at 15:13 Jussi Kukkonen <jussi.kukkonen@intel.com>
>> > wrote:
>> > On 22 August 2017 at 16:43, <colin.helliwell@ln-systems.com> wrote:
>> > > I have a custom recipe (for the AWS SDK), which is failing at the
>> > > package_qa
>> > > stage.
>> > > The recipe is a very basic cmake styley, and on its own seems to begin
>> > > with:
>> > > 'bitbake -f -c package aws-sdk'  completes without errors.
>> > >
>> > > But for 'bitbake -c package_qa aws-sdk) I get:
>> > >
>> > > ERROR: aws-sdk-1.1.31-r0 do_package_qa: QA Issue: -dev package
>> > > contains
>> > > non-symlink .so: aws-sdk-dev path
>> > >
>> > > '/work/armv7a-neon-poky-linux-gnueabi/aws-sdk/1.1.31-r0/packages-split/aws-s
>> > > dk-dev/usr/lib/libaws-cpp-sdk-core.so'
>> > > -dev package contains non-symlink .so: aws-sdk-dev path
>> > >
>> > > '/work/armv7a-neon-poky-linux-gnueabi/aws-sdk/1.1.31-r0/packages-split/aws-s
>> > > dk-dev/usr/lib/libaws-cpp-sdk-s3.so' [dev-elf]
>> > >
>> > > I'd appreciate help with resolving this. Thanks.>
>> > >
>> >
>> > It looks like aws-sdk installs .so files that are actual libraries (and
>> > not symlinks to the versioned libraries as would be the usual case). The
>> > best solution would be to get aws to install versioned libraries but if
>> > that's not an option, you probably want to package the .so files in the
>> > actual library package, not the -dev package (which is the default since
>> > usually .so are symlinks for development and the actually versioned ).
>> >
>> > You may have to set both FILES_${PN}-dev and FILES_${PN} (so the former
>> > doesn't grab the so files, and the latter does)
>> >
>> > HTH,
>> >   Jussi
>>
>> Thanks for the tips, Jussi.
>> I'm managing to get a little further, added
>> INSANE_SKIP_${PN}-dev += "dev-elf"
>
> I suggest not doing this. It seems the warning is valid so you should fix
> the issue, not silence the warning.

Right, and especially true for the dev-elf QA check. Putting an actual
elf .so file in a -dev package introduces a run-time dependency on the
-dev package, which causes header files etc to be pulled into the
final image. Trying to disable the "dev-elf" QA test should be QA test
failure in itself... :-)

>> FILES_${PN}-dev += "${libdir}/libaws-cpp-sdk-core.so
>> ${libdir}/libaws-cpp-sdk-s3.so"
>
>
> ${PN}-dev should _not_ contain so files (in your special case). The issue is
> that the default value contains "${libdir}/lib*.so" already (it's not quite
> so simple but see meta/conf/bitbake.conf for details if interested). You
> should be able to just redefine the variable completely:
>
>     FILES_${PN}-dev = "${includedir}"

Completely over-riding any of the default packaging rules isn't ideal.
To force .so files into main package the following is a little
cleaner:

  FILES_SOLIBSDEV = ""
  FILES_${PN} += "${libdir}/*.so"

>> FILES_${PN} += "${libdir}/libaws-cpp-sdk-core.so
>> ${libdir}/libaws-cpp-sdk-s3.so"
>
>
> This looks correct to me.
>
> Jussi
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

