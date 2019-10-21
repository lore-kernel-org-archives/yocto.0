Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3D4CBE0097C; Mon, 21 Oct 2019 12:37:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0467E0091A
	for <yocto@yoctoproject.org>; Mon, 21 Oct 2019 12:37:12 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Oct 2019 12:37:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,324,1566889200"; d="scan'208";a="222570870"
Received: from akanatha-mobl2.gar.corp.intel.com (HELO linux.fritz.box)
	([10.249.76.85])
	by fmsmga004.fm.intel.com with ESMTP; 21 Oct 2019 12:37:09 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Yann CARDAILLAC <yann.cardaillac@smile.fr>
Date: Tue, 22 Oct 2019 08:37:07 +1300
Message-ID: <2189115.Upo427RBWa@linux.fritz.box>
Organization: Intel Corporation
In-Reply-To: <CAA984JVEEC2F9EQ7jOiZsVVwFEcgMYWKnUxfnGEN0dUXPHti1g@mail.gmail.com>
References: <CAA984JVEEC2F9EQ7jOiZsVVwFEcgMYWKnUxfnGEN0dUXPHti1g@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web] Add SPDX Identifier
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
X-List-Received-Date: Mon, 21 Oct 2019 19:37:13 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Yann

Thanks for looking into this.

On Tuesday, 22 October 2019 4:15:03 AM NZDT Yann CARDAILLAC wrote:
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=13527
> 
> I'm beginning the work of updating the layerindex-web repo, this one is a
> bit tricky, how should I treat the files generated using Django ?
> 
> *For now I've given them MIT as for the other hand written script. However
> I'm kind of worried that it's not the proper licence. *

I believe the correct license for Django-derived files is BSD-3-Clause:

  https://github.com/django/django/blob/master/LICENSE

> For the css side, I've added MIT to :
> 
> ./rrs/static/css/rrs-additional.css
> and
> ./layerindex/static/css/additional.css

That should be fine, those files were authored as part of the project.

> *I've let the bootstraps css untouched since I guess that's not for us to
> licence. *

Correct, and we'd be required to re-apply it every time we upgraded as well 
which is likely to get forgotten. You could always get them to add one 
upstream if you're really keen :)
 
> I've yet to do html, txt and sh files, do you have any advices before I
> start?

Note that some of the templates used for authentication originally came from 
here:

  https://github.com/macdhuibh/django-registration-templates

The LICENSE file indicates MIT for those though.

The txt files are tricky because any stray newlines will affect formatting. I 
would probably avoid touching them.

Cheers
Paul

-- 

Paul Eggleton
Intel System Software Products



