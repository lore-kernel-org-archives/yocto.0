Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07A75E00A0C
	for <yocto@yoctoproject.org>; Mon,  3 Mar 2014 10:52:28 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 03 Mar 2014 10:48:02 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,579,1389772800"; d="scan'208";a="493085332"
Received: from dmilliga-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.120.25])
	by orsmga002.jf.intel.com with ESMTP; 03 Mar 2014 10:52:27 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Michael Gloff <mgloff@emacinc.com>
Date: Mon, 03 Mar 2014 18:52:25 +0000
Message-ID: <126717450.ayqcFG2vtF@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.2 (Linux/3.13.5-200.fc20.x86_64; KDE/4.12.2; x86_64; ; )
In-Reply-To: <CALXw4G5VUNySyWoOoFbKHnMUWFjZfQKwQCu0T0cWtwGOAMQnow@mail.gmail.com>
References: <CALXw4G5VUNySyWoOoFbKHnMUWFjZfQKwQCu0T0cWtwGOAMQnow@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Toolchain
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
X-List-Received-Date: Mon, 03 Mar 2014 18:52:29 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Michael,

On Sunday 02 March 2014 19:58:41 Michael Gloff wrote:
> Is there a reason why the toolchain cannot be built with a machine name
> that contains capital letters? Seems weird, everything else builds fine,
> but meta-toolchain fails complaining about caps.

Although machine names are traditionally all lower case in our build system, 
there's no deliberate restriction in place that enforces this.

Would you be able to provide more details, such as the version of the build 
system you are using, the exact capital letters you used in the machine name, 
and the error you received? 

Thanks,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

