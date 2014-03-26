Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f173.google.com (mail-ve0-f173.google.com
	[209.85.128.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 159D8E00B8B
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 12:31:45 -0700 (PDT)
Received: by mail-ve0-f173.google.com with SMTP id oy12so2928523veb.32
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 12:31:44 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=ij7Qf9klasmAc6+csEqrVj0jZCO0LSx9GAgHGfCFOWs=;
	b=dC0FtHQpUEn33rf6BV+bZdtHTbJ1dnpeECMPeyboNLH6cfouJeCO1nfPzTpgFU9GXG
	92XZKOqRo5LkIiwvuQJKq1cscbt80TMAcwYuwrm8MeE187ihyDHZMOJqz3fGzXQZ59Z0
	mkuypweQ53jY254Jr8rjvRqeTYV2b3qhRD2GbpmRMn7XB78zl9F2XVNIkFxFShWMtXrZ
	AGCuEuM5VP6d6DSBNcJKIWxQ8oIaSGoW0ffD7XYy0o4NKvNBf/qAfPqvSb1uqVvJuZzm
	0K02JDpJxVdLBSC3gVhe60IKAA2vXeuulK1CMu74kZ1isPoI25iEu4QkrIWUVLUoPVWX
	tNVw==
X-Gm-Message-State: ALoCoQnB9OoLUESUCKMzQKzzvfG9+8qnj9HF1bcEVZLuGrOcxQUlZF0xNgMoTjuuvBsNA7Wqk9pN
MIME-Version: 1.0
X-Received: by 10.59.9.38 with SMTP id dp6mr2815207ved.24.1395862304464; Wed,
	26 Mar 2014 12:31:44 -0700 (PDT)
Received: by 10.52.173.69 with HTTP; Wed, 26 Mar 2014 12:31:44 -0700 (PDT)
In-Reply-To: <5B5D636C5F0AA747B37D0EFC72B563C42D559E0A@RIC-MS02.MWSG.int>
References: <5B5D636C5F0AA747B37D0EFC72B563C42D559E0A@RIC-MS02.MWSG.int>
Date: Wed, 26 Mar 2014 19:31:44 +0000
Message-ID: <CAPhnLPA3-NDDP5uP+8atu8n-tRDLR8rjqPb4LDjJththEnLDuw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Stath, Paul" <PStath@axxcelera.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Change to 1.5_M5.rc1???
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
X-List-Received-Date: Wed, 26 Mar 2014 19:31:48 -0000
Content-Type: text/plain; charset=ISO-8859-1

Looking at this now. Obviously, it's not correct.

On Wed, Mar 26, 2014 at 7:04 PM, Stath, Paul <PStath@axxcelera.com> wrote:
> We have a local clone of the yocto repository that is refreshed nightly via 'git pull'.
>
> When trying to push a tag to the local yocto clone, I'm getting the following error:
>
>  ! [rejected]        1.5_M5.rc1 -> 1.5_M5.rc1 (non-fast-forward)
>
> In my dev copy:
>
> $ git rev-parse 1.5_M5.rc1
> b9f5cc7be05303ba5ed478a3a108ddc579539744
>
> In a fresh clone of http://git.yoctoproject.org/cgit/cgit.cgi/poky
> $ git rev-parse 1.5_M5.rc1
> 295656cfdaf17bcbbeac8599fc8ebb2d5aa435d2
>
> Since the same commit the tag points to is also the HEAD of the 1.6_M5 branch,
> I'm guessing that the tag SHOULD be 1.6_M5.rc1.
>
> Could someone please follow-up?
>
> -- Paul Stath
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

