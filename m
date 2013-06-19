Return-Path: <flihp@twobit.us>
Received: from www.twobit.us (www.twobit.us [50.19.210.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82439E014BF
	for <yocto@yoctoproject.org>; Wed, 19 Jun 2013 06:56:02 -0700 (PDT)
Received: from firewall.ctxuk.citrix.com ([46.33.159.2] helo=[172.16.2.10])
	by www.twobit.us with esmtpsa (TLS1.0:RSA_AES_256_CBC_SHA1:32)
	(Exim 4.72) (envelope-from <flihp@twobit.us>)
	id 1UpIrf-00056a-Ut; Wed, 19 Jun 2013 13:56:00 +0000
Message-ID: <51C1B7C5.8000408@twobit.us>
Date: Wed, 19 Jun 2013 09:53:09 -0400
From: Philip Tricca <flihp@twobit.us>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:10.0.12) Gecko/20130116 Icedove/10.0.12
MIME-Version: 1.0
To: mark.hatle@windriver.com
References: <51B67550.7070306@twobit.us>
In-Reply-To: <51B67550.7070306@twobit.us>
X-Enigmail-Version: 1.4.1
X-SA-Exim-Connect-IP: 46.33.159.2
X-SA-Exim-Mail-From: flihp@twobit.us
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on www.twobit.us
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.1
X-SA-Exim-Version: 4.2.1 (built Mon, 22 Mar 2010 06:26:47 +0000)
X-SA-Exim-Scanned: Yes (on www.twobit.us)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: meta-selinux make ALLOW_EMPTY package specific
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
X-List-Received-Date: Wed, 19 Jun 2013 13:56:04 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Ping.  Any interest in taking this (and the other patch I sent) into
meta-selinux?

Regards
- Philip

On 06/10/2013 08:54 PM, Philip Tricca wrote:
> Hello again,
> 
> Again a quick patch to get meta-selinux dylan branch building with oe-core dylan.  The QA scripts error'd out complaining that ALLOW_EMPTY in the task-core-selinux wasn't packages specific.  Not sure if it's relevant but this was with the latest bitbake release branch 1.18.  One line fix below.
> 
> Regards,
> - Philip
> 
> From: Philip Tricca <flihp@twobit.us>
> Date: Mon, 10 Jun 2013 20:33:32 -0400
> Subject: [PATCH 2/2] Make ALLOW_EMPTY package specific to keep QA scripts
>  happy.
> 
> ---
>  recipes-security/tasks/task-core-selinux.bb |    2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/recipes-security/tasks/task-core-selinux.bb b/recipes-security/tasks/task-core-selinux.bb
> index 05f8dfc..dda9c50 100644
> --- a/recipes-security/tasks/task-core-selinux.bb
> +++ b/recipes-security/tasks/task-core-selinux.bb
> @@ -8,7 +8,7 @@ PACKAGES = "\
>      task-core-selinux \
>      "
>  
> -ALLOW_EMPTY = "1"
> +ALLOW_EMPTY_${PN} = "1"
>  
>  RDEPENDS_task-core-selinux = " \
>  	ustr \


