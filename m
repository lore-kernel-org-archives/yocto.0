Return-Path: <gandersson@genivi.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED796E00C4E; Wed, 14 Nov 2018 02:19:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [38.101.164.234 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
Received: from smtp1.genivi.org (smtp1.genivi.org [38.101.164.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCC5EE00C49
	for <yocto@yoctoproject.org>; Wed, 14 Nov 2018 02:19:33 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.genivi.org (Postfix) with ESMTP id F1BE4829B;
	Wed, 14 Nov 2018 02:19:32 -0800 (PST)
X-Virus-Scanned: Debian amavisd-new at smtp1.genivi.org
Received: from smtp1.genivi.org ([127.0.0.1])
	by localhost (smtp1.genivi.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id tYx1aOcnWf_G; Wed, 14 Nov 2018 02:19:32 -0800 (PST)
Received: from thislaptop.zyxel.com
	(c-08d0d954.041-250-67626729.bbcust.telenor.se [84.217.208.8])
	by smtp1.genivi.org (Postfix) with ESMTPSA id D2315832D;
	Wed, 14 Nov 2018 01:52:23 -0800 (PST)
Message-ID: <1542189137.30082.397.camel@genivi.org>
From: Gunnar Andersson <gandersson@genivi.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
In-Reply-To: <alpine.LFD.2.21.1811131521080.10117@localhost.localdomain>
References: <alpine.LFD.2.21.1811131521080.10117@localhost.localdomain>
Organization: GENIVI Alliance
Date: Wed, 14 Nov 2018 10:52:17 +0100
Mime-Version: 1.0
X-Mailer: Evolution 3.26.6 (3.26.6-1.fc27) 
Subject: Re: m4-native, zedboard, "Please port gnulib fseeko.c to your platform"
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
X-List-Received-Date: Wed, 14 Nov 2018 10:19:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

Robert,

On Tue, 2018-11-13 at 15:28 -0500, Robert P. J. Day wrote:
>   been away from YP for a few months, diving back in, want to build a
> core-image-minimal for my zedboard, and i will first admit that i'm
> using a non-approved distro (fully-updated fedora 29):
> 

[...]

> but i'm unsure (read, have no clue) how to deal with this

If upgrading Yocto/poky and layers is not an option for you, then building
in a container is the typical approach.  This isolates you from any host-
distro issues, since any distro can be used in the container.

Many just set up their own with a simple Docker file, but from what I
remember the CROPS project is one common project recommended in the past. 
Here's a random starting point I found [1].

HTH,
- Gunnar

[1] https://www.yoctoproject.org/learn-items/cross-platform-enablement-for-t
he-yocto-project-with-containers/



