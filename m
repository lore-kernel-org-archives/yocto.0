Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDD98E00998; Wed, 15 Jul 2015 19:54:41 -0700 (PDT)
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
	*      [209.85.223.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8EF59E0095C
	for <yocto@yoctoproject.org>; Wed, 15 Jul 2015 19:54:37 -0700 (PDT)
Received: by ietj16 with SMTP id j16so47219370iet.0
	for <yocto@yoctoproject.org>; Wed, 15 Jul 2015 19:54:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=zWCcYpyh/IhZHDpG/kaLNxr7PWSn0yhUhyVE6ai/5N4=;
	b=oZWVOGNFfFM70JQoYsYhnFtsFqrMyqn+4lIE138Y1BgIWIl43/XjsxSJxlYj5q9E45
	+3toNi7NSBZUg8eUx5b8sGeuPH0HfFl0iz1CQdJmtEsiOx0D5AOxXbStQsoJVt7+9E2F
	HGSjxi7ZiudOaM4qgCCOfPrHUKQlgSuryG85OHEHI7zMne4rJWNk/h7kmlB8a8O3qNOr
	FrwTmjSLAAYBRW09+xZ7CBhaXbfC6wJ4gTvZTu+aBNgSr0NzVj9rMUYXLO7cqwdhE01P
	d5DBwfFDHEi86GNdiED+qfkE74R6M2KxbLdAGE7GmTTIENCOjR5tZ34KAG6yk+OZ1zbN
	Eepw==
X-Received: by 10.107.132.215 with SMTP id o84mr9488347ioi.36.1437015277459;
	Wed, 15 Jul 2015 19:54:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.20.83 with HTTP; Wed, 15 Jul 2015 19:54:08 -0700 (PDT)
In-Reply-To: <13cb666befe542429cf1351610232147@MDBA.ALTICAST.COM>
References: <72517437afa14ef49b98771c29280999@MDBA.ALTICAST.COM>
	<18f7ce035aef414a9f831b93f7891401@MDBA.ALTICAST.COM>
	<CAMKF1sonpFNZJo4W6hr9tZgwYFLK=FQTYRm-nqonzWgqYMJPyg@mail.gmail.com>
	<13cb666befe542429cf1351610232147@MDBA.ALTICAST.COM>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 15 Jul 2015 19:54:08 -0700
Message-ID: <CAMKF1sqOkmFAwGWJ4PJWcJUy+F6SVrhoKGBmiWcg6+ZNPB4xqA@mail.gmail.com>
To: Dave Kimble <dkimble@alticast.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: using gdb with externalsrc
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
X-List-Received-Date: Thu, 16 Jul 2015 02:54:41 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 15, 2015 at 2:52 PM, Dave Kimble <dkimble@alticast.com> wrote:
> Yes, I'm able to debug the externalsrc component. I can see variables, set
> breakpoints, step/next through the code etc. (so the symbols are valid). And
> local changes to the externalsrc component are reflected when I debug.
>
> But I can't list the externalsrc component source code from within gdb (or
> find it anywhere in the image). The source for all of the other components
> is in the image (and I can list it in gdb). When I try to list the code for
> the externalsrc component, gdb prints this error message:
> "[path on my build machine]/sourceFile.c: No such file or directory."

is this path pointing to S which is externalsrc path or to B which is
under build TMPDIR
and secondly, can you see compiler flags used during build for externalsrc ?

are you using master branch ?

what does show directories say

>
> If I don't use externalsrc at all, I can debug all of the components and
> list source code for all of them from within gdb.
>
> So, I can't solve how to get the externalsrc source code into the image. I
> don't mind if I have to use "set substitute-path" from within gdb if
> externalsrc source files are put in a different place (although, it'd be
> ideal if they were put in the same place).
>

sources are embedded in debug info, most probably when debug-split is done
at that point there could be something going wrong where its not able
to put the right path links

