Return-Path: <Aws.Ismail@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 18756E01469
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 21:58:01 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r3G4w0ij018930
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 15 Apr 2013 21:58:00 -0700 (PDT)
Received: from awsations-macbook-pro.local (128.224.23.151) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.342.3; Mon, 15 Apr 2013 21:58:00 -0700
Message-ID: <516CDA57.7030400@windriver.com>
Date: Tue, 16 Apr 2013 00:57:59 -0400
From: Aws Ismail <aws.ismail@windriver.com>
Organization: WRS
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:17.0) Gecko/20130216 Thunderbird/17.0.3
MIME-Version: 1.0
To: gmail <jayleezju@gmail.com>
References: <6053A3A9-F75D-4E36-BC3A-AFB0CEC5DE60@gmail.com>
In-Reply-To: <6053A3A9-F75D-4E36-BC3A-AFB0CEC5DE60@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: poky lsb support
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: aws.ismail@windriver.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 16 Apr 2013 04:58:02 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-04-15 10:21 PM, gmail wrote:
> HI every body:
>
> I  have a package(opensaf)  which needs support of  lsb init script .So I  use this "DISTRO ?= "poky-lab" in conf/local.conf
> And i set IMAGE_INSTALL in my image  recipe as follows:
> IMAGE_INSTALL = "\
>      ${CORE_IMAGE_BASE_INSTALL} \
>      packagegroup-core-boot \
>      bash\
>      bc \
>      binutils binutils-symlinks \
>      coreutils \
>      cpio \
>      cronie \
>      diffutils \
>      ed \
>      elfutils \
>      file \
>      findutils \
>      gawk \
>      grep \
>      m4 \
>      ncurses \
>      libpam \
>      procps \
>      psmisc \
>      sed \
>      shadow \
>      tar \
>      util-linux \
>      zlib \
>      lsb \
>      lsbsetup \
>      \
>      dhcp-client \
>      lsof \
>      pciutils \
>      setserial \
>      strace \
>      sysstat \
>      usbutils \
>      which \
>      kernel-module-tipc \
>      libxml2 \
>      python-shell \
>      python-xml \
>      python-subprocess \
>      eglibc-utils \
>      tipcutils \
>      opensaf\
>      "
>
> I didn't use  packagegroup-core-lsb because the flash of my device is very limited.
>
> When I use the startup script of "opensaf" I always get
> "/etc/core-lsb/lsb_start_daemon: line 44 : daemon: command not found
> /etc/core-lsb/lsb_log_message: line 16: failure: command not found"
>
> where can I find these commands : "daemon,failure", or which package I need to include to have these?
>
> PS: my poky branch is danny.
>
> Anybody can help ? thanks very much.
Hi,

These lsb* scripts are added by the lsbinitscripts bb recipe found in:

meta/recipes-extended/lsb/

In order to have them installed, you can install them directly (i.e. add 
lsbinitscripts to your conf/local.conf)

lsbinitscripts is pulled in by the core-lsb-misc package group defined in:

meta/recipes-extended/packagegroups/packagegroup-core-lsb.bb

Hope that answers your question.

Cheers.

Aws\
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


