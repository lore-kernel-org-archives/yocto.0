Return-Path: <mark.hatle@kernel.crashing.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 502BCE00C9B; Mon, 21 Oct 2019 07:37:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from kernel.crashing.org (kernel.crashing.org [76.164.61.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 067EFE00BA2
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2019 07:37:54 -0700 (PDT)
Received: from Marks-MacBook-Pro.local ([76.164.61.198]) (authenticated bits=0)
	by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id x9LEZcKG007190
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO); Mon, 21 Oct 2019 09:35:43 -0500
To: Yann CARDAILLAC <yann.cardaillac@smile.fr>, yocto@yoctoproject.org,
	openembedded-core@lists.openembedded.org
References: <CAA984JUdZZ7d6pnpeddtSSR_XkPfxsUw-8e3AsLPjyiXzvJd0w@mail.gmail.com>
From: Mark Hatle <mark.hatle@kernel.crashing.org>
Message-ID: <f9a16068-7062-b02e-0fd0-63acda2ec1ab@kernel.crashing.org>
Date: Mon, 21 Oct 2019 09:35:38 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:68.0)
	Gecko/20100101 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <CAA984JUdZZ7d6pnpeddtSSR_XkPfxsUw-8e3AsLPjyiXzvJd0w@mail.gmail.com>
Cc: jakub@redhat.com, Romain Naour <romain.naour@smile.fr>,
	mark.hatle@windriver.co
Subject: Re: [OE-core] [prelink-cross] Bug 13529 add SPDX identifier
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
X-List-Received-Date: Mon, 21 Oct 2019 14:37:56 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 10/21/19 4:43 AM, Yann CARDAILLAC wrote:
> Hi Mark Hatle, Jakub Jelinek,

Jakub is no longer supporting this code, but he may have valuable insights into
licensing.

> I'm currently beginning the work on bug 13529:
> 
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13529
> 
> The purpose is to add SPDX identifier to scripts and sources.
> 
> Most of the sources have licences on the sources, however some of them don't,
> and I've question about others :
> 
> - src/sha.c do not shall it be GPLV2-or-later as most of the other?

/* sha.c - Functions to compute the SHA1 hash (message-digest) of files
   or blocks of memory.  Complies to the NIST specification FIPS-180-1.

   Copyright (C) 2000, 2001, 2003 Scott G. Miller

   Credits:
      Robert Klep <robert@ilse.nl>  -- Expansion function fix
   NOTE: The canonical source of this file is maintained in GNU coreutils.
*/

The last line is the key.  This apparently came from GNU coreutils.

From the SCM logs, sha.c was introduced in approx 2003-07-01 from what it looks
like.  So it's a pretty old version.  You will need to do some detective work,
and find older versions of coreutils until you find the one that corresponds to
the code that was checked in.  Start back in 2003 and work backwards as
necessary.  (The version that matches to the original 2003-07-01 should be the
reasonable license to use.)

> - how to licence m4/libelf.m4 ? I'd prefer you to tell me exactly what to add in
> order to avoid errors

The original version of the m4/libelf.m4 was introduced 2001-09-27.  It appears
to me that it was written as part of the prelinker, so would be under the
overall license of the prelinker.

Based on this, my assumption is that it is GPL-2.0

I do not see any 'or-later' clauses anywhere.

> - what about *.C files ? They don't have licence header, they look like C file
> to me so I'd probably add :
> // SPDX-License-Identifier: GPL-2.0-or-later

There are each simply test cases.  They would be covered by the overall
'COPYING' for the package.  Thus GPL-2.0

> - what about testsuite/ files ?

Same, no specifically stated license will be GPL-2.0.

> Shall every thing just be GPL-2.0-or-later?

Also just to be clear.  As I am NOT the original author of this work, I won't
accept a patch to remove any existing license text from the headers in this
software, but I will accept the SPDX-License-Identifier to be added in addition
to the existing license text.

If an existing file does not have any License text in it, then we will need to
assume that the COPYING file covers all software unless there is some indicator
it comes from another source with a different license.  For items w/o existing
licenses, just adding the SPDX-License-Identifier will be acceptable.

So in a header similar to:

/* Copyright (C) 2001, 2002, 2003, 2007 Red Hat, Inc.
   Written by Jakub Jelinek <jakub@redhat.com>, 2001.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software Foundation,
   Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.  */

please add the header between the 'Written by' and the existing license text,
such as:

/* Copyright (C) 2001, 2002, 2003, 2007 Red Hat, Inc.
   Written by Jakub Jelinek <jakub@redhat.com>, 2001.

   SPDX-License-Identifier: GPL-2.0-or-later

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by


> Best Regards,
> 
> Yann CARDAILLAC
> 
> -- 
> SMILE <http://www.smile.eu/>
> 
> 20 rue des Jardins
> 92600 Asnières-sur-Seine
> 
> 	
> *Yann CARDAILLAC*
> Ingénieur Systèmes Embarqués
> 
> email yann.cardaillac@smile.fr <mailto:yann.cardaillac@smile.fr>
> url http://www.smile.eu
> 
> Twitter <https://twitter.com/GroupeSmile> Facebook
> <https://www.facebook.com/smileopensource> LinkedIn
> <https://www.linkedin.com/company/smile> Github <https://github.com/Smile-SA>
> 
> 
> 
> eco Pour la planète, n'imprimez ce mail que si c'est nécessaire
> 

