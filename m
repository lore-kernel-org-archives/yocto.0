Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C316E01410
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 14:44:53 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 Apr 2013 14:43:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,512,1363158000"; d="scan'208";a="297719594"
Received: from unknown (HELO [10.255.13.221]) ([10.255.13.221])
	by orsmga001.jf.intel.com with ESMTP; 19 Apr 2013 14:44:52 -0700
Message-ID: <1366407894.27207.58.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Fri, 19 Apr 2013 16:44:54 -0500
In-Reply-To: <alpine.DEB.2.02.1304190814320.4139@oneiric>
References: <alpine.DEB.2.02.1304190814320.4139@oneiric>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: how strict are released BSP requirements?
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
X-List-Received-Date: Fri, 19 Apr 2013 21:44:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2013-04-19 at 08:19 -0400, Robert P. J. Day wrote:
> (aside: currently going through yocto BSP developer's guide with my
> proofreader's beanie on so be prepared for a few BSP-related questions
> today. you've been warned.)
> 
>   in section on BSP requirements:
> 
> http://www.yoctoproject.org/docs/latest/bsp-guide/bsp-guide.html#released-bsp-requirements
> 
> there are alleged requirements like the existence of README and
> README.sources files, but it seems lots of layers at
> http://layers.openembedded.org/layerindex/ don't have one or the other
> of those files. could that explanation be refined a bit? or should
> those layers suck it up and add all files that are allegedly
> "required"?
> 

I don't think there's a requirement that the layerindex contain only
Yocto-compliant or released BSP layers, so talking about Yocto BSP
requirements doesn't really apply...

For Yocto-compliant BSPs, yes, the README is required.

For released BSPs that contain binary images, README.sources is
required, but since binary images are only recommended (see 1.3.2, this
requirement should be moved from the required section to the recommended
if binary images are included).

In practice, both files are typically added to a BSP, so if images are
shipped, they're covered.

Tom

> rday
> 



