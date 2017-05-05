Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F24BCE0095F; Fri,  5 May 2017 06:15:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 935CDE007EE
	for <yocto@yoctoproject.org>; Fri,  5 May 2017 06:15:09 -0700 (PDT)
Received: by mail-wm0-f43.google.com with SMTP id u65so23564450wmu.1
	for <yocto@yoctoproject.org>; Fri, 05 May 2017 06:15:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GSAEZMQA6VpPRS2YX/54lS6Idm0UjaQuwfrp1+/yh7g=;
	b=e1096bq5IoJpJxvROHme/WlYZTVshV8L9Gk/Hd1K3e24XWKgtzfsY/cUGRs6Z7Z/vz
	ZmB3zPm3mvvlXFi7IPfGLbxuFnzUPn6zYHjJXIaPGTc3UZaRk/oAaV8piO7+OxrhJcGV
	8ANXCLTJHzPRhHQzpBFzhoR3XukrMBz3qJ5H8pMi/EzbITIvbbGmDhB8nq4dP45hXFoo
	1Tijh/DsrY2podi+5aq5d1S8olWyd8YOpkj8Qg4y0s3SfwIfcU013aSYNvbXIYXuuYDd
	LBzXRgXqywPBlIX2bE0/Hmkagl73fhZ0FRiNeuhJdjW2p5PFG/L0bkYGvwqyI56jxECM
	ZjkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GSAEZMQA6VpPRS2YX/54lS6Idm0UjaQuwfrp1+/yh7g=;
	b=lCFzmDOXj1Kff5XmaLn0WFdU4ul7B5wR0WZH+a9zuhDR3bZn1ZFcoDGi+8AWESxbRp
	efhJdBUzbGJNvQVsAPRU4xPEqQGzaafFj99U7E3mHcxleMkq5dTFcsrffQRUUy0KaoeS
	eoKVWSGpBIHW29HUNQ+oB4jKosHBYrrLzJJ/fy/GR38HcppVSGyWrMUzpJDDe1KtbodU
	zxyzKS2cbewTnj9B0Wy5xuz3zjSKz2miqz6LIaZJqhPSZA/31DwC/XWGEXDqognzfmVH
	zwGmBV/WNGJxvFu8cd7QP5/Z557TbldJZia2CGwS9ydzklZoZpm74bl8OJOtO8XRS0+N
	QP2A==
X-Gm-Message-State: AN3rC/6QCgFDYGVmZkaFkF8Z7rTCEztB+X3nTw13McsuVo03SLEhB6Y0
	mNbtOAMixlIpXGoWtQ4Xo+zsmxwi1Q==
X-Received: by 10.80.151.5 with SMTP id c5mr34013635edb.30.1493990108488; Fri,
	05 May 2017 06:15:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.180.141 with HTTP; Fri, 5 May 2017 06:14:37 -0700 (PDT)
In-Reply-To: <1493989984.4241.308.camel@intel.com>
References: <CADG2P4U7wOSsHwB0Wt3nzejWvRi5h2TOLFB9TcrK+b7pNYje-A@mail.gmail.com>
	<CAMKF1sp_n3Eaff8wGcbyXM0=N3bf7UGfUNnHhB7ZPDEDq+t9ug@mail.gmail.com>
	<1493989984.4241.308.camel@intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 5 May 2017 09:14:37 -0400
Message-ID: <CAMKF1sqiZ0fC9PzGF9iROqnhdkvtZKQr0t5j8T=9omYFXJRczQ@mail.gmail.com>
To: Patrick Ohly <patrick.ohly@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Enabling tpm from meta-security for AGL
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
X-List-Received-Date: Fri, 05 May 2017 13:15:14 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, May 5, 2017 at 9:13 AM, Patrick Ohly <patrick.ohly@intel.com> wrote:
> On Fri, 2017-05-05 at 08:45 -0400, Khem Raj wrote:
>> Set
>>
>> SECURITY_CFLAGS = "${SECURITY_NO_PIE_CFLAGS}"
>
> But that's just a workaround, right? Ideally the build rules of
> tpm2.0-tools should be fixed to not need that.
>

yes it can be solved in components own build system

> --
> Best Regards, Patrick Ohly
>
> The content of this message is my personal opinion only and although
> I am an employee of Intel, the statements I make here in no way
> represent Intel's position on the issue, nor am I authorized to speak
> on behalf of Intel on this matter.
>
>
>

