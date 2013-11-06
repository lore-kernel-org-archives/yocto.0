Return-Path: <flihp@twobit.us>
Received: from smtp.twobit.us (unknown [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6C93E017A2
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2013 07:39:43 -0800 (PST)
Received: from [216.57.91.130] (helo=[10.204.207.200])
	by smtp.twobit.us with esmtpsa
	(TLS1.0:DHE_RSA_CAMELLIA_256_CBC_SHA1:256) (Exim 4.80)
	(envelope-from <flihp@twobit.us>)
	id 1Ve5Ce-0002cA-8e; Wed, 06 Nov 2013 15:39:32 +0000
Message-ID: <527A62BC.9060104@twobit.us>
Date: Wed, 06 Nov 2013 10:39:40 -0500
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130922 Icedove/17.0.9
MIME-Version: 1.0
To: Joe MacDonald <joe@deserted.net>
References: <1383179614-2457-1-git-send-email-flihp@twobit.us>
In-Reply-To: <1383179614-2457-1-git-send-email-flihp@twobit.us>
X-Enigmail-Version: 1.5.1
X-SA-Exim-Connect-IP: 216.57.91.130
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on smtp.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
	version=3.3.2
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-selinux][PATCH 0/3] Small dependency clean up.
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
X-List-Received-Date: Wed, 06 Nov 2013 15:39:53 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Hey Joe,

Have you had a chance to look at this one yet?

Thanks,
- Philip

On 10/30/2013 08:33 PM, Philip Tricca wrote:
> This series adds the necessary run-time dependencies to the
> selinux-config package. Some clean up follows removing the selinux
> lib* packages from the packagegroups as they get pulled in by the
> utilities anyways.
> 
> Philip Tricca (3):
>   Add RDEPENDS to selinux-config recipe.
>   Remove unnecessary dependencies from minimal packagegroup.
>   Remove unnecessary packages from packagegroup-core-selinux.
> 
>  recipes-security/packagegroups/packagegroup-core-selinux.bb    |    7 -------
>  recipes-security/packagegroups/packagegroup-selinux-minimal.bb |    8 --------
>  recipes-security/selinux/selinux-config_0.1.bb                 |    8 ++++++++
>  3 files changed, 8 insertions(+), 15 deletions(-)
> 


