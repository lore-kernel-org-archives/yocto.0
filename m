Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by mx1.pokylinux.org (Postfix) with ESMTP id B236F4C800A9
	for <yocto@yoctoproject.org>; Thu,  7 Jul 2011 15:42:11 -0500 (CDT)
Received: from mail-wy0-f180.google.com ([74.125.82.180])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 07 Jul 2011 13:42:10 -0700
Received: by wye20 with SMTP id 20so940434wye.25
	for <yocto@yoctoproject.org>; Thu, 07 Jul 2011 13:42:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.216.50.2 with SMTP id y2mr1039755web.77.1310071329273; Thu, 07
	Jul 2011 13:42:09 -0700 (PDT)
Received: by 10.216.188.145 with HTTP; Thu, 7 Jul 2011 13:42:09 -0700 (PDT)
In-Reply-To: <CAPhnLPAr4z9CagpCnWo=oyEHFzRQTSbhga8Zm5HnF3dKOX11_w@mail.gmail.com>
References: <CAPhnLPAr4z9CagpCnWo=oyEHFzRQTSbhga8Zm5HnF3dKOX11_w@mail.gmail.com>
Date: Thu, 7 Jul 2011 13:42:09 -0700
Message-ID: <CAPhnLPCxPtO=Kj4VWhC9i0WRTVR64kKcvbAt2rfDYcbM=9LDnQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org, 
	Richard Purdie <richard.purdie@linuxfoundation.org>,
	Saul Wold <saul.wold@intel.com>, "Zanussi, Tom" <tom.zanussi@intel.com>,
	Bruce Ashfield <bruce.ashfield@windriver.com>, 
	"Hart, Darren" <darren.hart@intel.com>
Subject: Re: Details on Bug #963 kernel tarball corruption.
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
X-List-Received-Date: Thu, 07 Jul 2011 20:42:12 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Jul 7, 2011 at 1:34 PM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> So, do_kernel_checkout never even gets the chance to fix up the git repo.

Quick clarification here. It never gets the chance to do it because
do_unpack runs:

git clone -s -n
/srv/build/build/poky/build/downloads/git2/.srv.build.build.repo.git.pokylinux.org.linux-yocto-2.6.37
/srv/build/build/poky/build/tmp/work/qemux86-poky-linux/linux-yocto-2.6.37+git3+94bca94ff11276b4cfffc1818c1defa3051854b2_1+ea7bcd9e408ddfaf5ecd0bcc37956998add58e2d-r20/git/

which does not clone the remotes to the destination directory. So
do_kernel_checkout never even sees BAD_BRANCH.

-b

