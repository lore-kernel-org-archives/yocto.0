Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E654E0097C; Mon,  5 Dec 2016 10:34:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.65 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f65.google.com (mail-vk0-f65.google.com
	[209.85.213.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFCB6E008D3
	for <yocto@yoctoproject.org>; Mon,  5 Dec 2016 10:34:33 -0800 (PST)
Received: by mail-vk0-f65.google.com with SMTP id l126so16772069vkh.0
	for <yocto@yoctoproject.org>; Mon, 05 Dec 2016 10:34:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NKwZSaBp1R0Dp3witzrXP8KPpoWtegEAOHRNq4oDhSc=;
	b=Qr11QR+E1JS9mJs/3QzaNqzzRnpBemOnHvrU9X5yWg1B1JDqO6TDMQ9Onv5yNtDUmr
	4RAWFhih2yu29jSBVHZ+8IOJ5Yxs7LF8ZIcFU+HaafuvkcHBOuSeS267T8M0KoiOHfY9
	q+2kFc/nSoLFugMKOkvFZelTtBy4nyvnALCdWet4CJsZpR3fmIaHeVnCws4pTVZfsHei
	u0qADXxOGmHKH7+KiHEJ8VtiUSDnBpKSKc4EMCuYgHUmCy3mNJNIJJ+NT9u3sI2wzezi
	GjVFv2l1FFF/vf/SUN6h0L51pkDn128tvUBnsumkI3pDuyoE1hklmuKJYnH0PzH9lG4C
	r4iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NKwZSaBp1R0Dp3witzrXP8KPpoWtegEAOHRNq4oDhSc=;
	b=i0Ijlg8zCK+dLJUan0gP8ewiaNfPLgU7IgYJFGIV3pXuDbyg4OLDlhfzmr5fk6DgWe
	hzmziVC3yJBpIb2jxh4sRVFCHtsCbPG5J5V/Pt6hChPpn+8HLH///t/6+iKj2o+R2PV2
	pwSURZ9pwpIgGhgdtMpVU/JvXbYwPDf0F5irP0uBVUfee/qnCRDYzgAYedw9uBHsauZ3
	9c8L42No33TCVCDhhYPMhn5WislSG9IW63IJnlFxPj5HjhYxLtAmlrLAII9BXKD2qnIg
	PlY8q9g2h7Ty6ECoN3w82lvSH79gV9YZtloqoEhUSceQw3NnfVUGKvf5ui6VEWnG85ye
	VdCQ==
X-Gm-Message-State: AKaTC039Bb1Jhd3Hhck5t/EZnK1Sn2QupncdXnJi5rYAB1dofywujIAD7Te2zKbAMpta0/kA98sm6GuAi1WmCw==
X-Received: by 10.31.197.195 with SMTP id v186mr21979234vkf.84.1480962872773; 
	Mon, 05 Dec 2016 10:34:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.87 with HTTP; Mon, 5 Dec 2016 10:34:02 -0800 (PST)
In-Reply-To: <CAJO0J4i3Z9Mt=gp8AAHP1GfdRtJ_Hx1wQ+WJXeU7OPfsPYSgKw@mail.gmail.com>
References: <CAJO0J4i-G+PxwaSqZzx0ovj2g-ZMR=Uy9RSnk2b=oji1sTX5gw@mail.gmail.com>
	<CAP71Wjw+L1C+5XrOYSMgHoCKnVu84uqf-s=ueUTEpZ=y0B9+Hg@mail.gmail.com>
	<CAJO0J4iCk-Zw6xLf4zu7u_aGT5n9b=wctO17tQnRhiTD0k8nGg@mail.gmail.com>
	<CAP71WjxnZhor7seO+O0=t+n=iCLMONx8midCikPgBmBzuHcVxw@mail.gmail.com>
	<CAJO0J4g8CfC7keGjnuu9XbmFGZYuMs9n9uoQDQAqhQC=HrjLgw@mail.gmail.com>
	<CAP71Wjz8ZyxjiFccPOD+Lcat0C1XN8OEW1-m2fxgeqGJD43aTQ@mail.gmail.com>
	<CAJO0J4i3Z9Mt=gp8AAHP1GfdRtJ_Hx1wQ+WJXeU7OPfsPYSgKw@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Mon, 5 Dec 2016 10:34:02 -0800
Message-ID: <CAMKF1sqg-WU3ZeQkqRsNtKTWQCXQ94maghY07Op9FHk5Ugdcqg@mail.gmail.com>
To: Paulo Neves <ptsneves@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Using files from package dependencies
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
X-List-Received-Date: Mon, 05 Dec 2016 18:34:37 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Dec 5, 2016 at 7:08 AM, Paulo Neves <ptsneves@gmail.com> wrote:
> Hello Nicolas, thank you for your advice and hints but I "need" to
> corrupt a bit the conventions of yocto and use specific package names
> (due to compatibility with other older build systems)
>
> The magic behind the fact that my special package sysroot directories
> were not being moved to the yocto sysroot was due to the fact that
> do_populate_sysroot does not match all the toplevel directories in
> ${D}. For additional directories sysroot_stage_all needs to be
> appended with the desired directories. I am perfectly ok with that but
> why not make a notification that there were directories that were
> packaged but will not be expanded in the sysroots? The lack of
> notification is extremely confusing, as files just do not appear where
> they should.

you can add your directory to SYSROOT_DIRS and it will stage it.
by default it uses commonly used directories as explained here

http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-SYSROOT_DIRS

As for the warning, may be its a good thing, feel free to file a
ticket in bugzilla

>
> A similar question to mine can be found here:
> http://stackoverflow.com/questions/35354802/how-to-create-do-populate-sysroot-append-task-in-yocto/40976056#40976056
>
> Best regards
> Paulo Neves
>
> On Mon, Dec 5, 2016 at 10:08 AM, Nicolas Dechesne
> <nicolas.dechesne@linaro.org> wrote:
>> On Mon, Dec 5, 2016 at 10:10 AM, Paulo Neves <ptsneves@gmail.com> wrote:
>>> Sorry for my ambiguity. When I mentioned binaries I meant general
>>> binary data, not necessarily executable. Their only need is that the
>>> new recipe needs to be fed these data from the other package so it can
>>> produce it's own output. This binary data only needs to be available
>>> in the host pc, in the recipe bake.
>>
>> in that case, i suppose you can consider these 'binary files' as
>> development files like other .h or libs, and package them in the -dev
>> package of the dependency. You can control which files get into the
>> -dev package using FILES_${PN}-dev in your recipe.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

