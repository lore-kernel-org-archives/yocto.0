Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89FE3E00DD7; Mon, 15 Jan 2018 06:55:15 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.133 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E678E00D6D
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 06:55:13 -0800 (PST)
Received: from null ([172.19.246.20]) by mrelayeu.kundenserver.de (mreue003
	[212.227.15.163]) with ESMTPSA (Nemesis) id 0MSFeJ-1eQtwi3Kbz-00TRYt;
	Mon, 15 Jan 2018 15:55:11 +0100
Date: Mon, 15 Jan 2018 14:55:11 +0000 (GMT)
From: Colin Helliwell <colin.helliwell@ln-systems.com>
To: yocto@yoctoproject.org, Jan Siegmund <jan.siegmund0@hm.edu>
Message-ID: <338922181.120963.1516028111504@email.1and1.co.uk>
In-Reply-To: <1641fe8c-35ed-f740-e873-17f952898b35@hm.edu>
References: <066501d38c90$f0151890$d03f49b0$@ln-systems.com>
	<1641fe8c-35ed-f740-e873-17f952898b35@hm.edu>
MIME-Version: 1.0
X-Priority: 3
Importance: Medium
X-Mailer: Open-Xchange Mailer v7.8.4-Rev20
X-Originating-Client: open-xchange-appsuite
X-Provags-ID: V03:K0:Hwtq8RbSnkdKZozOOZx0QTdgAHVHSiSbf7oSwAKx0KSDdx2UkVL
	n0nGZ4PDbhh5kWEUIOxD5E80ZpVzw520zcEqKHbm2PPL0v6nsvyxCsbfT/JT5+y3jHpMOXG
	tWhJu/mUIm5tGczHW7EkAOYFVjXruYklhArOky8FDy4gk4wNOBghluC7Y92ZfPqOrsvZlXi
	TMJtdyeVoIm/HByIb6aAA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:XzuPPftLfWU=:Sh4UrOspWykGkDI2EUDQyP
	mcS/xEon+bcIsV1nZY+kDaHYna1yC0AjW1CJ5kdrMOkhb06MkYMHPDJ0pUiXJdbFSzI3JTvGH
	7SaHYbMyJyhj3HjxruAkWV2ZT2nSP50+NNvkUzH/G3S8IKCloJQu0o09Z+sng6KQojlZoeel3
	lwf4bXlO81p9pntJN6Cw/PgSsLoA0NT6sO/Md8wmgyOCzLv+uinGlLBxoqJHE7s8AT4Y9m3vD
	qyqVk9nWbtQIj4U5zsqhcxqkFwXexYyc0M562po1nxh760noyf8rltJZfFhmGMA9n2mEMcPij
	wJZ45XNEVWAuxENs12Kx3swew59fW57hxYatJF1/EhxuOHPDQGNMdVCNYnN/p56Sf3zNlKWz2
	XqZzW4HTc4Y9mphq4s/+E73nzHw7+vqiq0qT9CeBy1p9Tie8gyYBYTqGjgJOIenut8uUN4T+Z
	lknXSkOK9ONplLCMd307t4wT6OdgAQ5lwAOv0BWI1n9KSMjj9U48hYyqLjLkW/2ugCtkg8HUs
	05IFWW3riQe6n0+ampzA9Olkbv5XZPveuPlppcdz8JEAYMMyOuXV2Loe2VltLD53JxKfB5XkA
	BscYNTm7ZaYJlpdwYpUbECFLt/BNxGXVmJGYjSJyEzk+6Qyke3q9f8DLKsPEZTs+Fp+eY0uRC
	MHARRh+fWjVm8oAfnPzc8sUtirgTY6y0E3qcOwUfQgN+WOoMkBtlA6R85bcEGktkQDuEifjJW
	8L+9SHmze8TTur3hnx+Beg7tdmCj9hnGhRNm79DBgVbnEnfEi3zYVX5aTJk=
Subject: Re: Specifying MACHINE when setting up build environment
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
X-List-Received-Date: Mon, 15 Jan 2018 14:55:15 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit


> On 13 January 2018 at 18:52 Jan Siegmund wrote:
> 
> 
> Hi,
> 
> Am 13.01.2018 um 18:07 schrieb colin.helliwell@ln-systems.com:
> > Is there a way to specify what MACHINE is put into local.conf when first
> > setting up the build directory with oe-init-build-env?
> > I have my own TEMPLATECONF which I use, but I'd like to be able to set the
> > MACHINE on the command line rather than having to then modify local.conf
> If it would suit your needs to specify the MACHINE on every bitbake call,
> try
> 
> $ MACHINE= bitbake 
> 
> e. g.
> 
> $ MACHINE=qemuarm bitbake core-image-minimal
> 
> If your want to use QEMU, you can use
> 
> $ env DEPLOY_DIR_IMAGE= runqemu
> 
> Not sure if the 'env' is needed though.
> 

Thanks Jan. I don't want to have to include MACHINE on every bitbake cmd line though - just have it placed into the local.conf the first time the build dir is set up by oe-init-build-env.

