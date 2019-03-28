Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5EFCE00D14; Thu, 28 Mar 2019 05:43:45 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.53 listed in list.dnswl.org]
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
	[209.85.166.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E94CE00D12
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 05:43:44 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id b6so3170122iog.0
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 05:43:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=fPmX6jlbJqxa4ZJs3r/N2lvlx00xGHaAskDSq+5xjjQ=;
	b=tcrEcZnavVJnwU5ioJnPzVJdOpEQliBn769qndznvTSy0TXfkJpEq9dlI68cfmWwVj
	cxn6NeWCuWY55vsZhiIoVz/BHGj2UZUipEm31hR1snPsPq2N5jZZC4LgJ4HHQpLVneU4
	6kOopX34LXpQHBfqrh/x3hbRa74Fo3r0tAMoUKjGSRnfoXvdjI90nDk3VzIxVcRAlMKB
	ifPldA3vrc0Xk0C+HXnFNX1HzsyLBNOfSnqPUaOyFRqteNRzkt+e4VMrBLmAETp8S1To
	58CR7I/pda9/POdQEtrW4s2ynFj46qBFbqQ32rL8lJ6A8vmurSZfTx6zbPoKG1wy0qZQ
	v5EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=fPmX6jlbJqxa4ZJs3r/N2lvlx00xGHaAskDSq+5xjjQ=;
	b=BoU9tnBC4IU5ezwgq+aWX0gRjJO2DTqjDIzVu8ko781+wcSVLTECxo9NhGXbkr2bS0
	X0Aa9qAlCMfF+CRkf/XVB5nOlXNTKynIBtY2AKcpuySHUOgMJqMnpJcIJEJPIuanCvU6
	oCcCYdAmoOlgccMIygGwMQkjmKm/84/qEyRv7NhAfQMCh88qb2m3GUzFWrtDpc8kzDZa
	kpSHzXkSmS9/JpnZS1SCRxd/hvZNmFilA0WC168tY0l/KqeUIa/ZvAAoVWYqtdqIRcSm
	W0fH71gqvstufusn0Rg+/Wm3be0QfxUsBfkboHY0Hrv82pg6bkTBQIJRvZcQMkwgsnor
	hg4w==
X-Gm-Message-State: APjAAAXNshDq/EX1ERF2d0713Is9peZRViFkuGqpgPrcpBsEPy+t4TmD
	sLKb27nGi2puR83/Zc4D32/pNLcKW4MoRAVzYJE7cQ==
X-Google-Smtp-Source: APXvYqwoKfENesu9GEgKlPF5kJNJNwl3s58PRP2Wa/7ZeOvRyIU8jZp3vrsYFeVns5+K3qDZzK2EM7PrPqMyHq3jnQY=
X-Received: by 2002:a6b:3c05:: with SMTP id k5mr270753iob.270.1553777023910;
	Thu, 28 Mar 2019 05:43:43 -0700 (PDT)
MIME-Version: 1.0
References: <CAAx3WaAdc8r6O=Z=BmoC4g1Jmsf4vLj-mk_QgYxggBsMEEQ10w@mail.gmail.com>
	<CAJTo0LanMdOJG3tihWDhEFmjrSkWqmkxdfcn8B80HujvJDRFoA@mail.gmail.com>
	<CAAx3WaArZfEwL=nDUU6RigieGRf87asju3T_8k0=4+LARU9KAA@mail.gmail.com>
	<CAAx3WaDjt9+udJUr-3NqOm_pFtuOJnZqe3z6W2sCHU_n5zW6rg@mail.gmail.com>
In-Reply-To: <CAAx3WaDjt9+udJUr-3NqOm_pFtuOJnZqe3z6W2sCHU_n5zW6rg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 28 Mar 2019 12:43:32 +0000
Message-ID: <CAJTo0La18cZhFc9Wz1Scm6kdO9P-HLG7_=jXL_jEA-vXGV01nA@mail.gmail.com>
To: Gabriele Zampieri <gabbla.malist@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Trimming BOOST libraries installed
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
X-List-Received-Date: Thu, 28 Mar 2019 12:43:45 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, 28 Mar 2019 at 12:40, Gabriele Zampieri <gabbla.malist@gmail.com> wrote:
> So I just specify the dependencies in my recipes, and then remove IMAGE_INSTALL_append = " boost". Am I right?

Yes.  Your recipe that uses boost just needs DEPENDS=boost as a
build-dependency.  The linkage will be examined and the appropriate
runtime dependencies created for you.

Ross

