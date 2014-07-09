Return-Path: <sgw@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 88419E003C1; Wed,  9 Jul 2014 09:47:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65DF7E002A6
	for <yocto@yoctoproject.org>; Wed,  9 Jul 2014 09:47:21 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 09 Jul 2014 09:46:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,632,1400050800"; d="scan'208";a="570692800"
Received: from unknown (HELO [10.255.13.46]) ([10.255.13.46])
	by orsmga002.jf.intel.com with ESMTP; 09 Jul 2014 09:46:49 -0700
Message-ID: <53BD71F9.20705@linux.intel.com>
Date: Wed, 09 Jul 2014 09:46:49 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
To: Christopher Larson <clarson@kergoth.com>, 
	"Bollinger, Seth" <Seth.Bollinger@digi.com>
References: <CFE2BDED.98CE%seth.bollinger@digi.com>
	<CABcZANmVHcuH+rOp11gDLdSovq+_tDRohqEeZZbZHSuGXr0wRg@mail.gmail.com>
In-Reply-To: <CABcZANmVHcuH+rOp11gDLdSovq+_tDRohqEeZZbZHSuGXr0wRg@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Inadvertent RootFS permission pollution
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
X-List-Received-Date: Wed, 09 Jul 2014 16:47:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/09/2014 08:18 AM, Christopher Larson wrote:
> On Wed, Jul 9, 2014 at 7:37 AM, Bollinger, Seth <Seth.Bollinger@digi.com>
> wrote:
>
>> I recently ran into a problem where I had trouble determining why the
>> setgid bit was set in my rootfs.  It turns out that debian has this bit set
>> on /usr/local (where I was building from), and thus inherited this bit from
>> that directory tree.  This surprised me, so I thought I would pass it along
>> in case it saves anyone else some time.
>
>
> Ah, yes, I've hit this in the past too, thanks for bringing it up, we'll
> have to resolve that -- perhaps have bitbake chmod g-s ${TMPDIR} when it's
> created?
>
>
>
If you have not already filed a bug for this can some one please do that 
so it does not get lost or forgotten.

Thanks
	Sau!


