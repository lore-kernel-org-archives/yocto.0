Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5EE6E00AC5; Wed,  3 Oct 2018 01:56:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com
	[209.85.210.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CFC0E0095C
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2018 01:56:23 -0700 (PDT)
Received: by mail-ot1-f45.google.com with SMTP id h26-v6so4779325otl.9
	for <yocto@yoctoproject.org>; Wed, 03 Oct 2018 01:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=ti2bk5zb7/rtZsQOEYMWP0aaOFfN+mIDX89U9mZOLTY=;
	b=d4CiWZgTmMoRgaeOw4G3U14bRMTDEI9wa3CoYAfhx5WbYVtVF0jXjwVcvzIdNK35ea
	s/q0l0hZev+zXTRcWzDEb6aTDWalIRXDSaokYnosUSO/6zJZjWIUlGB4pG96HbBfUutA
	b+XxD4Xpp/iusAnSBunEnAPUH2DsqK/SHbFvdpwNgnLeiqwoDHTZoPCy6/kGdZMT9SIv
	5N3lR0hu9etjA6Lo1nSHFXJ85i+TA9dOCy1RKLgW6T+8J/mpNCl2UGT7VR1EK+mkXLDY
	J3KFRizdHFLRcVgoJMko6RIvnUIOt4+pL0kb25jxHaa387hsyOSjA9nBIOd+Lj2qbq4F
	6WVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=ti2bk5zb7/rtZsQOEYMWP0aaOFfN+mIDX89U9mZOLTY=;
	b=EmxMUt89p5gmH9ZAs8C6x4ev+B0IDNdRPhsSktFgGRcDHs1bTW4e5ntSAv1YrxoYgE
	M/MvW+4NnTr+7MpxZffAHgbBmG9ReNSXj4fghdHA1Gx2rGCxdvvwD8VlYzfN7G4ti06j
	YLszuSa/MJyWNot7kbwKMs0fgysoGOj0WgKb4RazfKFA+UgX720DVqP/JOnAdGqfH1Hd
	ka6CkwBHdMVCQSwI1ySex4v1R3LQ7tqchYSMzQXVYaemrfpnOxeetQCVDGPpgwqTyBG8
	xY2AwZU4G80yQWCQhv8fg8vhnaICsVA2ScVKpU5Hk9T3u+CRVFKWSdsN7GkrJl+rLRNH
	ESUw==
X-Gm-Message-State: ABuFfognWwzJCPLTkSrnyRzqzC0MP2c0XYoOmdY5nJQshs3PLbBc3V5j
	IZRjdnHkEX/xFAp+9ggZp0PfpL9FZRfCm6iFDiD0NQ==
X-Google-Smtp-Source: ACcGV63ET81J+PDQMwGWJ1Si6463y0rvrl2fBQCPYKQHSajOKCUQ81zV0n5Ll+dOX5VfWG4YI0ex4egIiG8Y7ZZ8iNU=
X-Received: by 2002:a9d:70c6:: with SMTP id w6-v6mr234378otj.147.1538556982895;
	Wed, 03 Oct 2018 01:56:22 -0700 (PDT)
MIME-Version: 1.0
References: <CY1PR01MB185241745662704F7F200C5E8FE80@CY1PR01MB1852.prod.exchangelabs.com>
	<a2cbdc03-c196-869f-fc8f-520ad7d508df@intel.com>
In-Reply-To: <a2cbdc03-c196-869f-fc8f-520ad7d508df@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 3 Oct 2018 09:56:11 +0100
Message-ID: <CAJTo0LYicUR_bntp_-YEBckng0OUWNa=ztHnVvtDoKcpofQL8g@mail.gmail.com>
To: lewis.muhlenkamp@stryker.com
Cc: meta-intel@yoctoproject.org, Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [meta-intel] ac_nonexistent.h error in do_configure
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
X-List-Received-Date: Wed, 03 Oct 2018 08:56:24 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, 3 Oct 2018 at 09:40, Anuj Mittal <anuj.mittal@intel.com> wrote:
> This check is supposed to fail. This is a sanity test, that header isn't
> supposed to exist and autoconf expects this compilation error. I don't
> think this is the actual point of failure.

What would be useful is the output of 'bitbake core-image-x11', and if
that specifies a task that failed, the complete log for that task (in
tmp/work).

Ross

