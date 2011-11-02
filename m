Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E744FE006B4
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2011 10:17:23 -0700 (PDT)
Received: from mail-gx0-f180.google.com ([209.85.161.180])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 02 Nov 2011 10:17:23 -0700
Received: by ggnv2 with SMTP id v2so400437ggn.25
	for <yocto@yoctoproject.org>; Wed, 02 Nov 2011 10:17:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.50.88.199 with SMTP id bi7mr3619188igb.45.1320254242684; Wed,
	02 Nov 2011 10:17:22 -0700 (PDT)
Received: by 10.50.190.229 with HTTP; Wed, 2 Nov 2011 10:17:22 -0700 (PDT)
In-Reply-To: <1320251874.32216.4.camel@elmorro>
References: <1320251874.32216.4.camel@elmorro>
Date: Wed, 2 Nov 2011 10:17:22 -0700
Message-ID: <CAPhnLPBvBGVZS==k7NkEPRuT43VrF5mjP_wHu+n9uXoZnp12HQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Tom Zanussi <tom.zanussi@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>, "Lock,
	Joshua" <joshua.lock@intel.com>
Subject: Re: meta-intel candidate branch for 1.1 edison point release
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
X-List-Received-Date: Wed, 02 Nov 2011 17:17:24 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Nov 2, 2011 at 9:37 AM, Tom Zanussi <tom.zanussi@intel.com> wrote:
> Hi,
>
> I've created a new meta-intel/edison-next branch to hold commits
> intended for the upcoming 1.1 point release.
>

From a build perspective, it would be better if these commits ended up
in the meta-intel/edison branch. It's generally what we do for
poky.git and I'd like to keep meta-intel the same. Also, the
autobuilder, when it builds out release branches like this, actually
will end up requiring that the release branches for all layers are the
same (at least until full layer support is implemented.)

-b



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

