Return-Path: <kergoth@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 863DFE00348
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2012 09:33:05 -0700 (PDT)
Received: by mail-la0-f48.google.com with SMTP id u2so442309lag.35
	for <yocto@yoctoproject.org>; Fri, 19 Oct 2012 09:33:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=yBtXtgzmlRzNHQSWcj4P4FnyOdUBheF8TKomMo53WEU=;
	b=bgWgOJH925U/BZQtFQeOuBVU/m23klPjJZuNjwFWYN35uhHgiXJFy/BlxK/x5kdA5J
	Bvaj4SpyN7rkHo5cdT/DqbXrLOWzVWpUFtVz4hXxtrCkVTxCoxg08iBuC68NIZYEIMAs
	QDdPy/tYFiRj6zyjJF+UjzbzR20Rc35swxP1Mb2dyKI3ap/el5xTjqMDtdteiF520NYK
	3LE7W6CoAvfd/hNLhMr88mrYaDJgx3Wh0el0QgS+QLUVtbJLxzSWaUajl5whTIW85zKP
	n7C63tcmqIASc6Egl0cxBPUuv2GgW5D3x8RUGubNw7cGwVfUpatRNLa+Jw9U9C9z3Le2
	fIJg==
Received: by 10.152.123.103 with SMTP id lz7mr1632002lab.21.1350664382252;
	Fri, 19 Oct 2012 09:33:02 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.114.1.49 with HTTP; Fri, 19 Oct 2012 09:32:42 -0700 (PDT)
In-Reply-To: <CA+QkY1AjaZA1QUU1MyLMz3+N3GndR4jB=U=MgaWE3rjgb1udFQ@mail.gmail.com>
References: <CA+QkY1AjaZA1QUU1MyLMz3+N3GndR4jB=U=MgaWE3rjgb1udFQ@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Fri, 19 Oct 2012 09:32:42 -0700
X-Google-Sender-Auth: sYifD-mcyLBrCgiKSD0Uf9OKtJA
Message-ID: <CABcZAN=H+EP48uk7s8FKR6DM5_KH9dPWd-i=JAwAU8heFZ5YAw@mail.gmail.com>
To: Jerrod Peach <peachj@lexmark.com>
Cc: yocto@yoctoproject.org
Subject: Re: openssl-native doesn't play nice with sstate (mirrors)?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 19 Oct 2012 16:33:06 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 19, 2012 at 9:03 AM, Jerrod Peach <peachj@lexmark.com> wrote:
> In this case, it seemed openssl wanted to find a config to its original
> build location, but it wasn't allowed to find it in this case, because that
> directory was owned by a different user.  Grepping through the binary and
> openssl's *.so files, I found a ton of references to the original build
> directory.  I was finally able to get around this behavior by setting a
> couple of environment variables to point to the current directory of the
> binary (namely, OPENSSLDIR and OPENSSL_CONF), but is this expected behavior?
> Is there some workaround that gets prevents the user of openssl-native from
> having to set those environment variables?  Or, is this a bug in the way
> openssl-native is built?

I'd suggest adding a create_wrapper call to the recipe to emit a shell
script wrapper which sets those variables, then the standard sstate
sed'ing of the sysroot path will occur to the wrapper, and it will
always work. We do this in a number of other recipes to work around
relocation issues.
-- 
Christopher Larson

