Return-Path: <chris@2net.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E657E0098A; Sun,  5 Mar 2017 10:54:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [217.72.192.75 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 758 seconds by postgrey-1.32 at yocto-www;
	Sun, 05 Mar 2017 10:54:51 PST
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BEB5AE0097C
	for <yocto@yoctoproject.org>; Sun,  5 Mar 2017 10:54:51 -0800 (PST)
Received: from [192.168.159.5] ([88.109.2.205]) by mrelayeu.kundenserver.de
	(mreue103 [212.227.15.179]) with ESMTPSA (Nemesis) id
	0LrZ6L-1cHGb02ThV-013MVI for <yocto@yoctoproject.org>; Sun, 05 Mar 2017
	19:42:11 +0100
References: <CAF1M0z4aNmPDFzKnf0Xo7X1edvDNgYrrzwhYmS9Pg-L7XWWJCA@mail.gmail.com>
To: yocto@yoctoproject.org
From: Chris Simmonds <chris@2net.co.uk>
Organization: 2net
Message-ID: <a91d5c3b-9710-1624-82d8-e90dce57e5ad@2net.co.uk>
Date: Sun, 5 Mar 2017 18:42:10 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <CAF1M0z4aNmPDFzKnf0Xo7X1edvDNgYrrzwhYmS9Pg-L7XWWJCA@mail.gmail.com>
X-Provags-ID: V03:K0:rWaGwQdrXrXzyUR3vavAcVXuvLexPwM6/XMagaENBhSNcE/UM3j
	D6R+YFkrPGFWSP2RvbXYUCbQMcCxjrhP9kj0JtI7Wk0UwjXvSM25J84tulzXphnFdPF69TE
	M+vmOyIWjLypk0RFAEpkPt0jIGqxPJXEyNG46uGx4A1ehVwp9cYcPg8PMPJO3epqOM453Dn
	btRunUM9isxs9pzLiQdrQ==
X-UI-Out-Filterresults: notjunk:1;V01:K0:VIMRSYlQS6w=:jdvZYRcj/uxtLEqIKGNPxO
	eYSine2cATXr67UKuTU+wc44TQJZdG0XHHwcBFc+NyCAeI6N8vmgMaCGs0Ls1JXHYPQB9I+2A
	6ndohzeylrMMauuojr8SVU0tj4Q7kPgxQiAoHJ1bCQ9zegJj+uIZnLW+KsKQm4MwuGCtYJ4km
	/OBOpR7oaz7aEjv0p4l7r2dvBcDdQoSDlWWL6Dtd1Ld+v4jb553LTuIKUhbP+ROilMzMQRrup
	CpWGp2NZc9Fvk/VfutLWRcmsKpcZ9IkIcw9pVA+4QqYYMskSHSNjm9onnVIge9ElEnDcHE+dv
	bwVbwS6MsF0qYcxyd2RkMSh9/uKAl1selg/Uvl0cmnf5cCurMytK0nkvsfD8WbbqDaUFw9OLD
	Von12ViRqgs/2ExkPdkyv2EAvbRJ+xII8CI1Db8EkpEsp29eZDfJ2DejIEupp42/+hgFdrsgZ
	d6EH3EF77plmxobP1+UgPHbDKpDYazLHxmKzfOV3yMFzVPGhB6oaxPE7T/OsjMiHZdLYY4/tn
	0A0NYpvDFs2Lnu/n1XsKGQihQcWWIfIS+LV4M3Cs2zNQaaHcUUQwSXqJZ1y186B6ViZNsiaFX
	W7Sk7d0uOkgxvX0/I27LtuLNNhNhR//oYR5T/jiy1q7kJPPGZ2hxXNVn581WDL3YWc72VmF1f
	lpZh7jzhKjxV6JhIGHYwBDpvl4bfYdAsmpuzg+BDQ0EnODD0EN88fl9R8x48kL35NpW/+fK2k
	hdQMvqhjt8gyBlnl
Subject: Re: Linux-kernel selection
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: chris@2net.co.uk
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 05 Mar 2017 18:54:53 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

Hi,

You don't need the '\'. Try this:

PREFERRED_VERSION_linux-ti-staging = "3.14%"

HTH,
Chris


On 05/03/17 18:03, SatyaNarayana Sampangi wrote:
> Hi,
> 
> How to select the preferred kernel in yocto,
> 
> I did in local.conf as of now, 
> 
> PREFERRED_PROVIDER_virtual/kernel = "linux-ti-staging"
> PREFERRED_VERSION_linux-ti-staging = "3.14\%"
> 
> I am using krogoth with meta-ti layer
> 
> 
> bitbake core-image-minimal
> Parsing recipes: 100%
> |##########################################################################|
> Time: 00:00:26
> Parsing of 1032 .bb files complete (0 cached, 1032 parsed). 1470
> targets, 71 skipped, 0 masked, 0 errors.
> NOTE: Resolving any missing task queue dependencies
> NOTE: preferred version 3.14\% of linux-ti-staging not available (for
> item virtual/kernel)
> NOTE: versions of linux-ti-staging available:
> 3.14.49+gitAUTOINC+e9cd4cc819 4.1.18+gitAUTOINC+6b41ca0b94
> 4.4.41+gitAUTOINC+7c580a51af
> NOTE: preferred version 3.14\% of linux-ti-staging not available (for
> item kernel-base)
> NOTE: versions of linux-ti-staging available:
> 3.14.49+gitAUTOINC+e9cd4cc819 4.1.18+gitAUTOINC+6b41ca0b94
> 4.4.41+gitAUTOINC+7c580a51af
> NOTE: preferred version 3.14\% of linux-ti-staging not available (for
> item kernel-image)
> NOTE: versions of linux-ti-staging available:
> 3.14.49+gitAUTOINC+e9cd4cc819 4.1.18+gitAUTOINC+6b41ca0b94
> 4.4.41+gitAUTOINC+7c580a51af
> NOTE: preferred version 3.14\% of linux-ti-staging not available (for
> item kernel-devicetree)
> NOTE: versions of linux-ti-staging available:
> 3.14.49+gitAUTOINC+e9cd4cc819 4.1.18+gitAUTOINC+6b41ca0b94
> 4.4.41+gitAUTOINC+7c580a51af
> 
> 
> But I am getting the error like this, ho wto rectify.
> 
> 


-- 
Chris Simmonds, Consultant, 2net Ltd
http://www.2net.co.uk
+44 (0)1962 869003

