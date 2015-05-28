Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 478D8E009E5; Wed, 27 May 2015 19:13:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f177.google.com (mail-ie0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10505E009A1
	for <yocto@yoctoproject.org>; Wed, 27 May 2015 19:13:05 -0700 (PDT)
Received: by iepj10 with SMTP id j10so27888013iep.3
	for <yocto@yoctoproject.org>; Wed, 27 May 2015 19:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=GK609MY9Lwe7v4DOTRQO8vO/jN1DBUAtVkw0Qauqajc=;
	b=cKYJLp6EnhWlryPknjZfKUAFMT6Z3fq67wUARufApnuH+C9nZpnS7ow5o8ycl9q2NZ
	NZrG8M3oLnAks3BdrqKS5UQp2WIPjhqNY6fsJVLnBwCKhPQfRbaMuNVgtcGqXESAmK+e
	dccO4NnYAgdEwUcRIIpfq3p+EbHtBa812axpVkMtRRkO/TSaM4MMKTapqRqf4iP97CRl
	7+UUPoLCt8lTgcAHPOLI6FcASFvVPR4JV4sPpvs1CICJTmwl28sWKDq9qymsOzt4FybM
	w8MdDqageVV8hcC7KKVi9g1DF3aKVMz/iHLyNrf3aGOKm/JLZ/uVKmDO8Dh2x0gLsWWv
	U3Bw==
X-Received: by 10.107.8.40 with SMTP id 40mr511532ioi.38.1432779184759; Wed,
	27 May 2015 19:13:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.112.34 with HTTP; Wed, 27 May 2015 19:12:34 -0700 (PDT)
In-Reply-To: <CACG401qjzuj6bNjSb6sjAuKYKbC5Gibwn75chuv9nfydHmim+w@mail.gmail.com>
References: <CACG401qjzuj6bNjSb6sjAuKYKbC5Gibwn75chuv9nfydHmim+w@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 27 May 2015 19:12:34 -0700
Message-ID: <CAMKF1sr9Bb65KjLq=9WK+MSEdswbCczQ2bESfFp4_V5CbWg30A@mail.gmail.com>
To: Jesse Cobra <jessecobra@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: GCC 4.8.2 build errors
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
X-List-Received-Date: Thu, 28 May 2015 02:13:10 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, May 27, 2015 at 3:46 PM, Jesse Cobra <jessecobra@gmail.com> wrote:
> /media/build_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/gcc/cp/parser.c
> -o cp/parser.o
> |
> /media/build_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/gcc/cp/parser.c:
> In function 'bool cp_parser_tokens_start_cast_expression(cp_parser*)':
> |
> /media/build_drive/3_10/build/tmp/work-shared/gcc-4.8.2-r0/gcc-4.8.2/gcc/cp/parser.c:7159:12:
> error: 'ref_qual' was not declared in this scope
> |      return ref_qual;
> |             ^
> | make[2]: *** [cp/parser.o] Error 1


is it always reproducible ? can you try same for say qemumips or
qemux86 as machine and see if it fails in same way ?

