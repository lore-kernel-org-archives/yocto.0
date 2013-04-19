Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6AB8E0144A
	for <yocto@yoctoproject.org>; Fri, 19 Apr 2013 08:05:45 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 19 Apr 2013 08:05:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,509,1363158000"; d="scan'208";a="324922976"
Received: from unknown (HELO helios.localnet) ([10.255.13.209])
	by fmsmga002.fm.intel.com with ESMTP; 19 Apr 2013 08:05:15 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Katu Txakur <katutxakurra@gmail.com>
Date: Fri, 19 Apr 2013 16:05:15 +0100
Message-ID: <2626269.NDBbjkYV5W@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.5.0-27-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <CAM1ZcoW1aaZUZW=t2J+GbNjyYQQPjSpRoGfJC9u-dh2ZJXFQoQ@mail.gmail.com>
References: <CAM1ZcoW1aaZUZW=t2J+GbNjyYQQPjSpRoGfJC9u-dh2ZJXFQoQ@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: libsnmp-dev in yocto built image
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 19 Apr 2013 15:05:45 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 19 April 2013 15:44:39 Katu Txakur wrote:
> I want to include net-snmp in an image that I'm building with the Yocto
> project (gumstix-console-image). When I add it net-snmp-client or server to
> the local.conf I get this error when bitbake is creating the rootfs.
> 
> Processing perl-module-text-soundex...
> 
> error: Failed dependencies:
> 
> net-snmp-server = ${EXTENDPV} is needed by net-snmp-dev-5.7.1-r0.armv7a
> 
> net-snmp-client = ${EXTENDPV} is needed by net-snmp-dev-5.7.1-r0.armv7a

We don't use EXTENDPV anymore; EXTENDPV is not defined and that's why you're 
seeing that unexpanded value. Where did you get your net-snmp recipe from? 
Which version of the build system are you using?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

