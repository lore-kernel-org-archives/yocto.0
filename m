Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E76B8E006DB; Wed, 23 Jul 2014 12:34:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.169 listed in list.dnswl.org]
Received: from mail-ig0-f169.google.com (mail-ig0-f169.google.com
	[209.85.213.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F23EE006B7
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 12:34:26 -0700 (PDT)
Received: by mail-ig0-f169.google.com with SMTP id r2so5725765igi.2
	for <yocto@yoctoproject.org>; Wed, 23 Jul 2014 12:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=EfwINFOdZDHvWTkqSvi8XvZMN12aPsP0XxHXwktpBDw=;
	b=WeFIhm1lq7H1D0LDvV6F4e5HPg+Z3/svyo1sXrqB4lnRzcVD5p11bakJUkVCOd9Lpw
	puZIRqx2oNWtOzL6UfwL7BGqgqP3hcHGInP4PY5Io4SLDs5jj0VoIey8OxAZ01GsEUmX
	v3R5Gckpzrl4E+wdMC+rYDramQhR790r/dyyzB64NFezEgLJ+hCv+TXgdRaTwlp4C4DN
	oJMWfD4Fh4PTJU02fNvvy0VuABdNXE37Y2oXqJDvRoCBMjSEy3dNWE/kVZTxLw8yz6+x
	OKzY4QIZHs6wMiXZv+wD1MSZOjIDg22oOOX1tpTBHpwSAbQhQVn0tpEunP9gHI1Wh4Bu
	xqbg==
X-Received: by 10.50.13.102 with SMTP id g6mr7185903igc.20.1406144065752; Wed,
	23 Jul 2014 12:34:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.78.105 with HTTP; Wed, 23 Jul 2014 12:33:55 -0700 (PDT)
In-Reply-To: <CACgAsMdT_ZUw+z2qQ0CghqLYmKDUybwDYwvHwqu7N5SO6yqWYg@mail.gmail.com>
References: <CACgAsMdT_ZUw+z2qQ0CghqLYmKDUybwDYwvHwqu7N5SO6yqWYg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 23 Jul 2014 12:33:55 -0700
Message-ID: <CAMKF1srhy2BhHSz_ZfgXrSW6tyEd_SDZd-A5fCFGRmH+PxdXCA@mail.gmail.com>
To: openembeded-devel <openembedded-devel@lists.openembedded.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [oe] [Yocto 1.6] PAM _pam_load_conf_file: unable to open /etc/pam.d/system-auth
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
X-List-Received-Date: Wed, 23 Jul 2014 19:34:34 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 22, 2014 at 4:07 PM, Kevyn-Alexandre Par=C3=A9
<kapare@rogue-research.com> wrote:
> Hi,
>
> Just trying to found what's missing for PAM to work so ssh will stop
> exiting with Broken pipe? Quick fix to solve ssh broken pipe is to
> change in /etc/ssh/sshd_config "UsePAM yes" to "UsePAM no". But this
> does not remove my PAM error?

Try the tweaks we did in angstrom for openssh and pam here
https://github.com/Angstrom-distribution/meta-angstrom/tree/master/recipes-=
tweaks

