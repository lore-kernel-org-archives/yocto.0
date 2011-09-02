Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D0E32E0120F
	for <yocto@yoctoproject.org>; Fri,  2 Sep 2011 08:03:32 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p82F32ZO012354
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 2 Sep 2011 08:03:02 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.227) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 2 Sep 2011 08:03:01 -0700
Message-ID: <4E60F024.4030000@windriver.com>
Date: Fri, 2 Sep 2011 10:03:00 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:6.0.1) Gecko/20110830 Thunderbird/6.0.1
MIME-Version: 1.0
To: "Xu, Dongxiao" <dongxiao.xu@intel.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A12D73C60DC@shsmsx501.ccr.corp.intel.com>
In-Reply-To: <D5AB6E638E5A3E4B8F4406B113A5A19A12D73C60DC@shsmsx501.ccr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RPM multilib package installation issue
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
X-List-Received-Date: Fri, 02 Sep 2011 15:03:33 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 9/2/11 2:33 AM, Xu, Dongxiao wrote:
> Hi Mark and Richard,
> 
> I am trying to setup a RPM multilib system that, it is a qemux86-64 base
> image with MULTILIB_IMAGE_INSTALL = "lib32-connman-gnome". With several
> fixes, the build can pass.
> 
> However in run time testing I met a problem that, for those libraries whose
> base/multilib versions packages will be both built out (like libgtk, it has
> "libgtk-2.0-2.22.1-r2.x86_64.rpm" and "libgtk-2.0-2.22.1-r2.x86.rpm"), the
> rpm will only installs the lib32 version of it.

During filesystem construction the system uses dependencies to decide what to
install.  If you build a 32-bit connman-gnome and it requires other 32-bit
libraries the dependency scanner will either pick them up and install them, or
error due to missing dependencies.

In the manual case you would use "rpm -Uhv <path>" manually specifying which one
you want.  RPM will detect a multilib package and will allow installation of
both versions.  (Note always use rpm -U and not rpm -i..  rpm -i just blindly
installs the software with no checking if an existing version exists.)

> Therefore one question is, if there are two rpm packages with the same PN,
> PV, PR, but different architecture (like our multilib case), then we run
> command "rpm -ivh libgtk", which version of libgtk will be installed? Or does
> rpm have any parameter to force installing them both? Actually multilib
> requires to install them both with certain order.

No specific order should be necessary on a multilib system.  As long as the end
dependencies are satisfied the resulting filesystem will work.  (Exceptions to
this are when there are pre and post install scripts that have their own unique
dependencies.. but those are not the normal case for OE-Core/Yocto.)

--Mark

> Thanks, Dongxiao
> 


