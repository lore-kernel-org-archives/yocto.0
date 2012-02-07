Return-Path: <autif.mlist@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3B1CE01353
	for <yocto@yoctoproject.org>; Tue,  7 Feb 2012 11:01:45 -0800 (PST)
Received: by pbcc11 with SMTP id c11so7780429pbc.35
	for <yocto@yoctoproject.org>; Tue, 07 Feb 2012 11:01:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=hAM2N06aY2RBw1+S7ovzt0Nbk8XK824VqDRwldOKwXI=;
	b=JXK3MiFLVp0ozlA8IQcUT/+fqZMY55jcgKdXEr9fLiN/xvujl1IEqRbK98rJByVbvm
	I+L04Hz21sLy7KjVxC5INGYK6G1tL+IWD8xCkFd8takS+lQzvC3xqAX0fRUelwU1z+UP
	cTbaMOS1ZUTh5Rzx27ljKZzapXXCShoq8bPcU=
MIME-Version: 1.0
Received: by 10.68.239.41 with SMTP id vp9mr61461753pbc.17.1328641305542; Tue,
	07 Feb 2012 11:01:45 -0800 (PST)
Received: by 10.68.218.10 with HTTP; Tue, 7 Feb 2012 11:01:45 -0800 (PST)
In-Reply-To: <4F307E25.2050206@windriver.com>
References: <CADzUK1+ATfTW6FAPGZ97WhstFm_hq-Msdbf9wQ6HG6gLtUjS8w@mail.gmail.com>
	<4F281BFB.9010701@windriver.com> <4F281CD1.70305@linux.intel.com>
	<CADzUK1+sAGYAPY=Pm6xsEFnqpj4T+8R6kDmrSrySiSgS00v-EQ@mail.gmail.com>
	<CADkTA4NuLPg3+vA-6QkxkVqkthc_bXcN1Cye5Yzhz65tOmUzHw@mail.gmail.com>
	<CADzUK1LO0gUd36X-N1hXQ49Bx7Lu+xW5u8VQT-waAtn1jM=6CQ@mail.gmail.com>
	<4F303708.1080501@windriver.com>
	<CADzUK1JdxZKK9XW86Lq_4K3p8ya+_jf07NK7VwDp2uMWh_6=hg@mail.gmail.com>
	<4F304D1C.6090802@windriver.com>
	<CADzUK1Lv4Ke9GN=R5Tjm0SVQcxpiHg3-ZwKDpNXYtFEcdH5mPQ@mail.gmail.com>
	<4F307C55.7090406@windriver.com> <4F307E25.2050206@windriver.com>
Date: Tue, 7 Feb 2012 14:01:45 -0500
Message-ID: <CADzUK1K9gPTgTsqsBkOTtcAu0pjoqAdYG=zRrAajE=6D5deicg@mail.gmail.com>
From: autif khan <autif.mlist@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>
Subject: Re: How do I patch the kernel before it is built?
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
X-List-Received-Date: Tue, 07 Feb 2012 19:01:45 -0000
Content-Type: text/plain; charset=ISO-8859-1

>>>>>>>>> R E C I P E
>>>>>>>>>
>>>>>>>>> autif@fpbm:~/data/yocto/poky-edison-6.0/meta-koko/recipes/linux$
>>>>>>>>> cat
>>>>>>>>> linux-yocto_3.0.bbappend
>>>>>>>>> FILESEXTRAPATHS_prepend := "${THISDIR}:"
>>>>>>>>> SRC_URI += " file://linux/drivers/hid/hid-core.c.diff \
>>>>>>>>> file://linux/drivers/hid/hid-ids.h.diff "
>>>>>>>>> PR = "r3"
>>>>>>>>> autif@fpbm:~/data/yocto/poky-edison-6.0/meta-koko/recipes/linux$

Fond the bug - it was a problem in the recipe

FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"

I was missing the ${PN} at the end.

Bruce - Thank you for all the help :-)

