Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD564E00BA0; Wed, 23 Dec 2015 18:25:42 -0800 (PST)
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
	*      [209.85.223.172 listed in list.dnswl.org]
Received: from mail-io0-f172.google.com (mail-io0-f172.google.com
	[209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFE60E00457
	for <yocto@yoctoproject.org>; Wed, 23 Dec 2015 18:25:39 -0800 (PST)
Received: by mail-io0-f172.google.com with SMTP id o67so231708793iof.3
	for <yocto@yoctoproject.org>; Wed, 23 Dec 2015 18:25:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=4HcYrhQElw1/nuyy3RQwJjhRn6DE96+6BcOSGvmnyxg=;
	b=jGftCHXUma0UfrFg1sGKS0vc/RBJjzy3gY8j1O4ktOvAUYEocGh0rjLan0utnVIuQG
	zhz2G3hhUP8ZyPxMg2Qx71uAmfBQQMsXRevrFR1Frh1h2HLWCOO/L+1ftwCcXeDqL6SK
	LE4X67CZBn+zDMEW9iBdTW6nRMWz7uTwe8lkM0DfGDt8WqqguCUooY4iu5ETMXlXa3PY
	QDWd7QCRvsDQzv6YxHSz0VK9jZBQKr5y5Oj2QaTuDPi7nolJiUN+ggvwemL9NE8zF5tx
	eQ5LSYZ5DBBTr9gmIL1weRnO5gDkTKd6TAcGfMcKznaJj/ylqJ9NoMFBZRd12zL9j58N
	9nEQ==
X-Received: by 10.107.162.137 with SMTP id l131mr32121020ioe.49.1450923938775; 
	Wed, 23 Dec 2015 18:25:38 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.16.74 with HTTP; Wed, 23 Dec 2015 18:25:09 -0800 (PST)
In-Reply-To: <CAFzUWG=iGCKx=crQv_TvMFBXDUytgv2Aq0FTH+0ug5veV1PGKg@mail.gmail.com>
References: <CAFzUWG=iGCKx=crQv_TvMFBXDUytgv2Aq0FTH+0ug5veV1PGKg@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 23 Dec 2015 18:25:09 -0800
Message-ID: <CAMKF1srrsm9YVJvaZi1Z38X0LQYvuwVFoHeJNrYwDs0mJN1PcA@mail.gmail.com>
To: Giordon Stark <kratsg@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trying to add a recipe for ROOT
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
X-List-Received-Date: Thu, 24 Dec 2015 02:25:42 -0000
Content-Type: text/plain; charset=UTF-8

can you post output of root/6.04.12-r0/build/CMakeFiles/CMakeError.log

On Wed, Dec 9, 2015 at 12:00 PM, Giordon Stark <kratsg@gmail.com> wrote:
> Hi all,
>
> I'm trying to add a recipe for ROOT (from CERN) but I'm running into various
> issues with just trying to get compilers working.
>
> Current recipe:
> https://github.com/kratsg/meta-l1calo/blob/master/recipes-core/root/root_6.04.12.bb
>
> Current log: https://gist.github.com/kratsg/cd3184a167676eb69067
>
> Note that the goal is to have the bare-minimum with PyROOT (enable python
> support). So I'm following:
> - https://root.cern.ch/building-root
> - https://root.cern.ch/build-prerequisites
>
> Thanks,
>
> Giordon
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

