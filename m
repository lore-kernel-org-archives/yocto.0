Return-Path: <mike.looijmans@topic.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBF39E009E5; Wed, 27 May 2015 22:28:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.17.115.61 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 201 seconds by postgrey-1.32 at yocto-www;
	Wed, 27 May 2015 22:28:17 PDT
Received: from atl4mhfb03.myregisteredsite.com
	(atl4mhfb03.myregisteredsite.com [209.17.115.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78BB4E009A1
	for <yocto@yoctoproject.org>; Wed, 27 May 2015 22:28:17 -0700 (PDT)
Received: from atl4mhob12.myregisteredsite.com
	(atl4mhob12.myregisteredsite.com [209.17.115.50])
	by atl4mhfb03.myregisteredsite.com (8.14.4/8.14.4) with ESMTP id
	t4S5OupV003278
	for <yocto@yoctoproject.org>; Thu, 28 May 2015 01:24:57 -0400
Received: from mailpod.hostingplatform.com ([10.30.71.204])
	by atl4mhob12.myregisteredsite.com (8.14.4/8.14.4) with ESMTP id
	t4S5Osw2010518
	for <yocto@yoctoproject.org>; Thu, 28 May 2015 01:24:54 -0400
Received: (qmail 26072 invoked by uid 0); 28 May 2015 05:24:54 -0000
X-TCPREMOTEIP: 88.159.208.100
X-Authenticated-UID: mike@milosoftware.com
Received: from unknown (HELO ?192.168.80.121?)
	(mike@milosoftware.com@88.159.208.100)
	by 0 with ESMTPA; 28 May 2015 05:24:54 -0000
Message-ID: <5566A6A4.4030206@topic.nl>
Date: Thu, 28 May 2015 07:24:52 +0200
From: Mike Looijmans <mike.looijmans@topic.nl>
Organization: TOPIC
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: "Joel (Xi Zhou) Zhou" <joel.zhou@broadcom.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <9F136EE5FB53D64397ED1089A0E760E0162D1190@SJEXCHMB12.corp.ad.broadcom.com>
In-Reply-To: <9F136EE5FB53D64397ED1089A0E760E0162D1190@SJEXCHMB12.corp.ad.broadcom.com>
Subject: Re: armv7 firmware recipe in armv8 distro
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
X-List-Received-Date: Thu, 28 May 2015 05:28:23 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 27-05-15 21:19, Joel (Xi Zhou) Zhou wrote:
> Hi all,
>
> We have a Yocto BSP based on arm64/aarch64 machine.
>
> On top of this, I need to create a firmware recipe, which need armv7
> cross-compiler.
>
> So question is, how to support multiple toolchain in Yocto?

Yocto/OE doesn't support multiple "machines" in a single build.

You'll have to create a separate yocto build (can use the same environment 
though) by setting MACHINE to your armv7 firmware system and then placing the 
output somewhere ("deploy" task). Then make a recipe for the arm64 machine 
that picks up this output and packs it for deployment on target, like other 
firmware blobs.


I think eventually we'll see "composite" machine support in OE, I guess, but 
for now, I have no clue as to how this would work, otherwise I'd have 
submitted a patch implementing it already.

