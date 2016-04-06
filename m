Return-Path: <ronaldo@brc2.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A8FF2E0077F; Wed,  6 Apr 2016 12:55:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f65.google.com (mail-oi0-f65.google.com
	[209.85.218.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7A17CE0048B
	for <yocto@yoctoproject.org>; Wed,  6 Apr 2016 12:55:28 -0700 (PDT)
Received: by mail-oi0-f65.google.com with SMTP id q133so8772791oib.1
	for <yocto@yoctoproject.org>; Wed, 06 Apr 2016 12:55:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=brc2-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=YXypGGz5n1jiFAsDL0AXJPdI/5JI6j2NoSygYvxpZ0M=;
	b=DwifMdbvzJCQSlWCIsHCgNyk/Q1kQFMoAis4kSHXNq9ryl/fK2n10N1E0x5tp/AwQa
	carY0mrG4BzEVdfc3EUfn9qKLhYVN016ZqnftgCxth9qkDtICEQrgsTm/na8R4gVxQOt
	iZYILDw5430i24p0w0w7Nv4O9wgChANW2H2xYGGS+Zcx6MYwliS/ETwCTSZZ62ytYmIn
	5F8MwIo0uYziL/Q7LYIrg1tyooreRg6CQyc92/jh3V0BNmsUJZiMX8mOOqjCrwWm3tZK
	LHikIdnfrqAYf2ze8KvLvVnkpg+J/4GVa/nu6RicwP8D3pdoRNriWYg0WKsy55l2lbft
	sF2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=YXypGGz5n1jiFAsDL0AXJPdI/5JI6j2NoSygYvxpZ0M=;
	b=l+D5lbmPmaB8cxtsyLy7JMGytTSOnyEN+UiRlFVxjTfLp9WlaW8/KklWi5CnIYpEa4
	c9aHK0/d2raxz801HsYbTAR0JsB3QM3tXddRvddBqQYJ+nKNwqfLCSOgHd2kuN8wLcNF
	L3Lp+lxpxerFp8+2Ou7zeYgm2/qbIR5dku8FpaT5Me6L+ROopUpxZz89vN18lRWViOhK
	eYqTkPYYTyUjG01HQ1RnIbuK8VEjpmNB9XgvaQ02SVL2XKpbIvvlUqZJKi0f+WwIQUfJ
	vpLTEYg+fcBw/dKY5DjXjpdi0wSDZY2gjjDz3lUchMiUVQ0VugKEc8wmIej2cwqvgbzp
	xYRQ==
X-Gm-Message-State: AD7BkJLskYarc4GEnrdyqJw7ZpvK42cr5TRc2bcvZjayV59+YJJzeZL+n68vLe3fpIyPiaTF7LEG0zIKGIravA==
MIME-Version: 1.0
X-Received: by 10.157.9.243 with SMTP id 48mr19068971otz.94.1459972528201;
	Wed, 06 Apr 2016 12:55:28 -0700 (PDT)
Received: by 10.202.4.71 with HTTP; Wed, 6 Apr 2016 12:55:28 -0700 (PDT)
In-Reply-To: <CAJTo0LYQO0GhOL1otLHBj7QR-b2uAxqH+CQjac_5DZT6R2_Zug@mail.gmail.com>
References: <CALRMKQr4A0r2Mseu1uuQaZXpWKokjQ=ZizfkatR4J2mjpQpSvw@mail.gmail.com>
	<25644105.gyxDGl902X@rjs-zotac.streifs.net>
	<CALRMKQo7GPHQLPLTm_dO9uoQgBhGriNW9GFBoG6VOPfaqCeHAA@mail.gmail.com>
	<CAJTo0LaW9jWNK8x_MuxoSjJUsWVTBTA5mN4EtmaFFYLhAC4Edw@mail.gmail.com>
	<CALRMKQrWwR03YyenAefS1GaPQ34GhmRCz0r5GS=rR+1gx45Jqg@mail.gmail.com>
	<CAJTo0LYYRHjZGezVmKBzhv9tEtEJmAEDdMPGMCmcFy==xQVOXQ@mail.gmail.com>
	<CALRMKQri=KgPhxk-0iTUxD59PU-K0i6bfvcxkVF6i_J7UX_Agw@mail.gmail.com>
	<CAJTo0LYQO0GhOL1otLHBj7QR-b2uAxqH+CQjac_5DZT6R2_Zug@mail.gmail.com>
Date: Wed, 6 Apr 2016 13:55:28 -0600
Message-ID: <CALRMKQqD+DpqOP7HK1TPK8VY8ce6n-0wVAeSZWMa7zUWjX_nrQ@mail.gmail.com>
From: Ronald Oakes <ronaldo@brc2.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Rudolf J Streif <rudolf.streif@gmail.com>
Subject: Re: Python do_install fails on QEMUX86-64 and corei7-64 under Debian 8.0.3 isolated station
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
X-List-Received-Date: Wed, 06 Apr 2016 19:55:32 -0000
Content-Type: text/plain; charset=UTF-8

Alas, not legally (government contract).  I might be able to burn them
to CD, but I'd still have to bring them home to email them.

For what it's worth, I may be able to work around this by using the
Poky-Tiny distribution, which is closer to what I'll need for the
minimalist system we need in the end.

RonO

On Wed, Apr 6, 2016 at 9:36 AM, Burton, Ross <ross.burton@intel.com> wrote:
>
> On 6 April 2016 at 15:27, Ronald Oakes <ronaldo@brc2.com> wrote:
>>
>> Unfortunately, my build system is airgapped from the Internet, making
>> copying files into emails (or attaching them) extremely difficult.
>
>
> Can you not put them on a USB stick?
>
> Ross

