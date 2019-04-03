Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98EBAE00CEE; Wed,  3 Apr 2019 03:30:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f180.google.com (mail-it1-f180.google.com
	[209.85.166.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DA76E00CDD
	for <yocto@yoctoproject.org>; Wed,  3 Apr 2019 03:30:51 -0700 (PDT)
Received: by mail-it1-f180.google.com with SMTP id x132so8180498itf.2
	for <yocto@yoctoproject.org>; Wed, 03 Apr 2019 03:30:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=benLBz9hW99WBZEeOFcAKwfVLMwfm2Ry36HGmFBMO8o=;
	b=SQGw6pGWvV2BQfEH99p7lXhGhjcxoLinT1QzUJdM/cQ07HykT5GXxeC6yZD+3i6J+X
	pYHqo/KFvYz845co3jIpoQlsvIHElrtN0kvQ5aV15PYAXWG5SKIMiZbkM0Bp3pN/XNsT
	Vx2Z9zfSg9kQLT5ALyhUrwa3tPnsCHiQQQxbpwOchmY5Ajn5Jbilrf9pZqCpJUEFCVFa
	NXABdf59YdyoygoexNO9IUM901Og5rEZZ8a+Fu2KKVoVI4Stjr30gAxNwJVdpfvp3VLI
	1UlceUPoOvXBtCcfrFUqoXquAWS69f6EPiBatVcf1nJ5PlNyOZj9QMd7UzqKv94ZVu2b
	qmEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=benLBz9hW99WBZEeOFcAKwfVLMwfm2Ry36HGmFBMO8o=;
	b=jTHOKG0LcTUapaKV1QYie+d43vNoiJrcd/Pc+5eO+k9C3SL1TftdWeBbDw1Bsis2lp
	cHCXywZYmBfh4E9cokOowq7SN1C6+SD5KeyU3ARrM3TxvKftx9mZrNubNE03uavw6Uou
	ITGGg4UUT9x7/U5RBGCNXU2+dcVrAm6IAU7wWXGUkzvmS5h/vIuhLtZ6kF1dsl0nhxCG
	vZIybaINATHxW8hg72yaNHmO5DEHNLCjyEl5R8m7GhiQQ9uMrvXvLrFqur0UgvrYI5F0
	l7SsYZ99d4NsICn4f/ZgMkBZ2GjOQnmkmF+9jpxtrwBkY04Fnq5ceUeAHNM2KMyREeEp
	Bpaw==
X-Gm-Message-State: APjAAAVcMEvZpR0CZpBTs7hZwhk5WG9b7fT5U6WdMfixjieGl3ha3sgE
	Rr1FRs9nHI156oThkCooAilsztsRCl4hd5z8pP/yPONZ
X-Google-Smtp-Source: APXvYqz9krAoYmJ9iEH/W+3fq3fSBkvPRClYTS/J7SbBKgtMn7jrBaEwTrpgcTIIbVLkW9iqmfnndk6VjuO+p7DetYc=
X-Received: by 2002:a24:d643:: with SMTP id o64mr1186771itg.148.1554287450951; 
	Wed, 03 Apr 2019 03:30:50 -0700 (PDT)
MIME-Version: 1.0
References: <854544cb-aab1-1a9d-9e98-0f39663ca621@gmail.com>
	<b08083fc2f63f6324a652706f8343a0b8defe209.camel@linuxfoundation.org>
	<a1416fe3-04fb-1d37-eaef-05b9a838254e@gmail.com>
	<20190402065121.GA31468@localhost>
	<20190402194614.GY4664@bill-the-cat>
In-Reply-To: <20190402194614.GY4664@bill-the-cat>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 3 Apr 2019 11:30:39 +0100
Message-ID: <CAJTo0LZ5qeDA+rQ5Eh3_LCbGtQyo732LrDkiZ=O4sh52cjXU=w@mail.gmail.com>
To: Tom Rini <trini@konsulko.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>,
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>,
	Adrian Bunk <bunk@stusta.de>
Subject: Re: [oe] [OE-core] Git commit process question.
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
X-List-Received-Date: Wed, 03 Apr 2019 10:30:52 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, 2 Apr 2019 at 20:46, Tom Rini <trini@konsulko.com> wrote:
> > The kernel does not have "upgrade foo to the latest upstream version" commits.
> >
> > With the Automatic Upgrade Helper this is a semi-automatic task, and
> > most of the time there is no specific motivation other than upgrading
> > to the latest upstream version.
>
> But since that's just filling in a template the body can also be a
> template perhaps with useful AUH data (run at ... by ... ?) ?

Apart from making the commit message longer what does this achieve?
The commit already has a timestamp and author.

Ross

