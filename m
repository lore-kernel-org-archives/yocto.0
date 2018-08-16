Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A36C9E007D1; Thu, 16 Aug 2018 12:42:27 -0700 (PDT)
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
	*      [209.85.222.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com
	[209.85.222.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 448F7E006B4
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2018 12:42:18 -0700 (PDT)
Received: by mail-ua1-f46.google.com with SMTP id c12-v6so4380078uan.3
	for <yocto@yoctoproject.org>; Thu, 16 Aug 2018 12:42:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=CCxqFtdhPRy+ksMPzVMsJp5QpbYkhc3mIAhr4RMBb0s=;
	b=VmAYI9iEw/IyJ289MbNkhkvLeI9EBrbzqCVx+7LZX1q58JIZ6s0bnmuGaLidilHIL6
	hg2Fes21UwU4NE3KdC64IMfMYgTax5cVeWQSiN2nxuK3UvX7aJk1KgzCiG9RRJwwGtFf
	hmoNtbjMaZ8SQqDZL2/NZALeVLjbucru7+qHw4LoKX+c9+OXyyonAjFqaW+36wELe9d2
	tWtXo39/qKoGIDqqK0hnanWD7OqpeBavrViRV++XMAOzB9ved/0kDJkQU2c5OwRM4IPk
	Nu1CQKzcTVYTOPXvWCYb1MKUOwfc2c/rDb4gQ44Q5pdtSvRwVPNZzNJoSLQx6u3m9OGk
	EnJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=CCxqFtdhPRy+ksMPzVMsJp5QpbYkhc3mIAhr4RMBb0s=;
	b=WbsxWIoJljiTfib+HNgtCpnlOmFwrYLi9M2qMkr1h6IGtO9HaSlWwY4Er5fWreHxHO
	8dt8UkmuMuXGhFsRWn3rzR6Y71XrHoFfN9TIDR8RxM87xi2W+z8dQdoDD2N3JMgX77X5
	hYWWPVrugAIce57a/abnqFBgs47W67CBRXA4oLu0kbi+ju0madQAAawOrnE8lVWQARru
	3aD70FHekb0lB+csjCOjgJ4M8ltqNtArcoro7929jMNdhn/0hdkvyRpJcrlH9bGAmOiO
	g412MtXIk3elLsCb0J7TWbg7IwyygqzlA2k50rlumajPkJV++6aWajFZmwah6+C7gdG/
	D2PQ==
X-Gm-Message-State: AOUpUlFnQoLvvTim35YGD6kj+Hrug3vkfWRCU78G4ucNkCeFcK2DgmgV
	JFhidRxu9ET40M/WmqZ9mpAyX5PeePEijtfOixk=
X-Google-Smtp-Source: AA+uWPxrP0pe+CMHNn5WYiUat5HqVEeB5fQj9r/wwtjjm1ajXIdZmmFT/DX40tclq+0Q33RA7mMIuAKZnwQrDgCu8gw=
X-Received: by 2002:ab0:5c0c:: with SMTP id
	q12-v6mr21035060uaf.134.1534448537577; 
	Thu, 16 Aug 2018 12:42:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab0:2a5:0:0:0:0:0 with HTTP;
	Thu, 16 Aug 2018 12:42:17 -0700 (PDT)
In-Reply-To: <CAKPYHZ7ey2AXvFCY0nC6e4eNS6oA4Cdve38Ccrf1QUU0EitFoQ@mail.gmail.com>
References: <CAKPYHZ7ey2AXvFCY0nC6e4eNS6oA4Cdve38Ccrf1QUU0EitFoQ@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Thu, 16 Aug 2018 12:42:17 -0700
Message-ID: <CAJ86T=UJV7VPzWNDPJB2qx7M_D32ycQ2nXT=d8uYdcMBK2qp8g@mail.gmail.com>
To: "Dhanush K.S" <dhanush.ks@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: BITBAKE ADD-LAYER | HELP!!
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
X-List-Received-Date: Thu, 16 Aug 2018 19:42:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 16, 2018 at 12:52 AM, Dhanush K.S <dhanush.ks@gmail.com> wrote:
> Hello MailingList,
>
> I just upgraded yocto to the latest release (Sumo 19.0 /Yocto 2.5.1).
> Currently i am trying to add the meta-openembedded layer to my
> conf/bblayers.conf using the command "bitbake-layers add-layer
> DIRECTORY_PATH/LAYER".
>
> But I am getting parseError at times.
>
> Is it absolutely necessary to checkout the meta-openembedded layer to the
> same Branch as that of the Yocto Version?

Yes, it is. Do your errors go away if you do that?

> or is it alright to stay in the
> master Branch?
> I can add the meta-oe sub-layer while on master but i get parseError when=
 on
> the Sumo branch.
> I am not able to add the meta-python and meta-networking sub-layers of
> meta-openembedded to the conf/bblayers.conf file without getting parse
> errors. (meta-networking sub-layer depends on meta-python, so until I
> resolve that I cannot add this)
>
>  [ac500v3@localhost build-2.5]$ bitbake-layers add-layer
> /opt/ac500/yocto/trunk/yocto/next/meta-openembedded/meta-python/
> NOTE: Starting bitbake server...
> Loading cache: 100%
> |########################################################################=
###########################################################################=
###########################################################################=
##############|
> Time: 0:00:00
> Loaded 499 entries from dependency cache.
> ERROR: ParseError at
> /opt/ac500/yocto/trunk/yocto/next/meta-openembedded/meta-python/recipes-d=
evtools/python/python-pbr_4.2.0.bb:3:
> Could not include required file recipes-devtools/python/python-pbr.inc
> | ETA:  --:--:--
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> ERROR: Parse failure with the specified layer added
>
> What and where am I going wrong?
>
>
> Mit freundlichen Gr=C3=BC=C3=9Fen / Best Regards,
> Dhanush Keshava Reddy Soppahalli
> Mob: +4915216144064
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

