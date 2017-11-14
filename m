Return-Path: <obi@opendreambox.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 670A1E00CC4; Tue, 14 Nov 2017 05:11:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [82.149.226.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 561 seconds by postgrey-1.32 at yocto-www;
	Tue, 14 Nov 2017 05:11:08 PST
Received: from mail.dream-property.net (mail.dream-property.net
	[82.149.226.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B6FFE00928
	for <yocto@yoctoproject.org>; Tue, 14 Nov 2017 05:11:08 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by mail.dream-property.net (Postfix) with ESMTP id 6CC5831A6C15;
	Tue, 14 Nov 2017 14:01:46 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mail.dream-property.net
Received: from mail.dream-property.net ([127.0.0.1])
	by localhost (mail.dream-property.net [127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id AAMDBnDdLlmb; Tue, 14 Nov 2017 14:01:40 +0100 (CET)
Received: from t460p (p57A61BB5.dip0.t-ipconnect.de [87.166.27.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.dream-property.net (Postfix) with ESMTPSA id 207D131A6BC2;
	Tue, 14 Nov 2017 14:01:40 +0100 (CET)
Date: Tue, 14 Nov 2017 14:01:34 +0100
From: Andreas Oberritter <obi@opendreambox.org>
To: Martyn Welch <martyn.welch@collabora.co.uk>
Message-ID: <20171114140134.64914cb2@t460p>
In-Reply-To: <1510600788-27455-1-git-send-email-martyn.welch@collabora.co.uk>
References: <1510600788-27455-1-git-send-email-martyn.welch@collabora.co.uk>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [OE-core] [PATCH v2 1/2] package.bbclass: add prohibited-path qa test
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
X-List-Received-Date: Tue, 14 Nov 2017 13:11:10 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi Martyn,

On Mon, 13 Nov 2017 19:19:47 +0000
Martyn Welch <martyn.welch@collabora.co.uk> wrote:

> Sometimes we wish to ensure that packages don't install files or
> directories somewhere that may prove detrimental to the operation of the
> system. For example, this may be the case if files are placed in a
> directory that is utilised as a mount point at run time, thus making them
> inaccessible once when the mount point is being utilised.
> 
> Implement the prohibited-path QA test, which enables such locations to be
> specified in a "PROHIBITED_PATH" variable. This implementation allows for
> exact matches and simple wildcards (paths ending with an asterisk. An
> error will be raised should a match be found, or in the case of a
> wildcard, for any files added below the specificed location(s).
> 
> Signed-off-by: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
> Signed-off-by: Martyn Welch <martyn.welch@collabora.co.uk>
> ---
> 
> Changes since v1:
>  - Correcting author and SOB.
> 
>  meta/classes/insane.bbclass  |  2 +-
>  meta/classes/package.bbclass | 11 +++++++++++
>  2 files changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/meta/classes/insane.bbclass b/meta/classes/insane.bbclass
> index def9c70..fb10681 100644
> --- a/meta/classes/insane.bbclass
> +++ b/meta/classes/insane.bbclass
> @@ -33,7 +33,7 @@ ERROR_QA ?= "dev-so debug-deps dev-deps debug-files arch pkgconfig la \
>              perms dep-cmp pkgvarcheck perm-config perm-line perm-link \
>              split-strip packages-list pkgv-undefined var-undefined \
>              version-going-backwards expanded-d invalid-chars \
> -            license-checksum dev-elf file-rdeps \
> +            license-checksum dev-elf file-rdeps prohibited-path \
>              "
>  # Add usrmerge QA check based on distro feature
>  ERROR_QA_append = "${@bb.utils.contains('DISTRO_FEATURES', 'usrmerge', ' usrmerge', '', d)}"
> diff --git a/meta/classes/package.bbclass b/meta/classes/package.bbclass
> index 2053d46..721ca1e 100644
> --- a/meta/classes/package.bbclass
> +++ b/meta/classes/package.bbclass
> @@ -1162,6 +1162,17 @@ python populate_packages () {
>                  continue
>              seen.append(file)
>  
> +            prohibited_path = d.getVar('PROHIBITED_PATH')
> +            if prohibited_path is not None:
> +                for p in prohibited_path.split():

Paths may contain space characters. How about using colons as path separators
like in $PATH and several other path variables in OE-Core?

> +                    exactmatch = True
> +                    if p.endswith("*"):
> +                        p = p[:len(p)-1]
> +                        exactmatch = False
> +                    if file[1:].startswith(p) and ((file[1:] != p) or exactmatch) :
> +                        msg = "%s is in a prohibited path.\n" % file[1:]
> +                        package_qa_handle_error("prohibited-path", msg, d)
> +

You could use fnmatch to allow generic shell wildcards.

Why don't you compare the first character? Saved mount points are usually
absolute.

Regards,
Andreas

