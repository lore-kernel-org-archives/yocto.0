Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87A0BE00B8B; Tue, 22 Aug 2017 17:08:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1DFCBE00B8B
	for <yocto@yoctoproject.org>; Tue, 22 Aug 2017 17:08:55 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	22 Aug 2017 17:08:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,414,1498546800"; d="scan'208";a="1187114227"
Received: from skhurana-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.139.43])
	by fmsmga001.fm.intel.com with ESMTP; 22 Aug 2017 17:08:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Diana Thayer <garbados@gmail.com>
Date: Wed, 23 Aug 2017 12:08:50 +1200
Message-ID: <1937568.Cu0G2Ybujr@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <4298192.f0WJ1oCf9T@peggleto-mobl.ger.corp.intel.com>
References: <1498521563-26590-1-git-send-email-garbados@gmail.com>
	<CA++8a_CiuUr-2YQAQ-EhG7htxxptuX00=B7X=1CvWsNRJB5y2A@mail.gmail.com>
	<4298192.f0WJ1oCf9T@peggleto-mobl.ger.corp.intel.com>
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
X-List-Received-Date: Wed, 23 Aug 2017 00:08:57 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 23 August 2017 12:06:09 PM NZST Paul Eggleton wrote:
> Hi Diana
> 
> I did finally manage to get to it today - sorry about the delay. I've
> sorted out the settings issue and dropped the related item from the todo list.

Oops, I neglected to mention I pushed these minor changes to the same
paule/celery branch.

> Assuming that didn't break anything on your end, could you please squash all of
> these into one commit with you as the author and an appropriate shortlog /
> commit message and then send a new patch? We'd probably want to mention that
> the mechanism this establishes will be used later for executing other
> asynchronous tasks.
> 
> Thanks,
> Paul
> 
> On Saturday, 12 August 2017 7:56:15 AM NZST Diana Thayer wrote:
> > Hello! Did you get a chance to look at the PR
> > <https://github.com/garbados/layerindex-web/pull/1>?
> > 
> > On Wed, Jul 26, 2017 at 6:02 PM, Diana Thayer <garbados@gmail.com> wrote:
> > 
> > > Great! Thanks for testing it out and identifying that issue.
> > >
> > > I've put together a PR on GitHub
> > > <https://github.com/garbados/layerindex-web/pull/1> that includes some
> > > changes that appear to fix the issue you're describing. It also updates the
> > > readme to document how to configure the connection to the RabbitMQ server,
> > > and how to start the Celery worker. You can see all the file changes here
> > > <https://github.com/garbados/layerindex-web/pull/1/files>.
> > >
> > > On Mon, Jul 24, 2017 at 2:49 AM, Paul Eggleton <
> > > paul.eggleton@linux.intel.com> wrote:
> > >
> > >> On Friday, 21 July 2017 4:15:26 PM CEST Paul Eggleton wrote:
> > >> > On Tuesday, 27 June 2017 1:59:23 AM CEST Diana Thayer wrote:
> > >> > > This is a work-in-progress solution to issue 11197 within
> > >> layerindex-web:
> > >> > > adding asynchronous task execution.
> > >> > > I used RabbitMQ and Celery. I'm still working with Paul Eggleton on
> > >> adding
> > >> > > install instructions for RabbitMQ to
> > >> > > the site's Dockerfile.
> > >> > >
> > >> > > Previously, when a user submitted a layer, Django would synchronously
> > >> send
> > >> > > emails to users able to publish layers,
> > >> > > such that if an email bounced or otherwise failed, the user
> > >> submitting the
> > >> > > layer would see an error.
> > >> > > This patch sends those emails as asynchronous tasks, so any sending
> > >> errors
> > >> > > don't reach the user submitting a layer.
> > >> >
> > >> > I had a chance to try your patch out today, although I had to apply it
> > >> > partially - I figured a good test would just be the email part. I
> > >> installed
> > >> > rabbitmq and ensured it got started. I started the web interface and
> > >> > submitted  a dummy layer, and the email sent as expected. I then tried
> > >> > killing my local  SMTP server and the layer submission returned an error
> > >> > page, which is what  happened previously - it looks to me as if the
> > >> sending
> > >> > is still being done synchronously. The celery worker isn't reporting
> > >> > anything so I can only assume  the django app is not trying to connect
> > >> to
> > >> > it.
> > >> >
> > >> > I've pushed just the changes I applied to a new branch here:
> > >> >
> > >> > http://git.yoctoproject.org/cgit/cgit.cgi/layerindex-web/log
> > >> /?h=paule/celery
> > >> >
> > >> > Any idea what's going wrong? Did I mess up in applying the changes, or
> > >> > misconfigure something else?
> > >>
> > >> I figured out the issue - in order to have the task executed
> > >> asynchronously
> > >> you need to call .delay(<args>) on the task object rather than the task
> > >> function itself. That leads to a "django.core.exceptions.Improp
> > >> erlyConfigured"
> > >> error reported by the worker since in my configuration the "import
> > >> settings"
> > >> succeeds but Django isn't set up properly, but at least it's actually
> > >> executing the task via the worker now.
> > >>
> > >> Cheers,
> > >> Paul
> > >>
> 
> 
> 
> 


-- 

Paul Eggleton
Intel Open Source Technology Centre

