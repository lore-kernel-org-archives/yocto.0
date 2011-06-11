Return-Path: <saul.wold@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by mx1.pokylinux.org (Postfix) with ESMTP id 22AB34C803BA
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2011 19:31:45 -0500 (CDT)
Received: from mail-pv0-f180.google.com ([74.125.83.180])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 10 Jun 2011 17:31:45 -0700
Received: by pvc21 with SMTP id 21so1415815pvc.25
	for <yocto@yoctoproject.org>; Fri, 10 Jun 2011 17:31:45 -0700 (PDT)
Received: by 10.143.97.9 with SMTP id z9mr476680wfl.149.1307752305275;
	Fri, 10 Jun 2011 17:31:45 -0700 (PDT)
Received: from [10.6.18.205] (c-71-193-189-117.hsd1.wa.comcast.net
	[71.193.189.117])
	by mx.google.com with ESMTPS id y27sm264488wfl.0.2011.06.10.17.31.44
	(version=SSLv3 cipher=OTHER); Fri, 10 Jun 2011 17:31:44 -0700 (PDT)
Message-ID: <4DF2B76F.6020305@intel.com>
Date: Fri, 10 Jun 2011 17:31:43 -0700
From: Saul Wold <saul.wold@intel.com>
Organization: Intel
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4DF26092.7020902@intel.com>
In-Reply-To: <4DF26092.7020902@intel.com>
Subject: Re: Results of the latest documentation audit, June 2011
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
X-List-Received-Date: Sat, 11 Jun 2011 00:31:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 06/10/2011 11:21 AM, Scott Garman wrote:
> Hello,
>
> As a data point for where we stand in ensuring our packages are
> producing documentation, I have some scripts which build all recipes
> (using the output of bitbake -s, not world), and then check that a -doc
> package is generated which is populated with files.
>
> A summary of the results using yesterday's master are as follows:
>
> 584 recipes in total
> 307 recipes are building documentation
> 277 recipes are not building documentation
>
> 20 recipes did not build, and are counted above as "not building
> documentation"
>
> It's the impression of Saul and I that some of the recipes which do not
> build are failing due to dependency issues. In this case, it's generally
> not from a missing dependency, but having another recipe built first
> which then gets picked up (e.g, during do_configure) and causes a build
> failure.
>
> For comparison, here were the results from last month (May 6th):
>
> 591 recipes in total
> 308 recipes are building documentation
> 283 recipes are not building documentation
>
> 31 recipes did not build
>
> The lists of recipes are attached to this email. We'd like to improve
> the percentage of recipes that produce documentation (separated into
> -doc packages, of course) for our next major release in October.
>
> Our userspace recipe maintainers should look into setting aside some
> time to know which of their recipes are in the "not building
> documentation" list and work to improve them. A lot of this is likely to
> be low-hanging fruit.
>
I have pending fixes for a number of the build_errors list, many where 
dependency issues that build on a full build, I am going to research those.

We have bugs for alsa-tools, gobject-interospection and clutter-box2d.

So the recipe maintainers really just need to look at the not building 
docs list, not the errors list at this time.

Sau!

> Thanks,
>
> Scott
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


