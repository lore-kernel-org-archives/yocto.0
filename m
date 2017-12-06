Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1EECE00D67; Wed,  6 Dec 2017 01:09:15 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D56EE00D00
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 01:09:14 -0800 (PST)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Dec 2017 01:09:14 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,367,1508828400"; d="scan'208";a="156486902"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 06 Dec 2017 01:09:13 -0800
To: Bernd <prof7bit@gmail.com>, yocto@yoctoproject.org
References: <CAAkg2-mQ8RswTrBrFDt1v_-600+aCYNnmhHX=9aO6X2t8f6QfA@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <bb77a6ec-731f-e249-24e2-b0bbe9cf0ccf@linux.intel.com>
Date: Wed, 6 Dec 2017 11:09:50 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <CAAkg2-mQ8RswTrBrFDt1v_-600+aCYNnmhHX=9aO6X2t8f6QfA@mail.gmail.com>
Subject: Re: variable override syntax, where is it documented?
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
X-List-Received-Date: Wed, 06 Dec 2017 09:09:15 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/06/2017 10:58 AM, Bernd wrote:
> I just found out that I can ovverride the line
> 
> hostname = "${MACHINE}"
> 
> in base-files simply by assigning a value to
> 
> hostname_pn-base-files
> 
> in my configuration file and it will re-assign it with a higher
> priority than "=".
> 
> Now I wonder where this kind of black magic is documented, I don't
> seem to be able to locate any document that explains the "_pn-" syntax
> and I wonder if there are even more such tricks that could be useful
> and am looking for a document that explains them all. Is there such a
> thing?

Yes, of course. This:

http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-OVERRIDES

and this:

http://www.yoctoproject.org/docs/2.5/bitbake-user-manual/bitbake-user-manual.html#conditional-syntax-overrides


Alex

