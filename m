Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA406E00874
	for <yocto@yoctoproject.org>; Thu, 16 Jan 2014 04:23:38 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 16 Jan 2014 04:23:37 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.95,667,1384329600"; d="scan'208";a="467627383"
Received: from paulonei-mobl.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.122.210])
	by orsmga002.jf.intel.com with ESMTP; 16 Jan 2014 04:23:34 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>,
	Scott Rifenbark <srifenbark@gmail.com>
Date: Thu, 16 Jan 2014 12:23:33 +0000
Message-ID: <5001422.95kKeIWq9M@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.11.5 (Linux/3.12.7-300.fc20.x86_64; KDE/4.11.5; x86_64; ; )
In-Reply-To: <alpine.DEB.2.02.1311151441370.3210@oneiric>
References: <alpine.DEB.2.02.1311140901570.24348@oneiric>
	<alpine.DEB.2.02.1311150505090.30443@oneiric>
	<alpine.DEB.2.02.1311151441370.3210@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: is the ref manual DISTRO_FEATURES list meant to be exhaustive?
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
X-List-Received-Date: Thu, 16 Jan 2014 12:23:42 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Friday 15 November 2013 14:43:30 Robert P. J. Day wrote:
>   a list of apparent necessary updates to section 10 of the ref
> manual, lists of valid items for DISTRO_FEATURES and MACHINE_FEATURES:
> 
> http://www.crashcourse.ca/wiki/index.php/OE#_FEATURES_updates_for_Section_10
> _of_reference_manual

You're right that there are some missing from the list; I agree that we should 
document all of the ones we support in OE-Core. However, I don't think we want 
to include the libc-* ones (at least, not listing all of them; providing a 
pointer to how you can get the list for eglibc might be useful though, 
possibly with reference to how these features normally get into 
DISTRO_FEATURES i.e. via DISTRO_FEATURES_LIBC_DEFAULT -> DISTRO_FEATURES_LIBC 
).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

