Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE77FE0086F; Sat, 24 Jan 2015 01:22:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.74.38.225 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-04.atm.binero.net (vsp-unauthed01.binero.net
	[195.74.38.225])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75285E002F9
	for <yocto@yoctoproject.org>; Sat, 24 Jan 2015 01:22:38 -0800 (PST)
X-Halon-ID: 87e7ceb1-a3aa-11e4-9ec3-005056917c0c
Authorized-sender: petter@technux.se
Received: from webmail.binero.se (unknown [195.74.38.9])
	by bin-vsp-out-04.atm.binero.net (Halon Mail Gateway) with ESMTPA;
	Sat, 24 Jan 2015 10:22:34 +0100 (CET)
MIME-Version: 1.0
Date: Sat, 24 Jan 2015 10:22:35 +0100
From: =?UTF-8?Q?Petter_Mab=C3=A4cker?= <petter@technux.se>
To: Sgw <sgw@linux.intel.com>
Organization: Technux
Mail-Reply-To: <petter@technux.se>
In-Reply-To: <cover.1420901279.git.petter@technux.se>
References: <cover.1420901279.git.petter@technux.se>
Message-ID: <b07e28e49bae2d77641358279a82e920@technux.se>
X-Sender: petter@technux.se
User-Agent: Binero Webmail/0.8.4
Cc: yocto@yoctoproject.org
Subject: Re: [meta-yocto] [PATCH 0/1] tiny-init: set proper S value
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: petter@technux.se
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 24 Jan 2015 09:22:42 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 8bit

Hi Saul,

Since bug [5627] has reached poky repo, can you please consider propose 
merging of below change to meta-yocto, to avoid the warning about 'S' 
not set to a proper value?

BR,
Petter

2015-01-10 16:43 skrev Petter Mabäcker:

> From: Peter Mabacker <petter@technux.se>
>
> The following changes since commit
> 876370419a50264a28feb4278f8c465b0019e709:
>
> bitbake: toaster: implementation of project page (2015-01-08 22:34:38
> +0000)
>
> are available in the git repository at:
>
> git://git.yoctoproject.org/poky-contrib petmab/bug5627_m-y
>
http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=petmab/bug5627_m-y
> [1]
>
> Petter Mabäcker (1):
> tiny-init: set proper S value
>
> meta-yocto/recipes-core/tiny-init/tiny-init.bb | 2 ++
> 1 file changed, 2 insertions(+)
>
> --
> 1.9.1


Links:
------
[1] 
http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=petmab/bug5627_m-y

