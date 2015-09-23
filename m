Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 78E69E00DE8; Wed, 23 Sep 2015 16:52:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA33DE007F9
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 16:52:48 -0700 (PDT)
Received: by padhy16 with SMTP id hy16so54220662pad.1
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 16:52:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=YgT8LnliUX9KM0JS7IDaM50gAunCxf1ZjDddEggZ2pI=;
	b=GSAr75JY/G0I5yRQkaUAQXbnA8bMe7nBqxVcIRA0FZFqonXkxIITmDDSgld7f+7Bcg
	Fvv4cxQZCCR8eiLWI7B8GdOsV9kreBZ5aPnp9eweaGK/nMRy1eK9FFFdB7kcre7lt1ab
	Xufj0IsbFZeR0bauiHwn9djLsS5eVoi4st5Q0YAC02Y6ZsJ28R76onnMJdX3JVjDCvAV
	FhiVDeokPktiP91PwTJGGR+2NS9akPA8bz7Wtxy6edg5TvooVF8D5WZ1l+c8zKF/yO9D
	IpH2aGRN0EQHY6fNGPt5IaEvaTwuaaYawVP9jELICde55N7Y3H4RUD1gcXxxDxIlvl0o
	+Cvw==
X-Received: by 10.68.253.65 with SMTP id zy1mr40924313pbc.159.1443052368117;
	Wed, 23 Sep 2015 16:52:48 -0700 (PDT)
Received: from ?IPv6:2601:646:8601:4580:d153:9029:40f3:c3fb?
	([2601:646:8601:4580:d153:9029:40f3:c3fb])
	by smtp.gmail.com with ESMTPSA id
	qp5sm10071057pbc.0.2015.09.23.16.52.46
	(version=TLS1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 23 Sep 2015 16:52:47 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.0 \(3094\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <20150923225839.GF23493@resin>
Date: Wed, 23 Sep 2015 16:52:46 -0700
Message-Id: <36AF01E1-752C-47A6-90AE-09825F8D0685@gmail.com>
References: <1440402701-6195-1-git-send-email-raj.khem@gmail.com>
	<1440402701-6195-2-git-send-email-raj.khem@gmail.com>
	<20150923225839.GF23493@resin>
To: Andrei Gherzan <andrei@gherzan.ro>
X-Mailer: Apple Mail (2.3094)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH V3 2/5] userland: Add wayland support
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
X-List-Received-Date: Wed, 23 Sep 2015 23:52:52 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Andrei

> On Sep 23, 2015, at 3:58 PM, Andrei Gherzan <andrei@gherzan.ro> wrote:
>=20
> On Mon, Aug 24, 2015 at 12:51:38AM -0700, Khem Raj wrote:
>> backport and fix needed patches for supporting wayland-egl
>> use PACKAGECONFIG for wayland so we can add proper DEPENDS on wayland
>> Fix QA warnings about dev-so
>>=20
>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> ---
>> ...-applications-to-set-next-resource-handle.patch |  210 +++
>> ...ayland-Add-support-for-the-Wayland-winsys.patch | 1847 =
++++++++++++++++++++
>> .../0006-wayland-Add-Wayland-example.patch         |  864 +++++++++
>> ...-wayland-egl-Add-bcm_host-to-dependencies.patch |   30 +
>> recipes-graphics/userland/userland_git.bb          |   13 +-
>> 5 files changed, 2963 insertions(+), 1 deletion(-)
>> create mode 100644 =
recipes-graphics/userland/userland/0004-Allow-applications-to-set-next-res=
ource-handle.patch
>> create mode 100644 =
recipes-graphics/userland/userland/0005-wayland-Add-support-for-the-Waylan=
d-winsys.patch
>> create mode 100644 =
recipes-graphics/userland/userland/0006-wayland-Add-Wayland-example.patch
>> create mode 100644 =
recipes-graphics/userland/userland/0007-wayland-egl-Add-bcm_host-to-depend=
encies.patch
>>=20
>=20
> Hello,
>=20
> Any ideas why I encounter difficulties while applying this patch?
>=20

it was send few weeks back, I don=E2=80=99t know if something got into =
upstream in between thats causing it. In any case
I have rebased the branch on my github fork

https://github.com/kraj/meta-raspberrypi/commits/kraj/master

Let me know if that will be convenient to pick up

> ---
> Applying: userland: Add wayland support
> =
/home/andrei/work/raspberrypi/meta-raspberrypi/.git/rebase-apply/patch:48:=

> trailing whitespace.
> =
/home/andrei/work/raspberrypi/meta-raspberrypi/.git/rebase-apply/patch:55:=

> trailing whitespace.
> =
/home/andrei/work/raspberrypi/meta-raspberrypi/.git/rebase-apply/patch:64:=

> =
/home/andrei/work/raspberrypi/meta-raspberrypi/.git/rebase-apply/patch:85:=

> trailing whitespace.
> =
/home/andrei/work/raspberrypi/meta-raspberrypi/.git/rebase-apply/patch:87:=

> trailing whitespace.  +/**HACKHACK - give us the ability to inject a
> DispmanX fatal: corrupt patch at line 2943
> Patch failed at 0001 userland: Add wayland support The copy of the =
patch
> that failed is found in:
> /home/andrei/work/raspberrypi/meta-raspberrypi/.git/rebase-apply/patch =
When
> you have resolved this problem, run "git am --continue".  If you =
prefer to
> skip this patch, run "git am --skip" instead.  To restore the original
> branch and stop patching, run "git am --abort".
> ---
>=20
> --
> Andrei Gherzan


