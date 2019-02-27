Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04AECE00D13; Wed, 27 Feb 2019 10:35:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.53 listed in list.dnswl.org]
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
	[209.85.166.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DD1D0E00AB0
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 10:35:21 -0800 (PST)
Received: by mail-io1-f53.google.com with SMTP id x4so14435515ion.2
	for <yocto@yoctoproject.org>; Wed, 27 Feb 2019 10:35:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=OYjXabzlBdWnUdjM5cBrfd4jSTZga4g25nH49mRr2N8=;
	b=ALUvv5aJkcFZdoyR0Fhbnj2aiI9w3V3+m9xx5EPxl/qxONfopIHfYySjTDowygfcdj
	Z+agaXeIGcyLsE3/2mpTSI/O+e4Ge3o8T+cV92UhUlsukAJTVc4DlnKaURYvjSMYz7DD
	EaBrOj82oVrUEhXmYqYHDDIfeneLJcciU/J+SUC0pybxK5u5dFLtKBIsYHzrxAq8M5Hq
	s35ihd4KJsWgX4cI4ljq3YqpgVVoxr+rrXc2prgFrTqdj6iQyBaX3q5HLxRTGBhQbgQv
	suAMhNcPfCCQzyIKhfg8tN1O+K55yRpqZbo0SPajeSfTmUsR87Mzb/o+M9l/t9ybROgr
	uhyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=OYjXabzlBdWnUdjM5cBrfd4jSTZga4g25nH49mRr2N8=;
	b=ZgtmteX7Qm6VbMjV3P2KRIpzi8uviUvGqZCU4bsDSX6o8Kv/vrzVVOpyHV1vI1qWhW
	aUR3qhABcWsD/fS3aDiOYBKLy86/Vj9u/SyXkm3QIbiSZj7PENZVoMz1leL4gxxI6rTS
	zc9pYVg6YBHveiwlx2VLLrtJ83B16K5mb1dweZ/shURClribYFjtPAreTKtioyuv6DH1
	2eQuzE2/lsJGGXMm8atTe4yW0HabN1PcxppLk4tdBeQgi2eopOwhK/dJWYTClaSszZ3l
	RkO+NPZG9I7TLFGLNkqOVCd/6whlW//GuuMEQ1LzyXpLI+Yv7uxCJ8odFfbt/RdjNSUl
	q55Q==
X-Gm-Message-State: APjAAAXplmfU1+biP7libkFeeJSfldfr1DH00g0mWAEyN0ALDHlugH0/
	2gBPG/UrnYQkcPlkO6NfcQ94irbIDrdXuS01lw93Xg==
X-Google-Smtp-Source: APXvYqyUMKTaOQFq/d629OvSDKejzT7/lkdw+nSRfY7texgTYHvI8HeomOiaQDL1f2uPxg1qzkrC6SmIO7TJ+fVrW+s=
X-Received: by 2002:a6b:ee1a:: with SMTP id i26mr2727023ioh.201.1551292521322; 
	Wed, 27 Feb 2019 10:35:21 -0800 (PST)
MIME-Version: 1.0
References: <63908e27-9243-16f9-aa65-e0c0d3e23af1@innodelec.ch>
	<20190227170614.GV12046@bill-the-cat>
	<a4468f8b-7d51-75b6-d5cc-f40d11d9dc9b@windriver.com>
	<CAJTo0LbJUurHkyTz1EuOHnxkYK1MOX8MxUXzzSmPFZBqd_=qcQ@mail.gmail.com>
	<20190227175814.GW12046@bill-the-cat>
In-Reply-To: <20190227175814.GW12046@bill-the-cat>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 27 Feb 2019 18:35:10 +0000
Message-ID: <CAJTo0Lboemkg2+rxxBqgj7K1LLQGEioDqsJUQx1AtCzMgrGHrg@mail.gmail.com>
To: Tom Rini <trini@konsulko.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Removing busybox
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
X-List-Received-Date: Wed, 27 Feb 2019 18:35:23 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, 27 Feb 2019 at 17:58, Tom Rini <trini@konsulko.com> wrote:
> I'm not sure we can blacklist busybox from the build at this time
> (hddimg requires initramfs that requires busybox) but instead only force
> remove it from the image and ensure it still builds.

Don't build an image with a initramfs?

