Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34069E00AC5; Mon, 15 Oct 2018 11:54:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f66.google.com (mail-ot1-f66.google.com
	[209.85.210.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE850E00AD1
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2018 11:54:07 -0700 (PDT)
Received: by mail-ot1-f66.google.com with SMTP id q50so19989516otd.0
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2018 11:54:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=2S8xzv8vIDz/GlTLxXk/8RxpYmzW1aoBkNNfPo0hn2E=;
	b=JQH9UTiNke2ZABqqydwEAyPCKBGdsyvCPd4Rm7UXRaDFgXp9vbKdC4TzlfMaaBsXj4
	N+Kd96MScZONKJBfmWQI9D1BdNPsfOLUFJG9zDRCi7sbJsvy/3aNG+V96EvrfgXsHI7E
	FjyVCmetjopPljlXu6J/GenDCE+fBrIAIDRJJlm16ecD6egORoZk6sTjzxKsWQFkNHkB
	kMNKH7OWxVv+t3TYouudd8+fMayh8oUFw7J3Xaf0IfU5eOZcsbPXyynHGuoLfpNTOKRw
	z22cYEECJEjq1EQkkJt2c15mUesDNs9CAhja6U4h7QTz7ApUzQU52ByfnATWcLzHf38f
	XthQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=2S8xzv8vIDz/GlTLxXk/8RxpYmzW1aoBkNNfPo0hn2E=;
	b=hMoc0OrT2haHn6LfACQV/0Mvpqh6HNfgdyRCTIYMe4ADlUnTopAKjwQC4Bc0HooCC9
	8aHf+gmvSLeDJdyurR6VuCoOCUPfADpq6CHHQHdaeeG2ybdaycT3hzOIt1vQ5Mt0WOEW
	UuOBfVB4ZDbA54iij9RNmC/EMOpKgjTiqnmSeXvI7UaNdEYhIldD/6yvxyNI2imSRKfW
	PrfNLkhhUx1rei8jjgJGerijKiyJ5rwG/u7k80Ty62N52lDssihU/PzD27cq60yc+nnP
	X6nVQtjAUsaqGDb39nPSA4pXBz/SWOKtC3pCNq2IdlA7NFA1CNXJZ5a2xcH0t+yS11ys
	ZSPQ==
X-Gm-Message-State: ABuFfogq+B4ui8YYDF3npSO7cmb6epMyNyf2cGVFk96gs55mwEIWgREq
	ulEVyV24CAyT/ABvbi0SMZVd1wH2CAcJgY173a6ERQ==
X-Google-Smtp-Source: ACcGV60PLHl+tdtvIR2LoL4T1wCvSIl2dNnwFVrEAW1mFY91rMBNqFap5PTv41QVQz5ohbcJ73hfuNKnWImwI+9DI1o=
X-Received: by 2002:a9d:3e50:: with SMTP id h16mr10731499otg.8.1539629646985; 
	Mon, 15 Oct 2018 11:54:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAAfyv36x=np5fcK96ozCHoXe-CFjvpMTdJDA4shpXBMRvd10Hg@mail.gmail.com>
	<CAJTo0LYbBU4s7w7TEDJwt6Wp8Vr9bsFCxmf1WYM-sX_=5wWkDA@mail.gmail.com>
	<f0a632a1a5264a72d4be11ee371f7d64@basmevissen.nl>
In-Reply-To: <f0a632a1a5264a72d4be11ee371f7d64@basmevissen.nl>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 15 Oct 2018 19:53:55 +0100
Message-ID: <CAJTo0Lbrf_n0LbCo0undU6=cCSnGbekg6V3Yg2saFqdjPpmFxA@mail.gmail.com>
To: Bas Mevissen <abuse@basmevissen.nl>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: permissions when installing scripts
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
X-List-Received-Date: Mon, 15 Oct 2018 18:54:12 -0000
Content-Type: text/plain; charset="UTF-8"

cp -a will preserve ownership, which you don't want.

Ross
On Mon, 15 Oct 2018 at 19:45, Bas Mevissen <abuse@basmevissen.nl> wrote:
>
>
>
> cp -a or --preserve(=<something>) optionally combined with other options
> does the trick. However, using install is the better solution.
>
>
> -- Bas.
>
> On 2018-10-15 14:35, Burton, Ross wrote:
> > As you've discovered, cp doesn't preserve permissions.  Using install
> > -m755 is the idiom.
> >
> > Ross
> > On Mon, 15 Oct 2018 at 11:12, Belisko Marek <marek.belisko@gmail.com>
> > wrote:
> >>
> >> Hi,
> >>
> >> I have package which contains bunch of scripts (with +x flag for
> >> user). When installed in do_install method (simply by copying them to
> >> destination) they loose +x flag. I know copying directly is not best
> >> approach but there exists better way how to keep scripts permissions
> >> like in repo (except calling install -m 755 for all of them)? Thanks.
> >>
> >> BR,
> >>
> >> marek
> >>
> >> --
> >> as simple and primitive as possible
> >> -------------------------------------------------
> >> Marek Belisko - OPEN-NANDRA
> >> Freelance Developer
> >>
> >> Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
> >> Tel: +421 915 052 184
> >> skype: marekwhite
> >> twitter: #opennandra
> >> web: http://open-nandra.com
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
>

