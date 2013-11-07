Return-Path: <flihp@twobit.us>
Received: from smtp.twobit.us (unknown [38.83.192.235])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C565E01828
	for <yocto@yoctoproject.org>; Thu,  7 Nov 2013 14:30:03 -0800 (PST)
Received: from [50.146.25.14] (helo=[172.16.1.10])
	by smtp.twobit.us with esmtpsa
	(TLS1.0:DHE_RSA_CAMELLIA_256_CBC_SHA1:256) (Exim 4.80)
	(envelope-from <flihp@twobit.us>)
	id 1VeY5G-0003x6-Q3; Thu, 07 Nov 2013 22:29:51 +0000
Message-ID: <527C145F.7050407@twobit.us>
Date: Thu, 07 Nov 2013 17:29:51 -0500
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:17.0) Gecko/20130922 Icedove/17.0.9
MIME-Version: 1.0
To: Saul Wold <sgw@linux.intel.com>
References: <1383343353-23232-1-git-send-email-sgw@linux.intel.com>
	<1383343353-23232-2-git-send-email-sgw@linux.intel.com>
In-Reply-To: <1383343353-23232-2-git-send-email-sgw@linux.intel.com>
X-Enigmail-Version: 1.5.1
X-SA-Exim-Connect-IP: 50.146.25.14
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on smtp.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED autolearn=ham
	version=3.3.2
X-SA-Exim-Version: 4.2.1 (built Mon, 26 Dec 2011 16:24:06 +0000)
X-SA-Exim-Scanned: Yes (on smtp.twobit.us)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-measured][PATCH 1/7] trousers: Add libgcc as Runtime dependency
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
X-List-Received-Date: Thu, 07 Nov 2013 22:30:04 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Saul,

Awesome patch set. This is the only one I can't figure out. Does tcsd
really need libgcc? 'ldd' doesn't say anything about dependencies. I'm
sure it's just that I'm not looking in the right place. Mind pointing it
out for me?

Thanks,
- Philip

On 11/01/2013 06:02 PM, Saul Wold wrote:
> Signed-off-by: Saul Wold <sgw@linux.intel.com>
> ---
>  recipes-tpm/trousers/trousers_0.3.10.bb | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/recipes-tpm/trousers/trousers_0.3.10.bb b/recipes-tpm/trousers/trousers_0.3.10.bb
> index 33b2816..28594d2 100644
> --- a/recipes-tpm/trousers/trousers_0.3.10.bb
> +++ b/recipes-tpm/trousers/trousers_0.3.10.bb
> @@ -71,6 +71,8 @@ FILES_${PN}-doc = " \
>  	${mandir}/man8 \
>  	"
>  
> +RDEPENDS_${PN} = "libgcc"
> +
>  inherit autotools useradd
>  
>  EXTRA_OECONF="--with-gui=none"
> 


