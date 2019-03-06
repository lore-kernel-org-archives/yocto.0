Return-Path: <alex.kiernan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56D19E00C4D; Tue,  5 Mar 2019 20:44:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kiernan[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.193 listed in list.dnswl.org]
Received: from mail-vk1-f193.google.com (mail-vk1-f193.google.com
	[209.85.221.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 381BFE0090C
	for <yocto@yoctoproject.org>; Tue,  5 Mar 2019 20:44:58 -0800 (PST)
Received: by mail-vk1-f193.google.com with SMTP id w85so2510294vkw.11
	for <yocto@yoctoproject.org>; Tue, 05 Mar 2019 20:44:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=VTQHGzzbascs4vef5FqwkxwDKsbjto/2m/IGJ4Py2vA=;
	b=og2aD2Ry3yk2CsJ64eotP5s8efrsmGKxFLiesyXfuLw9Ssj5a3Kq9p3BgHUgGOUVpK
	2lH+QFFo1ReLxvj5YqEDUVYV2SszDZEeRO3d2fopk3hjvCEOhSy5Pu8alHaDq48R23qy
	hJrCpMc6INg6YFzB0MOkpzeKNywoGflTgS3ziffajGLmcGG+RT8q5ig0jFzt+mY8vLQP
	hExZ7Y/v2PMNVTxDxIKMlAuQo7UsfyndgBkfslHZDv0SAUWbK/Evkci7vWLvZmUKr4Mv
	jBOH+x8bmYS3l3/q2BvXLcy9+omTsmlUWj8h3wly2NSsDVtMMuq5qkBVz109BWpzlL9R
	KYgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=VTQHGzzbascs4vef5FqwkxwDKsbjto/2m/IGJ4Py2vA=;
	b=hTF8FfRY1dVuPEuqIvHITtAGZkEOfI5DKMIx8pBFeY2jWlAL5YMHAcA9eVxDrO9M+h
	lPcdhdlY7xUhbqYzlQM1ww+PuVtoZPqHLfvwkG+9ceLyNKpc3+ZtsB/XuqyQVirPNslC
	khyhqsZDB6vW6087TM4gGPxQ6gWZmHiWHputF6ezu0dKJURMtTEZxsZYihkPSGZNzghg
	/WfAFsof/DeL5ZeYtYkWb6mHkwsDCA7eM/l75NJg2lDuGEJ6Dwtyo2186YQXAr+G19bB
	JkmMwZLu5+BF523a8flkHgJMelxtUhXkMsMecp3YGNo0/L2wD1dW+7CHZSIJkwT7n1Zi
	vSwA==
X-Gm-Message-State: APjAAAU/xKBaUYS2f4CLns0g35GRQm+YviwiSd2PFVBpNYIG3H1SVFR9
	o6ruzsa7+AQ4M34AsA3wknJ0wWdJuqt2jscTI9c=
X-Google-Smtp-Source: APXvYqySmc5eJq46YbxhrHMHQnVZttmYvGrh7ZtteLGS+ZksBC+qXBIVLd48t/2r/J852Pp0yvGc6gFuokIJ528yc5U=
X-Received: by 2002:a1f:de82:: with SMTP id v124mr2252756vkg.26.1551847497348; 
	Tue, 05 Mar 2019 20:44:57 -0800 (PST)
MIME-Version: 1.0
References: <6323ed1d-0e39-4d07-e691-5e3e07f007f9@windriver.com>
	<90ababe5-0ec7-ccb6-9308-19660f573930@ni.com>
	<905307c29324d701044d2d1b2fd0952edd3fbc36.camel@linuxfoundation.org>
In-Reply-To: <905307c29324d701044d2d1b2fd0952edd3fbc36.camel@linuxfoundation.org>
From: Alex Kiernan <alex.kiernan@gmail.com>
Date: Wed, 6 Mar 2019 04:44:46 +0000
Message-ID: <CAO5Uq5T=uC7qQ3y0cYEG5iFyeA6hhvwz4bV9SOUyRnvtSEqAbQ@mail.gmail.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"opkg-devel@googlegroups.com" <opkg-devel@googlegroups.com>
Subject: Re: [opkg-devel] [opkg-utils] Question: why update-alternatives from opkg-utils chooses /usr/lib to hold database?
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
X-List-Received-Date: Wed, 06 Mar 2019 04:44:59 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 5, 2019 at 10:50 PM Richard Purdie
<richard.purdie@linuxfoundation.org> wrote:
>
> On Tue, 2019-03-05 at 16:05 +0000, Alejandro Del Castillo wrote:
> >
> > On 3/5/19 12:11 AM, ChenQi wrote:
> > > Hi All,
> > >
> > > Recently I'm dealing with issue from which some discussion raises.
> > > I'd like to ask why update-alternatives from opkg-utils chooses
> > > /usr/lib
> > > to hold its alternatives database?
> > > I looked into debian, its update-alternatives chooses /var/lib by
> > > default.
> > > Is there some design consideration? Or some historical reason?
> >
> > Update-alternatives used to be on the opkg repo. I did a search
> > there
> > all the way to the first commit on 2008-12-15 [1], but even then
> > /usr/lib was used. I can't think of a design consideration that
> > would
> > make /usr/lib more palatable than the Debian default.
> >
> > Maybe someone with more knowledge of the previous history can chime
> > in?
> >
> > [1]
> > http://git.yoctoproject.org/clean/cgit.cgi/opkg/commit/?id=8bf49d16a637cca0cd116450dfcabc4c941baf6c
>
> I think the history is that the whole of /var was considered volatile
> and we wanted the alternatives data to stick around so it was put under
> /usr.
>
> That decision doesn't really make sense now since only parts of /var
> are volatile..
>

I don't use opkg (or in fact any package manager on a target), but I
do use OSTree, where my /var isn't part of what gets deployed to a
device (https://ostree.readthedocs.io/en/latest/manual/adapting-existing/#adapting-existing-package-managers)
so having the option to keep it in /usr would be important to anyone
who has mechanisms like that.

-- 
Alex Kiernan

