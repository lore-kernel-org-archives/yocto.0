Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f169.google.com (mail-ve0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9013E01409
	for <yocto@yoctoproject.org>; Tue,  4 Jun 2013 17:26:47 -0700 (PDT)
Received: by mail-ve0-f169.google.com with SMTP id m1so770257ves.14
	for <yocto@yoctoproject.org>; Tue, 04 Jun 2013 17:26:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=3NEh/DGuQ+kOf36O9FedefzImYPmmhNWl2Gg8yjtdrA=;
	b=nmzpU/4QEYD07KLSYY10KBIUt+6/sEYlo9ftoZ+bcMHnERf/NQLQKxB+BUFW2NKQiL
	naWdl/eRWn4snd9qujTSGighG9NwxD7FqaX1a/stLW3AgXeAmtef8B9BBe11QAtF0uhE
	eWG4AGoGQ7shXjIQ3FnPkI5PXg9c18DNcIeH+Pkx0kdN5QHd5czl/Y1+8xq4BRQ4zSCF
	Oz6pqtO8kG/nk7ZooiwelqSuUjBB1rlFdaCLls63l0HokP8ptJnrbnEWTKkUimSSGmoK
	FiiQOP0lf+SPNTJrI+22/PZzP7S7usEuKtFswd3D6ihhbMYwIWxA1HfjyreqciG4U9yr
	abSg==
MIME-Version: 1.0
X-Received: by 10.52.97.37 with SMTP id dx5mr16402423vdb.23.1370392006984;
	Tue, 04 Jun 2013 17:26:46 -0700 (PDT)
Received: by 10.52.114.170 with HTTP; Tue, 4 Jun 2013 17:26:46 -0700 (PDT)
Date: Tue, 4 Jun 2013 17:26:46 -0700
Message-ID: <CAPhnLPBjbPh=W7+PFgtxQR8Agu_YbYPqhehCi4zrBR776qi7pw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQlDS0q4srNBYBC6fLqWI/mCaRYNg7lzQtbATDsHctr3X9bJFGAHw73izVGA1my+YF+fcoHF
Subject: [RFC] Change in milestone branching.
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
X-List-Received-Date: Wed, 05 Jun 2013 00:26:48 -0000
Content-Type: text/plain; charset=ISO-8859-1

All.

Now that the autobuilder is able to do mix and match branching
(everything doesn't need to be the same), does anyone foresee any
issues with doing away with future poky milestone branches and just
utilize tags? This should make maintainers jobs a bit easier in that
they now do not need to maintain/stabilize multiple branches and it
should help a bit with master stability. We will of course continue to
do the final release branch but would no longer need the 1.5_M1
branches.

Objections? Thoughts? My plan is that if maintainers would like to see
this, to do it for the 1.5 M1 milestone.

-b

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

