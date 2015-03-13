Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C928BE0087C; Fri, 13 Mar 2015 07:47:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 982D0E00871
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 07:47:24 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id t2DElNDH025784
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 13 Mar 2015 07:47:23 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.229) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.224.2; Fri, 13 Mar 2015 07:47:22 -0700
Message-ID: <5502F87A.90208@windriver.com>
Date: Fri, 13 Mar 2015 09:47:22 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.10;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <CAGKu3q+Ya040AHnfiRue03+OY9Yx4b4FXvPVYmgNLPCqMmDSxA@mail.gmail.com>
In-Reply-To: <CAGKu3q+Ya040AHnfiRue03+OY9Yx4b4FXvPVYmgNLPCqMmDSxA@mail.gmail.com>
Subject: Re: Using Pre Built Toolchain in Yocto Tree
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
X-List-Received-Date: Fri, 13 Mar 2015 14:47:25 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

On 3/13/15 6:43 AM, Darshan Patel wrote:
> Is there a way to configure Yocto to use Pre Built toolchain (like downloaded
> from CodeSourcery, etc.). I want to avoid building toolchain because it takes
> too much time and using new toolchain is not of my concern.

If you wish to use the Mentor Sourcery toolchain, they have a layer available
that allows you to incorporate it.

https://github.com/MentorEmbedded/meta-sourcery

I have not used this layer in a while (and I don't work for Mentor), so if you
have questions you may need to find someone who is more familiar with the layer.


There is another alternative though.  Build the toolchain once, store the
sstate-cache files that were generated and use those on subsequent builds.
There is a mechanism called the locked sstate-cache where you can feed into your
configuration the hashes for the sstate-cache item you are interested in.  This
will tell the system to simply re-use the components, and ignore any system
changes that may have occurred.

--Mark

> I was using this feature in buildroot.
> 
> Thanks in Advance!!!
> 
> -- 
> Regards
> Darshan
> 
> 


