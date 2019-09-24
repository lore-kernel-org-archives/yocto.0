Return-Path: <maillinglists18@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1BBDDE00B33; Mon, 23 Sep 2019 22:35:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (maillinglists18[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.179 listed in list.dnswl.org]
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
	[209.85.208.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C447E008C8
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2019 22:35:42 -0700 (PDT)
Received: by mail-lj1-f179.google.com with SMTP id f5so505998ljg.8
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2019 22:35:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=lTBRg4NFkmGD0bgoIE5kdV6fIJWyXlXaOWoaDUYr5zA=;
	b=gqyWvmZurmTgmwBVZ+WlXIwF4YGJ1D+5rAl2fT+2VjbfZxTh4LjPabZsLx8y5EKRmS
	J6RguriCHnjhXx+ALcAJv5hM1RzcghjiD1qZDCDZb83nNEmf4Gzwf/JEd7ofkuN4Xk9R
	sXgiqi5nt2i7fHbTSui4a1vj5nxJZ2L4hBqpogdMfzF4L7s0kiosoE2ohVyirafc/zid
	bt8ZvR2n9MSjpEXGdX5yO80/NJAYvwoun5ZfYl9x293J1+JGyuCdqjleR8QD6qceppjj
	DwNslxYl4QKBpumqeI6hvItXOc+z/07h05iQRmKpEj12w0d9Xo+WluJGIigoGt/rw9y+
	ihmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=lTBRg4NFkmGD0bgoIE5kdV6fIJWyXlXaOWoaDUYr5zA=;
	b=fIaqWNg7AqfNLT3hXcxH2qChuo3O9G7Hjb5DhsDA2ZaIRduPZqw/NDhzAUHh1Mff9g
	KfcUZsu6FXF319RiwR3dIZdGKsl6DXX/DpDrvia+UI3k0qY7sqYvljUR2mRDDevVJDL1
	yc8vRVyWDz9pLQsshp0FTO/JIkFnFNVvHPdepbkweA7mUCvGh7aUWB+c6I2v1DRCyq5y
	qse3lf6QWtf+55lL0IeTb6bg70R/vr7jt8zkXyzC0RhGRwkCw6jk78J122t6UZdi2Upj
	S9vbTOceVjymgay2OZmZXAwd7v7CD10jvZbF/XYDSfS3ixYaSap/dsqOh4zIEPZGt1v5
	c14Q==
X-Gm-Message-State: APjAAAUyQl92DxEiVWbwGf4s1Z1QYHhJqvAXkH/xrPyKie3hvZdTErj5
	At2toFF109FTbHt1Tj2Fe0OMRyDYuYDCMPhA+cc=
X-Google-Smtp-Source: APXvYqwy22hJgCNOIOWXPWYch45+01sTcmOxck8WUUmFFn2GoXEyJKEXnE8v8l90VC9OQK4x2JYtEcrWw6soT8X0TRk=
X-Received: by 2002:a2e:b4c4:: with SMTP id r4mr672992ljm.69.1569303341419;
	Mon, 23 Sep 2019 22:35:41 -0700 (PDT)
MIME-Version: 1.0
References: <CAAmVmrpyrf6QhAA85UwWQa1mbrd5D6KmddKndeMqcoGG-YP9mA@mail.gmail.com>
	<fe22ebb4-447c-4f3c-4bec-052f37e38621@intel.com>
	<CAAmVmro9QhrBCxhMHZK656JHC0Cj0gZ+aiK4AaLBSE7cvhs6nw@mail.gmail.com>
	<e272af8d-8ad0-d964-b9ca-3b96be0155a4@intel.com>
In-Reply-To: <e272af8d-8ad0-d964-b9ca-3b96be0155a4@intel.com>
From: Teemu K <maillinglists18@gmail.com>
Date: Tue, 24 Sep 2019 08:35:29 +0300
Message-ID: <CAAmVmrpmeDkrW1LrnLNA810adEGRaUSgNHN0je=iH5csFxeQFg@mail.gmail.com>
To: Ross Burton <ross.burton@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Debug-files in SDK
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
X-List-Received-Date: Tue, 24 Sep 2019 05:35:43 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, Sep 23, 2019 at 12:27 PM Ross Burton <ross.burton@intel.com> wrote:
>
> On 23/09/2019 10:19, Teemu K wrote:
> > One question is that is there a way to make package that would contain
> > only dpg-pkgs and src-pkgs? Ie. it'd be like 'debug-addition' for SDK?
> > I know how to install those things to target, but how to get them to a
> > package (or in separate directory) to host.
>
> This is where you'd use an Extensible SDK instead of a traditional SDK,
> where you can install packages into the sysroot after installation.

Okay, I'll have to investigate that more. Last time(quite awhile back)
I tried the eSDK generation it ended in error if I'm not mistaken.
Thanks!

-Teemu

