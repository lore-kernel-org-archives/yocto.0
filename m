Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 25D18E00AAF; Thu,  2 Nov 2017 09:50:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.135 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F917E00928
	for <yocto@yoctoproject.org>; Thu,  2 Nov 2017 09:50:49 -0700 (PDT)
Received: from oxbsltgw13.schlund.de ([172.19.249.30]) by
	mrelayeu.kundenserver.de (mreue005 [212.227.15.163]) with ESMTPSA
	(Nemesis)
	id 0LnWsk-1dVCGI33du-00hetv; Thu, 02 Nov 2017 17:50:44 +0100
Date: Thu, 2 Nov 2017 16:50:40 +0000 (GMT)
From: Colin Helliwell <colin.helliwell@ln-systems.com>
To: yocto@yoctoproject.org,
	Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <198351249.226064.1509641440918@email.1and1.co.uk>
In-Reply-To: <872a75ce-9471-09fb-e00d-0ae5da82634a@linux.intel.com>
References: <06ee01d35330$8d4102e0$a7c308a0$@ln-systems.com>
	<51b14605-1467-71a5-d84a-e45f73796e60@linux.intel.com>
	<214703149.187142.1509606640635@email.1and1.co.uk>
	<1752415703.224739.1509640006960@email.1and1.co.uk>
	<872a75ce-9471-09fb-e00d-0ae5da82634a@linux.intel.com>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.3-Rev36
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:jeMeOnZZjqwjDBJzKstEE+dBA6ChS02csfTL+1q8RrUqjuxgklu
	WPmnfXjcoHrhiipgM4els0z+2iwOI55A8ajNN+Lj1cuuT1w1aQUrNFUp0Fouhn7cPhkA7qH
	WoAK2DOTk4fdrMTLw5QEQG0nqyK78IZwLHX7TRfPYRzKHQCrat+laGOuKU6M/6/0/VDKPMq
	4hwrOvRREvjPgArrVMqng==
X-UI-Out-Filterresults: notjunk:1;V01:K0:1ZE79/7M+w0=:NF9W1px0vxBdM1/gWIusSY
	hHstINAS/uetXwcLCxI/SRg+t1Epv3n5kg/rOQFjM7xd5F42kWweEgjYjz5oAi6/vsRPjxAmy
	fX6DWBIS41wQl1O3tjxRXMvZK1FvJi6qBJSFK3nJnfMaqfdsoO7FUs1JMLrJrn69eVIqorkV8
	DahHyYaJtD5f+vT+PjOf9efS5818fKU7DHoz4QiZNT/nKEYb1DMVMGBc0M1koqdnxTJ3JR5gq
	j5Wo4LaH6KTjjCEm8MJuTQo546MZfLDZ0urrtSECqokAqpsCFIkbLWpUgIgsCHyGHpvjPbXhP
	xz6I4kmTlobfq+kFg9Wr3uAxwJ01V8eLLM2tWr1oO/Br43BIIc2chgrMB21ngl3ceC5kl32Xn
	X4/trpxu9HjlvyVQecLsINLFIylCUQFiLOsgi5T9coydni0MkuVuAIK+8BbZog41ipL3Ji+px
	1t2qMLVBBitEgalYCoADeSpTVDo1BMpjB8/Jpx4LnNcqiRSsUANcfiWJBQ3Cs5mdybz35AqNk
	xqAkPk20CgY1kMBFXM9ZWa/fnNnBdAEjBsKutNE5cT0xZvmBu6ltN6u/1OrcKa5R0KBQAT23A
	J0y2pj1jNBLl42xAKpCwT1pGX1iCJLV8UXRxu5N3Hvtvi3PFFJHNlveelD6ABYHTQrldqxRqe
	cfDQ/dqdCaRnppeHpww4lUwHTtaNxJdIF0tnLTuTdFYeFgyHZ8nAPijszVWMUXRkIrHMGh+bR
	ugxlaexytZNiOdWjrMPjByRQ3CsFRtf7clZzev/lET5yBf4SZJ8M7nPouNU=
Subject: Re: Slightly varying builds
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
X-List-Received-Date: Thu, 02 Nov 2017 16:50:51 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


> On 02 November 2017 at 16:29 Alexander Kanavin <alexander.kanavin@linux.intel.com> wrote:
> 
> On 11/02/2017 06:26 PM, Colin Helliwell wrote:
> 
> > Following on from this, I'm trying to be able to build my two versions of u-boot, in the *same* build directory.
> > I'm not sure if this is possible, but I figured it might be: since u-boot doesn't get put into the rootfs (?), I would ideally be able to build both and just pull down from tmp/deploy/images/.... the image that I want to program into a particular unit.
> > I've pushed common stuff into .inc file(s), and have two recipes which set different 'PROVIDES' values.
> > However, even after a cleanall on both recipes, bitbaking the second one throws an error "The recipe u-boot-mymachine-dev is trying to install files into a shared area when those files already exist".
> 
> Can you share exactly how the two recipes differ?
>

Very little!
One is:
 
DESCRIPTION = "Das U-Boot for W2 [for development]"
DEP_IMG = "u-boot-dev"
PROVIDES = "u-boot-w2-dev"
require u-boot-w2_1.inc

The other is:

DESCRIPTION = "Das U-Boot for W2"
DEP_IMG = "u-boot-prodn"
PROVIDES = "u-boot-w2"
require u-boot-w2_1.inc

u-boot-w2_1.inc has the standard kind of recipe stuff. For creating env files, and files to be used for later signing, it has some _append steps, so I'm aiming to use 'DEP_IMG' to create the various files with different prefixes for the two variants.
Strangely though, an 'echo ${DEP_IMG}' is outputting the same value ("u-boot-prodn") from both recipes, even after a cleanall on both. Possibly some state info being pulled in somewhere?

> It seems that you do need to have two different build directories that
> differ in what MACHINE is set to. And that would configure u-boot
> accordingly.
> 

I *do* realise I'm trying to do something a bit unusual!
All I want between the two variants is to disable some functionality - the 'machine' is identical. I was going to patch one build to take the functionality out (for 'production'), but create my own specific environment for the system anyway. So I wonder if a cleaner/easier (aka working...!) approach would be to instead patch my own custom envar into the source, and then I could instead create two different env files for the two variants?

