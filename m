Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59B59E00B4C; Mon, 16 Jun 2014 02:03:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.170 listed in list.dnswl.org]
Received: from mail-qc0-f170.google.com (mail-qc0-f170.google.com
	[209.85.216.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6C04E00AEE
	for <yocto@yoctoproject.org>; Mon, 16 Jun 2014 02:03:03 -0700 (PDT)
Received: by mail-qc0-f170.google.com with SMTP id l6so7520071qcy.29
	for <yocto@yoctoproject.org>; Mon, 16 Jun 2014 02:03:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=bKh9kqpVDAFQ4lGm1svzKd/sgsOqH5VP8MfdnfA1+iM=;
	b=Xv76FAOYXuzWDjwxIZMJewEhFpkAl/jYcPlZT59LhKKIOkSIezBsNklSXzgms74hiT
	xyfN64FSEqkUvUyagi1NWIHY3Pd8whtn+E1BlQ2E65FGvlQY54KlNaEsY/Ve9WJQO77A
	FPtHtaJhCaNhOJO9qg3bI6rWjkUpkiXz50aAOku4Iw00/oQxMTB3rCPm3YA48vNblYAs
	sEqJtjKo8RixhZbmM2cw2oLMbVrGLPAmwfyFva5IFWns1x92oCw+gH+5Z7EmNcD9L2Ie
	pzntct5bTcwoNgCiy41dPaq3Ya063Pidgh5mW/6GjZ/6AcjiPKoCEn127DB6irf0zyYi
	SUlg==
X-Gm-Message-State: ALoCoQlqTUaDd1S3Hnqkb1mw2Kb7fMLaypsQYPzHbxZW2UBaidbF+kRqPJSPtis+tbSiuafGcyeP
X-Received: by 10.140.48.161 with SMTP id o30mr23133994qga.68.1402909382723;
	Mon, 16 Jun 2014 02:03:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.91.138 with HTTP; Mon, 16 Jun 2014 02:02:42 -0700 (PDT)
In-Reply-To: <CAF_dkJCKsqqhrZiWXkirc018mX+jJ2fs-Gdyc9SN2tsm=Q71dw@mail.gmail.com>
References: <CAF_dkJCKsqqhrZiWXkirc018mX+jJ2fs-Gdyc9SN2tsm=Q71dw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 16 Jun 2014 10:02:42 +0100
Message-ID: <CAJTo0Lag0KaGevsu9dge3DYYiNag2i44sMmUCS9zQp=ZRjWHdA@mail.gmail.com>
To: Patrick Doyle <wpdster@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: What is the best process for applying patches to dora?
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
X-List-Received-Date: Mon, 16 Jun 2014 09:03:14 -0000
Content-Type: text/plain; charset=UTF-8

On 14 June 2014 17:48, Patrick Doyle <wpdster@gmail.com> wrote:
> What is the best way to get this applied to dora?

Cherry-pick the commit into a branch of Dora to verify that it applies
and builds, and then sent the patch to oe-core@ with '[dora]' added to
the message subject (--subject-prefix is the option you want for
git-send-email).

Ross

