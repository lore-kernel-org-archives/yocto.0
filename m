Return-Path: <sgw@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F225E0044D
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2012 10:57:26 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 08 Feb 2012 10:57:25 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="107822602"
Received: from unknown (HELO [10.255.14.241]) ([10.255.14.241])
	by orsmga002.jf.intel.com with ESMTP; 08 Feb 2012 10:57:25 -0800
Message-ID: <4F32C595.4040508@linux.intel.com>
Date: Wed, 08 Feb 2012 10:57:25 -0800
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: =?ISO-8859-1?Q?Bj=F6rn_Stenberg?= <bjst@enea.com>
References: <4F323C52.8030304@intel.com> <20120208100718.GB8335@giant>
In-Reply-To: <20120208100718.GB8335@giant>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Upstream-Status finally @ 100%
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
X-List-Received-Date: Wed, 08 Feb 2012 18:57:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 8bit

On 02/08/2012 02:07 AM, Björn Stenberg wrote:
> Saul Wold wrote:
>> After getting some final patches yesterday, we made it to 100% with
>> patch Upsteam-Status.
>
> Who sets the Upstream-Status? Are there guidelines how to do it?
>
The developer of the patch submitted to any OE branch (oe-core, meta-oe, 
...) should add the appropriate Upstream-Status entry.

See: http://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines

We had a big push within the OE-Core team to try and determine if 
patches are appropriate for upstream or not.

> I spoke to the author of curl and mentioned the two patches in Yocto against it, both of which are marked as "Upstream-Status: Inappropriate". He said those patches were never submitted to him.
>
> Are we dismissing patches without even giving upstream a chance to comment?

In some cases yes we might be doing that, particularly patches that 
seemed to be specific to the OE cross compilation environment or to deal 
with packaging with in the embedded space where marked as Inappropriate. 
  Once we get though round one of the obvious potential upstream-able 
patches we can revisit other.

If the author of curl would like to review and/or implement modification 
for OE that would be awesome, feel free to share the patches with them.

Sau!


