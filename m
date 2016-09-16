Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34F71E00CCA; Fri, 16 Sep 2016 16:06:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BBABEE00CC4
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 16:06:23 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id b187so5738755wme.0
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 16:06:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=zRleGJMblyrol6WIBhJ3knCJAFaD5kj9Q4LwW6R6Yi8=;
	b=hhBKZ1wreQpK9P1JaMONVg2bz45w3ER0D4ZFsN6sBoRc6Wb4yTH83U1z7DkNWAxEzs
	J9q0kH5Oy8m1J1T3VSYr0nsUo8XYVzrC9XsnEcOf7xUzaDSKgutBM+5C1tL2BQTH4ZMz
	vr8QcqBcyoQkCt2hn9hOcTIqWixQENUsZyrZCSyW2PybyZetqyc/mBz2y8N/a5rF12J/
	6mLeOWTYzFTS6mtouYsRjAmjPUmP7sbpCkAJ9Rgxynpli6SJEc/UzY60oQyV8vJ68wY3
	/T5S4xQd6ElGyY9iJuu0EJ8anS/Y1iVxcr5WIqFxC6YaYkgISZlYXfog0XS8NpPj4d7/
	6/6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=zRleGJMblyrol6WIBhJ3knCJAFaD5kj9Q4LwW6R6Yi8=;
	b=FaUR/o4SusV8ZCgcPtW6w8+2cjvWtXf5T9rB3rCHU1kmXejtW7BojzuU0nekThmM+J
	2/ofKHy/eb/eCQ2aRcuGVskLn5YMIi5FqwHQcRG1dcC7oVXZvzB+JrYIbs/gO0Spc0aG
	Vm9uftoDt52l4wkoCncKNUac7KrNzQPkDirF3o4PkOHPZ6OPkTV6rMnA4DPTa1GqBuLr
	pc3CLIJMwnYg+3RB3vBI9rEKAgwwY5QkxDdWljtSasVx35Q5ysME680KLgX1aYJOJmAN
	Wre7o6/6nErLmkH74n5dr+PyvOeqqfCwaOtlnbf9yymOUcGqQCL6XalpKSbmsWXwNKQr
	XbGw==
X-Gm-Message-State: AE9vXwMF7o7PPEGOQFmoXBuxRHFldbylcb9/dwasetEVcpGEHZkqp8C2WptRE/Ggdfaj6XJJXE3SCrDxq5Q74A==
X-Received: by 10.28.1.5 with SMTP id 5mr9464531wmb.35.1474067182807; Fri, 16
	Sep 2016 16:06:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.190.233 with HTTP; Fri, 16 Sep 2016 16:06:22 -0700 (PDT)
In-Reply-To: <20160916082406.GB27958@graute-opti>
References: <20160916082406.GB27958@graute-opti>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Fri, 16 Sep 2016 16:06:22 -0700
Message-ID: <CAJ86T=WaKHQFXfSuvAm4wQUfa=xr_CBmK8-ZovaystYGM=9ukA@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: build ntp with openssl support
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
X-List-Received-Date: Fri, 16 Sep 2016 23:06:30 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Sep 16, 2016 at 1:24 AM, Oliver Graute <oliver.graute@gmail.com> wrote:
> Hello,
>
> how can I build ntp with openssl support?
>
> I already created a ntp_%.bbappend file to extend the recipe ntp_4.2.8p4.bb.
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/files:"

You don't really need this line unless you are adding a file to
SRC_URI or replacing a file already in SRC_URI with your own version.

> PACKAGECONFIG += "openssl"

This will enable openssl, but it will also disable all the default
PACKAGECONFIG options (cap, debug and refclocks) which is probably not
what you want. Try this instead:

  PACKAGECONFIG_append = " openssl"

Note the space between " and openssl. It's required.

> is this sufficant to enable openssl?
>
> How can I determine if ntp supports sha1?
>
> Best regards,
>
> Oliver
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

