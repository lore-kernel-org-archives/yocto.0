Return-Path: <sgw@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E7A7E0140E
	for <yocto@yoctoproject.org>; Wed,  9 May 2012 15:52:22 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 09 May 2012 15:52:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="141109117"
Received: from unknown (HELO [10.255.12.218]) ([10.255.12.218])
	by azsmga001.ch.intel.com with ESMTP; 09 May 2012 15:52:22 -0700
Message-ID: <4FAAF526.4090802@linux.intel.com>
Date: Wed, 09 May 2012 15:52:22 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <2BC681BE-E7C5-4CDD-8E03-7E567D5A8288@keylevel.com>
In-Reply-To: <2BC681BE-E7C5-4CDD-8E03-7E567D5A8288@keylevel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: gettext.bb question
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 09 May 2012 22:52:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/09/2012 02:39 PM, Chris Tapp wrote:
> Looking at gettext_0.18.1.1.bb in 7.0.0 I see:
>
> PROVIDES = "virtual/libintl virtual/gettext"
> PROVIDES_virtclass-native = "virtual/gettext-native"
>
> makes sense so far. However, I also see:
>
> DEPENDS = "libxml2-native gettext-native virtual/libiconv ncurses expat"
> DEPENDS_virtclass-native = "libxml2-native gettext-minimal-native"
>
> What does -native in the DEPENDS= 'do' here?
>
It sets the DEPENDS correctly for the gettext-native build, gettext uses 
BB_CLASSEXTEND and that would normally look at the DEPENDS line and 
automagically add -native to that list, we don't want to do that in this 
case so it's hard coded.

Sau!

> Chris Tapp
>
> opensource@keylevel.com
> www.keylevel.com
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

