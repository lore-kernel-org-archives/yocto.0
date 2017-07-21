Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11CA4E00B49; Fri, 21 Jul 2017 07:15:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FDBBE00B31
	for <yocto@yoctoproject.org>; Fri, 21 Jul 2017 07:15:31 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Jul 2017 07:15:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,390,1496127600"; d="scan'208";a="110480021"
Received: from skopplex-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.39.4])
	by orsmga004.jf.intel.com with ESMTP; 21 Jul 2017 07:15:29 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Diana Thayer <garbados@gmail.com>
Date: Fri, 21 Jul 2017 16:15:26 +0200
Message-ID: <1540054.pZpUqmJ2aX@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <1498521563-26590-1-git-send-email-garbados@gmail.com>
References: <1498521563-26590-1-git-send-email-garbados@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH] layerindex-web : adding asynchronous task execution
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
X-List-Received-Date: Fri, 21 Jul 2017 14:15:32 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Diana,

Sorry it's taken me a ridiculous amount of time to get back to you on this!

On Tuesday, 27 June 2017 1:59:23 AM CEST Diana Thayer wrote:
> This is a work-in-progress solution to issue 11197 within layerindex-web: 
> adding asynchronous task execution.
> I used RabbitMQ and Celery. I'm still working with Paul Eggleton on adding
> install instructions for RabbitMQ to
> the site's Dockerfile.
> 
> Previously, when a user submitted a layer, Django would synchronously send
> emails to users able to publish layers,
> such that if an email bounced or otherwise failed, the user submitting the
> layer would see an error.
> This patch sends those emails as asynchronous tasks, so any sending errors
> don't reach the user submitting a layer.

I had a chance to try your patch out today, although I had to apply it 
partially - I figured a good test would just be the email part. I installed 
rabbitmq and ensured it got started. I started the web interface and submitted 
a dummy layer, and the email sent as expected. I then tried killing my local 
SMTP server and the layer submission returned an error page, which is what 
happened previously - it looks to me as if the sending is still being done 
synchronously. The celery worker isn't reporting anything so I can only assume 
the django app is not trying to connect to it.

I've pushed just the changes I applied to a new branch here:

http://git.yoctoproject.org/cgit/cgit.cgi/layerindex-web/log/?h=paule/celery

Any idea what's going wrong? Did I mess up in applying the changes, or 
misconfigure something else? 

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

