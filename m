Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D351E00345
	for <yocto@yoctoproject.org>; Wed, 11 Jul 2012 10:46:16 -0700 (PDT)
Received: from [192.75.139.250] (port=49932 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1Sp0zP-00047I-60; Wed, 11 Jul 2012 13:46:15 -0400
Date: Wed, 11 Jul 2012 13:46:12 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Kevin Strasser <kevin.strasser@linux.intel.com>
In-Reply-To: <1342028686-8159-1-git-send-email-kevin.strasser@linux.intel.com>
Message-ID: <alpine.DEB.2.02.1207111345550.3756@oneiric>
References: <1342028686-8159-1-git-send-email-kevin.strasser@linux.intel.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] meta-baryon: add build documentation
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
X-List-Received-Date: Wed, 11 Jul 2012 17:46:16 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 11 Jul 2012, Kevin Strasser wrote:

> Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
> ---
>  README |   24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/README b/README
> index 2a9c77d..698d403 100644
> --- a/README
> +++ b/README
> @@ -27,6 +27,30 @@ to yocto@yoctoproject.org with '[meta-baryon]' in the subject.
>
>
>
> +Building the meta-baryon layer
> +------------------------------
> +
> +After you download meta-baryon, be sure add its location to bblayers.conf.
                                           ^to?

rday

