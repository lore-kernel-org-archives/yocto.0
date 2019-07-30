Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAC21E00D47; Tue, 30 Jul 2019 06:34:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (wpdster[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.172 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25DAAE00CD2
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2019 06:34:47 -0700 (PDT)
Received: by mail-qk1-f172.google.com with SMTP id m14so20898887qka.10
	for <yocto@yoctoproject.org>; Tue, 30 Jul 2019 06:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=Oa00/M3LlYCMFTFVO6iI8BZvgSGhREeZHmraGWJJQhw=;
	b=FCSua/FA10VwCC90rR5gEE+DQHiEP2k/zgHwYXVBIFHS88mXvzZits4QxIEsZ16AL5
	nJL3EpkxOeeMMAbpVxp5+WEzKqGnCKLejPl2DlF+9qdGpI0FGuIc/eVu+mDLpO0A0pSf
	t8/+FAtX9gRx9zzjly9qucJdq96XY9+kS1BLopQOt3wUJhIdFy5q9Tr2TmBAhJ5Ivgou
	Z4bF76jKLn60s15Ik/oA0FF0WJnfD9nVqADPdkns5K67JnJPmcqaxoAjd1tHC1eDOaOD
	LDT36ECpzjxjxj2LkmzOpPwIuL4PY1zG0+EeknMicqkXHMFEIJaTLBdICD1RNr+ItlxF
	kbRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=Oa00/M3LlYCMFTFVO6iI8BZvgSGhREeZHmraGWJJQhw=;
	b=ZSgjFuCLDGGDFm3FQCdDnn6lSY+aoVWw/p/8enVxzJwk4Bx3rTWeRENstxri/9jYDP
	2hLi8EANaWi3/c1css1g3WC38tAj/cNyAjVGgNibT85NK72qynzR3a/G7UlYiahsf9Sa
	w/BtnbztR6NgiBe40E/v7u2xusfgm8YHYAn75o8JD6b6jdH4q7kaDIgiKmf6KKP5N/YA
	Eh4Pd5hnqf6O8yuwow917oUn0ZZ/HesD7gBoiK2K113ugdskBXfjPKODG7eV7FfBuFA7
	1pFjFbxEuOP6HMjiiRnfXumn34os9gxBtZS1haBFF/wv3kcrhwRQ8AXAEOb/5IW10zqr
	sJIg==
X-Gm-Message-State: APjAAAVKst6psuSCozJhazyS1Qm/Ld+SMB/HTNkvVLUYCD3Hn9CDotN8
	SEkSymCIaCKSiedcDrwypBuaOWt4fIv4LpY1mUj+rBapBFM=
X-Google-Smtp-Source: APXvYqw+ABdVAvl5nDHJAjMo9SZeGOg8m9/B4nrOSS6PW3+dg7qPkLWt8hH3l8nj7aOdl3+VCFFdT8e72UYA4Crkgk4=
X-Received: by 2002:a37:a389:: with SMTP id
	m131mr79201977qke.168.1564493685896; 
	Tue, 30 Jul 2019 06:34:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAF_dkJAkv49GRCJDHwMJzTRKJ=QW37ajt-ETvoHmz2EPv5DVow@mail.gmail.com>
In-Reply-To: <CAF_dkJAkv49GRCJDHwMJzTRKJ=QW37ajt-ETvoHmz2EPv5DVow@mail.gmail.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Tue, 30 Jul 2019 09:34:19 -0400
Message-ID: <CAF_dkJBuobVMJNW_AnLKEaKaCnNrex_c62qkDk0-AdBNzvgVmA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Why does enabling initramfs pull eudev into my build?
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
X-List-Received-Date: Tue, 30 Jul 2019 13:34:47 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Jul 29, 2019 at 10:52 AM Patrick Doyle <wpdster@gmail.com> wrote:
>
> Did that get your attention? :-)
>
> I am trying to understand why eudev gets pulled into my build, where
> it wasn't part of it before.  I recently added an initramfs to my
> build...
What I neglected to say was that a colleague of mine had recently
added crda to our build as well, and that recipe has an explicit
RDEPENDS on "udev".

I did spend an interesting day learning about the difference between
recipes that RDEPEND on providers and individual packages that RDEPEND
on providers.  I was confused by the fact that the
initramfs-framework_1.0.bb recipe contains:

SUMMARY_initramfs-module-udev = "initramfs support for udev"
RDEPENDS_initramfs-module-udev = "${PN}-base udev"
FILES_initramfs-module-udev = "/init.d/01-udev"

and, since I didn't depend/rdepend on initramfs-module-udev anywhere
in my build, why that resulted in udev being included in my build.

The answer is... it doesn't.  crda caused it to be included in my build.

Thanks for listening.

--wpd

