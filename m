Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E48B5E00ACE; Tue,  4 Oct 2016 07:18:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6D612E00A86
	for <yocto@yoctoproject.org>; Tue,  4 Oct 2016 07:18:44 -0700 (PDT)
Received: by mail-io0-f194.google.com with SMTP id r145so8750076ior.0
	for <yocto@yoctoproject.org>; Tue, 04 Oct 2016 07:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=ReqIgu8pvPc60c2B10/9t6ytBtkDpr9yv5hDt/7XCT0=;
	b=umxo03d28pLZDcRQYbXCSdsPddawe9vFTgYj2TTbOvOg4AHwHC3utSc6xCtVPSH2lz
	2QZ32UflksTuYlJ/ch5QTHd0YWtCnJkyViCUNlsUV/UQGiuVBmMqII3C0RM6z+PQXBe7
	6KFh3PosAUQlEf/1ZzGi1qbz63r0Op81U55eSZCpF4+ExisX64wuqQw8nTBqSntchgUT
	6rZt4e91Xj9D/2R+MTS7kmidPhnWz297Tr1ELQrAzhRSiqTAzVNm+hVakjK+Tb1mgijH
	2+YtUorvkO8++FXprBqEMdHUkjciHxiEdbCo+AXXTW+FxjGG6PnruxxqIoWZHMuvCD2I
	6unw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=ReqIgu8pvPc60c2B10/9t6ytBtkDpr9yv5hDt/7XCT0=;
	b=PDDSqyGrlkyT9BAge7MzP/FHEdhOdHsxEJUT+zDVolM0MEeX4KoXK2E1DZGGN1Q2ih
	R9AUPWS9rBraHRCD51a5CUBt5K8eiQC1eAH2boxjYNuVUm5mvPepKe0mS3qCcOStHrzA
	KiaxszRdxt3V4kKkB5cNRdbYNc16ugaDtjlVUOuEAN6tbYbV1IDQuqZoCRL2r1HOiFv2
	CWG+0P3wLAZgOoMuw5eaNQpjtyGk2mcTgIpje/RV1QIgnjclHbrsKEfDkdX+2/6L4Zcn
	GVq/sN5FDLZ2RdTJvvVFcfygWGylk7Ax6oJauEvMRPCpJ+M3v98RHC+E+YrubDDM70cu
	xOQA==
X-Gm-Message-State: AA6/9RkVbq4ObOy6J/iuHJO5B2W6H9JlzapC1eb7SO+wpn1Iqv74xJWaL7PrpJTdodwa7A==
X-Received: by 10.107.11.158 with SMTP id 30mr4619902iol.210.1475590723615;
	Tue, 04 Oct 2016 07:18:43 -0700 (PDT)
Received: from openSUSE-i7.site ([108.161.115.167])
	by smtp.gmail.com with ESMTPSA id
	m184sm1679841itb.20.2016.10.04.07.18.42
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 04 Oct 2016 07:18:42 -0700 (PDT)
Date: Tue, 4 Oct 2016 10:18:40 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20161004141840.GA15259@openSUSE-i7.site>
References: <20161002143422.GA24664@openSUSE-i7.site>
	<DC4D7174-E554-4A40-A0BC-B20623C83300@gmail.com>
	<HE1PR01MB18837565069037BC361486E792C20@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<HE1PR01MB188308CD0299E2BC792EF3C692C20@HE1PR01MB1883.eurprd01.prod.exchangelabs.com>
	<20161003184826.GA30939@openSUSE-i7.site>
	<CAHUNapR6wknC-T2BjivbKPnAywiEbpoE0pzfXp6xuPX34siP9A@mail.gmail.com>
	<CAMKF1srfOo=CJqKTEbXnheCk3fhDCBtAb5BMjm3EkR3Q-ZBuxA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1srfOo=CJqKTEbXnheCk3fhDCBtAb5BMjm3EkR3Q-ZBuxA@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi] taskhash mismatch
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
X-List-Received-Date: Tue, 04 Oct 2016 14:18:47 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

> On Oct 3, 2016 1:39 PM, "Trevor Woerner" <twoerner@gmail.com> wrote:
> > Odd... even with this patch I'm still seeing sporadic failures :-(

On Mon 2016-10-03 @ 02:35:22 PM, Khem Raj wrote:
> I guess you need to look at sognatures and see why its changing.

Actually, it's not that sporadic, simply doing:

	$ bitbake -c clean core-image-minimal
	$ bitbake core-image-minimal

shows the taskhash mismatch error repeatedly:

	core-image-minimal-1.0-r0 do_image_rpi_sdimg: Taskhash mismatch 536a3bcf4ac29225841c369636b533ff versus 8fadff5d0ef51aa648ed359d5dd7f944

Or I could just perform clean builds in succession.

The reported hashes are always the same: from 536a3bc... to 8fadff5... This
mismatch happens _during_ the build, not between two subsequent builds.

I'm not sure how to compare hashes, every subsequent build produces the same
two hashes. The build always ends with:

	tmp-glibc/stamps/raspberrypi2-oe-linux-gnueabi/core-image-minimal/1.0-r0.do_image_rpi_sdimg.8fadff5d0ef51aa648ed359d5dd7f944
	tmp-glibc/stamps/raspberrypi2-oe-linux-gnueabi/core-image-minimal/1.0-r0.do_image_rpi_sdimg.sigdata.8fadff5d0ef51aa648ed359d5dd7f944

so a "bitbake-diffsigs -t ..." will always be blank.

