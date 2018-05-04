Return-Path: <ptsneves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0F20E00C50; Fri,  4 May 2018 05:42:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ptsneves[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f194.google.com (mail-wr0-f194.google.com
	[209.85.128.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C306E00C25
	for <yocto@yoctoproject.org>; Fri,  4 May 2018 05:42:45 -0700 (PDT)
Received: by mail-wr0-f194.google.com with SMTP id i14-v6so17785231wre.2
	for <yocto@yoctoproject.org>; Fri, 04 May 2018 05:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=7uPG1dX5PjOEnSGShwNn8rgtyEbHSM/W7igMQA1udhY=;
	b=pLOVz/NlrLnPzxKVOD2R9gzCYKNycNMfiIEhQGRE/gFsIC1YM5oYw4JgEOiK0DtTLX
	nDfmlFKLb3vJ+5rJdR37R0ENS5qyU+Emm4Zy43TlSYRkUG8qDLEI7Wdv/RXST0LJ5YMP
	AT5wimE7Lqf+mo8hQDm6DAiSBCEBQZu3Xb6MbluY9Y6yD4YuPwBrFf/P+QQ1sxgBNnEc
	dIct99Ch0031AMGsPSP4JUkWMhJuDU7KoKcbLa/sEzdq0zVDYltUaRHjQP7bJN00gV+k
	9tTWVmcAJjaI0ya02YVX1C4hvW5nZK7Xj6Uncu3wWcvsXn4EYg6Jg3vsWgrNeIwUfQp3
	KFgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=7uPG1dX5PjOEnSGShwNn8rgtyEbHSM/W7igMQA1udhY=;
	b=lGlJUL5RhIXSws8fCj5I4yzMFwKeaMvfHoJZRYkUv7dBMu+LlbSj14Jhgme5xW1ccb
	9sLKX5/q6aYEPvPP2EZV0UBShiIjbeZF9R8mLTO+Rbsbc2fQ13ldb3A73Ogzr56ECGfx
	OU3qzmORXpP0WAqSEB7KfXd/vht0VyWrwcUAqS5r05ClvDXz4M/R48gOlpWKn1+iFsDN
	WIFKBDsuiB1Dcznf57lw/PKv7mDrvfwytom+OOlPpGpzxVV0FOA2kcVrs/pzsnzBSTQD
	0pM1UUl71so+7apN2EnlopLuSlrdubR1pDNDXL2ivq4OK6qldQBL0w+EZyrBcdIJc2WL
	5xwg==
X-Gm-Message-State: ALQs6tDwKAOvmOAZeRUhUz2IUU/5rzKDDvDIQrN+ct+C4QJ6TitNYG3v
	RP+mMzUMi6pEoGgfSZvUC9zqO5TpfWO50e4caw==
X-Google-Smtp-Source: AB8JxZrmk88F6qyd+cXdd+Sk7d8a3dirjt/xsMIR6SuIFZ/fBOAjyHe2EwXMbpUphTIJ5IzDzQBQKMTHXIuDnl6bydM=
X-Received: by 2002:adf:a3d7:: with SMTP id
	m23-v6mr22632462wrb.209.1525437764960; 
	Fri, 04 May 2018 05:42:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.39.68 with HTTP; Fri, 4 May 2018 05:42:44 -0700 (PDT)
In-Reply-To: <70e7860b-5b9f-45c7-5436-73859b0d3706@linux.intel.com>
References: <CAJO0J4gxf0ahVGCoV64Y_Z_cGtw4OiakWkSLbu2u4WB_CHzehQ@mail.gmail.com>
	<70e7860b-5b9f-45c7-5436-73859b0d3706@linux.intel.com>
From: Paulo Neves <ptsneves@gmail.com>
Date: Fri, 4 May 2018 14:42:44 +0200
Message-ID: <CAJO0J4gz6SVhknSgPM0mGqpDR_vqsrdmNaHiXAfR4TbuxTu04Q@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: ROOTFS_RPM_DEBUG undocumented
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
X-List-Received-Date: Fri, 04 May 2018 12:42:47 -0000
Content-Type: text/plain; charset="UTF-8"

I will propose a patch with a default bb.debug, and always have the
verbose on dnf. Let's see how it affects the performance. I cannot
test this in a docker container because of the problems described
below:

In the mean time I found what was happening with my slow do_rootfs. I
was running bitbake with RPM packaging in a docker instance. It seems
there is a problem with RPM/dnf in bitbake where it is extremely slow
inside a docker container (1 file per second). After changing to IPK
packages everything went smoothly.

Others have had the same problem[1]. I will later report this to
openembedded mailing list as this effectively makes RPM unusable in a
container. I will also provide a Dockerfile to reproduce this problem.

[1] https://github.com/moby/moby/issues/23137#issuecomment-359097008

Paulo Neves

On Thu, May 3, 2018 at 3:03 PM, Alexander Kanavin
<alexander.kanavin@linux.intel.com> wrote:
> On 05/03/2018 01:42 PM, Paulo Neves wrote:
>>
>> # Add ROOTFS_RPM_DEBUG to the documentation;
>
>
> I'd rather get rid of it, the less variables the better :)
>
>> # Detect if we are running with debug output and enable the debugging
>> output. This is the most elegant solution but I do not know how to
>> detect if debug log level is turned on;
>
>
> I don't think you are meant to detect that; bitbake's debug level is not
> meant to affect what is being printed, but merely whether it's printed or
> discarded.
>
>> # Have dnf always print in verbose mode and print the output to
>> bb.debug instead of bb.note.
>
>
> I think this is the best solution actually.
>
>> I am happy to provide a patch upon decision or suggestions.
>
>
> Thank you :) Do measure the performance before and after as we don't want to
> introduce a significant slowdown here.
>
>
> Alex

