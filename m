Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6609E00BEA; Sat, 15 Oct 2016 14:22:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f180.google.com (mail-qt0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C9A8DE00BC1
	for <yocto@yoctoproject.org>; Sat, 15 Oct 2016 14:22:22 -0700 (PDT)
Received: by mail-qt0-f180.google.com with SMTP id q7so95350448qtq.1
	for <yocto@yoctoproject.org>; Sat, 15 Oct 2016 14:22:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=QWKFCx2Ilu6769vzn8jnnEXjj4+JnJ+eUfop7YkOczs=;
	b=IZeg/ZNE9ANFF6tD7em324cSY7DlKyhbAXMHj7PlvQIO1Cvvs3YE3t2pilEPv9AxPU
	5RVbnu2GbI9qXLmjdgK+Tt9wQvTcAQNZe0DzwMq5UzV4EIPsisV31SKQHZ5P/E0aRBfZ
	gWCRH3tELlB4LFyan/IloA/H+r59W9/KlnarrVzARqIVrFNLNPPRLWs4rJ/i1sKMeExp
	kyqNiV9zCl16U0N7lxhiXclv094lzuuFIOEnKvgA5b6U5Of1eHsVnZGTBmhzomEz3F3A
	OyJEaKHPvfGcypFcKW8zK4k7IY+PTDjwo++5NUKr3sOFylseJPAQCpno8eevNmSgG1Cv
	sqfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=QWKFCx2Ilu6769vzn8jnnEXjj4+JnJ+eUfop7YkOczs=;
	b=i9aZu05ezvQRl3KBad0S9qC1rPuz74zIBECg2i9XEDIeyTkIjsdwbg54nJu/Nk1Dat
	Pg8Zc5vXQmpoBEQaVhRPi49hHToj0e0gJZIqdc+Sae4fyRuTjpm+ZigZqATsrrtAZ2b5
	y3rpQM/hjc/wNzCFW1AEDWI7W3Amf5HU7YcaS41pWo6PRc5pDHyGI0V+bK87jP6C+6wp
	4Kg5EHp9uZHmXal/h+DAMtfx4VGivZzZMZHkV7NvdW8X8HZTYKULzQBV9uPfVSS4j/HU
	tku/juqRC+ajfgZKEpFyRDHh4Hb0+p8qN67++8XjAPo0LvjFOZUMP3eaDIeVl7WPAcHq
	U/WQ==
X-Gm-Message-State: AA6/9RmUKIG2HPbWposWNQrR04Mro3wr94S/SDypPmu95oNPhTKoDBs6ZgIQVoXRLkvWPCzDhCJF8hLM47FUGg==
X-Received: by 10.200.36.202 with SMTP id t10mr18858088qtt.85.1476566541661;
	Sat, 15 Oct 2016 14:22:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.237.32.1 with HTTP; Sat, 15 Oct 2016 14:22:21 -0700 (PDT)
In-Reply-To: <e78a5a30-b839-ffb4-8282-41896cdb1b77@windriver.com>
References: <1707604.JiaMnXxcz2@peggleto-mobl.ger.corp.intel.com>
	<2371a296-57bd-affa-0b1f-1304ce81e0dc@windriver.com>
	<1476434156.3083.2.camel@intel.com>
	<e78a5a30-b839-ffb4-8282-41896cdb1b77@windriver.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Sat, 15 Oct 2016 17:22:21 -0400
Message-ID: <CAHUNapSunzsD_2XVogecQUDasOufsupTP8UtYA5dG_DQVhmbyg@mail.gmail.com>
To: Robert Yang <liezhi.yang@windriver.com>
Cc: "Lock, Joshua G" <joshua.g.lock@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"srifenbark@gmail.com" <srifenbark@gmail.com>, "EGGLETON,
	PAUL" <paul.eggleton@intel.com>
Subject: Re: Migration info - runqemu
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
X-List-Received-Date: Sat, 15 Oct 2016 21:22:23 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 14, 2016 at 5:16 AM, Robert Yang <liezhi.yang@windriver.com> wrote:
> Yes, the benefit is that the machine knowledge are not hardcoded into
> runqemu any more, the bsp can define its own arguments to make it can be
> boot by runqemu. And previous usage patterns also be supported.

https://bugzilla.yoctoproject.org/show_bug.cgi?id=4827

