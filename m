Return-Path: <twoerner@gmail.com>
Received: from mail-pw0-f48.google.com (mail-pw0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D6F2E0030B
	for <yocto@yoctoproject.org>; Thu,  5 Jan 2012 09:14:14 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pbaa12 with SMTP id a12so631316pba.35
	for <yocto@yoctoproject.org>; Thu, 05 Jan 2012 09:14:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=/BOPzjpsHc7VJv7Ko/XdSud+pEe+P1TolvaLiY0e+Yc=;
	b=UB9+IuPlqRZJDCOvpBt0UX/E4Wv0Qv+QScaePJIOffSZWlCbtBpB4EpLvzI0RwDeFX
	3fgRo/OmibBz24cMiXOCoNGYhxo9wLMjrFvsWJrKeQf3k4UARmBXZyzJWCul0/307vgK
	X/4uSoO6rF48FtzxuwAGEVFUl132WYwBu70/8=
MIME-Version: 1.0
Received: by 10.68.74.102 with SMTP id s6mr7094914pbv.81.1325783653827; Thu,
	05 Jan 2012 09:14:13 -0800 (PST)
Received: by 10.68.72.230 with HTTP; Thu, 5 Jan 2012 09:14:13 -0800 (PST)
In-Reply-To: <20120104052839.GJ31275@sakrah.homelinux.org>
References: <3AB6CE7F274E534CAFD089D127A8A1FC011724@SHSMSX102.ccr.corp.intel.com>
	<20120104052839.GJ31275@sakrah.homelinux.org>
Date: Thu, 5 Jan 2012 12:14:13 -0500
Message-ID: <CAHUNapS6kZg6oPftEsmtNcKzhhDqDotCh0JWVnvPMawuSD_msw@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "Wang, Shane" <shane.wang@intel.com>, 
	"omxil-devel@lists.sourceforge.net" <omxil-devel@lists.sourceforge.net>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/2] Fix Makefiles
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
X-List-Received-Date: Thu, 05 Jan 2012 17:14:14 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Jan 4, 2012 at 12:28 AM, Khem Raj <raj.khem@gmail.com> wrote:
> On (28/12/11 14:54), Wang, Shane wrote:
>> This patch is to remove DESTDIR in docdir.
>> Otherwise, when users install by running `make install DESTDIR=/alternate/directory' specified in the file INSTALL, the doc will go into /alternate/directory/alternate/directory, which is not expected.
>
> DESTDIR is supposed to relocate the install dir why is this wrong ?

Agree. Additionally, "make distcheck" will generally fail if there is
no DESTDIR.

