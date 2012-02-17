Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 966BEE003E2
	for <yocto@yoctoproject.org>; Thu, 16 Feb 2012 20:21:13 -0800 (PST)
Received: from WX-EXCHMB2.insigma.com.cn (10.0.1.203) by
	WX-Edge.insigma.com.cn (10.0.1.205) with Microsoft SMTP Server (TLS) id
	8.1.436.0; Fri, 17 Feb 2012 12:20:59 +0800
Received: from [192.168.0.98] (122.224.76.38) by Wx-ExchMB2.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.436.0; Fri, 17 Feb 2012
	12:20:55 +0800
Message-ID: <1329452349.1067.164.camel@localhost.localdomain>
From: Ni Qingliang <niqingliang@insigma.com.cn>
To: "Lu, Lianhao" <lianhao.lu@intel.com>
Date: Fri, 17 Feb 2012 12:19:09 +0800
In-Reply-To: <857BE142E5399E46B20FD45B9DB8A7BC0FCE8A57@SHSMSX102.ccr.corp.intel.com>
References: <1329446527.1067.157.camel@localhost.localdomain>
	<1329451392.1067.161.camel@localhost.localdomain>
	<857BE142E5399E46B20FD45B9DB8A7BC0FCE8A57@SHSMSX102.ccr.corp.intel.com>
Organization: Insigma
X-Mailer: Evolution 3.2.3 
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 17 Feb 2012 04:21:14 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

thanks, I found the problem, I have setup one new meta layer, and use a
new distro (new name and new version), but the eclipse-plugin is only
for native poky distro, and will check if the version is same as poky
distro's version.

On Fri, 2012-02-17 at 12:10 +0800, Lu, Lianhao wrote:
> 
> Looks like you're using the 1.1 eclipse plugin against the 1.1
> +snapshot poky. You may manually change the OECORE_SDK_VERSION in the
> environment file as a workaround.
> 
> 
-- 
Yi Qingliang
niqingliang@insigma.com.cn
https://niqingliang2003.wordpress.com


