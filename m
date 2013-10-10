Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f45.google.com (mail-vb0-f45.google.com
	[209.85.212.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40D9CE015ED
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 07:41:03 -0700 (PDT)
Received: by mail-vb0-f45.google.com with SMTP id e15so1668303vbg.18
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 07:41:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=aUPrR/SfJPJo9rsZG0WQbl1pdAOfNV/mYogfahDkYjU=;
	b=TAE+Z6hrsy1Y+CKEC0uFug8xbKroxBE1prbaDAZ9OmajNIDKx6gfe6fLzsMozDoGj3
	q82RO6ZnXf3MhPAbwp3eBnBZDgY2OaA1EwR7Hzx9DMl0Hq1H1fssb7zz6xj2csCl1LCc
	E4+d+xup0fyJxJT3ruSlv1etctPTyuPBOewqrnMPzc9ZJCUvDieedOpJlnmpG2fEiXf2
	WQFhdW658OmEOj8IrIjTe9kD38UX0Jlj1Vk8ALD7ZucqXMd8K0TK3KDL09Xu8g2+5qFX
	JG5GZrCvfZ2+dwmZctC1cBBi7ldb19AJnydJXqK3RKtRMjcCOBgm5XajD7HI0Zh7fzny
	MPCw==
X-Gm-Message-State: ALoCoQl+NWKWdHrfRTUVkFEISk9aGbX77RfaSgyUUSqq9GO59f2Sj43UcpPwhSDPyzxyOlCNQPiL
X-Received: by 10.221.47.193 with SMTP id ut1mr14297711vcb.8.1381416063086;
	Thu, 10 Oct 2013 07:41:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Thu, 10 Oct 2013 07:40:43 -0700 (PDT)
In-Reply-To: <CA+JN8xPBG_V4MMGxnQv49FC8qC3WJNwgOFKKvkqE73NnnFAWXA@mail.gmail.com>
References: <5255F1CF.8020203@gmail.com> <2034055.AmVRsnPTrY@helios>
	<CA+JN8xPBG_V4MMGxnQv49FC8qC3WJNwgOFKKvkqE73NnnFAWXA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 10 Oct 2013 15:40:43 +0100
Message-ID: <CAJTo0LaNxxcuLPtwoh-ryLObhp4sVV4ESj_VnUhx4-Q=y=ciRw@mail.gmail.com>
To: Seth Bollinger <seth.boll@gmail.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Recipes that update a shared file
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
X-List-Received-Date: Thu, 10 Oct 2013 14:41:06 -0000
Content-Type: text/plain; charset=UTF-8

On 10 October 2013 15:36, Seth Bollinger <seth.boll@gmail.com> wrote:
> pkg_postinst_${PN} () {
>     echo 127.0.0.1    ${MACHINE} >> /etc/hosts
> }

Yeah, that's broken.

> I've tried this in my recipe, and the file that I expect to be present in
> the rootfs is not there...not sure what I'm doing wrong.
> pkg_postinst_${PN} () {
>     echo test >> /etc/inittest2
> }

You need to use $D so that you're not attempting to write to the *host's* /etc:

echo test >> $D/etc/inittest2

In a postinst $D may be set, and if it is then the postinst is being
ran on the host at rootfs time, and points to where the rootfs is
being constructed.

Ross

