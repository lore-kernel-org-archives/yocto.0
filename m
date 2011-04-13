Return-Path: <cliff.brake@gmail.com>
Received: from mail-pz0-f48.google.com (mail-pz0-f48.google.com
	[209.85.210.48])
	by mx1.pokylinux.org (Postfix) with ESMTP id 3DE394C800A2
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2011 12:53:07 -0500 (CDT)
Authentication-Results: mx1.pokylinux.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by pzk10 with SMTP id 10so472178pzk.35
	for <yocto@yoctoproject.org>; Wed, 13 Apr 2011 10:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=domainkey-signature:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=R8Ix/Ti3jwOyppLKDU1kY7kJJhM0FRwQxgElf851CAE=;
	b=tIn/OHEKYK/Z6geKzsY8FidT1sCWjnXDLlUQ+19M3cfHFdGZx7wBpOM8RBF8VzDrhP
	JUzrmYiZc8vcgm9ZipQ99+xAJ1JejUT9ojbbB2LgOShLCCv8E025TbHBA/f9rkl4JfPQ
	x4FA2N4I3+8v0kqysOmSO3320gAf3JW9xCdd4=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	b=JNbO7aeIDwuIu317uWJqmzYK/BBLIiZcv/9sgQciSCas+9AFKkUezE3kQX5NzpFSAh
	8PoqnJScxWYRmD8X3obgKU93R3ehJ0qAAju6y0NmwD/+X5dkZstSjdxBB9iPnSW1uio/
	NEwvbmnLUm2ShPemiIw+YZtf3n1rmOHJZaGbE=
MIME-Version: 1.0
Received: by 10.142.249.34 with SMTP id w34mr7756886wfh.301.1302717186486;
	Wed, 13 Apr 2011 10:53:06 -0700 (PDT)
Received: by 10.68.42.5 with HTTP; Wed, 13 Apr 2011 10:53:06 -0700 (PDT)
In-Reply-To: <9AFCD584B0B67B48AE8D8585BE30BA9552398620@orsmsx504.amr.corp.intel.com>
References: <BANLkTikx3Ai1xuvK+p3=iywXXy6JzyFF_Q@mail.gmail.com>
	<BANLkTi=kfbF=gMvswWVefVtf5w4_wDkQ+A@mail.gmail.com>
	<9AFCD584B0B67B48AE8D8585BE30BA9552398620@orsmsx504.amr.corp.intel.com>
Date: Wed, 13 Apr 2011 13:53:06 -0400
Message-ID: <BANLkTimsgwMFGGPgMwQ0s3HP6QdteiWFaw@mail.gmail.com>
From: Cliff Brake <cliff.brake@gmail.com>
To: "Zhang, Jessica" <jessica.zhang@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ADT manual correction
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
X-List-Received-Date: Wed, 13 Apr 2011 17:53:07 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Apr 13, 2011 at 1:16 PM, Zhang, Jessica <jessica.zhang@intel.com> wrote:
> Can you give it a try again, the access issue is fixed now...

Yes, works now.  Thanks!

Cliff

-- 
=================
http://bec-systems.com

