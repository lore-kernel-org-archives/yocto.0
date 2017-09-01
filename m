Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEE2EE00CE4; Thu, 31 Aug 2017 22:05:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62829E00CB7
	for <yocto@yoctoproject.org>; Thu, 31 Aug 2017 22:05:59 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	31 Aug 2017 22:05:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.41,456,1498546800"; d="scan'208";a="124593164"
Received: from kcheng8-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.71.81])
	by orsmga004.jf.intel.com with ESMTP; 31 Aug 2017 22:05:52 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Diana Thayer <garbados@gmail.com>
Date: Fri, 01 Sep 2017 17:05:48 +1200
Message-ID: <5878916.0eSfOrAWCC@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <1503638430-9209-1-git-send-email-garbados@gmail.com>
References: <1503638430-9209-1-git-send-email-garbados@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH v4] Asynchronous email notifications, task execution
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
X-List-Received-Date: Fri, 01 Sep 2017 05:05:59 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Diana,

On Friday, 25 August 2017 5:20:30 PM NZST Diana Thayer wrote:
> This patch adds asynchronous task execution using a Celery backend
> and RabbitMQ task queue, so that the layer submission process to
> proceed even in the event that sending the notification email fails,
> and establishing an asynchronous execution mechanism that we can use
> in the future e.g. for triggering parse operations from the web UI.
> This pertains to bug 11195:
> 
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=11195
> 
> It updates the README to reflect the installation and configuration
> of a basic RabbitMQ setup, adds a 'tasks.py' file to contain task
> definitions, updates the 'edit_layer_view' function to send
> emails to administrators about new and updated layers asynchronously,
> and modifies the 'settings.py' to include a default configuration
> for a RabbitMQ connection.
> 
> Signed-off-by: Diana Thayer <garbados@gmail.com>

Thanks! I've just merged this, with your changes to the dockerfile in the 
other patch squashed in. I did tweak the commit message just a little, fixing 
the bug reference and adding mention of the dockerfile change.

I'll get in touch with Michael Halstead about updating the OE index instance.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

