Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5ADD0E00815; Sun,  9 Oct 2016 18:21:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 34147E007A2
	for <yocto@yoctoproject.org>; Sun,  9 Oct 2016 18:21:03 -0700 (PDT)
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
	by orsmga103.jf.intel.com with ESMTP; 09 Oct 2016 18:21:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,469,1473145200"; d="scan'208";a="178168939"
Received: from klee32-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.184.241])
	by fmsmga004.fm.intel.com with ESMTP; 09 Oct 2016 18:21:02 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Liam R. Howlett" <Liam.Howlett@windriver.com>
Date: Mon, 10 Oct 2016 14:20:58 +1300
Message-ID: <5723912.zcry3NVQb3@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.7.5-100.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <1475855841-30009-6-git-send-email-Liam.Howlett@WindRiver.com>
References: <1475855841-30009-1-git-send-email-Liam.Howlett@WindRiver.com>
	<1475855841-30009-6-git-send-email-Liam.Howlett@WindRiver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH v2 05/12] layerindex: Add distro to web interface and model.
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
X-List-Received-Date: Mon, 10 Oct 2016 01:21:07 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

This looks good, just a few notes about this bit:

On Fri, 07 Oct 2016 11:57:14 Liam R. Howlett wrote:
> +def update_distro_conf_file(path, distro):
> +    logger.debug('Updating distro %s' % path)
> +    desc = ""
> +    with open(path, 'r') as f:
> +        for line in f:
> +            if line.startswith('#@NAME:'):
> +                desc = line[7:].strip()
> +            if line.startswith('#@DESCRIPTION:'):
> +                desc = line[14:].strip()
> +                desc = re.sub(r'Distribtuion configuration for( running)*( an)*( the)*', '', desc) 

Aside from the typo, that last line isn't needed for distros.

Also, unlike machines, the readable distro name actually gets set in a proper
variable (DISTRO_NAME) and though some distro conf files do still use the
meta-comments, a lot don't use them at all. Technically being a variable,
DISTRO_NAME could be set in an inc file rather than the distro conf file, and
often it is, so we should really parse to get it rather than scraping it.

(I'm happy if we sort this out as a later improvement, I just wanted to make
a note of it now.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

