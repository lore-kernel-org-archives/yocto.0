Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3C72E00873; Tue, 28 Oct 2014 02:29:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
Received: from mail-qc0-f181.google.com (mail-qc0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 801F7E007A0
	for <yocto@yoctoproject.org>; Tue, 28 Oct 2014 02:29:01 -0700 (PDT)
Received: by mail-qc0-f181.google.com with SMTP id w7so147913qcr.26
	for <yocto@yoctoproject.org>; Tue, 28 Oct 2014 02:29:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=zIQ7I26ZWwTv53oDn86Ki2KlUqXZHA9FAJCZfkSLwkE=;
	b=oBGl3v95DPoDhq0dBe0JQC22iiTG80R8KmODtjO53l5pYzJWKA/OaWfloJonh8IkCl
	CCLw4g+W+eN0uIigedElWucH7ZhmWX0lUdhJJJUnzdo9ypVmb8ZQ+y92LJi6Okde/cEt
	atwljakZaTfEynzApaLXpBWsEeavbtS1yphXxSYIjpblm39L4jMI0+hz9JQnqYAAB6pv
	4T6bST7N3c1Rjujhd+Fn2ggjO+tSyHaNNW+vFNyfb+BVFwO4IMQLcrLnU9mFgTFIvpLw
	2EeLogSiAobTwbhRoGKEp8dr4jgB3UaDI4O8sSnuLR+tIa64YpSoY7VkrIt6MCH1cczn
	gg0A==
X-Received: by 10.140.32.227 with SMTP id h90mr2691674qgh.13.1414488540519;
	Tue, 28 Oct 2014 02:29:00 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.140.142.78 with HTTP; Tue, 28 Oct 2014 02:28:20 -0700 (PDT)
In-Reply-To: <544EF91D.1030306@windriver.com>
References: <544E11CF.6010701@windriver.com>
	<CANyK_8eHtCb+a_a1fx16R3Nw0WVBU5mh6TFxSOwx06mRWdjuGA@mail.gmail.com>
	<CANyK_8e8u5V3m33GQ8yFjcBFrWMHu05Yup_qJjg8tu-qDW584g@mail.gmail.com>
	<544EF91D.1030306@windriver.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Tue, 28 Oct 2014 09:28:20 +0000
X-Google-Sender-Auth: 07BkutZyR-KkbuNRDp0146YJ9oU
Message-ID: <CANyK_8eRCTfCOEi80_kFhEEQcreEWmxy=9jVG_kw6XviZCLJFA@mail.gmail.com>
To: Liu Jian <jian.liu@windriver.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	opkg-devel <opkg-devel@googlegroups.com>
Subject: Re: [opkg-devel] Re: [OE-core] [PATCH] opkg-utils: update-alternatives fails for "[" and "[[" in busybox
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
X-List-Received-Date: Tue, 28 Oct 2014 09:29:09 -0000
Content-Type: text/plain; charset=UTF-8

On 28 October 2014 02:02, Liu Jian <jian.liu@windriver.com> wrote:
> Hi Paul,
>
> Thanks to your correction.
>
> Could you please tell me the mailing lists? I use this mailing lists
> following the
> guidance of
> http://git.yoctoproject.org/cgit/cgit.cgi/opkg-utils/tree/CONTRIBUTING.
>
> You told me that URL in your last mail. So should I follow the instruction
> in it?
>
> Thanks very much!
>
> Jian
>

The mailing lists you sent the patch to are correct for opkg-utils.
The patch you sent modified the opkg-utils recipe within OpenEmbedded
rather than modifying opkg-utils itself. As opkg and opkg-utils are
part of the Yocto Project, we prefer to fix problems in the upstream
repositories rather than maintaining patches within OpenEmbedded.

To submit a patch for opkg-utils, you need to clone from
git://git.yoctoproject.org/opkg-utils, apply and commit your changes
with a Sign-off as you have done for OpenEmbedded. So the patch will
apply to the opkg-utils repository rather than the openembedded-core
repository. Then send that patch to the mailing lists. I'd recommend
sending via 'git send-email' rather than using your normal email
client as that will ensure the patch doesn't get corrupted.
Alternatively, for opkg and opkg-utils I accept patches attached to a
regular email as a .patch file.

Many thanks,

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

