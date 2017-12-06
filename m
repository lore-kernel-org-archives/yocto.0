Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 74817E00D68; Wed,  6 Dec 2017 00:46:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18B39E00D00
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 00:46:40 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Dec 2017 00:46:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,367,1508828400"; d="scan'208";a="156482740"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 06 Dec 2017 00:46:36 -0800
To: "Koehler, Yannick" <yannick.koehler@hpe.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CS1PR8401MB0840E46EE333163758C5D9B3ED320@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <d7cac90e-b07c-fe83-945f-82725ceeda81@linux.intel.com>
Date: Wed, 6 Dec 2017 10:47:13 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CS1PR8401MB0840E46EE333163758C5D9B3ED320@CS1PR8401MB0840.NAMPRD84.PROD.OUTLOOK.COM>
Subject: Re: externalsrc + sstate why is not compatible?
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
X-List-Received-Date: Wed, 06 Dec 2017 08:46:41 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/06/2017 04:15 AM, Koehler, Yannick wrote:
> In our situation, we have many packages that are in-house, as such we
>  use a local folder for the several in-house modules.  To do so, we
> need to use externalsrc to point to the local code so that the git
> repo contains both the code + recipe, instead of 20 repos (1 per
> packages) and 1 more for yocto recipe which complicates things when
> you want to submit a change.

You don't have to have 20 repos. You can place the modules into a single
repo with subdirs.

> Yet, the externalsrc disable the setscene tasks and set the
> BB_DONTCACHE variable.  I altered the script to remove those but then
> a change to the externalsrc folder is not detected. I wonder if it is
> because the S variable is set past the sstate algorithm and is then
> unable to consider the externalsrc folder as the real source
> location.  Any expert on this matter that can guide me to either make
> sstate works for external src or teach me how to have code + recipe
> in a single git repo.  I am certainly not the only case using such a
> pattern.

The bitbake documentation claims you can specify a directory in the 
file: fetcher, and then all of it will be unpacked to workdir. I've 
never seen or tried it myself, but maybe you can investigate in that 
direction, and make it work if it doesn't.

Alex

