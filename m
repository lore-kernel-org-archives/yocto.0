Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6190FE0093B; Wed, 29 Aug 2018 16:45:58 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 042A7E00529;
	Wed, 29 Aug 2018 16:45:57 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	29 Aug 2018 16:45:57 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,305,1531810800"; d="scan'208";a="69148797"
Received: from chia1-mobl.gar.corp.intel.com (HELO localhost.localdomain)
	([10.255.139.134])
	by orsmga008.jf.intel.com with ESMTP; 29 Aug 2018 16:44:12 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Thu, 30 Aug 2018 11:44:10 +1200
Message-ID: <1924287.nmYE9jUvR3@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <2479608.PqWI51YQi8@localhost.localdomain>
References: <2274431.fXWzuTuIFg@localhost.localdomain>
	<29e40b67-ec40-90ba-f454-aa66034dad71@windriver.com>
	<2479608.PqWI51YQi8@localhost.localdomain>
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
X-List-Received-Date: Wed, 29 Aug 2018 23:45:58 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 29 August 2018 10:46:27 PM NZST Paul Eggleton wrote:
> Hi folks
> 
> I know Konrad promised to update the docker-compose setup to be closer
> to what we'd done recently with the docker setup, but I needed something
> urgently and wanted to learn how to use docker-compose anyway, so I've
> put this together:
> 
>   http://git.yoctoproject.org/cgit/cgit.cgi/layerindex-web/log/?h=paule/docker-compose
> 
> Let me know what you think - it works well enough for me here, although the
> setup commands are now a bit ugly on their own.

I realised this morning that "docker-compose run" can simplify a lot of the
docker run commands, so I've just converted most of the commands in 
docker/README and pushed the branch again.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



