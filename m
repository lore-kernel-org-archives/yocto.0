Return-Path: <raj.khem@gmail.com>
Received: from mail-pz0-f43.google.com (mail-pz0-f43.google.com
	[209.85.210.43])
	by mx1.pokylinux.org (Postfix) with ESMTP id 7FC9A4C800A9
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2011 20:44:59 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk1 with SMTP id 1so268121pzk.16
	for <yocto@yoctoproject.org>; Wed, 03 Aug 2011 18:44:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=from:to:subject:date:message-id:organization:user-agent:in-reply-to
	:references:mime-version:content-transfer-encoding:content-type;
	bh=VO88R5nodLQXn7wF8gPoyeBeJpsEm4wlEn1BZtEie2U=;
	b=PAms6wIeB+LKY4S0uYfg+dQT6T3t6YraLSE7jBUz2JM3p7hJ6RFxE+GJfhXhn27qhw
	Pak3Da0Hd+HA4ZHJ1tDWsHDGKHvDSPYyj82heArswuB8Y5sAtEeUQnZBGd2z5IvIuWQx
	ZYXXyxZ6mMFm2QQ2o05VcE3RyxGHVYNA3O8Q0=
Received: by 10.142.62.40 with SMTP id k40mr183894wfa.316.1312422298973;
	Wed, 03 Aug 2011 18:44:58 -0700 (PDT)
Received: from perseus.localnet (99-57-141-118.lightspeed.sntcca.sbcglobal.net
	[99.57.141.118])
	by mx.google.com with ESMTPS id e6sm1613543pbm.71.2011.08.03.18.44.58
	(version=SSLv3 cipher=OTHER); Wed, 03 Aug 2011 18:44:58 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 03 Aug 2011 18:44:56 -0700
Message-ID: <1522642.ppiasj8dqr@perseus>
Organization: Sakrah
User-Agent: KMail/4.7.0  (Linux/2.6.38-10-generic; KDE/4.7.0; i686; ; )
In-Reply-To: <4E39E30B.3080206@am.sony.com>
References: <4E39E30B.3080206@am.sony.com>
MIME-Version: 1.0
Subject: Re: Build failure on recent yocto download
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
X-List-Received-Date: Thu, 04 Aug 2011 01:45:00 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, August 03, 2011 05:08:43 PM Tim Bird wrote:
> |                  from cairo-scaled-font-private.h:45,
> |                  from cairoint.h:380,
> |
> |                  from cairo-arc.c:37:
> | cairo-mutex-impl-private.h:262:3: error: #error "XXX: No mutex
> | implementation found.  Cairo will not work with multiple
> | threads.  Define CAIRO_NO_MUTEX to 1 to acknowledge and accept this
> | limitation
> and compile cairo without thread-safety support."
> 
> | In file included from cairo-mutex-type-private.h:45:0,
> |
> |                  from cairo-scaled-font-private.h:45,
> |                  from cairoint.h:380,
> |
> |                  from cairo-arc.c:37:
> | cairo-mutex-impl-private.h:271:30: error: expected '=', ',', ';', 'asm'
> | or '__attribute__' before 'cairo_recursive_mutex_impl_t' In file
> | included from cairo-scaled-font-private.h:45:0,
> |
> |                  from cairoint.h:380,
> |
> |                  from cairo-arc.c:37:
> | cairo-mutex-type-private.h:49:3: error: #error "CAIRO_MUTEX_IMPL_LOCK
> | not defined.  Check cairo-mutex-impl-private.h."
> | cairo-mutex-type-private.h:52:3: error: #error "CAIRO_MUTEX_IMPL_UNLOCK
> | not defined.  Check cairo-mutex-impl-private.h."
> | cairo-mutex-type-private.h:55:3: error: #error
> | "CAIRO_MUTEX_IMPL_NIL_INITIALIZER not defined.  Check
> | cairo-mutex-impl-private.h." cairo-mutex-type-private.h:139:3: error:
> | #error "CAIRO_MUTEX_IMPL_LOCK not defined"
> | cairo-mutex-type-private.h:142:3: error: #error
> | "CAIRO_MUTEX_IMPL_UNLOCK not defined" cairo-mutex-type-private.h:151:3:
> | error: #error "CAIRO_MUTEX_IMPL_NIL_INITIALIZER not defined"
> | cairo-mutex-type-private.h:161:28: error: expected '=', ',', ';', 'asm'
> | or '__attribute__' before 'cairo_mutex_t'
> | cairo-mutex-type-private.h:162:38: error: expected '=', ',', ';', 'asm'
> | or '__attribute__' before 'cairo_recursive_mutex_t' In file included
> | from cairoint.h:380:0,
> |
> |                  from cairo-arc.c:37:
> | cairo-scaled-font-private.h:108:5: error: expected
> | specifier-qualifier-list before 'cairo_mutex_t' In file included from
> | cairo-mutex-type-private.h:45:0,
> |
> |                  from cairo-scaled-font-private.h:45,
> |                  from cairoint.h:380,
> |
> |                  from cairo-base64-stream.c:39:
> | cairo-mutex-impl-private.h:262:3: error: #error "XXX: No mutex
> | implementation found.  Cairo will not work with multiple
> | threads.  Define CAIRO_NO_MUTEX to 1 to acknowledge and accept this
> | limitation
> and compile cairo without thread-safety support."

hmmm this error means you dont have libc headers installed properly.
Seems something is broken in your environment. Its probably using some tools 
from your build system which are not quite in line with what configure wanted
Can you post the config.log of cairo somewhere ?

-- 
Khem Raj

