Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10926E00EAF; Tue, 20 Feb 2018 18:09:55 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88807E00EAC
	for <yocto@yoctoproject.org>; Tue, 20 Feb 2018 18:09:54 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	20 Feb 2018 18:09:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.46,542,1511856000"; d="scan'208";a="205773225"
Received: from anmitta2-mobl1.png.intel.com (HELO [10.221.20.104])
	([10.221.20.104])
	by fmsmga006.fm.intel.com with ESMTP; 20 Feb 2018 18:09:52 -0800
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>,
	Yocto Project <yocto@yoctoproject.org>
References: <CAGAf8LzVXn02A=USYyg6sA00Lew1c-+9SD0WzjSB-0q5KL6b+g@mail.gmail.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <f23012dc-3a08-ff2e-55a5-1b900ee3bf71@intel.com>
Date: Wed, 21 Feb 2018 10:09:51 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAGAf8LzVXn02A=USYyg6sA00Lew1c-+9SD0WzjSB-0q5KL6b+g@mail.gmail.com>
Subject: Re: Small documentation issue
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
X-List-Received-Date: Wed, 21 Feb 2018 02:09:55 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 02/20/2018 02:33 PM, Zoran Stojsavljevic wrote:
> Hello,
> 
> Just to point to the documentation issue on YOCTO Projects wiki page:
> https://wiki.yoctoproject.org/wiki/FAQ:How_do_I_set_or_change_the_root_password
> 
> This line:
> inherit extrausers
> 
> Should be changed as:
> INHERIT += "extrausers"

This shows how to do it from a recipe. For a more up-to-date documentation:

https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#ref-classes-extrausers

INHERIT is used in a configuration file.

http://www.yoctoproject.org/docs/2.5/bitbake-user-manual/bitbake-user-manual.html#inherit-configuration-directive

"inherit" on the other hand is used in a recipe or class.

http://www.yoctoproject.org/docs/2.5/bitbake-user-manual/bitbake-user-manual.html#inherit-directive

Thanks,
Anuj

