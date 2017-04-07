Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38011E00A0A; Thu,  6 Apr 2017 23:27:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.126.130 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [212.227.126.130 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE7A4E00972
	for <yocto@yoctoproject.org>; Thu,  6 Apr 2017 23:27:51 -0700 (PDT)
Received: from oxbaltgw14.schlund.de ([172.19.246.20]) by
	mrelayeu.kundenserver.de (mreue002 [212.227.15.163]) with ESMTPSA
	(Nemesis) id 0Lj9fL-1cNbaL16tj-00dWo4 for <yocto@yoctoproject.org>;
	Fri, 07 Apr 2017 08:27:50 +0200
Date: Fri, 7 Apr 2017 07:27:49 +0100 (BST)
From: Colin Helliwell <colin.helliwell@ln-systems.com>
To: yocto@yoctoproject.org
Message-ID: <1186309734.100020.1491546470050@email.1and1.co.uk>
In-Reply-To: <CAJTo0LZC8phfFv5yW6i2wNou1NX1Z2Kgt+h+Qp06kWK3a-kbmg@mail.gmail.com>
References: <0a9201d2ac6b$36b55fa0$a4201ee0$@ln-systems.com>
	<CAJTo0LbeDVgV3mAq=hK4opN70zVyBZ+nwRHcXeNt+d6c4PFJ2A@mail.gmail.com>
	<321234949.389819.1491224825363@email.1and1.co.uk>
	<CAJTo0LZC8phfFv5yW6i2wNou1NX1Z2Kgt+h+Qp06kWK3a-kbmg@mail.gmail.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.1-Rev32
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:lvzO6T+Xh4W8fg6mYk9eSyl6RyxYGZUu4Wuw2pIRTaTJs0pSaOT
	InRUeqI7NVkU9DY6DNBCyg3LQ76gbMFhBHnzit80xPkm39vcQOyC+OrPDOeefww8ml1WQsf
	xJJFht43cieW1CGgR+lYS0hHunp4TZ5Q4p+Ic26r2gEbTFdLmoWhHOjm6rx9+qOKlADx3fo
	GyiiyWWTuUFmX0v1mV3sw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:imJ27ha9Xho=:re44q36fRhySTaXVEweokd
	1OkeqVx3nD7N8ieeqKgJUTQsrmq1x00XxQcGxwWRNBQp5kEW95DP6/NOaYBqqDm7bdpnipMW1
	FYilqh4+KGsv2nLCWu9IN4Mw3t5aOCHrv12lNRgR4kw+v8zs3fNsUdEH2OjrB7wf8xGcs0hLE
	DCn874xGOgr7q3YhuyiamgLw3/dWvhoOgRffD1Y1BlUh+rrX1Gzi3/AQ/fXN53sD+zAuNSQr0
	+mZiU9beznwmG3HdgF82FqIEQu/Vjw5Jh7jqLSGQZf5oXA1ySrPL2Mfy1x2bUS4ejqpOeYMnJ
	eojyNN3Y57hGPAx2ov3SFmzu8ik1gjSLVSOo3AYpkqrNiJ06wYDvMzHGLzXPAgUUDTv8BTOgR
	AbXa/JbOwXy/Qq5MMHrPRMshpcDW3uaV73R/KUzpXtTnDcCXmZ/aMr9EVHalwZL2G2FEECb+h
	2YAFe8SlL4z69eiMZ10k7oIG+hWWGgerUrLCANNBEp9ja7y+X3bnDv6Pw8cTVPm2Jq+Dd+pYR
	cSjDoCKRaZJ6kFa4JFS4iPVQF0CuOEHavn/Bj+dSVS8Oh/tulyvWrkZLf42RZyUHqVxyrPqqi
	FxvmrAVZsp3cFKKDEzlNYTJrgji6i9ScXhOktLQIXJXC2WFljdAQth4T0RCbgOJhFEq7zCaXA
	381ffjvfJBQotXgeJ+l/iRD0IXz3SMLIDIR+n/TBCYn5JeoRipV5uK/fHpz9P4zZbXDbybNqM
	ZTpIwS4rpmaA19Vm
Subject: Re: xsltproc failing to load docbook.xsl
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Colin Helliwell <colin.helliwell@ln-systems.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 07 Apr 2017 06:27:56 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


> On 03 April 2017 at 14:11 "Burton, Ross" <ross.burton@intel.com> wrote:
> 
> On 3 April 2017 at 14:07, Colin Helliwell <colin.helliwell@ln-systems.com> wrote:
> 
> > Hmmm, that's not got it unfortunately.
> >  I've also added a depend on libxslt-native (to get the xsltproc binary itself), and can see docbook-xsl-stylesheets-native building first - it creates a lot of docbook.xml's in various places (e.g. down under tmp/sysroots/x86_64-linux/, and tmp/work/x86_64-linux/), but the networkmanager recipe still isn't then finding that file.
> 
> There's a few pieces in oe-core which use docbook-xsl, I'd grep it and see if there are any obvious fixes required.
> 

I think I've solved this now - it appears that the necessary DEPENDS are
    libxslt-native  docbook-xsl-stylesheets-native  xmlto-native

