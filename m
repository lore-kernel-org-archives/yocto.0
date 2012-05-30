Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C328BE0070B
	for <yocto@yoctoproject.org>; Wed, 30 May 2012 10:12:59 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q4UHCra6023738;
	Wed, 30 May 2012 18:12:53 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 23236-08; Wed, 30 May 2012 18:12:49 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q4UHCiqA023731
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Wed, 30 May 2012 18:12:44 +0100
Message-ID: <1338397963.20169.170.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Date: Wed, 30 May 2012 18:12:43 +0100
In-Reply-To: <CAEsOVNfUrVFO-zqO-G2Ci958_oUGSzUnpOG-3dL8X_bS-R_1UQ@mail.gmail.com>
References: <4FC62CB6.8060004@enea.com>
	<CAEsOVNfUrVFO-zqO-G2Ci958_oUGSzUnpOG-3dL8X_bS-R_1UQ@mail.gmail.com>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ALT_SRC_URI ?
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
X-List-Received-Date: Wed, 30 May 2012 17:13:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2012-05-30 at 16:08 +0000, McClintock Matthew-B29882 wrote:
> On Wed, May 30, 2012 at 9:20 AM, David Nyström <david.nystrom@enea.com> wrote:
> > Hi,
> >
> > Since meta-fsl-ppc:s git daemon(git://git.freescale.com) was down, I
> > experimented with adding the http reference as a mirror.
> >
> > MIRRORS_prepend = "\
> > git://git.freescale.com/ppc/sdk/linux.git
> > git://git.freescale.com/git/cgit.cgi/ppc/sdk/linux.git;protocol=http \n "
> >
> > Which failed and gave me:
> > http://pastebin.com/5sTQ0eMC
> >
> > It shows bitbake trying to fetch something assumed to be created as a
> > bitbake mirror, mangling the name.
> >
> > How would I go about doing above ?, getting it to failover to my own
> > specified link ?
> 
> It appears to expect mirrors to be in a tarred up bare git repository.
> Not sure if there is a way around this. You could do an override
> somewhere:
> 
> SRC_URI_pn-linux-qoriq-sdk = "git://some/other/place"

There is an open bug on this issue. Fixing it requires some invasive
changes to the fetcher code so its not been done yet and I wanted to get
the checksum issues out the way first.

Cheers,

Richard


