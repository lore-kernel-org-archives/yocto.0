Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5351E009B9; Tue, 10 Jul 2018 07:38:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=BAYES_00, DATE_IN_PAST_24_48, 
	RCVD_IN_DNSWL_MED autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.126 listed in list.dnswl.org]
	* 1.3 DATE_IN_PAST_24_48 Date: is 24 to 48 hours before Received: date
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E4CDE009B9;
	Tue, 10 Jul 2018 07:38:48 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Jul 2018 07:38:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.51,334,1526367600"; d="scan'208";a="70185781"
Received: from rossbach-mobl.ger.corp.intel.com (HELO localhost.localdomain)
	([10.249.32.194])
	by fmsmga004.fm.intel.com with ESMTP; 10 Jul 2018 07:38:46 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Konrad Scherer <konrad.scherer@windriver.com>
Date: Mon, 09 Jul 2018 14:57:45 +0200
Message-ID: <1787109.kPri9hXMnf@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <20180626174130.21617-2-konrad.scherer@windriver.com>
References: <20180626174130.21617-1-konrad.scherer@windriver.com>
	<20180626174130.21617-2-konrad.scherer@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH 1/6] Add docker-compose file to create full layerindex stack of MariaDB, RabbitMQ and Nginx
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
X-List-Received-Date: Tue, 10 Jul 2018 14:38:49 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Konrad

On Tuesday, 26 June 2018 7:41:30 PM CEST Konrad Scherer wrote:
> Lots of new features added:
> 
> - Layerindex runs as unprivileged user inside container
> 
> - Celery worker is started before gunicorn
> 
> - Entrypoint script supports changing RabbitMQ location
> 
> - Entrypoint script support initialization of database and superuser
> 
> - Reverse Proxy uses https with self signed certs by default and
>   supports Let's Encrypt certs (not enabled by default)
> 
> - Move docker image to debian stretch and python3
> 
> - Remove build tools after installation to reduce the image
>   to under 500MB in size

This is quite nice, thanks!

Coincidentally, both myself and Michael Halstead have had a go at cleaning up
and improving the Docker setup, so I have to do a little reconciliation
between your and his changes - see here for his:

https://github.com/halstead/layerindex-web/commit/b9791710ff97550fa9110ab89a70c42b1fc86581

I think we probably want to break all of this down into a set of discrete 
commits rather than one big one, and then it'll be a bit clearer. I'll do a
first pass and come back to you both.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



