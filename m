Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24160E00AF0; Tue, 11 Apr 2017 01:34:43 -0700 (PDT)
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
	*      [134.134.136.65 listed in list.dnswl.org]
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB239E00AD5
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 01:34:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1491899679; x=1523435679;
	h=subject:to:references:from:message-id:date:mime-version:
	in-reply-to:content-transfer-encoding;
	bh=ygKtwWI6tI73Yf4SVtQAxeuFic8ilP1+1xnNCJ/jB/Y=;
	b=rhH+p6ysZV1Xuw9o6HPKA6/s6LqF7IncaBWMcOuRjHWGUYhm0zA3bZh8
	74EcYMtGYEI8hOkdxi8i3KS2KshSdw==;
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	11 Apr 2017 01:34:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,184,1488873600"; d="scan'208";a="85986870"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga005.jf.intel.com with ESMTP; 11 Apr 2017 01:34:38 -0700
To: yocto@yoctoproject.org
References: <6b8d75eafe704438b03324c35d2ce6ef@FE-MBX1014.de.bosch.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <bccd8a61-e121-3b16-596e-29982f46b551@linux.intel.com>
Date: Tue, 11 Apr 2017 11:34:13 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <6b8d75eafe704438b03324c35d2ce6ef@FE-MBX1014.de.bosch.com>
Subject: Re: Porting a middleware to Yocto
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
X-List-Received-Date: Tue, 11 Apr 2017 08:34:43 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 04/11/2017 09:20 AM, Eswaran Vinothkumar (BEG/PJ-IOT-EL) wrote:
> We are internally using a middleware which acts as an abstraction to
> underlying operating system and provides APIs to application layers. Now
> the task is to port the middleware to Yocto. The middleware contains lot
> of make files and folders which are interdependent and I am at lost on
> how to start.
>
> I have some 20 directories which contains makefiles and autotool
> configure.ac files to generate lib files.

Without seeing the source code, it is difficult to provide useful help.

If the 20 different things are all set up through a common autoconf 
configuration file, it's probably best to write one recipe for the whole 
thing, and then split it into sub-packages after it has been built.

How does the configuration/compilation/insallation procedure look like? 
What are the commands you need to type?

Alex


