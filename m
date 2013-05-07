Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f47.google.com (mail-vb0-f47.google.com
	[209.85.212.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B426CE0145C
	for <yocto@yoctoproject.org>; Tue,  7 May 2013 10:13:42 -0700 (PDT)
Received: by mail-vb0-f47.google.com with SMTP id x14so714226vbb.34
	for <yocto@yoctoproject.org>; Tue, 07 May 2013 10:13:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=EgW+VTdOuZdj4a2mh9yaYq9EsFU6xnaxoqI5SeHs6qA=;
	b=jatYMIGHuu2RdvvPUg+F2rvcot+U7fOVxGp6A66UwTr1darD76m2ZHFQG6aR4ObK8y
	dmRy19mInZ7PPkoR9ixjVJyCl2MN+pBmNpP13dOdI1huz2YvUmW4iehvCMrOArIM9aRO
	JH2QZgg/j/tBaZ8ri5TQuGcWSHT7zqrUH3u8xOuG4n3fWegGEHztbA18mUIyl2iUDVBc
	EJRjnvCkiiu98xcAjDUu5uKyDJnYCvtslRyW/u6hWf4CWB71zpR2ytxMVJZbzymecB47
	Kf1QMYBBax15EHY1cDaMLYN9q/Nd4ZXxLpW8a7Qs3t5kIkmSyPUvBjr/jcvz92VFrEJi
	uGwg==
X-Received: by 10.58.207.97 with SMTP id lv1mr1897291vec.39.1367946821844;
	Tue, 07 May 2013 10:13:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.221.8.3 with HTTP; Tue, 7 May 2013 10:13:20 -0700 (PDT)
In-Reply-To: <CAHUNapT--78aOf=eCava7w9VsHAD8fL3odbreW-6EATt6mujbA@mail.gmail.com>
References: <1367930701.27116.31.camel@ted>
	<CAHUNapT--78aOf=eCava7w9VsHAD8fL3odbreW-6EATt6mujbA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 7 May 2013 18:13:20 +0100
Message-ID: <CAJTo0LaUSyekgycP37-jZnHmgy1wOM-PfJ0yZQtMrSP_bUp8hg@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
X-Gm-Message-State: ALoCoQmBAgn0YntlZI41FElna7XqUvogRVqA/GpssxFGONuipPGQaOUUrog4F92mtp/DwufVRG9i
Cc: yocto <yocto@yoctoproject.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: Status Update
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
X-List-Received-Date: Tue, 07 May 2013 17:13:42 -0000
Content-Type: text/plain; charset=UTF-8

On 7 May 2013 17:29, Trevor Woerner <twoerner@gmail.com> wrote:
>> 1.3.2
>> =====
>>
>> I've merged a lot of queued changes that Ross prepared for 1.3.2 and
>> this is now undergoing testing.
>
> I have a patch for Danny to allow qemu-native of qemu-1.2.0 to compile
> on openSuSE 12.3 (which, apparently, is also affected by the same (or
> a similar) DSO linking change that affects fedora). Are the queued
> changes available somewhere so I can check this hasn't already been
> applied?

The merged changes are in the "danny" branch of the oe-core and poky,
and there's a ross/danny-next branch in openembedded-core-contrib that
is my staging area for submissions to danny.

Ross

