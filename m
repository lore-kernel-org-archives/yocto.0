Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 963CEE00BAA; Fri, 24 May 2019 01:42:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f174.google.com (mail-it1-f174.google.com
	[209.85.166.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E69AE00B5F
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 01:42:16 -0700 (PDT)
Received: by mail-it1-f174.google.com with SMTP id e184so12669446ite.1
	for <yocto@yoctoproject.org>; Fri, 24 May 2019 01:42:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=D9vNbUQewXsu1aOhTVUNq7/dY9CZuDmM+Y/68+VBjhs=;
	b=WacRLvVvk0VSvrOnyh5g6G5g3B55QvyD5sQDGV8wsI3cvsK0pBEKihBMyKcvK1qW9Z
	o4K3dHXz7TXxvoT9AeD0t8pB5dXxGaSBoR0aVCkePghFEBu6iYPwiaZoNrgJzc+0MlTx
	pYyphalZPjBBf4/24YhkPadiq64DylLxYNDkZvrnkpv/mP4+GheronE7W7Y/mvGN4f2y
	jYQNwfIQH5Kb9fQBB4CPoI6lqDjGEkSfgt1ghmIz3iG15x+hGUc0ox7VRtaEdd4qoM32
	BOJwL/+JZTXMHO5HAXeQ2JoMQBQkLL2KFvnWIygSKToeT2B5PY+pLFa1lCFAPy1AnCg4
	RCqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=D9vNbUQewXsu1aOhTVUNq7/dY9CZuDmM+Y/68+VBjhs=;
	b=Hz9hGfvghVM+UhC92Umgg+SwxCkGPjhsz+AL+joTnWqHtKLQpaN802jr7M/wRXgjkx
	o+ZAJXVcQ71jc/wlCy5kzk8D+aV6LkVp0bwVNJmdEqx3uLzYQjxhQ3so+kqLD9B12Gbk
	XOOZK6BOqFPBa8wItcf+8HmXP481tMBs4rPem6cl2WmdUXbvRy9ZnNNKM1UmRNBrByie
	zoGRwu937kcm1nQj/4LIfKecPhyPpn2zFUA6n1aQP7uggR03IqZyGBmhBuPs7iJIxnbf
	bH4sf0+me3cem3JwzZzb7dmtlsE4fNxJggHswvxRd8JdA2SttSOS6TZlz6Ep3qzjCpow
	i9Cw==
X-Gm-Message-State: APjAAAU1hYY44azpN80ZNoqPS7QBRy8BbVS0ch+WdaGqhemKIyDWtJLi
	JLmnJF521ADao/5Jza+XoIuifCe/WHZKP8JScSrpog==
X-Google-Smtp-Source: APXvYqz4xm5yRFEQP3g81eCvjfqXtK/DLxunXD86/xIQ4Pg6dvkZsuI6Rdu49m5QPug8OtuLjGdFdsRZRXs7PQ1FE6A=
X-Received: by 2002:a24:19cd:: with SMTP id b196mr17586334itb.74.1558687336502;
	Fri, 24 May 2019 01:42:16 -0700 (PDT)
MIME-Version: 1.0
References: <CANGFfGa=qMdrWzo-Lxs-tb=6q3XH7aqXVrOd7JdC3G9Yk3Lp=g@mail.gmail.com>
	<CANGFfGYLEXR49NvsQUuDawFoGDYiDzGPVaqLiaN=vZzSbdtsnQ@mail.gmail.com>
In-Reply-To: <CANGFfGYLEXR49NvsQUuDawFoGDYiDzGPVaqLiaN=vZzSbdtsnQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 24 May 2019 09:42:05 +0100
Message-ID: <CAJTo0LZhzU62AeFwbBsO4bqLCzMgBHYPvRKzMqa5ozT1eJnuGA@mail.gmail.com>
To: virendra kumar thakur <coolveer07@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: /usr/share/common-license package/recipeinfo contains GPLv3 info
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
X-List-Received-Date: Fri, 24 May 2019 08:42:17 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, 23 May 2019 at 10:43, virendra kumar thakur
<coolveer07@gmail.com> wrote:
> But I can see in rootfs/usr/share/common-license/package/libgcrypt-lic/recipeinfo
>
> LICENSE: GPLV2+ &LGPLV2.1+ &GPLV3+
> PR: r0
> PV : 1.8.4

At a guess, because the libgcrypt recipe is:

LICENSE = "GPLv2+ & LGPLv2.1+ & GPLv3+"

Whereas libgcrypt itself is:

LICENSE_${PN} = "LGPLv2.1+"

That's a bit of a meta-question: what license is a license package
that only contains license texts?

Ross

