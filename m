Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41CA9E00CE7; Wed, 25 Jul 2018 10:28:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f43.google.com (mail-vk0-f43.google.com
	[209.85.213.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 530E7E00CC8
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2018 10:28:14 -0700 (PDT)
Received: by mail-vk0-f43.google.com with SMTP id t4-v6so4183712vke.9
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2018 10:28:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=/++dW3iOP9zrh78/uZoAqqYwoo8eRwQcAyh5fXC/7PA=;
	b=ANPasyfpbPkw8RFr+H+GEzvfQZri+OO4zkxs2vRqfub4avsg+I6Dh5lX97OXr0sRDo
	IdnMGdwp3ott5ZVXx8WBEzCvUOGL4L7eY9evkfH9QbuWzwGLRLUlyfX6jlsnMJP3lm57
	eFgM/tMJ9NMtcPniqPD8Huv1rZXMjoUjSB3SyDnHPNpPWXYOxvmdYKCQ4xnTqepfHv8G
	0NEfdtNPTNRNiFSXZuIBXGI1AqDvwXZYQbxtZgArQL4O9qOCuRSnabF/147ZvU5VmApo
	5jdpQiATkdo75Qf3vHKNTHN0YvBaSNVMast/uWXiermSRWBpm/BAf7C11+lHJ8o0cebl
	d7xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=/++dW3iOP9zrh78/uZoAqqYwoo8eRwQcAyh5fXC/7PA=;
	b=JnX8GeNJxVhKu4hFQg6wAn1JNYAQUEF1kE/NSBR/bb7xO56Azlk96lYJ7dB4nfeB9y
	qW0BULE+V93J5OH/7mhwVnYiXyovqcmUoleAEJnh9bEmeE4r00nDAdnq+aLZ6zgHkf6v
	f/AZYopPCnAAxvNiXr2A8rLHnKG2iCYeOgyyuI+5U+Nmz3T/ksa7c/ElnieaItX/f9Fa
	qYkOEHjhtKzqBg1zcTOMEG1qSI2NvsU5UOuzMokK6cEQ9kyjoru2bR7CuhVqoPbjsDZt
	CncOc+W7AYKbO38L8PnLwiCVywOafTgRYpH0sC3/Z7hTwXiMEChSNvvk4SCW9jN5bKJe
	zP+g==
X-Gm-Message-State: AOUpUlH4UUpN+kdiqIeF0A3UMDHVjfM2apC3ffVhxcAwoaSvrO9QZTGm
	1Qw/cgAaItZhdef6I2IZj6Uqj2Vlg5Ph1gpkJDM=
X-Google-Smtp-Source: AAOMgpfcjItXq2PmLajzoTkKIREkVcvzz57OsXxJezeC45nV6pXrmChfDnu62pKwr/zBdiTARNbTur+6OHKNlZsYp14=
X-Received: by 2002:a1f:c252:: with SMTP id
	s79-v6mr13742615vkf.127.1532539693493; 
	Wed, 25 Jul 2018 10:28:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2a5:0:0:0:0:0 with HTTP;
	Wed, 25 Jul 2018 10:28:13 -0700 (PDT)
In-Reply-To: <CAGAf8LxYwcCUasWAghC431v3Htptfki8WfCxvTHB73Jjv9K75w@mail.gmail.com>
References: <e90846d06efa4e6c8a9fc52370af9ada@sakuraus.com>
	<CAJ86T=WENY_jRwhSLJmLXjm7_RbnCJx-fqesWwJw7P2jZh=u4g@mail.gmail.com>
	<CAGAf8LxYwcCUasWAghC431v3Htptfki8WfCxvTHB73Jjv9K75w@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Wed, 25 Jul 2018 10:28:13 -0700
Message-ID: <CAJ86T=U6vc0YxMQDUyKaYgxH8_79o3jASWxSknvayYbGWPWv=Q@mail.gmail.com>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can't get *.a's into SDK sysroot
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
X-List-Received-Date: Wed, 25 Jul 2018 17:28:15 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Jul 25, 2018 at 1:23 AM, Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
> Hello Andre,
>
>> RDEPENDS_${PN}-dev += "${PN}-staticdev"
>
> I also read this email, and decided to investigate myself. Since I
> wrote meta-mylayer with cannelloni recipe in it.
>
> To find out if the recipe works correctly, and it is incorporated
> (upfront) in ROOTFS, I did the following:
> [1] Did the compilation of the clean tree;
> [2] After that, I did: bitbake -s | grep cannelloni -> yes, the build
> system sees it;
> [3] Changed to ${TMPDIR}/work and issued the command: find . -name cannelloni
>
> To my surprise, the search produced empty results.
>
> Then I added your line to the cannelloni recipe: RDEPENDS_${PN}-dev +=
> "${PN}-staticdev"
>
> Again, bitbake -c cleanall cannelloni, then bitbake cannelloni, and
> step [3] produced visible results.
>
> Now I see it in the .../tmp/work/...
>
> But, there were NOT any changes in: .../tmp/deploy/images/beaglebone/
> directory (in ${build} directory, I guess)???
>
> So, what I need to do to see build components changed (since I assume,
> cannelloni still did not make it in ROOTFS)???

I'm not sure that I understand the question.

If you are asking why you sometimes don't see build artefacts under
${TMPDIR}/work then remember that the goal of building a normal recipe
is to create a set of installable packages under ${TMPDIR}/deploy. The
files in the work directory are just side effects of the intermediate
steps to achieve that... and bitbake will try hard to skip those
intermediate steps if they can be avoided (ie if outputs can be
recreated from sstate).

If you are asking why building your image from a completely clean tree
doesn't result in building your recipe (or changing your recipe
doesn't result in the image being rebuilt) then yes it suggests that
your image doesn't include and packages created by your recipe.

