Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0BAEE0027E
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2012 13:54:14 -0700 (PDT)
Received: from mail-oa0-f72.google.com ([209.85.219.72])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 31 Oct 2012 13:53:43 -0700
Received: by mail-oa0-f72.google.com with SMTP id h2so5794295oag.11
	for <yocto@yoctoproject.org>; Wed, 31 Oct 2012 13:54:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=jXOtx6D+1G0qxiX4LA9cpBJFZfSGGEe1K2h4asqDVTQ=;
	b=MBDMIU2T7IYg9FHrMlHBW5qYKSFtMQ1+0FNg3H2H6E7n5CNV/tKw7GQ88uKhGpubyB
	9dnm3ysG6Pcl9D03Gu2l5p5Acv5cKwRa2Pv8lvlwdOOMJrNsACA07Rzwuh+cL6PahlXQ
	jCximzP4vz49AlqEaZ31/dpFwvuXLyXkBY0I9RrXTEwpOpcJTqE4wlCweFtjABG2HLdn
	bgKnWatNhA+75V4Qb7rqphDh8h1l7HaMGkll90toXXqYnXH71Urz/xNK3aU/AETwuoDN
	7ds5j3Y+/H0nm3PyIhdPnJbgQ6axe9FJYDCy5i6JJTx2TDOsZjPVdS39Z2Wjhq5e2E0m
	r2CA==
Received: by 10.60.31.199 with SMTP id c7mr22799544oei.126.1351716847445;
	Wed, 31 Oct 2012 13:54:07 -0700 (PDT)
Received: by 10.60.31.199 with SMTP id c7mr22799537oei.126.1351716847372; Wed,
	31 Oct 2012 13:54:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.68.135 with HTTP; Wed, 31 Oct 2012 13:53:47 -0700 (PDT)
In-Reply-To: <CAJTo0LYZwOa2twSCABHYHcqaTg_hdR-pkG--dCcKdd2Sb6NL0A@mail.gmail.com>
References: <cover.1351650062.git.nitin.a.kamble@intel.com>
	<1351696672.1762.8.camel@empanada>
	<CAJTo0LYZwOa2twSCABHYHcqaTg_hdR-pkG--dCcKdd2Sb6NL0A@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 31 Oct 2012 20:53:47 +0000
Message-ID: <CAJTo0LaGuVd+30ZR6SvyiwY0qLSDdg2s9aUR__eU-k68=vvEQQ@mail.gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
X-Gm-Message-State: ALoCoQlgGDwUzE9AGeSv3JO5JwMpjhk6FDKsSD5QHD/+TRteSzyCpjFB6F65dgPpgtNyE4DvPKVjPdgkwHGgldhI3rtjolhF7bSW+gvJomHA1tEkM62AKUqScVlTdEWVWWVpZIB87sIgX4dS0IaUH90klKGJhdSLyQ==
Cc: darren.hart@intel.com, yocto@yoctoproject.org
Subject: Re: [PATCH 0/4] misc fixes for 1.3 meta-intel release
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
X-List-Received-Date: Wed, 31 Oct 2012 20:54:14 -0000
Content-Type: text/plain; charset=UTF-8

On 31 October 2012 15:21, Burton, Ross <ross.burton@intel.com> wrote:
> On 31 October 2012 15:17, Tom Zanussi <tom.zanussi@intel.com> wrote:
>> That just leaves cedartrail before we can pull this in.
>
> That's odd, I was just about to write a mail.  My current images are
> broken as they are based on master which has a duff udev.  I'll do a
> rebuild against danny but that might not happen promptly.

Just tested on Cedar Trail, good old Sintel plays fine at 4% CPU.

Ross

