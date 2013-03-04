Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f42.google.com (mail-vb0-f42.google.com
	[209.85.212.42]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id CFD83E01485
	for <yocto@yoctoproject.org>; Mon,  4 Mar 2013 09:16:55 -0800 (PST)
Received: by mail-vb0-f42.google.com with SMTP id ff1so974897vbb.15
	for <yocto@yoctoproject.org>; Mon, 04 Mar 2013 09:16:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=YhvV/nEPoFbPLFtKz6QL27E7RB0pgi3TVWnaQtz/hzc=;
	b=mUxx5SLZ5cu+gGPiSQE3FPDqg1JzR4W9Y/j1ItnKQYDsLfnvBEIf52R4I8ohArdz7/
	RroxPKkbln3oak5N2ll4PeGDaTn4qPBxzWIKp1cJphwUTQSaOcEC26gV0gwExWZRC2LH
	v+7fe5FDnvc/U4nnvE70rka8IqKLOtZ7dmpf7OcBKs99DGaFS+jcifOz5cTDw0/rQONu
	HicXhmvS3Yb8Wbe6wo10ARyftrz+osYVYYSn1cP3/V6ZbAFqG0wKZy6XjnEL1LnGUgOe
	FKjoUndwPEtBohFUjFg3nUn+bZXvtMTL7bJgREKheS0gAcHSOqPb2iQ+GeRpfgVBMeHF
	8kUg==
X-Received: by 10.220.156.75 with SMTP id v11mr8009971vcw.1.1362417414533;
	Mon, 04 Mar 2013 09:16:54 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.219.195 with HTTP; Mon, 4 Mar 2013 09:16:34 -0800 (PST)
In-Reply-To: <CAP9ODKozO-vpHdqDWxPMnYaaCt6eZUy_EjoEfAeDObdSjKj2_g@mail.gmail.com>
References: <1362407704.29587.39.camel@ted>
	<CAP9ODKozO-vpHdqDWxPMnYaaCt6eZUy_EjoEfAeDObdSjKj2_g@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 4 Mar 2013 17:16:34 +0000
Message-ID: <CAJTo0LZqk7pB4PJhumn827PNQ5-vqr8mve9Kc1Kr4ra-K+3iVA@mail.gmail.com>
To: Otavio Salvador <otavio@ossystems.com.br>
X-Gm-Message-State: ALoCoQlJAGOEC5v0fcIzANb0QWU0SLPBNWG4JCdilIWlJPVn5WvGOy23C0fmST0fyg0QeIg6ZKdj
Cc: yocto <yocto@yoctoproject.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Feature Completion Deadline for 1.4 looming
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
X-List-Received-Date: Mon, 04 Mar 2013 17:16:56 -0000
Content-Type: text/plain; charset=UTF-8

On 4 March 2013 17:00, Otavio Salvador <otavio@ossystems.com.br> wrote:
> The systemd integration? Will it be  reworked so we have an upgrade path?

As discussed on yocto@ over the weekend I'm currently working on a
branch that supports simultaneous sysvinit and systemd support.  I
hoped to have it for review by now, but we had a family illness last
week so I wasn't working fulltime.

I'm still holding the view that init scripts belong in the daemon
package, with weaked dependencies and checks on postinst, as the
logical conclusion of PN-systemd packages is to also create PN-sysv
packages, and that's a serious upgrade path concern.

Ross

