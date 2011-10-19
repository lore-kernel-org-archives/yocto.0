Return-Path: <Rainer.Koenig@ts.fujitsu.com>
Received: from dgate20.ts.fujitsu.com (dgate20.ts.fujitsu.com [80.70.172.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D407DE005A1
	for <yocto@yoctoproject.org>; Wed, 19 Oct 2011 05:43:27 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1536-bit key; insecure key) header.i=Rainer.Koenig@ts.fujitsu.com;
	x-dkim-adsp=none (insecure policy)
DomainKey-Signature: s=s1536a; d=ts.fujitsu.com; c=nofws; q=dns;
	h=X-SBRSScore:X-IronPort-AV:Received:X-IronPort-AV:
	Received:Message-ID:Date:From:User-Agent:MIME-Version:To:
	Subject:X-Enigmail-Version:Content-Type:
	Content-Transfer-Encoding;
	b=NH6X/bGjwuO5/rcPSn+bIZ+JVhk5Boaf5plZKs9qPL+ZiXzfPjPBYZSl
	9QrLKRmmNV7P9bTsyccyb4A1ZATF5gkh4r0TKTas7cMHXXP639ICYv4mc
	Ed4ycUPlG/SO9fVpkUbOEj+bYWW5vtMCh0TjkN9WM28Co5pAApKQWkNk9
	24EXHTbFVaZcv//S0q+yUBLthuBRTXT4VjC1xVpRJn5FcJOAcMX128+Xi
	KM7LqINaExSdHWAXQL5Bx+exFQ8Zn;
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=ts.fujitsu.com; i=Rainer.Koenig@ts.fujitsu.com;
	q=dns/txt; s=s1536b; t=1319028208; x=1350564208;
	h=message-id:date:from:mime-version:to:subject:
	content-transfer-encoding;
	bh=qU3tZqb6N+twR8L/cfG93s0v+M5FlP7pn+ACTWQ7eA8=;
	b=Vu5ECQDOtE1UKZHnM8h7dMWYv3xW6OKbJ4ZNLKBpo1rpgBiEPlN+b1Zl
	vjUumFSLBrg304+7DoszXbLkPMzUyxeVShV5RR9sc8hXpSO4Z6gC21J1W
	c8bxKqk2zQYaD47wRjHdDKIBxlozN8Fahng2VDI2xWaZ+t3VF9nErDfnz
	z+h5xiIqZ+P8xhXTIAuURvTcLSNAOJYLpYI7JaBrtp5KS8N5eKf1duzF4
	dnGNY8sA8XFMMs4c138D650KiJ8dG;
X-SBRSScore: None
X-IronPort-AV: E=Sophos;i="4.69,370,1315173600"; d="scan'208";a="77077090"
Received: from abgdgate30u.abg.fsc.net ([172.25.138.66])
	by dgate20u.abg.fsc.net with ESMTP; 19 Oct 2011 14:43:26 +0200
X-IronPort-AV: E=Sophos;i="4.69,371,1315173600"; d="scan'208";a="121522167"
Received: from abg3595c.abg.fsc.net (HELO [172.25.145.158]) ([172.25.145.158])
	by abgdgate30u.abg.fsc.net with ESMTP; 19 Oct 2011 14:43:25 +0200
Message-ID: <4E9EC5ED.6050503@ts.fujitsu.com>
Date: Wed, 19 Oct 2011 14:43:25 +0200
From: Rainer Koenig <Rainer.Koenig@ts.fujitsu.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.1.16) Gecko/20111004 Icedove/3.0.11
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Enigmail-Version: 1.0.1
Subject: Questions from a greenhorn about build problems
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
X-List-Received-Date: Wed, 19 Oct 2011 12:43:29 -0000
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8bit

Hi all,

I'm using yoctoproject since one week now and got the latest
yocto-1.1/edison-6.0 git tree. I have been able to build core-image-sato
for the Beagleboard xM rev. A and the image works fine.

Now my next goal is to build an image for the TI 8148 EVM board. Since
Yocto is based on OE-core I thought it was a good idea to get the
meta-texasinstruments layer that is listed in the OE wiki:
http://www.openembedded.org/wiki/LayerIndex

So I cloned my git tree for meta-texasinstruments from
git://git.angstrom-distribution.org/meta-texasinstruments

and looked a bit around in that. conf/machine shows a conf for
c6a814x-evm so I replaced the machine "beagleboard" with "c6a814x-evm"
in my local conf.

I started `bitbake -k core-image-sato` and after builing around 4100 of
the 4221 recipes I got an error on a kernel tree from the arago-project
and from the u-boot compilation. I guess the second error occurs because
of the first error, so I had a better look at the first error.

The buildstats for this packet show, that fetch failed. I tried to fetch
the SRC_URL by hand and it worked without any problem. Note: I'm behind
a firewall, so to clone git://... I need to go over a SOCKS proxy.
Therefore I created an /etc/gitconfig that works fine and the downloads
show, that lots of git-repos from the yocto recipes worked without any
probem, but now those from the meta-texasinstruments layer seem not to
work. I tried a bit around with bitbake -b -D and saw long commandlines
with lots of export before.

It exports a GIT_CONFIG which points to
poky/tmp/sysroots/x86_64linux/usr/etc/gitconfig.

First I replaced this gitconfig with my own gitconfig from /etc, but
that didn't work. Looking at the file structure there it seems that
../sysroots/x86_64linux/ is chroot'ed somehow so I put gitconfig under
that chroot's /etc and now it seems that fetch is working.

So stupid question: Is there a documentation that explains how that
build process is working on the machine/script level and why are the
recipes from yocto behaving different than to the ones that I imported
with the meta-texasinstruments layer?

Best regards
Rainer
-- 
Dipl.-Inf. (FH) Rainer Koenig
Project Manager Linux Clients
Dept. PDG WPS R&D SW OSE

Fujitsu Technology Solutions
Bürgermeister-Ullrich-Str. 100
86199 Augsburg
Germany

Telephone: +49-821-804-3321
Telefax:   +49-821-804-2131
Mail:      mailto:Rainer.Koenig@ts.fujitsu.com

Internet         ts.fujtsu.com
Company Details  ts.fujitsu.com/imprint.html

