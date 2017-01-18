Return-Path: <paul@paulbarker.me.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1BC1E00998; Wed, 18 Jan 2017 02:08:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [217.70.183.194 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [217.70.183.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay2-d.mail.gandi.net (relay2-d.mail.gandi.net
	[217.70.183.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7C4CE0098A
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 02:08:35 -0800 (PST)
Received: from mfilter1-d.gandi.net (mfilter1-d.gandi.net [217.70.178.130])
	by relay2-d.mail.gandi.net (Postfix) with ESMTP id 60331C5A65;
	Wed, 18 Jan 2017 11:08:34 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at mfilter1-d.gandi.net
Received: from relay2-d.mail.gandi.net ([IPv6:::ffff:217.70.183.194])
	by mfilter1-d.gandi.net (mfilter1-d.gandi.net [::ffff:10.0.15.180])
	(amavisd-new, port 10024)
	with ESMTP id pme_qOlpVV4V; Wed, 18 Jan 2017 11:08:33 +0100 (CET)
X-Originating-IP: 131.231.60.35
Received: from [10.10.10.204] (inno-commagility-ownrouter.lut.ac.uk
	[131.231.60.35]) (Authenticated sender: paul@paulbarker.me.uk)
	by relay2-d.mail.gandi.net (Postfix) with ESMTPSA id BC78EC5A46;
	Wed, 18 Jan 2017 11:08:32 +0100 (CET)
Date: Wed, 18 Jan 2017 10:08:31 +0000
User-Agent: K-9 Mail for Android
In-Reply-To: <b1e7905ec4364774a6848060c6ebee45@FE-MBX1014.de.bosch.com>
References: <b1e7905ec4364774a6848060c6ebee45@FE-MBX1014.de.bosch.com>
MIME-Version: 1.0
To: yocto@yoctoproject.org,
	"Eswaran Vinothkumar (BEG-PT/PJ-IOT1)" <Vinothkumar.Eswaran@de.bosch.com>
From: Paul Barker <paul@paulbarker.me.uk>
Message-ID: <66BF569C-2E5E-42F7-9CAD-4687CC870171@paulbarker.me.uk>
Subject: Re: Whats the better way to maintain the Yocto project for an embedded product - git submodules or repo or using Combo-layer
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
X-List-Received-Date: Wed, 18 Jan 2017 10:08:37 -0000
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable

On 18 January 2017 09:32:15 GMT+00:00, "Eswaran Vinothkumar (BEG-PT/PJ-IOT1=
)" <Vinothkumar=2EEswaran@de=2Ebosch=2Ecom> wrote:
>Hello Yocto community members,
>
>Currently I am working on the task of using Yocto to build customized
>Embedded Linux distribution for an embedded product=2E I have created a
>new BSP layer for my project (meta-custommachine) and have successfully
>created barebox, Linux Kernel and root filesystem images for my board=2E
>
>Now I wish to create an internal repository for Yocto project to track
>and maintain the changes=2E I am unclear what is the better way to create
>an repository=2E I googled for the same and found that the Freescale
>community is maintaining their Yocto project using the repo tool=2E So I
>tried to have a similar structure for my project=2E I created a repo with
>the default=2Exml file which has the information about where to fetch the
>repositories for poky, meta-ptx and meta-custommachine=2E I am seeing the
>folder structures as expected and build is also fine=2E
>
>I had a discussion with one of my senior team member about this and he
>is interested in using git submodules=2E So I tried to add the layers
>meta-custommachine and meta-ptx within poky repository as sub-modules=2E
>Is this the proper way of adding new layers within the poky repository?
>Or may I know how can I maintain a Yocto repository using git
>submodules=2E Does git submodules work better than repo tool ?
>
>I am newbie to create and maintain a repo, so I am not able to
>visualize what is the future effect of choosing one over the other=2E
>Currently I am using the krogoth release of Yocto and planning to
>update this with new Yocto releases=2E
>
>Any information on the topic would be helpful=2E

Both of these approaches are widely used, I'd go with whichever feels most=
 comfortable to you/your team=2E Personally I'm a fan of using repo as I ca=
n set it to check out the latest commits on a given branch (eg=2E krogoth) =
instead of always having to set an exact commit hash to use=2E

If using git submodules it is often advised to have a separate top level r=
epository which just pulls in the submodules=2E

