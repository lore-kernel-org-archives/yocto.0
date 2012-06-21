Return-Path: <bjst@giant.haxx.se>
Received: from giant.haxx.se (giant.haxx.se [80.67.6.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D27EE0070B
	for <yocto@yoctoproject.org>; Thu, 21 Jun 2012 01:50:58 -0700 (PDT)
Received: from giant.haxx.se (localhost.localdomain [127.0.0.1])
	by giant.haxx.se (8.14.4/8.14.4/Debian-2) with ESMTP id q5L8oqWu024663
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Thu, 21 Jun 2012 10:50:52 +0200
Received: (from bjst@localhost)
	by giant.haxx.se (8.14.4/8.14.4/Submit) id q5L8oqtF024660;
	Thu, 21 Jun 2012 10:50:52 +0200
Date: Thu, 21 Jun 2012 10:50:52 +0200
From: =?iso-8859-1?Q?Bj=F6rn?= Stenberg <bjst@enea.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <20120621085052.GC7204@giant>
References: <20120614132601.GB29124@giant> <1340019794.8481.10.camel@ted>
	<20120618150433.GC1646@giant>
	<CAJTo0LaOBdoieFvyxm-r-qRVmekB3mH5_-fAcgrTy3btc4YjtQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJTo0LaOBdoieFvyxm-r-qRVmekB3mH5_-fAcgrTy3btc4YjtQ@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: Discussion: Package testing
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
X-List-Received-Date: Thu, 21 Jun 2012 08:50:58 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Burton, Ross wrote:
> The problem with that is that you can only test the external
> interfaces, not the inner state (black box vs white box).  i.e. DBus
> has test cases for each C file inside that C file, so it can exercise
> both the external API and internal state.

I haven't examined dbus in detail yet, but in principle I don't think it should be a problem. As long as the test binaries are compiled on the build host, in the normal work dir, we don't need to know or care what source code they are built from.

-- 
Björn

