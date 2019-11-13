Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ABA48E00E2F; Wed, 13 Nov 2019 14:51:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.222.174 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
	[209.85.222.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2E194E00BF7
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 14:51:10 -0800 (PST)
Received: by mail-qk1-f174.google.com with SMTP id h15so3300096qka.13
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 14:51:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=H5z9MWw7bPqBUH3iHbOGCVkQOUm7FVk3QjP0/9qoQjU=;
	b=ikLTscMHWRDuuaVE2bmyDM6rdJzcu6Oc3q9h7RAhuERqADsrrbtjHb2qxTGc+rqBPR
	4inz6fwsuCnaJW5COIMSjlyEFj5z4uAVwmasEV1qnQjOjOiA/YeD7HBbGuB9mjMXcODW
	a4mKGeX36NxAFWOaihDQAiOLRRuDVDUHGRiKMkUJH+cElLwC5y1odvfHXqAPDwWy/v0D
	pXjqp4IF80yBPiDkpkT5Ys0Szl5tCOvOiGUtwyCwiihftXLfNmvChvlqUCOGc0yTj2N/
	fmjzV+MPgCwLt4cqV8OQ2MGCG4+o6Mfl9RwkTjEiQ6oGClJB6eZQJqT4E3FoaGW2VGG9
	AYBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=H5z9MWw7bPqBUH3iHbOGCVkQOUm7FVk3QjP0/9qoQjU=;
	b=JGHc23sxAr/REY9oBVTcngI9NhOUZ34hi0SpogimXp+RzdE0CNh7q61ngFaWBe41Vg
	pHt/NWC+wpUvu+nbH1alm98/Nt2zNX6Uk3jZPFv6Rrld+4hp2ElosekJ2cEQchuR8koz
	OtxBa7dgyqUSDWrljFAJo8DkRA7tJcfHo9MFWSgKvH1XBxIJv44N+o/iJ3ysxSswoAK3
	N1qRR7TyJrvdE7dx1An6iVtNCxisJimgzcjJMx1K5dcbJg9lAkRjoTOWbR5RDMQLElKk
	JkUpNs/PUow1TjkYMnmpRKV5Kf/QnpZrII9sbG6LqX2xawmdbaTzo1xhuVvwXzp+2RRU
	UXJQ==
X-Gm-Message-State: APjAAAVy+Q/pzU9/9IBMPbashHP19hZz59RR0J3Veo5fRQb4+xX7lYq0
	pbhLSQAEeGuBLeBy2/5uwPEgZbceAYaluzfEdds=
X-Google-Smtp-Source: APXvYqyIqZg/a1cFSiZCLiYR14NIOokxtGG8JzaY8RBN9wnoPWbOjlptO/mQ3DXIH7Iaa8vEPaCsoHqH5af93hPUir0=
X-Received: by 2002:a37:a2c3:: with SMTP id l186mr4904491qke.337.1573685469077;
	Wed, 13 Nov 2019 14:51:09 -0800 (PST)
MIME-Version: 1.0
References: <CAE2LOAyv6+=fpMXEGBrA9nv4No9EaXT3HFffuJTd0zn8+cAkJg@mail.gmail.com>
	<CAE2LOAzK316nQE_BU9HvqAX4kNbVjhJcDn9ZqP2itLvzrwteKQ@mail.gmail.com>
	<7077004d7c363f729d9fd23ed6b2095592406d6c.camel@gmail.com>
	<CAE2LOAybX7ThQosx6D6g+V3WJcpfF8n4M8D_QXJxfvDV9trBKA@mail.gmail.com>
In-Reply-To: <CAE2LOAybX7ThQosx6D6g+V3WJcpfF8n4M8D_QXJxfvDV9trBKA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 13 Nov 2019 14:50:42 -0800
Message-ID: <CAMKF1srbgzwxZmQiHhKSnPSdUxNKZEDtE_MfYyOHBwaNGvSAQg@mail.gmail.com>
To: Vladimir Molokov <vladimir.molokov@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: puzzle: simple recipe gets image dependencies
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
X-List-Received-Date: Wed, 13 Nov 2019 22:51:10 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Nov 13, 2019 at 12:45 PM Vladimir Molokov
<vladimir.molokov@gmail.com> wrote:
>
> > can you share this dot file ?
> sure:
> http://gitlab.com/morokov/build/raw/master/task-depends.dot
>

Alright, so you have initramfs enabled it seems. Which means kernel
will first try to build designated
initramfs image which in your case is

"linux-yocto.do_bundle_initramfs" -> "core-image-minimal.do_image_complete"

and then core-image-minimal includes bad-example

"core-image-minimal.do_image_complete" -> "bad-example.do_populate_sysroot"

and example does ask kernel to be deployed

"example.do_build" -> "linux-yocto.do_deploy"


so that completes the chain.

Hope that helps.


> also here are more files from the build directory, just in case:
> https://gitlab.com/morokov/build/

