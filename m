Return-Path: <marc.ferland@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69BE0E00CAB; Thu,  7 Mar 2019 06:31:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marc.ferland[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
	[209.85.210.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58DB8E0049A
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2019 06:31:25 -0800 (PST)
Received: by mail-ot1-f44.google.com with SMTP id z19so14262318otm.2
	for <yocto@yoctoproject.org>; Thu, 07 Mar 2019 06:31:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=LxkOQHtXV0s1hzUNUNoEuLZ/J8ErjO1RWRwc8emuxI8=;
	b=VzyaZNbkaTwxA8OzsiAdanh1Aah9emT5GAT4i9IRz7ydoEWQHZCKd7kLSePEYAcb30
	JkwT/BG7kbxJfuBt5w9YNASnplG/WZxljCsvE3uUzxC0lGnTe12bo1uPBusmGzt/qFvd
	B8PP38NmKdCPwVkB546vVylDPO9VqtQ50efveKBEE19tispoxqM09XAr2T0zusB9imf5
	ReitVztVJTpSNPWrhBiqFso0cIPctAdfjcnDtr4acPqQLOtBXKd5GUCjXfUm4SI29eXr
	S8RKBgzlt1xmxUSPtoZrbOvjyIETF63rgJswD3hG/MRdt19HVvXC1ZwJk3tJUpX9IKSI
	lRcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=LxkOQHtXV0s1hzUNUNoEuLZ/J8ErjO1RWRwc8emuxI8=;
	b=R0OJn7exaGSQ2vEorWM0+Syxs05e+eX1/TpG38SEmifw6ola7KwEwMYfMEXfGWtj/3
	gaweLlBcRu0MddF0llNAfRT0MfCWKfUUBY73I5m5NroKl9ty+W26E/dxSzmXr2h6DCek
	cfzmVYfvnxfwc0vOYXK5K9upEGVvZyFxZCNICRIXC2sF19hGs+KUdg5qu3F0Y1KceDOT
	xV64Bp6EbaricAyXTThv1IV5DRuMyJFdnuusXxvWOiFiJYsfs7acBtVBDExtsf5AVw8C
	vkeaeDCEzkmN8/GUpCwl9sViem0cceBd+wmSNcTUhHZPt5KSMzEwyXPMLlNA0MFVPbw/
	NLsg==
X-Gm-Message-State: APjAAAUZ0JGT1R4zUbc1YUii+PKHRjIqjzLiQMjGoWyOdivvbIvwrgfo
	kGEuKtpt70NfN1JYMFQxGRMHRQOQsB4gWT6YfrU=
X-Google-Smtp-Source: APXvYqxq91pG/mB0UlEgUPXWNtbtJQyyOT7u9UnLbxAxOmq4dpDngYmFPVywfC7+jdRR2jkWrGFDSikvBgiufT5MOp4=
X-Received: by 2002:a9d:53c8:: with SMTP id i8mr8356761oth.60.1551969084579;
	Thu, 07 Mar 2019 06:31:24 -0800 (PST)
MIME-Version: 1.0
References: <CAAx3WaA0NR=cdGJdPHrkSuENKT7m60GW=pcjCjAHpgwEFPMHwg@mail.gmail.com>
In-Reply-To: <CAAx3WaA0NR=cdGJdPHrkSuENKT7m60GW=pcjCjAHpgwEFPMHwg@mail.gmail.com>
From: Marc Ferland <marc.ferland@gmail.com>
Date: Thu, 7 Mar 2019 09:31:13 -0500
Message-ID: <CAMRMzCAAVr8YPZaOz=Ob7E7YYfrq8H0YC8+KZ3XasEwUoe=Cdg@mail.gmail.com>
To: Gabriele Zampieri <gabbla.malist@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Multiple ubifs partition
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
X-List-Received-Date: Thu, 07 Mar 2019 14:31:26 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Look for the multiubi fstype:

https://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/classes/image_typ=
es.bbclass#n151


On Mon, Mar 4, 2019 at 6:17 AM Gabriele Zampieri
<gabbla.malist@gmail.com> wrote:
>
> Hi all,
>
> I'm trying to build a distribution that has multiple partitions. The desi=
derata is something like:
>
> - rootfs.ubifs mounted on /
> - data.ubifs mounted on /data
> - opt.ubifs mounted on /opt
>
> I was wondering if there is a standard way to achieve the goal. I see tha=
t there is a tool called wic, but it does not seems to support ubifs. I cou=
ld post process the tarball image and doing stuff with my scripts, but I'd =
prefer doing this in a single bitbake run. Can you suggest something?
>
> Thanks,
> Gabriele
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

