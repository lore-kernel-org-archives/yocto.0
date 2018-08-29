Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73F4AE00950; Wed, 29 Aug 2018 03:46:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.151 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11944E0090C;
	Wed, 29 Aug 2018 03:46:34 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	29 Aug 2018 03:46:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,301,1531810800"; d="scan'208";a="228572314"
Received: from wklam-mobl2.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.142.101])
	by orsmga004.jf.intel.com with ESMTP; 29 Aug 2018 03:46:30 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 29 Aug 2018 22:46:27 +1200
Message-ID: <2479608.PqWI51YQi8@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <29e40b67-ec40-90ba-f454-aa66034dad71@windriver.com>
References: <2274431.fXWzuTuIFg@localhost.localdomain>
	<4442632.9cThEXArIQ@localhost.localdomain>
	<29e40b67-ec40-90ba-f454-aa66034dad71@windriver.com>
MIME-Version: 1.0
Subject: Re: [layerindex-web] RFC: layer index docker fixes
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
X-List-Received-Date: Wed, 29 Aug 2018 10:46:35 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi folks

I know Konrad promised to update the docker-compose setup to be closer
to what we'd done recently with the docker setup, but I needed something
urgently and wanted to learn how to use docker-compose anyway, so I've
put this together:

  http://git.yoctoproject.org/cgit/cgit.cgi/layerindex-web/log/?h=paule/docker-compose

Let me know what you think - it works well enough for me here, although the
setup commands are now a bit ugly on their own.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



