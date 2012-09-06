Return-Path: <Florin.Sarbu@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 83461E0150F
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 12:31:30 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q86JVTV4004978
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 6 Sep 2012 12:31:29 -0700 (PDT)
Received: from [128.224.170.157] (128.224.170.157) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.309.2;
	Thu, 6 Sep 2012 12:31:28 -0700
Message-ID: <5048FA0F.50309@windriver.com>
Date: Thu, 6 Sep 2012 22:31:27 +0300
From: Florin Sarbu <florin.sarbu@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:15.0) Gecko/20120827 Thunderbird/15.0
MIME-Version: 1.0
To: Evade Flow <evadeflow@gmail.com>
References: <CAMAb8ZNh8zUQnPuhMK8fkPT5QZuBdypDVYb8BudqT9Dc2TbT3g@mail.gmail.com>
In-Reply-To: <CAMAb8ZNh8zUQnPuhMK8fkPT5QZuBdypDVYb8BudqT9Dc2TbT3g@mail.gmail.com>
X-Mailman-Approved-At: Thu, 06 Sep 2012 12:56:58 -0700
Cc: yocto@yoctoproject.org
Subject: Re: ERROR: Nothing RPROVIDES 'libsegfault'
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
X-List-Received-Date: Thu, 06 Sep 2012 19:31:30 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Hi,
discovery-image is supposed to work with the denzil branch of poky. 
Please checkout that branch and let us know if you encounter any other 
issues.

Thanks,
Florin

On 09/06/2012 10:22 PM, Evade Flow wrote:
> I'm seeing this error while trying to 'bitbake discovery-image' from the
> meta-ivi layer, according to the instructions here:
>
>    - http://git.yoctoproject.org/cgit/cgit.cgi/meta-ivi/tree/README.md
>
> The complete output looks like this:
>
> Loading cache...done.
> Loaded 1162 entries from dependency cache.
> Parsing recipes...done.
> Parsing of 858 .bb files complete (857 cached, 1 parsed). 1159
> targets, 39 skipped, 0 masked, 0 errors.
>
> Build Configuration:
> BB_VERSION        = "1.15.3"
> TARGET_ARCH       = "arm"
> TARGET_OS         = "linux-gnueabi"
> MACHINE           = "vexpressa9"
> DISTRO            = "poky-ivi-systemd"
> DISTRO_VERSION    = "E-0.2+snapshot-20120906"
> TUNE_FEATURES     = "armv7a vfp neon cortexa9"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto        = "master:0f55a5868457300a3defc7fa7451ef191d19e018"
> meta-ivi          = "master:d2be84764e15003603f08e950308dae7d0ffa9a2"
> meta-systemd      = "master:ff33e6271934c747396c307e51dc3e5a5a1f75b8"
>
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing RPROVIDES 'libsegfault' (but
> /media/acme/remus/poky-git/meta/recipes-core/packagegroups/packagegroup-core-standalone-sdk-target.bb
> RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'libsegfault' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['libsegfault']
> NOTE: Runtime target 'packagegroup-core-standalone-sdk-target' is
> unbuildable, removing...
> Missing or unbuildable dependency chain was:
> ['packagegroup-core-standalone-sdk-target', 'libsegfault']
> ERROR: Required build target 'discovery-image' has no buildable providers.
> Missing or unbuildable dependency chain was: ['discovery-image',
> 'packagegroup-core-standalone-sdk-target', 'libsegfault']
>
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
>
>
> Being fairly new to Yocto/bitbake, I'm not sure how to begin
> troubleshooting this. Any suggestions?  (Note: this is from poky master
> as of this morning. It may be that meta-ivi doesn't--and isn't intended
> to--work with the bleeding edge poky sources. I'm just trying to get my
> head around how to sort out conflicts like this...)


