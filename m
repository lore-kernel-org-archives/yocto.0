Return-Path: <philip@balister.org>
Received: from starfish.geekisp.com (starfish.geekisp.com [216.168.135.166])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id E030AE01371
	for <yocto@yoctoproject.org>; Sun, 11 Nov 2012 15:22:46 -0800 (PST)
Received: (qmail 24860 invoked by uid 1003); 11 Nov 2012 23:22:45 -0000
Received: from unknown (HELO ?192.168.1.105?)
	(philip@opensdr.com@96.240.166.19)
	by mail.geekisp.com with (DHE-RSA-AES256-SHA encrypted) SMTP;
	11 Nov 2012 23:22:45 -0000
Message-ID: <50A03344.5020005@balister.org>
Date: Sun, 11 Nov 2012 18:22:44 -0500
From: Philip Balister <philip@balister.org>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:16.0) Gecko/20121016 Thunderbird/16.0.1
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1352667964.git.tom.zanussi@intel.com>
	<eafe70e873312e1b893408a8157501edcf0e6415.1352667964.git.tom.zanussi@intel.com>
In-Reply-To: <eafe70e873312e1b893408a8157501edcf0e6415.1352667964.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com, meta-intel@yoctoproject.org
Subject: Re: [PATCH 1/1] meta-intel: update MAINTAINERS with meta-intel mailing list info
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
X-List-Received-Date: Sun, 11 Nov 2012 23:22:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 11/11/2012 06:18 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
>
> The newly created meta-intel mailing list is where meta-intel-specific
> e-mail and patches should now go.  Update MAINTAINERS with that
> information.
>
> Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> ---
>   MAINTAINERS | 32 ++++++++++++++++++--------------
>   1 file changed, 18 insertions(+), 14 deletions(-)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index a2231d0..d5f521b 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -1,26 +1,30 @@
>   This file contains a list of BSP maintainers for the BSPs contained in
>   the meta-intel repository.
>
> -Please submit any patches against meta-intel BSPs to the Yocto mailing
> -list (yocto@yoctoproject.org) and preface them with [meta-intel] in
> -the Subject: line of your e-mail(s).  The latter makes it obvious that
> -your patches are intended for inclusion into meta-intel and also makes
> -it easier for maintainers to notice patches intended for meta-intel
> -amongst all the other traffic on the Yocto mailing list.  Also, if
> -your patches are available via a public git repository, please also
> -include a URL to the repo and branch containing your patches as that
> -makes it easier for maintainers to grab and test your patches.
> +Please submit any patches against meta-intel BSPs to the meta-intel
> +mailing list (meta-intel@yoctoproject.org).  Also, if your patches are
> +available via a public git repository, please include a URL to the
> +repo and branch containing your patches as that makes it easier for
> +maintainers to grab and test your patches.
> +
> +The web page for users of the meta-intel mailing list is
> +https://lists.yoctoproject.org/listinfo/meta-intel, where you can
> +subscribe to the list (please do, especially if you intend on
> +submitting patches).
>
>   If you have problems with or questions about a particular BSP, feel
> -free to contact the maintainer directly (cc:ing the Yocto mailing list
> -puts it in the archive and helps other people who might have the same
> -questions in the future), but please try to do the following first:
> +free to contact the maintainer directly (cc:ing the meta-intel mailing
> +list puts it in the archive and helps other people who might have the
> +same questions in the future), but please try to do the following
> +first:
>
>     - look in the Yocto Project Bugzilla
>       (http://bugzilla.yoctoproject.org/) to see if a problem has
> -    already been reported
> +    already been reported.
>
> -  - look through recent entries of the Yocto mailing list archives
> +  - look through recent entries of the meta-intel mailing list
> +    archives (https://lists.yoctoproject.org/pipermail/meta-intel/)
> +    and the Yocto mailing list archives
>       (https://lists.yoctoproject.org/pipermail/yocto/) to see if other
>       people have run into similar problems or had similar questions
>       answered.
>

Can you setup gmane to archive the list also? Then people can follow the 
list using NNTP.

Philip

