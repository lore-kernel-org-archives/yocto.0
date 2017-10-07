Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2CEFE00C82; Sat,  7 Oct 2017 10:31:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f173.google.com (mail-pf0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AA5BE008A4
	for <yocto@yoctoproject.org>; Sat,  7 Oct 2017 10:31:12 -0700 (PDT)
Received: by mail-pf0-f173.google.com with SMTP id n73so4257235pfg.10
	for <yocto@yoctoproject.org>; Sat, 07 Oct 2017 10:31:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=yJJ9DKtIHG60O5/MGTPMXglGXFJEX1LNDIleogzmOBw=;
	b=GEnv2tkxw9rE49dq/1x84CNjIABZ6SZpGSf6YV6Dw40k5LQUtFxQ6GlX83bPHTOGWc
	OB1rvDvHGDbHGUHtqwS6SZeJEGKTCrUNbnHZUocV/1eIAb8kVESzngenJaCzvxrX+v64
	ETQVoPl8zQ5wS+TkvBIa8bJBBnNr3/Q9+otSx+Gfwv2NBfWUTF9dWCorx5bHM6+IgmnJ
	5h61oH5Z/UPCB6dS4LnKs0CDWCoU73JFGwrGZnrCBEZV3OecS4Y8RKvDZeam2m9fdaRE
	Mh6a1skMDBavmKAHodChwz/TuMZ8tsJ1P9SvaRj9p35SskOmy01yFcI1as3BsaqKyqTf
	4OVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=yJJ9DKtIHG60O5/MGTPMXglGXFJEX1LNDIleogzmOBw=;
	b=moJbr6smID2XmOF7eMyhFSvOqffWP14Ij44M+v8gYuJTi9qsrs/tO13jsfEIZ4KX6i
	D+GuGM8sQad0elgxbUZAaBXRAvLEy5MnZLwgIcKgfQMzCAZbGlh8cpl0VM/Gnj36YOJH
	jW1fAhS+NXx8QWHDVEEHzbVo15TtP5QYNDldHjhk5FxioNIhWba8mk7E7SGP3vZPgasx
	/3vECZPIvtBlqVSuGtPimOqcLhA/eeirGlbIU7xo/j5ifrwVSSizaTco1lK2e7TEOTTq
	HJoUbjSdlZbf+2Rj26hVKFKktucJueBh3y+tO3IJnRwYSrGCLX2DstrZ7ZQcfRRbpr+K
	aS/w==
X-Gm-Message-State: AMCzsaU7oPl9AH1vUQu9v0R2839YAXL0IIQF26h0UQJ0bOi3uzeorefG
	ppYlm2KXpupFrMYgHRL2y/enE8+sn3oi3byq+Qc=
X-Google-Smtp-Source: AOwi7QBQliSFJsoeWCg9XqJHQci9yIuG/zirc5aktqK+yRWY+lU07CoManla5ql0uNgMuCVEW5zovoI6fECTAgSUWt4=
X-Received: by 10.99.181.68 with SMTP id u4mr5288293pgo.317.1507397472492;
	Sat, 07 Oct 2017 10:31:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.135.23 with HTTP; Sat, 7 Oct 2017 10:30:41 -0700 (PDT)
In-Reply-To: <5F898581-28EB-49A4-ABE1-0FFD67417094@korgrd.com>
References: <995935C6-A0F6-45AE-8526-D1AFE72B3932@korgrd.com>
	<CAMKF1sr-0KzRp5gao6Ze_FgMxx1sGMnnAN=MhU9dZKgHZDiXcQ@mail.gmail.com>
	<D0360C9B-BCE0-4335-B0DC-5C43DEB92463@korgrd.com>
	<CAMKF1spsgUEMnGTht1z2AO6moLSYuid0ZY2BednYR4pnp5bTvA@mail.gmail.com>
	<E3B6A24B-9451-416D-A59E-B66326392FAE@korgrd.com>
	<5F898581-28EB-49A4-ABE1-0FFD67417094@korgrd.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 7 Oct 2017 10:30:41 -0700
Message-ID: <CAMKF1srySRqOLkYbBL+0GL2rXhY=L3jqY3j-ZcnZW8GZcf9PYQ@mail.gmail.com>
To: Bill Jenkins <bill@korgrd.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberry-pi] needing newer or patched version of g++
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
X-List-Received-Date: Sat, 07 Oct 2017 17:31:13 -0000
Content-Type: text/plain; charset="UTF-8"

On Sat, Oct 7, 2017 at 9:38 AM, Bill Jenkins <bill@korgrd.com> wrote:
>
>> On Sep 15, 2017, at 8:02 AM, Bill Jenkins <bill@korgrd.com> wrote:
>>
>>
>>> On Sep 15, 2017, at 7:43 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>>
>>> On Fri, Sep 15, 2017 at 7:35 AM, Bill Jenkins <bill@korgrd.com> wrote:
>>>>
>>>>> On Sep 15, 2017, at 6:54 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>>>>
>>>>> On Thu, Sep 14, 2017 at 10:14 PM, Bill Jenkins <bill@korgrd.com> wrote:
>>>>>> After creating an SDK for a 32-bit Raspberry Pi3 target, I ran into the following compiler error when
>>>>>> compiling an application using the SDK:
>>>>>>
>>>>>> internal compiler error: Max. number of generated reload insns per insn is achieved (90)
>>>>>>
>>>>>> It turns out that a patch was submitted for g++ early last year for the above problem,
>>>>>
>>>>> We need to backport the patch to 6.3.0 and regenerate SDK. If you can
>>>>> point to patch that will be helpful.
>>>>
>>>> Thanks Khem, here's a link to the commit:
>>>>
>>>> https://github.com/gcc-mirror/gcc/commit/4fe01ba94e99e792ebe9da2ccb3b071aa1bac388#diff-af18d9175d034b2b3726f1ddc05fae55
>>>>
>>>
>>> OK and which release are you on ?
>>
>> I've been building in the pyro branch. DISTRO_VERSION reports 2.3.2.
>
> I hadn't heard any news on this. Is there any more information required?
> Will it be possible to backport that patch to gcc 6.3.0?
>

Posted now here
https://patchwork.openembedded.org/patch/144754/

