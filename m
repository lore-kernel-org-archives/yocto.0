Return-Path: <prvs=147c09f3e=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B5B5EE00519; Mon, 12 Dec 2016 08:18:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.230.2.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Mon, 12 Dec 2016 08:18:53 PST
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42CA8E00503
	for <yocto@yoctoproject.org>; Mon, 12 Dec 2016 08:18:53 -0800 (PST)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: =?us-ascii?q?A2G6AQBXzU5Y/0oKEKxdHAEBBAEBCgEBg?=
	=?us-ascii?q?zcBAQEBAYIGjUKXFA6UdoIIhiECgjUUAQIBAQEBAQEBA4EHhGkBBTIBRhALDQs?=
	=?us-ascii?q?uVwYNAQcCtn0qAopiAQEBAQEFAQEBAQEjCQGGNIF9gl6KKQWVAIVrgXiRIYglF?=
	=?us-ascii?q?4YXh2aGJYQPH4EoDQuELYFGh3+BDQEBAQ?=
X-IPAS-Result: =?us-ascii?q?A2G6AQBXzU5Y/0oKEKxdHAEBBAEBCgEBgzcBAQEBAYIGjUK?=
	=?us-ascii?q?XFA6UdoIIhiECgjUUAQIBAQEBAQEBA4EHhGkBBTIBRhALDQsuVwYNAQcCtn0qA?=
	=?us-ascii?q?opiAQEBAQEFAQEBAQEjCQGGNIF9gl6KKQWVAIVrgXiRIYglF4YXh2aGJYQPH4E?=
	=?us-ascii?q?oDQuELYFGh3+BDQEBAQ?=
X-IronPort-AV: E=Sophos;i="5.33,337,1477954800"; 
   d="scan'208";a="1416235"
To: Yocto discussion list <yocto@yoctoproject.org>
References: <alpine.LFD.2.20.1612121012290.18661@localhost.localdomain>
	<DM5PR05MB29544A2B9D67C803ECDD6DB7BB980@DM5PR05MB2954.namprd05.prod.outlook.com>
From: Richard Leitner <richard.leitner@skidata.com>
Message-ID: <301c239a-09cb-001f-c344-7367ae3da6dc@skidata.com>
Date: Mon, 12 Dec 2016 17:17:45 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.5.1
MIME-Version: 1.0
In-Reply-To: <DM5PR05MB29544A2B9D67C803ECDD6DB7BB980@DM5PR05MB2954.namprd05.prod.outlook.com>
X-Originating-IP: [172.16.60.30]
X-ClientProxiedBy: sdex1srv.skidata.net (172.16.10.92) To sdex1srv.skidata.net
	(172.16.10.92)
Subject: Re: suggestions for version controlling multi-layer reproducible builds?
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
X-List-Received-Date: Mon, 12 Dec 2016 16:18:56 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit

Hi,
On 12/12/2016 05:03 PM, Bryan Evenson wrote:
> 
> For my setup I have a separate package that is the distribution 
> version number.  Whenever we release an update, the distribution
> version number is updated.  We then tag all our layers with the
> distribution version number for proper record keeping.  The Angstrom
> distribution was (or maybe still is?) doing something similar and was
> the inspiration for our setup.
>
> ...
>
>
> Any time we release an update, no matter how minor, we update the
> distribution version package.  Otherwise, as you state, you could
> have an update that you can't reproduce.  We also archive the package
> repository and generated image files for each release so we can flash
> a board with a previous release and test from there.  It can be a
> pain to get the process down the first time, but after that a simple
> Bash script can take care of all the hard work for you and ensure you
> don't skip a step.
>

I'm using a similar approach, but instead of using a separate "version
package" I'm using the "BUILDNAME" and "DISTRO_VERSION" variables in my
distro.conf.

Then depending on how "large" the release is and which changes it
includes the Major, Minor or Patchlevel of the version is increased.

Furthermore (like Bryan already mentioned) for every release a tag in
every layer containing the DISTRO_VERSION is created.

The layer setup/checkout and build then is automated by a shellscript.
This shellscript takes the version as an argument and produces the
images, source archives, update packages and everything else needed for
a (nearly) reproducible builds.

Hope that helps.

regards,
Richard L

