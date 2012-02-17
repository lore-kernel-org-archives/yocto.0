Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1E7DE003E2
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2012 20:05:17 -0800 (PST)
Received: from WX-EXCHMB2.insigma.com.cn (10.0.1.203) by
	WX-Edge.insigma.com.cn (10.0.1.205) with Microsoft SMTP Server (TLS) id
	8.1.436.0; Fri, 17 Feb 2012 12:05:01 +0800
Received: from [192.168.0.98] (122.224.76.38) by Wx-ExchMB2.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.436.0; Fri, 17 Feb 2012
	12:04:58 +0800
Message-ID: <1329451392.1067.161.camel@localhost.localdomain>
From: Ni Qingliang <niqingliang@insigma.com.cn>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 17 Feb 2012 12:03:12 +0800
In-Reply-To: <1329446527.1067.157.camel@localhost.localdomain>
References: <1329446527.1067.157.camel@localhost.localdomain>
Organization: Insigma
X-Mailer: Evolution 3.2.3 
MIME-Version: 1.0
Subject: Re: [eclipse-plugin]: ADT version too old
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: niqingliang@insigma.com.cn
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 17 Feb 2012 04:05:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

and there is no use to change DISTRO_VERSION in
<build_tree>/tmp/tmp/environment-setup-ppc603e-insigma-linux.

On Fri, 2012-02-17 at 10:42 +0800, 倪庆亮 wrote:
> I'm using the ecipse-plugin:
> http://autobuilder.yoctoproject.org/pub/nightly/20120216-2/eclipse-plugin/indigo/org.yocto.sdk-rc1-201202161547-archive.zip
> 
> my build tree is following the latest yocto git tree:
> git://git.yoctoproject.org/poky.git
> 
> and when assign the build tree as toolchain directory in eclipse, it
> said that:
> "Yocto Preferences Configuration Error!
>  OECORE related items are not found in envrionement setup files.
>  The ADT version you're using is too old.
>  Please upgrade to our latest ADT Version!"
> 
> I have checked the env setup file:
> <build_tree>/tmp/tmp/environment-setup-ppc603e-insigma-linux.
> It has OECORE items no doubt.
> export OECORE_DISTRO_VERSION="1.1+snapshot-20120217"
> export OECORE_SDK_VERSION="1.1+snapshot"
> 
> and I googled, found:
> https://lists.yoctoproject.org/pipermail/yocto/2011-October/005379.html
> 
> the author said that: "Could you check your file of
> meta-yocto/conf/distro/poky.conf for the variable DISTRO_VERSION, it
> should be "1.1'. "
> 
> but I checked the git tree, the poky.conf always has 'snapshot' in
> 'DISTRO_VERSION'.
> 
> I lost.
> 
> Any idea? THANKS!
> 
> --
> Yi Qingliang
> niqingliang@insigma.com.cn
> https://niqingliang2003.wordpress.com
> 

-- 
Yi Qingliang
niqingliang@insigma.com.cn
https://niqingliang2003.wordpress.com


