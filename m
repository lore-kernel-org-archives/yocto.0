Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1C57DE00A71; Fri, 31 Mar 2017 00:27:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_HI,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAFA8E009DA
	for <yocto@yoctoproject.org>; Fri, 31 Mar 2017 00:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1490945226; x=1522481226;
	h=subject:to:references:from:message-id:date:mime-version:
	in-reply-to:content-transfer-encoding;
	bh=ZIhKrdwHQolJeElXlscc8ONT4IM+rCvkR1N9gJQ+2mI=;
	b=MN0XzzfQUc/yhlHnJ/lyZ+NiiHbJvcxDpuvtMApozGnZIU3NakbuLH7K
	JkBHAG66+Dx78S1PT9dh2qbMl8kDow==;
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	31 Mar 2017 00:27:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,251,1486454400"; d="scan'208";a="950092038"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga003.jf.intel.com with ESMTP; 31 Mar 2017 00:27:04 -0700
To: yocto@yoctoproject.org
References: <061b01d2a9e4$f065d990$d1318cb0$@ln-systems.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <6783352e-1f5e-e1fe-9979-96b5cb4f82d9@linux.intel.com>
Date: Fri, 31 Mar 2017 10:26:27 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <061b01d2a9e4$f065d990$d1318cb0$@ln-systems.com>
Subject: Re: gobject introspection needing pygobject (cross-compilation)
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
X-List-Received-Date: Fri, 31 Mar 2017 07:27:10 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 03/31/2017 09:06 AM, colin.helliwell@ln-systems.com wrote:
> I've got a few packages in my image which need gobject introspection.
> (x86-64 host, ARM target)
> One is building fine, but the other - NetworkManager - is failing to
> generate the introspection data because it can't analyse the cross-compiled
> library. Apparently it uses pygobject in doing this, and thus needs a
> version of that for the target architecture.
> Are there steps I can take to achieve this? I guess it needs some 'qemu'
> technique as with other the G-I support mechanisms?

I guess you have read and understood the section in the Yocto manual 
dedicated to this?

To provide useful help, I need to see specifics. What is the error 
message you are getting? Where are your recipes, and which one is failing?


Alex

