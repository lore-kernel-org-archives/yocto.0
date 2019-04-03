Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92809E00C93; Wed,  3 Apr 2019 03:38:42 -0700 (PDT)
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
	*      [209.85.210.45 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f45.google.com (mail-ot1-f45.google.com
	[209.85.210.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08F32E00C1E
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2019 03:38:41 -0700 (PDT)
Received: by mail-ot1-f45.google.com with SMTP id u15so14884423otq.10
	for <yocto@yoctoproject.org>; Wed, 03 Apr 2019 03:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=VFv8LDx/18EkEM4EZir4mSV0yMR1yVLENjVIE2jfZeg=;
	b=AWB1MN8lV40rK1RUR+SQYW9QDbP/Ut315CjpfStgigBmX6tp/IB2t1ClUcdKnSLiqx
	xiuCmzK6IkzkpOgrGZfw+Ynt/EvGn2LeGWiwpHR4/E9oINXO4EK+iP9PdbUlTwO0+dVV
	DpQfQgam5sUFT2MDagS2SbfwtuOxj6L2+FwfhIXFUTT5YwQ7Fzh/dyI4ZO7Mt7F+sN3b
	9fX1YQwnBYfYCRKbbjAkp48FQliMq4M9FZRk1BY1iOfKnBSogus/mvwvlQEtWqbsoFff
	oea4ZKA46NCDwBLStCAMvjyZdq+M98bzJo1WaVU4pRrHkleDNhHcQc1EIZDcQRBr+mRk
	wKYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=VFv8LDx/18EkEM4EZir4mSV0yMR1yVLENjVIE2jfZeg=;
	b=UCqSF8W4+C8HM6AFaAL6KWVHrqgflYpRJli7MsWrlYuspiSrioCs9N+uZrk6Z3kigR
	0Y56Ah4rzuT5FZB6PlBcnDZkfkJJUW/AiVFbnDMUB9VLWgv05s6eooXx+eKQJAACb+dg
	pmW1idna/Ij/cQQpj260meHuEEMxIUIOBgfen/f6/2hd78U8dTlWGhO3cBAz6GmprmdY
	j/42QSrw7tXRgZ4+H4SCq2bD7Gr4iN1Mj9/5ykB6a67rr0FV6Tygi/XlFQ8v1bqq0Yuu
	MINUagyO+1kt5QYqqQwGI56GDwMqywP37gL94uMCaM7g2KOZao3qbAND3ZnytTyP/T5a
	rwGg==
X-Gm-Message-State: APjAAAUzQO/KpBDaBxjRdrnN3DXRfdh6uDg93vQNCCYcApzfCR6pTTFC
	VE/wmAOXaUE02hfyetnvQljVe8WahNEZacVCAmI=
X-Google-Smtp-Source: APXvYqzcbyjJ773jnU1dnra6on/C/L7Ka3KmvMtIa+IFcxmN+MGvg/GUqtmrPGJwDIx14BgYaSPsW07ZdGtdEl4lw+k=
X-Received: by 2002:a05:6830:1497:: with SMTP id
	s23mr52887517otq.236.1554287921431; 
	Wed, 03 Apr 2019 03:38:41 -0700 (PDT)
MIME-Version: 1.0
References: <854544cb-aab1-1a9d-9e98-0f39663ca621@gmail.com>
	<b08083fc2f63f6324a652706f8343a0b8defe209.camel@linuxfoundation.org>
	<a1416fe3-04fb-1d37-eaef-05b9a838254e@gmail.com>
	<20190402065121.GA31468@localhost>
	<20190402194614.GY4664@bill-the-cat>
	<CAJTo0LZ5qeDA+rQ5Eh3_LCbGtQyo732LrDkiZ=O4sh52cjXU=w@mail.gmail.com>
In-Reply-To: <CAJTo0LZ5qeDA+rQ5Eh3_LCbGtQyo732LrDkiZ=O4sh52cjXU=w@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 3 Apr 2019 12:38:29 +0200
Message-ID: <CANNYZj9u4uYCnAAT5rrTWv9VvECb5GWq122NPz49qnoUeLTFDw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Adrian Bunk <bunk@stusta.de>, Tom Rini <trini@konsulko.com>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [OE-core] [oe] Git commit process question.
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
X-List-Received-Date: Wed, 03 Apr 2019 10:38:42 -0000
Content-Type: text/plain; charset="UTF-8"

Just to make clear, the AUH workflow does require the maintainer to
sign off and edit a commit message via 'git commit -s --reset-author
--amend' for every commit, so AUH does not get in the way of useful
commit messages.

Alex

On Wed, 3 Apr 2019 at 12:31, Burton, Ross <ross.burton@intel.com> wrote:
>
> On Tue, 2 Apr 2019 at 20:46, Tom Rini <trini@konsulko.com> wrote:
> > > The kernel does not have "upgrade foo to the latest upstream version" commits.
> > >
> > > With the Automatic Upgrade Helper this is a semi-automatic task, and
> > > most of the time there is no specific motivation other than upgrading
> > > to the latest upstream version.
> >
> > But since that's just filling in a template the body can also be a
> > template perhaps with useful AUH data (run at ... by ... ?) ?
>
> Apart from making the commit message longer what does this achieve?
> The commit already has a timestamp and author.
>
> Ross
> --
> _______________________________________________
> Openembedded-core mailing list
> Openembedded-core@lists.openembedded.org
> http://lists.openembedded.org/mailman/listinfo/openembedded-core

