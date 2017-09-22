Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C108BE00CF9; Fri, 22 Sep 2017 04:42:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9718EE00CB4
	for <yocto@yoctoproject.org>; Fri, 22 Sep 2017 04:42:56 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	v8MBgUKn030898
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Fri, 22 Sep 2017 12:42:31 +0100
Message-ID: <1506080550.18640.190.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Svein Seldal <sveinse@seldal.com>, yocto@yoctoproject.org
Date: Fri, 22 Sep 2017 12:42:30 +0100
In-Reply-To: <2c36d7a5-0749-f3f8-1dd9-eff118cb9de3@seldal.com>
References: <2c36d7a5-0749-f3f8-1dd9-eff118cb9de3@seldal.com>
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.2 at dan
X-Virus-Status: Clean
Subject: Re: Path to current bb-file or layer
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
X-List-Received-Date: Fri, 22 Sep 2017 11:42:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2017-09-22 at 13:04 +0200, Svein Seldal wrote:
> On 22. sep. 2017 10:30, Richard Purdie wrote:
> > Its all about when your code is executed. Try putting:
> > 
> > SP_BASEVERSION := "${@read_spbaseversion(d)}"
> > 
> > in the bbclass file. I suspect that will give you the bbclass file
> > name.
> > 
> > By default everything is deferred expansion so your code would give
> you
> > the final .bb as that is the context the code is run in.
> 
> In local.conf I put:
> 
>      INHERIT += "sp-version"
> 
> In classes/sp-version.bbclass
> 
>      def read_spbaseversion(d):
> # The goal of this function is to read and
> # parse a file from the layer
>          bb.warn("MYSELF: ", d.getVar('FILE', False))
>          return '0'
> 
>      SP_BASEVERSION := "${@read_spbaseversion(d)}"
> 
> Then both on Krogoth and Pyro, the following command returns:
> 
>      $ bitbake -e |tee var.txt |grep MYSELF
> 
> WARNING: MYSELF: /home/s/bughunt-pyro/build/conf/bblayers.conf
> WARNING: MYSELF: /home/s/bughunt-pyro/build/conf/bblayers.conf
>      bb.warn("MYSELF: ", d.getVar('FILE', False))
> 
> Likewise:
> 
>      $ bitbake -e sp-image |tee sp-image.txt |grep MYSELF
> 
> WARNING: MYSELF: /home/s/bughunt-pyro/build/conf/bblayers.conf
> WARNING: MYSELF: /home/s/bughunt-pyro/build/conf/bblayers.conf
> WARNING: MYSELF: /home/s/bughunt-pyro/build/conf/bblayers.conf
>      bb.warn("MYSELF: ", d.getVar('FILE', False))
> 
> 
> Is there an alternative to d.getVar() to access the "other" versions
> of the variable?

I suspect I'm misremembering the places that FILE gets reset in the
bitbake parser. It probably changes for conf and bb files and maybe inc
files but not bbclass files.

Why it does that is before my time with the codebase and I've never
really dared change it.

A better way to get what you're after may be to look at the contents
of BBINCLUDED.

Cheers,

Richard



