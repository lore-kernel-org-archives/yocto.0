Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8A157E00D50; Thu, 23 May 2019 02:23:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com
	[209.85.167.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F398DE00B43
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 02:23:06 -0700 (PDT)
Received: by mail-oi1-f173.google.com with SMTP id t187so3824520oie.10
	for <yocto@yoctoproject.org>; Thu, 23 May 2019 02:23:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=svkHNj8CoZmU3a84RNt4PVQK9zldmVyrOsSjXfQ95qk=;
	b=GcLU1rPfjBuIm/OV7nq5L5Ocz4SHstoJP4zMTv2xtj4ZvN9KjRIEPhKRuWR0dRgquP
	xDnMH9h3S6fISugWT99y1JG5t/ViviIlAlspmGJ0J0HpRiAxZwEjuUK7926NBIeO6aYb
	g7lOuUbYM4Gu3khwwC4FZQlcgYmqcaoV9Fbmg5RexS+27k3TQTPBceLMNMY1Wgj6eInQ
	g8+1X/WqtC9r9ex7eC+d43Cmgni7aTZ3QhViWg7BdgvL9bxrvubPuHlkGlQOEI0cqCBF
	eK6hTbFE3+0VV0RIIBC4f5p86nWg7r+DFKaUpCJBwDMLiNxQwKZE4kdHk//prZ4mgRqo
	OJTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=svkHNj8CoZmU3a84RNt4PVQK9zldmVyrOsSjXfQ95qk=;
	b=I7ft7sSDzq3OsrR/6irSwuPeHoucBSX8cJeF67AWSl7QtMDapCp0yteFgTV0WaHT3Z
	dv2m47iBlkrT2XN30CHDkk+4ci/x3kD41rd2FIGCBeVLovtpvfL0+CY67wzmic8gBEqN
	eCXFe51GpYopf+/Pft2JujI1tT5VdOpGF+e8VD9yaZeGzbMfbqNCDs+nGIJ/OmFIViU1
	zjJxf1tDJ0+yM8JRBbrWdQ2HXX6mGuTU2glvFUYIYWsauRPdCNZFti9+QgoOPz0Nor58
	szjepiXM1O7pw2IHk7sgMCQHfORaeQltfHwZtAnYSAQWwkVTj6o1tubQbIgT6H8JxPu7
	yijA==
X-Gm-Message-State: APjAAAVZXzLNGThgyhX8v4wwM0biGd5mZvIcn4aS2xqZeS+mq9s74Kmi
	Jq6k5yy9E6sCE96ccgJ6QaK6M2X+xKnjjqeGOb4=
X-Google-Smtp-Source: APXvYqyZ3e7bnO9Vy0eKsSAP5Y/jwOIsVEkEZk4UEYi3+EN3whkmjveSiRMgyGRKEtII9SkG+ggiBQt5Frb/AOJ4q/4=
X-Received: by 2002:aca:6087:: with SMTP id u129mr2109073oib.70.1558603386225; 
	Thu, 23 May 2019 02:23:06 -0700 (PDT)
MIME-Version: 1.0
References: <605eba8c-7265-40e3-8619-81355ec46e7d@www.fastmail.com>
	<CAFNP8Otu94ncfmc=x8D0myzqJWNp6A_O22ihY+DnO6NJLzXcZw@mail.gmail.com>
In-Reply-To: <CAFNP8Otu94ncfmc=x8D0myzqJWNp6A_O22ihY+DnO6NJLzXcZw@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Thu, 23 May 2019 11:22:55 +0200
Message-ID: <CANNYZj8+EyFfFroKb0_Y=AtPxmT+bATKy7ctdEkbOch3mKJt9w@mail.gmail.com>
To: Scott Rifenbark <srifenbark@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, "Eggleton,
	Paul" <paul.eggleton@intel.com>
Subject: Re: distrodata documentation in 2.7 Mega Manual
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
X-List-Received-Date: Thu, 23 May 2019 09:23:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, 23 May 2019 at 02:22, Scott Rifenbark <srifenbark@gmail.com> wrote:
>  * In dev-manual's "Using the Auto Upgrade Helper (AUH)" section - https:=
//www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html#gs-using-the-a=
uto-upgrade-helper: Step 5 talks about making configurations in the local.c=
onf file.  First thing is to enable "distrodata" by inheriting the class.  =
Do we have an equivalent for this now that the class is gone?

This is no longer necessary, you can remove the step.

> * in ref-manual's "do_distrodata" task section - https://www.yoctoproject=
.org/docs/2.7/mega-manual/mega-manual.html#ref-tasks-distrodata: Does this =
task disappear as well?  Or, is there an equivalent?

There is no equivalent, you can remove the sectrion.

> * In ref-manual's "do_checkpkg" task section - https://www.yoctoproject.o=
rg/docs/2.7/mega-manual/mega-manual.html#ref-tasks-checkpkg: This task was =
included as part of the distrodata.bbclass.  How do we address the do_check=
pkg task section now?

The equivalent functionality is provided by running devtool - 'devtool
latest-version' for one recipe, 'devtool check-upgrade-status' for
several (or all).

> * In the UPSTREAM_CHECK_GETTAGREGEX variable description in the ref-manua=
l glossary - https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.=
html#var-UPSTREAM_CHECK_GITTAGREGEX: How do we change this?
> * in the UPSTREAM_CHECK_REGEX variable description also in the glossary -=
 https://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html#var-UPS=
TREAM_CHECK_REGEX: How do we change this?
> * in the UPSTREAM_CHECK_URI variable description also int he glossary - h=
ttps://www.yoctoproject.org/docs/2.7/mega-manual/mega-manual.html#var-UPSTR=
EAM_CHECK_URI: How do we change this?

All three should refer to the equivalent replacement (see above)
provided by devtool.

Alex

