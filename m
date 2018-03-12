Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7559FE00E5C; Mon, 12 Mar 2018 01:18:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EE210E00843
	for <yocto@yoctoproject.org>; Mon, 12 Mar 2018 01:18:17 -0700 (PDT)
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Mar 2018 01:18:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.47,460,1515484800"; d="scan'208";a="24424317"
Received: from mbabyjoh-desk.fi.intel.com (HELO
	mbabyjoh-desk.ger.corp.intel.com) ([10.237.72.84])
	by orsmga008.jf.intel.com with ESMTP; 12 Mar 2018 01:18:15 -0700
Date: Mon, 12 Mar 2018 10:21:40 +0200
From: "Maxin B. John" <maxin.john@intel.com>
To: Arno Steffens <star@gmx.li>
Message-ID: <20180312082140.GA18406@mbabyjoh-desk.ger.corp.intel.com>
References: <trinity-070c6a88-6217-4f78-be8a-24fb5b744253-1520576346077@3c-app-gmx-bs48>
MIME-Version: 1.0
In-Reply-To: <trinity-070c6a88-6217-4f78-be8a-24fb5b744253-1520576346077@3c-app-gmx-bs48>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org
Subject: Re: passwd fails for other users than root
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
X-List-Received-Date: Mon, 12 Mar 2018 08:18:18 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Arno,

On Fri, Mar 09, 2018 at 07:19:06AM +0100, Arno Steffens wrote:
> I have 2 extra users (added with useradd_example.bb). Login works for all 3 parties.
> 
> While login works, passwd (to change it) doesn't work for the extra users. They will asked for the old one - which fails.
> Root is not to be asked for old password. That's way root can change password for all. 
> 
> The strange issue is, that after root changes password for users, they can do it by themselves.
> Seems that login and passwd use different algos!?!?
> 
> Same password, but different hashes:
> before (created by yocto)
> user:$6$bk.Az/8KVV$v3TyAlroQeBZA3faJ.DxCVsCUBZaSAvB4FkuNkLDdsIchrmz6OnUGRnQI5BOgOjQ3mvj9QL3US6Amf2VWr0.j/:17598:0:99999:7:::
> behind (changed by root):
> user:$1$d3Uo1g82$Il2kYQj8qadzQvkwUU4Ia.:17598:0:99999:7:::
> 
> Edit: After a few further test I found that this has an effect:
> I used EXTRA_IMAGE_FEATURES += "read-only-rootfs" to create a read-only-rootf (by default). 
> But of course I did make the partition writeable before attempting to change the password.
> But for some strange reasons this is not same. What might be the reason?

Can you please share the version details and the useradd_example.bb that was mentioned here ?
or even better, file a bug in Yocto's bugzilla (https://bugzilla.yoctoproject.org) ?

Best Regards,
Maxin

