Return-Path: <andreas@galauner.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7691E00510; Sun, 29 Jun 2014 00:33:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from server.galauner.de (server.galauner.de [144.76.20.253])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2842EE003D6
	for <yocto@yoctoproject.org>; Sun, 29 Jun 2014 00:33:32 -0700 (PDT)
Received: from [192.168.178.41] (ip-88-153-108-136.unitymediagroup.de
	[88.153.108.136])
	by server.galauner.de (Postfix) with ESMTPSA id 957A540031
	for <yocto@yoctoproject.org>; Sun, 29 Jun 2014 09:33:31 +0200 (CEST)
Message-ID: <53AFC14A.5040906@galauner.de>
Date: Sun, 29 Jun 2014 09:33:30 +0200
From: Andreas Galauner <andreas@galauner.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <53AF5BB8.80904@galauner.de>
	<CAALGJZbzpSwGVb_cxzSUQwk7SxaM7LHsf--5ps8kS=H8xiGnXA@mail.gmail.com>
In-Reply-To: <CAALGJZbzpSwGVb_cxzSUQwk7SxaM7LHsf--5ps8kS=H8xiGnXA@mail.gmail.com>
X-Enigmail-Version: 1.6
Subject: Re: Building kernel modules as dependencies
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
X-List-Received-Date: Sun, 29 Jun 2014 07:33:37 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 29/06/14 07:33, Christian Ege wrote:
> Hi Andreas,
> 
>> I created recipes for two out-of-tree kernel modules written by myself
>> in Yocto. I added these two modules in the machine config to
>> MACHINE_ESSENTIAL_EXTRA_RRECOMMENDS or even
>> MACHINE_ESSENTIAL_EXTRA_RDEPENDS.
> Have you used the name of your recipe or kernel-module-my-module-name?

It was kernel-module-my-module-name. All underscores in the module name
replaced with hyphens. I also tried underscores.

Like this:
> MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "\
> 	kernel-module-rpmsg-unicast \
> 	kernel-module-rpmsg-broadcast \
> 	"

And I just replaced it with the name of the package itself and now it
works fine.

Like this:
> MACHINE_ESSENTIAL_EXTRA_RDEPENDS += "\
> 	rpmsg-unicast \
> 	rpmsg-broadcast \
> 	"

Thanks anyway!

- Andy


