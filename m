Return-Path: <raj.khem@gmail.com>
Received: from mail-lpp01m010-f48.google.com (mail-lpp01m010-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B43C7E013A7
	for <yocto@yoctoproject.org>; Fri,  9 Mar 2012 08:45:47 -0800 (PST)
Received: by lagu2 with SMTP id u2so2590033lag.35
	for <yocto@yoctoproject.org>; Fri, 09 Mar 2012 08:45:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=8kNZqK5/8uiGIc6Kdx62QVCvsVZziK8LpUFjYSESvWQ=;
	b=A/0hSXSUOlK2CaifEG/Nm/9kA6ac+6B5wMh1pqLtuzXGH2c17u/fXhLU4p+6HH8nKJ
	jgzOSEaCOUDcGrvcWiew3tgR16tQ6UTIAjPEYeqA7qWRVtiEURTE/tuKQGTcNjArgmzB
	i99qtTfRTAXH9AMgwijOFCezkz5JBcybItautKKQw8GdzLDh396CAVlfUVqDBkUUhnkz
	kh+l3nlgzVH8GxvCCttGVw81kJCkNumMvTRclt15O9YtT6UQtvDMKwaNP6nxrDzAk/wq
	/YmlyvYPrMag8pIZuC/4yvPbgkz8x3RjVOYBjhRot8b+dssOG3WoabzsenefHIH1EVDg
	hfBA==
Received: by 10.112.29.200 with SMTP id m8mr1080269lbh.44.1331311546544; Fri,
	09 Mar 2012 08:45:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.27.109 with HTTP; Fri, 9 Mar 2012 08:45:16 -0800 (PST)
In-Reply-To: <4F5A257D.3000508@linux.intel.com>
References: <4F5A1F48.4040601@linux.intel.com>
	<CAMKF1sp+rEg4CRbRjyRTOtHaFLnxEKpqk++F5pE1xei-Tejnaw@mail.gmail.com>
	<4F5A257D.3000508@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 9 Mar 2012 08:45:16 -0800
Message-ID: <CAMKF1sqcWquNrzz-1Q5bdYx7G9M7y-GqQZgpuA1-0RygSyWSRw@mail.gmail.com>
To: John Toomey <john.toomey@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: issue building iputils with uclibc
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 09 Mar 2012 16:45:48 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Mar 9, 2012 at 7:45 AM, John Toomey <john.toomey@linux.intel.com> wrote:
>
> Anything else I can try?
>

Do you have UCLIBC_HAS_RESOLVER_SUPPORT=y
in uclibc .config ?

