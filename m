Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 43764E003DB; Mon, 23 Jan 2017 12:24:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.175 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.175 listed in list.dnswl.org]
Received: from mail-io0-f175.google.com (mail-io0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DD45E0033D
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 12:24:47 -0800 (PST)
Received: by mail-io0-f175.google.com with SMTP id j18so119304571ioe.2
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 12:24:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=zJxhVow4F4FTStESt/iHb+qpQL41oieciwTdmdwVKsQ=;
	b=yARDBrCy6L82XVqg26hiKxegxp10k60ySoWEFrVDP2l01NlJ2Ev2Rg4sJ+fUEfBCuW
	jjQj85pGnGyWdf2dDkldra9j1K2LtIJTMYXw5i6CRa4a/m2YVvw4qSAb0L2iJNIViZA0
	5g2VEw81Gq5qBcMY9tbMM3Dc2DUU0CsT41EsC1eaHlgjy+lEBpSnu+OJSC9otqn8MxJp
	PPL14Jpm4haLnev/J9Pj7OOmmgvvYwRtUGzXmWekWF0fIG8nUC+QJ+vitQaTmtZyqTgR
	BDrxlTN+8ybohuObAgFbizf0wBI6lBEb7lA79/2vjDeWQWhsmwoxRyQi03s0UFqHRTTt
	8aHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=zJxhVow4F4FTStESt/iHb+qpQL41oieciwTdmdwVKsQ=;
	b=sdAyIb/2IjUs4Kr/xXEDobZ7lPdDiLC09ibFJ5ETYo+3dSLz6Qx/XqMBB50x2m2Dta
	elzQS89DAkL25X7V0ndZNbLBO50aMGN3NF0+VS++Ht4eaDiS0FYPMOvmRYC5GIzb+NB1
	SVCgsoiaMcaEZdPhq1EO9S1eLEXgecyESV4Mf1xsIutJXK4bnDQxQoG78xKhxrODJBkC
	jfwbTFctRhG5sMbu9s1c33tLN43VeYu1fllok1rAmS5gqs7fDQTnFkDExnhGBWWURvVx
	1jszLRVayvBTk/3cRs9+1D9/fQq1J7oXe6R4yclVWv/qjpIAlM/Q/0kJu4v8LCTne4fX
	LiAA==
X-Gm-Message-State: AIkVDXI6AdI/H8Io5vgBp45+hVCYhjig54j0XZFlEt9jzXTAbtIEY2msr6RD9KXAJvKlGW82
X-Received: by 10.107.150.10 with SMTP id y10mr24589581iod.221.1485203086867; 
	Mon, 23 Jan 2017 12:24:46 -0800 (PST)
Received: from pohly-mobl1 (p5DE8FC12.dip0.t-ipconnect.de. [93.232.252.18])
	by smtp.gmail.com with ESMTPSA id
	c21sm10113011iod.38.2017.01.23.12.24.44
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 23 Jan 2017 12:24:45 -0800 (PST)
Message-ID: <1485203083.20333.46.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Mon, 23 Jan 2017 21:24:43 +0100
In-Reply-To: <93665f38-8cee-4bd3-3b44-2a5030aa93dd@windriver.com>
References: <cover.d80eadf93cc834138baf753dee75bd75faefc003.1485180600.git-series.patrick.ohly@intel.com>
	<93665f38-8cee-4bd3-3b44-2a5030aa93dd@windriver.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-kernel-cache][PATCH 0/1] features: enable tpm
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
X-List-Received-Date: Mon, 23 Jan 2017 20:24:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2017-01-23 at 14:51 -0500, Bruce Ashfield wrote:
> On 01/23/2017 09:11 AM, Patrick Ohly wrote:
> > This was tested with the yocto-4.8 branch and linux-yocto 4.8.17 under
> > qemu with TPM provided by swtpm, but can and should also get merged
> > into the yocto-4.9 and master branches.
> >
> > The feature intentionally enables all current TPM drivers. A real
> > production kernel should be more selective.
> >
> 
> Looks good to me. I've staged the change and will send SRCREV
> updates later.
> 
> This missed a cc' to linux-yocto, but I noticed it regardless :D

Thanks ;-} I had checked the 00-README in the yocto-kernel-cache, but
couldn't find instructions on where and how to submit changes. Is that
documented somewhere?

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




