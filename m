Return-Path: <jatedev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1A523E006F3; Thu, 10 Jul 2014 13:11:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jatedev[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
Received: from mail-qc0-f178.google.com (mail-qc0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5987E0059F
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 13:11:29 -0700 (PDT)
Received: by mail-qc0-f178.google.com with SMTP id i17so104071qcy.9
	for <yocto@yoctoproject.org>; Thu, 10 Jul 2014 13:11:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=k7qZrFqe8WmDp2K05hFrICw/QGy0El6N1j3CjBB+Gc4=;
	b=JExUVJ/tQmIqBOwqM+vQ0pRo4H6Yu8AmukaYS/Nvqyrs6nsBXypXLyoP4lmqqPsrYI
	NZEWTOZliN3IeKvKCyHsyB51zbetI8gl3ZQgnPjq4ruXi9+vvRnXFIDlHFIJKg5x/P1O
	zo4UnRJuFZQ9GRaJFHbrNaYjGaudbTEv+mzjYeC1OKWtYJLMH0fs++zp+y7FH7rZM2bv
	k90frdprWE8PsXrWfNLODmDk5m0JKOCeCK1kDeARlbp/dYZdA2qen49XgSMais41dxG/
	bZjQh2/HnawFW4NmAY/P+6hHwarTZK07+SWV1n0QXjHAHAPRzdCC/I9J75pg+dtY91Ay
	9aFg==
MIME-Version: 1.0
X-Received: by 10.140.46.70 with SMTP id j64mr81060872qga.27.1405023089293;
	Thu, 10 Jul 2014 13:11:29 -0700 (PDT)
Received: by 10.140.101.6 with HTTP; Thu, 10 Jul 2014 13:11:29 -0700 (PDT)
In-Reply-To: <53B39DCE.9060705@freenet.de>
References: <CAPphmgZ+ivQYXuYHLWfzQF9QySVnd=YtbM=fEjfA_7hp3iFq1A@mail.gmail.com>
	<53B39DCE.9060705@freenet.de>
Date: Thu, 10 Jul 2014 16:11:29 -0400
Message-ID: <CAPphmgaa8uhXjwDq+c-GUgyyqhcPB-gdsHmAxq4_c_x1acBooQ@mail.gmail.com>
From: Jate S <jatedev@gmail.com>
To: Jens Lucius <jenslucius@freenet.de>
Cc: Yocto Project <yocto@yoctoproject.org>,
	openembedded-devel@lists.openembedded.org
Subject: Re: python tkinter dependencies
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
X-List-Received-Date: Thu, 10 Jul 2014 20:11:37 -0000
Content-Type: text/plain; charset=UTF-8

- Python-tkinter requires the tk recipe in meta-oe, so you must add
this layer for your build.
- I am on dora. I found that I needed commit "tk: make multilib build
compatible and fix library install" made on 12/5/2013
(1ca29d1cda0d007c4e6a28fe1a4037b4029ad7ae).
- I created a bbappend for python. In this I added
DEPENDS_class-target on tk, and RDEPENDS_class-target on tk and
tk-lib. Also, I did a SRC_URI replace to eliminate the
avoid_warning_about_tkinter.patch file.

I was able to build and use python-tkinter successfully.

The question now is if this should go into meta-oe or oe-core. And how.

The tcl recipe is in oe-core, but not tk. I'm not yet sure why this
is. Does anybody know?

- Jate S.

On Wed, Jul 2, 2014 at 1:51 AM, Jens Lucius <jenslucius@freenet.de> wrote:
> Hi
>
> It worked for me in my build env after trying several things.
>
> I did setup a new yocto some while ago and actually had the same problems
> again.
>
> There is a patch in python about tkinter (03-fix-tkinter-detection.patch).
>
> I removed that, did a fresh rebuild of python (-c clean) and did a rebuild
> of my image (as no new image was written by building my image after
> rebuilding python).
>
> Either of these did work for me, maybe somebody knows exactly which step :-)
>
> Jens
>
> Am 02.07.2014 05:41, schrieb Jate S:
>
>> The python-tkinter module requires _tkinter. A result from a websearch
>> suggested that I needed to make sure tk (from meta-oe/meta-oe) and tcl
>> were installed before compiling python.
>>
>> I added a DEPENDS on the tk and tcl recipes to both python and
>> python-tkinter in a python_2.7.3.bbappend. It did not work and was
>> never built.
>>
>> I'm looking for tips to figure out what is going on. Thanks.
>>
>>
>> - Jate S.
>
>

