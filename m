Return-Path: <josh@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 242D7E00596
	for <yocto@yoctoproject.org>; Wed, 11 Apr 2012 08:49:47 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 11 Apr 2012 08:48:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="140500733"
Received: from unknown (HELO [10.255.12.85]) ([10.255.12.85])
	by fmsmga001.fm.intel.com with ESMTP; 11 Apr 2012 08:48:46 -0700
Message-ID: <4F85A7DE.1090202@linux.intel.com>
Date: Wed, 11 Apr 2012 08:48:46 -0700
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237945186473@ORSMSX101.amr.corp.intel.com>
	<CAEsOVNev-JtaYg9oxKMewu8tWnQL4FF9sxdDttv+VBmMbRL0og@mail.gmail.com>
In-Reply-To: <CAEsOVNev-JtaYg9oxKMewu8tWnQL4FF9sxdDttv+VBmMbRL0og@mail.gmail.com>
Subject: Re: package requirements for CentOS
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
X-List-Received-Date: Wed, 11 Apr 2012 15:49:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit



On 11/04/12 08:43, McClintock Matthew-B29882 wrote:
> On Tue, Apr 10, 2012 at 5:13 PM, Rifenbark, Scott M
> <scott.m.rifenbark@intel.com>  wrote:
>> I have recently added the CentOS distribution to the YP QS.  The list now
>> includes Ubuntu, Fedora, openSUSE, and CentOS.  Further down in the manual
>> there are sections detailing the package requirements for Ubuntu, Fedora,
>> and openSUSE.  I should address CentOS.  Here is the link to the sections
>> currently there.  Does anyone know the package requirements for CentOS?
>>
>>
>>
>> http://www.yoctoproject.org/docs/latest/yocto-project-qs/yocto-project-qs.html#packages
>
> We have some idea. The biggest difference looks to be chrpath is not
> available on CentOS/RHEL 5.x distro's by default. I thought the same
> could be said of python2.6 so I'm not sure at the moment how we handle
> that. (This is for edison so it should still be applicable)

Most likely EPEL https://fedoraproject.org/wiki/EPEL ?

It's listed on the YP wiki page for getting extra dependencies on 
CentOS: https://wiki.yoctoproject.org/wiki/Poky/GettingStarted/Dependencies

Cheers,
Joshua

>
> #!/bin/sh
>
> echo "Install packages needed to build Yocto, please wait, it may take a while"
> PKGS="tetex gawk sqlite-devel vim-common redhat-lsb xz \
>       m4 make wget curl ftp tar bzip2 gzip python-devel \
>       unzip perl texinfo texi2html diffstat openjade zlib-devel \
>       docbook-style-dsssl sed docbook-style-xsl docbook-dtds \
>       docbook-utils bc glibc-devel pcre pcre-devel \
>       groff linuxdoc-tools patch linuxdoc-tools cmake \
>       tcl-devel gettext ncurses apr \
>       SDL-devel mesa-libGL-devel mesa-libGLU-devel gnome-doc-utils \
>       autoconf automake libtool xterm"
> if [ "Fedora" = "$distro" ]; then
>      PKGS="$PKGS hg ccache quilt help2man perl-ExtUtils-MakeMaker connect-proxy"
> fi
> sudo yum -y groupinstall "development tools"
> sudo yum -y install $PKGS
>
> [ -r /etc/redhat-release ]&&  series=`sed -e 's,.*\([0-9]\)\..*,\1,g'
> /etc/redhat-release`
> # chrpath is ONLY availabe on RHEL 6.x
> if [ "Redhat" = "$distro" -a "6" != "$series" ]; then
>      # check if chrpath is installed.
>      if [ -z "$(rpm -qa chrpath)" ]; then
>          echo "chrpath is required. Install it as follows:
>          (1) download the package from
> http://mirror.centos.org/centos/${series}/extras/
>          (2) sudo rpm -Uhv chrpath-0.13-3.el${series}.centos.i386.rpm
>              or
>              sudo rpm -Uhv chrpath-0.13-3.el${series}.centos.x86_64.rpm
>          Then re-run this script."
>      fi
> else
>      sudo yum -y install chrpath
> fi
>
> -M
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Joshua Lock
         Yocto Project
         Intel Open Source Technology Centre

