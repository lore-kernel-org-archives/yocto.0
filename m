Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A15C5E00E7B; Tue, 16 Aug 2016 08:13:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55406E00E35
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 08:13:26 -0700 (PDT)
Received: by mail-oi0-f54.google.com with SMTP id f189so102687593oig.3
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 08:13:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=w8m1t8RIiPrNFVORerjtsLdAhpWlWn8Qb5dpmYnzbOs=;
	b=YXh0VHyy5BO1redM4pVnqbd8MddS+LmuoBSXU7u703faojcX53fqmfAiTqUWYYG0/c
	fQtzc4UBhaLmotqeLptyxhDTOFAcWLsP1zh17vUEdSgwc7yPXsIimPz8hT9odECIDkA8
	/U5jQ9hyPq+MBBji20awPLlyVWnfxLy9jQbOuTyE0EyOi762xt9lPDLepayPgFDFJj16
	JTJUIGhZX4NZBvRw6bViJlfMUQMECPk2ML70MObqKxkvZ7LX7NJPRli1bDhzZj1cSWV7
	Pq3qT7dH8p64Qk9PrvfqPmjNE9mMIUiubywzilh91waYN6J3QUV7PCaa3fB+uNfqTEUC
	JfPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=w8m1t8RIiPrNFVORerjtsLdAhpWlWn8Qb5dpmYnzbOs=;
	b=TIkpScUO0LUXWew9uDaAvms7abiJIrH2jS1NCprGi6p4BaFEA6lVcZ9PL0Zjyc4iAb
	Imss3ls5uayw7N20//opATEqlSTNHbLcZHczhwHcRAlz9HVfyUwlHwSaaSC5K2VCzE76
	Pkpcec8t4SPxVlxfD0kEiPKyPrDPSs9pLc8XaUUjVGTtM5kcRAOEm58A4Af7bVHgcuKw
	Zz5YPEM/t8t5aH0maG92A9lyewA3r4Db+ul3nCCkKJUH9+7vWZmZP3+DIf/LPfDnSix3
	Lfc0oKGyLpqXhgcSOKtesOdGRW0z3d8v2jxiscEKTYBTexv0xcvybOZ3PAEq2Ik4pcea
	BX8w==
X-Gm-Message-State: AEkoousarKua/75LNo91OxZfTXnIJs3JpO0wUwccToZUCIo2OVR1Gqx+Z5ibcezuYzmKKTn8C9WxZVCVDYeoQg==
X-Received: by 10.202.5.4 with SMTP id 4mr18546569oif.31.1471360406179; Tue,
	16 Aug 2016 08:13:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.13.137 with HTTP; Tue, 16 Aug 2016 08:12:55 -0700 (PDT)
In-Reply-To: <CAF_dkJD9wqM7rg7U1VeiDs+adEREcoNna58dghfN2BvbxVLWqA@mail.gmail.com>
References: <CAF_dkJD9wqM7rg7U1VeiDs+adEREcoNna58dghfN2BvbxVLWqA@mail.gmail.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Tue, 16 Aug 2016 11:12:55 -0400
Message-ID: <CAF_dkJBvmdC-QXVUf6TU5xC_nVPWa1YeZYnGFbudshtNLWnLig@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to maintain a global DL_DIR?
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
X-List-Received-Date: Tue, 16 Aug 2016 15:13:30 -0000
Content-Type: text/plain; charset=UTF-8

Oh this is ugly...
I tried setting BB_ENV_EXTRAWHITE to DL_DIR in my .bashrc, but found
that BB_ENV_EXTRAWHITE gets overwritten by oe-buildenv-internal as I
mentioned previously.

I tried setting BB_ENV_WHITELIST to DL_DIR in my .bashrc and found
that bitbake just stopped working.

After rereading the manual
(https://www.yoctoproject.org/docs/1.6/bitbake-user-manual/bitbake-user-manual.html#var-BB_ENV_WHITELIST)
I tried setting BB_ENV_WHITELIST to "BBPATH BB_RESERVE_ENV
BB_ENV_WHITELIST BB_ENV_EXTRAWHITE DL_DIR", and bitbake still didn't
work.

So I looked in poky/bitbake/lib/bb/utils.py and found the following:

def preserved_envvars_exported():
    """Variables which are taken from the environment and placed in and exported
    from the metadata"""
    return [
        'BB_TASKHASH',
        'HOME',
        'LOGNAME',
        'PATH',
        'PWD',
        'SHELL',
        'TERM',
        'USER',
    ]

def preserved_envvars():
    """Variables which are taken from the environment and placed in
the metadata"""
    v = [
        'BBPATH',
        'BB_PRESERVE_ENV',
        'BB_ENV_WHITELIST',
        'BB_ENV_EXTRAWHITE',
    ]
    return v + preserved_envvars_exported()

...
    if 'BB_ENV_WHITELIST' in os.environ:
        approved = os.environ['BB_ENV_WHITELIST'].split()
        approved.extend(['BB_ENV_WHITELIST'])
    else:
        approved = preserved_envvars()

This looks like, if BB_ENV_WHITELIST is defined in the environment,
bitbake will use it (arbitrarily appending BB_ENV_WHITELIST to the end
of whatever was defined in the environment variable).  If it is not
defined, then BB_ENV_WHITELIST is initialized to be:

['BBPATH', 'BB_PRESERVE_ENV', 'BB_ENV_WHITELIST', 'BB_ENV_EXTRAWHITE',
'BB_TASKHASH', 'HOME', ...]

So I finally tried setting BB_ENV_WHITELIST in .bashrc to be "BBPATH
BB_PRESERVE_ENV BB_ENV_EXTRAWHITE BB_TASKHASH HOME LOGNAME PATH PWD
SHELL TERM USER DL_DIR"

But it is very sadly ugly... not terribly maintainable... and makes me
think I'm missing something important.

Please tell me I'm missing something important.

--wpd

