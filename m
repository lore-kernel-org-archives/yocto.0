Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CC05E00AE6; Mon, 26 Mar 2018 02:49:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f43.google.com (mail-it0-f43.google.com
	[209.85.214.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E94AE00851
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 02:49:57 -0700 (PDT)
Received: by mail-it0-f43.google.com with SMTP id v194-v6so9960258itb.0
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2018 02:49:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=OVj13zWuq9WDr2iQ/LUogrTSI1hqbaKMzbojGoaBS/k=;
	b=LCsPCEhTbr3a5kkFpT8SiEmRpsgePvupKag5DbzQtOmPbCDexUqOVfP/lygNqBus+F
	ih5pFZ8Rmkxgr+u/q/1+BsZ/w3oO2MhliL3YDJ8GfANJySmLRh4sHQAYcQO33/5Dys1k
	EXFlu53IrauUUMSNQ71NG1obXisV/0nwqTAvu8ydhApRKmq6mLqbWcrbolujt3KiLgoe
	hyjtF74qJ9wSSjwIwgD52brFAmQZF3bKU0ladF3emXInbBIbfGIzOcNztcaUD5v/878e
	0J6NBS9i14YQdHEeSQJ/qV9fsYSXpfqrsyABd6fWp0tWrNXUZ2iIVEqna2IVvsPyQWUe
	oXAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=OVj13zWuq9WDr2iQ/LUogrTSI1hqbaKMzbojGoaBS/k=;
	b=UtJm3EfKZExumV+DUWmZWoYtLlBpeGTF2VI3Y2AfaCzvu7V3CmVsfx1Tr2gIknCe4w
	kYqBDA5B7STFpiaeIlhn9suSSm6+IUTyG5XUQG1Df+iMHkIPz3NJBsLNBovc9EaUJfo8
	sVbwdwWptp9KYztA31NykJb2+0abCa40ZKaOtGsl+45ptyYeJaY3txaRruEwQIrtXT/f
	b/ZHR4hiLOy0OzNos/OwIkNdNbsbQKEqICNGwIzOoOX0kmOfL92u0N59LCp6/B/lsbDm
	fCyN1Yv4ogm6D6qeRnx0GSnVhf2Pgmr4aNzIQZJEbUSFh8qxyV3krE8Qp3YFHWdWB+C0
	UsZg==
X-Gm-Message-State: AElRT7FFHjlBDDvcxeGON+tM/SUUiht7uMnZH1xGuE5VZic3StdyuoMs
	Hm7AS+Ymw+d84XSsadzYhfVBCBpTnMfiRLULNUsQ0A==
X-Google-Smtp-Source: AIpwx49uS+D1DtqTfCaEgMPaDS+eAq/if6CJcZFD2GJbcSVFCE2EwohTM9QmhlwEYisy4ACmn/r+SmkVWEvPmjrEoPU=
X-Received: by 2002:a24:1f15:: with SMTP id
	d21-v6mr15133046itd.45.1522057797650; 
	Mon, 26 Mar 2018 02:49:57 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.30.9 with HTTP; Mon, 26 Mar 2018 02:49:37 -0700 (PDT)
In-Reply-To: <140452140.145707.1521982893662@mail.yahoo.com>
References: <140452140.145707.1521982893662.ref@mail.yahoo.com>
	<140452140.145707.1521982893662@mail.yahoo.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 26 Mar 2018 10:49:37 +0100
Message-ID: <CAJTo0LbEe-wb7fHp0rGr8qWRQ5dhk_qQzSitFY4TkwUQD9vYWw@mail.gmail.com>
To: Mostafa Farzane <farzanemostafa@yahoo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: how to add libsrtp and libsrtp-staticdev to sdk
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
X-List-Received-Date: Mon, 26 Mar 2018 09:49:58 -0000
Content-Type: text/plain; charset="UTF-8"

That suggests that libsrtp-staticdev wasn't built.  Use
oe-pkgdata-util to determine if it was built at all: note that for
example Poky doesn't build static libraries.

(one of many reasons that people shouldn't use poky as anything but an example)

Ross

On 25 March 2018 at 14:01, Mostafa Farzane <farzanemostafa@yahoo.com> wrote:
> Hi,
> I need to add libsrtp to my sdk. I want both static and dynamic library in
> sdk. I added "libsrtp libsrtp-staticdev" to "IMAGE_INSTALL" but getting the
> following error:
>
>     Collected errors:
>      * calculate_dependencies_for: Cannot satisfy the following dependencies
> for libsrtp-staticdev:
>      *      libsrtp (= 1.5.2-r0) *
>      * opkg_solver_install: Cannot install package libsrtp-staticdev.
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

