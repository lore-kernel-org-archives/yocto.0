Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C74F2E011DB
	for <yocto@yoctoproject.org>; Fri,  4 Jan 2013 06:28:12 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id r04ERqnU020852;
	Fri, 4 Jan 2013 14:27:52 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 32489-05; Fri,  4 Jan 2013 14:27:47 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id r04ERe9F020841
	(version=TLSv1/SSLv3 cipher=AES256-SHA bits=256 verify=NO);
	Fri, 4 Jan 2013 14:27:42 GMT
Message-ID: <1357309662.28649.127.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Maxin B. John" <maxin.john@enea.com>
Date: Fri, 04 Jan 2013 14:27:42 +0000
In-Reply-To: <1357299055-56828-1-git-send-email-maxin.john@enea.com>
References: <1357299055-56828-1-git-send-email-maxin.john@enea.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org, scott.a.garman@intel.com,
	openembedded-core@lists.openembedded.org
Subject: Re: [PATCH] latencytop: add sudo as runtime dependency
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
X-List-Received-Date: Fri, 04 Jan 2013 14:28:13 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2013-01-04 at 12:30 +0100, Maxin B. John wrote:
> From: "Maxin B. John" <maxin.john@enea.com>
> 
> Latencytop needs superuser privileges. The latencytop plugin in
> eclipse invokes it as 'sudo latencytop'. So, it will be good to
> include sudo as a runtime dependency.
> 
> Signed-off-by: Maxin B. John <maxin.john@enea.com>
> ---
>  meta/recipes-kernel/latencytop/latencytop_0.5.bb |    3 +++
>  1 files changed, 3 insertions(+), 0 deletions(-)
> 
> diff --git a/meta/recipes-kernel/latencytop/latencytop_0.5.bb b/meta/recipes-kernel/latencytop/latencytop_0.5.bb
> index 3e35bf9..a148a47 100644
> --- a/meta/recipes-kernel/latencytop/latencytop_0.5.bb
> +++ b/meta/recipes-kernel/latencytop/latencytop_0.5.bb
> @@ -7,6 +7,9 @@ LIC_FILES_CHKSUM = "file://latencytop.c;endline=23;md5=ee9ea9b1415356e5734adad4a
>  
>  DEPENDS = "virtual/libintl ncurses glib-2.0  ${@base_contains('DISTRO_FEATURES', 'x11', 'gtk+', '', d)}"
>  
> +# latencytop and it's eclipse support need sudo
> +RDEPENDS_${PN} = "sudo"
> +
>  PR = "r3"

Shouldn't the eclipse support RDEPEND on sudo, not latencytop? There are
several ways you could run latencytop without sudo...

Following this logic, we'd add an RDEPENDS on sudo for every app that
could possibly need root privs.

Cheers,

Richard


