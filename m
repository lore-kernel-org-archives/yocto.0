Return-Path: <javiroman@kernel-labs.org>
Received: from paris.hostgo.com (unknown [64.71.164.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14621E01560
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 05:38:11 -0700 (PDT)
Received: from mail-pd0-f174.google.com ([209.85.192.174]:38028)
	by paris.hostgo.com with esmtpsa (TLSv1:RC4-SHA:128) (Exim 4.80.1)
	(envelope-from <javiroman@kernel-labs.org>) id 1UmkJV-0004ja-L2
	for yocto@yoctoproject.org; Wed, 12 Jun 2013 08:38:09 -0400
Received: by mail-pd0-f174.google.com with SMTP id 10so8831794pdc.33
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 05:38:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=6KW75uB2xaFJzKeYsWccDH7j8EVJXwu3p/Vpu39H9T8=;
	b=n9cs/gz8LEctYOAjie+yQY072UiSOwcAPzGvJ9lvj5UnwKhxQcu7s6tChMAHpGfWOf
	tXyXZ5q9t0tII0jk5SzRcyZP/KSZxOc/fr7mgN39NagSKRe/KJfKy8iBn0S/jG7MCtQz
	rj105qYa0/CJCs6TgxsIr+VHONDZJEYZa7SzhoA4W+9X0VgPoTAiAqn/FMhX5q4dvHeh
	/7oVAKGG1FHWGufNGb6wax9Kc0DN3HqNR7Ka+HNTQS2FYGO9trRa/7zcp53qEqpn7VS2
	Zc455G7D0E6nJ0oFRLsiiHYewS78mZg3sGVbWxYCwsih8AB5Au45fgJNiWpzT9wHNt1V
	5DVw==
X-Received: by 10.66.251.65 with SMTP id zi1mr24143170pac.200.1371040690243;
	Wed, 12 Jun 2013 05:38:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.68.252.134 with HTTP; Wed, 12 Jun 2013 05:37:30 -0700 (PDT)
In-Reply-To: <1494443.7oZTxQ4oFI@helios>
References: <CACWQdqCvEU3x0ctvUUrMhCAcoxnU0=SpVuW4E7Zo-ret9vidcA@mail.gmail.com>
	<51B732EF.9080902@windriver.com>
	<CACWQdqC6UwX7jYgxp-aRE4pUBz3G=npAAyBRuv3OJQQ_9Y4X_w@mail.gmail.com>
	<1494443.7oZTxQ4oFI@helios>
From: Javi Roman <javiroman@kernel-labs.org>
Date: Wed, 12 Jun 2013 14:37:30 +0200
Message-ID: <CACWQdqBr9H12g+CTG_yz9zuwgcvRyy1fz=vBxcPXTPQEa5oKEg@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - paris.hostgo.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - kernel-labs.org
X-Get-Message-Sender-Via: paris.hostgo.com: authenticated_id:
	javiroman@kernel-labs.org
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: yocto@yoctoproject.org
Subject: Re: Custom kernel in Yocto/dylan branch.
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
X-List-Received-Date: Wed, 12 Jun 2013 12:38:12 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi!

Thank you for your help.

Finally I've had to change the meta/classes/kernel.bbclass in order to
fix the copy of defconfig to .config:

-  if [ -f "${WORKDIR}/defconfig" ] && [ ! -f "${B}/.config" ]; then
+ if [ -f "${WORKDIR}/defconfig" ]; then
                cp "${WORKDIR}/defconfig" "${B}/.config"
fi

I don't know the exact problem, and I'm trying to find out it.

Cheers.

Javi Roman


On Tue, Jun 11, 2013 at 5:34 PM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> On Tuesday 11 June 2013 16:47:53 Javi Roman wrote:
>> With
>>
>> SRC_URI_append = "file://defconfig"
>
> Does your actual recipe have a leading space in the value? _append won't add
> this for you so you have to do it explicitly.
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

