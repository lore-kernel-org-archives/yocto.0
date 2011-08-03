Return-Path: <elizabeth.flanagan@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by mx1.pokylinux.org (Postfix) with ESMTP id 6DDBC4C800A9
	for <yocto@yoctoproject.org>; Wed,  3 Aug 2011 11:57:45 -0500 (CDT)
Received: from mail-gw0-f52.google.com ([74.125.83.52])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 03 Aug 2011 09:57:43 -0700
Received: by gwj15 with SMTP id 15so612652gwj.25
	for <yocto@yoctoproject.org>; Wed, 03 Aug 2011 09:57:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.236.152.98 with SMTP id c62mr6672490yhk.64.1312390661305; Wed,
	03 Aug 2011 09:57:41 -0700 (PDT)
Received: by 10.236.105.131 with HTTP; Wed, 3 Aug 2011 09:57:40 -0700 (PDT)
In-Reply-To: <201108031707.07245.paul.eggleton@linux.intel.com>
References: <201108031707.07245.paul.eggleton@linux.intel.com>
Date: Wed, 3 Aug 2011 09:57:40 -0700
Message-ID: <CAPhnLPBPJ0U=_Bn4jKQSKM6SoFQwDQUpC_kcEt-2NWc2+d9prw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Autobuilder issue status
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
X-List-Received-Date: Wed, 03 Aug 2011 16:57:45 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Aug 3, 2011 at 9:07 AM, Paul Eggleton
<paul.eggleton@linux.intel.com> wrote:
> Hi all,
>
> Richard requested a summary of the current issues shown up on the autobuilder,
> here it is:
>
> 1. sstate not getting cleared (autobuilder script fix needed - maybe just
> delete the whole sstate-cache dir?)
> http://autobuilder.yoctoproject.org:8010/builders/crownbay-
> noemgd/builds/27/steps/shell/logs/stdio

I'll look at this today.

> 7. -live images still being built:
> Beth was fixing (has fixed?) this. It did bring up an interesting issue in that
> -k makes the build look like it succeeded - have filed bug #1322 for this one.
> http://autobuilder.yoctoproject.org:8010/builders/crownbay-
> noemgd/builds/27/steps/shell_10/logs/stdio

This is a bug in the current buildbot. make reconfig blows up. I'm
waiting to bring the builder down and back up once our current nightly
is done

> Cheers,
> Paul

Thanks, I'll get this done ASAP
-b

