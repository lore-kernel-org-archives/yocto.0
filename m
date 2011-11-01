Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7163E0054F
	for <yocto@yoctoproject.org>; Tue,  1 Nov 2011 11:29:01 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pA1IStQw005069;
	Tue, 1 Nov 2011 18:28:55 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 04750-02; Tue,  1 Nov 2011 18:28:51 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id pA1HY2k5004165
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Tue, 1 Nov 2011 18:28:48 GMT
Message-ID: <1320172127.20107.8.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Tue, 01 Nov 2011 18:28:47 +0000
In-Reply-To: <alpine.DEB.2.02.1110281320260.5965@localhost6.localdomain6>
References: <alpine.DEB.2.02.1110281320260.5965@localhost6.localdomain6>
X-Mailer: Evolution 3.2.1- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [PATCH] Fix HOMEPAGE values in libzypp and sat-solver .bb files
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
X-List-Received-Date: Tue, 01 Nov 2011 18:29:07 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-10-28 at 13:27 -0400, Robert P. J. Day wrote:
> Fix obvious typoes in .bb files for libzypp and sat-solver packages,
> and update the HOMEPAGE for sat-solver to refer to the sat-solver home
> page itself, rather than the libzypp home page.
> 
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> 
> ---
> 
> diff --git a/meta/recipes-extended/libzypp/libzypp_git.bb b/meta/recipes-extended/libzypp/libzypp_git.bb
> index 7d9382a..20e8f7c 100644
> --- a/meta/recipes-extended/libzypp/libzypp_git.bb
> +++ b/meta/recipes-extended/libzypp/libzypp_git.bb
> @@ -1,4 +1,4 @@
> -HOMEPAGE = "http://en.opensue.org/Portal:Libzypp"
> +HOMEPAGE = "http://en.opensuse.org/Portal:Libzypp"
>  DESCRIPTION  = "The ZYpp Linux Software management framework"
> 
>  LICENSE  = "GPLv2+"
> diff --git a/meta/recipes-extended/sat-solver/sat-solver_git.bb b/meta/recipes-extended/sat-solver/sat-solver_git.bb
> index b616c57..e243c6a 100644
> --- a/meta/recipes-extended/sat-solver/sat-solver_git.bb
> +++ b/meta/recipes-extended/sat-solver/sat-solver_git.bb
> @@ -1,5 +1,5 @@
>  DESCRIPTION  = "Sat Solver"
> -HOMEPAGE = "http://en.opensue.org/Portal:Libzypp"
> +HOMEPAGE = "http://http://en.opensuse.org/openSUSE:Libzypp_satsolver"
> 
>  LICENSE = "BSD"
>  LIC_FILES_CHKSUM = "file://LICENSE.BSD;md5=62272bd11c97396d4aaf1c41bc11f7d8"

I've merged this to master, thanks.

Richard



