Return-Path: <quentin.schulz@streamunlimited.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 581FCE00E2F; Wed, 20 Nov 2019 00:36:09 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [213.33.87.16 listed in list.dnswl.org]
Received: from bsmtp2.bon.at (bsmtp2.bon.at [213.33.87.16])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24C47E00E25
	for <yocto@yoctoproject.org>; Wed, 20 Nov 2019 00:36:07 -0800 (PST)
Received: from qschulz (vpn.streamunlimited.com [91.114.0.140])
	by bsmtp2.bon.at (Postfix) with ESMTPSA id 47HwyF6dxdz5tlR;
	Wed, 20 Nov 2019 09:36:05 +0100 (CET)
Date: Wed, 20 Nov 2019 09:36:04 +0100
From: Quentin Schulz <quentin.schulz@streamunlimited.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Message-ID: <20191120083604.bt3pzjrincyx5ifh@qschulz>
References: <20191119123755.2526-1-quentin.schulz@streamunlimited.com>
	<6a6629bc-00c4-7229-1c38-0096c3a5b0c3@topic.nl>
	<29155136.VOVqtgXEB2@shodan>
MIME-Version: 1.0
In-Reply-To: <29155136.VOVqtgXEB2@shodan>
User-Agent: NeoMutt/20180716
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"radek.dostal@streamunlimited.com" <radek.dostal@streamunlimited.com>,
	"andriy.danylovskyy@streamunlimited.com"
	<andriy.danylovskyy@streamunlimited.com>
Subject: Re: [warrior] [meta-qt4] 3rdparty: javascriptcore: JITStubs.cpp: allow builds of JavaScriptCore with gcc v8
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
X-List-Received-Date: Wed, 20 Nov 2019 08:36:09 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Mike,

On Wed, Nov 20, 2019 at 09:06:08PM +1300, Paul Eggleton wrote:
> Hi Mike
> 
> On Wednesday, 20 November 2019 9:00:10 PM NZDT Mike Looijmans wrote:
> > I ran into this issue yesterday, and this patch solves the compilation on 
> > warrior. However, it's a patch for Qt itself, and not for OE.
> > 
> > Is there already a warrior patch in the making, or should I submit one?
> 
> Quentin sent one yesterday (with the same subject). If you could give it a try 
> and confirm it fixes the failure that would be great.
> 

Yes, I was too excited to send the patch and forgot I needed to send a
patch for meta-qt4 containing the patch for the qt4 sources. *facepalm*

You should be able to get the patch for meta-qt4 from:
https://lists.yoctoproject.org/pipermail/yocto/2019-November/047405.html

Let us know if the patch applies nicely and fixes your issue (it
should),

Thanks,
Quentin

