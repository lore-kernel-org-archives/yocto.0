Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07D0CE007E8; Mon,  6 Jun 2016 13:55:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (edwingate8[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f193.google.com (mail-qt0-f193.google.com
	[209.85.216.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A04AFE007E8
	for <yocto@yoctoproject.org>; Mon,  6 Jun 2016 13:55:12 -0700 (PDT)
Received: by mail-qt0-f193.google.com with SMTP id r5so2743174qtr.3
	for <yocto@yoctoproject.org>; Mon, 06 Jun 2016 13:55:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=aoIzuBkZ6AWF59thUmc7F2ni7TGNCv+O/ZxA/Hq2s+A=;
	b=fX5sz9mY/pV4kfTXa+DVhDadmKWCHXMCmOcV4t5Go0ps6UaSRGN3V68Llgey4SJCCu
	t5oKd/UXaPTflB2hG/LkhKOjeYtJ0b+fBCz+9+F2x2mzn0lNKuAS/6ktn0Ntt59apu8I
	R78lnsp0O19y2p8Vq144tMSAKj1eGGvsTRlNXmTwR2hkGJnRq+c3Q8Z3oSXVnDXsJxjX
	2459oZzsxrB1XGfUH6XUXbMY9Lm1aHfSw2mFAeRk7CWfBydDsq1vJ0rDTqlChbuFUCG2
	IRGzac2Npo/VYvSYVwN7lnSUgxoBYPAAsXkSDnAM/PSbbUdafMdiCOckxWfeNAln3UMq
	tB3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=aoIzuBkZ6AWF59thUmc7F2ni7TGNCv+O/ZxA/Hq2s+A=;
	b=V7qo1iXkJnI7B9Z0xjo2e1bdE3zl5PUBCr86l2qhz3oHUR97PjY1nNuM6FBWd2e6sS
	4nkysoUizve6VcXr+IaqELmAFe60vgW72jR4plMgQcA9F0da/uPWvysEkyH7CNBPGO1h
	X6DqgJGvV6fjHQc+jTA76zTm8IdDeqkjWIR+9I5+jhrctuHr8nmoINa8wc/ciKlbQ6mu
	ZkJojbk6sUuSz7tHrl+gp+se0tN7wLzOOro/VclMo/iT7YnUsx/IszT7VeVO5D8LHgsM
	xF5QU0kEaxZ10YlhBiDct60roAmTkKYVc2M9j56Vg8V7waybyOE5mdpLiYbG7RlVdOye
	fNRQ==
X-Gm-Message-State: ALyK8tI3VfH4l2CCfP2a7kPsFZrCS01NS9xrV27WBWtMxWHYXYMEqaWKDVvDDQL6t6EjQRGXtsANg4YhFBCopQ==
X-Received: by 10.200.51.89 with SMTP id u25mr18390914qta.58.1465246511553;
	Mon, 06 Jun 2016 13:55:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.45.166 with HTTP; Mon, 6 Jun 2016 13:55:11 -0700 (PDT)
In-Reply-To: <CAEeWubJiiAh4w9b4HM_WaTK9U95ZEj=1uvsJdOnmTW7GTX=nBw@mail.gmail.com>
References: <1806509.T1rfjxOZVE@ip-192-168-197-87.eu-west-1.compute.internal>
	<16838317.pTU33ZpYG7@peggleto-mobl.ger.corp.intel.com>
	<CAEeWubLNuGrjFA1ydAkbi_hDu=P7T4nwkrDL2Ws0cvKRk8WHxQ@mail.gmail.com>
	<2192667.NjFLBh3Ny5@ip-192-168-197-87.eu-west-1.compute.internal>
	<CAEeWubJiiAh4w9b4HM_WaTK9U95ZEj=1uvsJdOnmTW7GTX=nBw@mail.gmail.com>
From: Edward Wingate <edwingate8@gmail.com>
Date: Mon, 6 Jun 2016 13:55:11 -0700
Message-ID: <CAGMdoF=40Z=5MRZ-YBvZrfrYO9pJ9WTixu36FqRiX0i3zvNkKw@mail.gmail.com>
To: Oleksandr Poznyak <oleksandr.poznyak@gmail.com>, 
	Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org, 
	Diego <diego.ml@zoho.com>
Subject: Re: Per image customizations
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
X-List-Received-Date: Mon, 06 Jun 2016 20:55:15 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jun 1, 2016 at 7:15 PM, Diego <diego.ml@zoho.com> wrote:
>
> Hi Oleksandr,
>
> your approach is really interesting, but I'm unsure how to proceed with
> step 2) of your list.
>
> I've added the following in the bbappend:
>
> python do_package_prepend() {
>     d.setVar('PACKAGES', "${PACKAGES} ${PN}-fstab-regular ${PN}-fstab-flash")
> }
>
> which creates the two additional packages, but then I'm confused on how to
> manage the two 'variant' fstab files. The FILES variable doesn't support
> "source -> destination", so how do I manage the fact that two different
> files need to go to the same destination path?
>
> An easier option would be to remove fstab in the base-files_%s.bbappend,
> and create 2 different .bb recipes for the 2 fstab files.

I hope you don't mind if I tag onto this thread, but I have a similar question.

I've been modifying inittab with a sysvinit-inittab_2.88dsf.bbappend
file that contains simply this:

do_install_append() {
    echo "scra:2345:respawn:/opt/script1.sh" >> ${D}${sysconfdir}/inittab
    echo "scrb:2345:respawn:/opt/script2.sh" >> ${D}${sysconfdir}/inittab
}

Now, I want to do this if a different image is being created:

do_install_append() {
    echo "scra:2345:respawn:/opt/script3.sh" >> ${D}${sysconfdir}/inittab
    echo "scrb:2345:respawn:/opt/script4.sh" >> ${D}${sysconfdir}/inittab
}

Can I duplicate and rename the bbappend file to have a different
bbappend execute based on the image being created?  Or perhaps
duplicate the do_install_append() function in the same file and rename
the functions to something like do_install_append_[something with
image name]()?

Or alternatively, can I set something in the image bb files that I can
then use in the sysvinit-inittab_2.88dsf.bbappend to determine which
to do?

Thanks for your help.

