Return-Path: <gandersson@genivi.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00344E00D19; Fri, 15 Dec 2017 06:55:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [38.101.164.234 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp1.genivi.org (smtp1.genivi.org [38.101.164.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A78FBE008CA
	for <yocto@yoctoproject.org>; Fri, 15 Dec 2017 06:55:47 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.genivi.org (Postfix) with ESMTP id 9E1E02586F;
	Fri, 15 Dec 2017 06:55:46 -0800 (PST)
X-Virus-Scanned: Debian amavisd-new at smtp1.genivi.org
Received: from smtp1.genivi.org ([127.0.0.1])
	by localhost (smtp1.genivi.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CrcyaOywgFNu; Fri, 15 Dec 2017 06:55:46 -0800 (PST)
Received: from linuxlap (c83-248-68-161.bredband.comhem.se [83.248.68.161])
	by smtp1.genivi.org (Postfix) with ESMTPSA id 706B825865;
	Fri, 15 Dec 2017 06:55:44 -0800 (PST)
Message-ID: <1513349714.15290.36.camel@genivi.org>
From: Gunnar Andersson <gandersson@genivi.org>
To: "Daniel." <danielhilst@gmail.com>
In-Reply-To: <CAF3SDA7qxvPZvLh6-JRRZpEAncb7ywmw2-ULpskveYXFMZn+hw@mail.gmail.com>
References: <CAF3SDA6zXJyGF-cBSXXr=D2kY59VCyj8c6TbgDkVK0NB7DmQZA@mail.gmail.com>
	<CAPyrkgxkcO+3UW4jqy9Uh0pVSRwFH9Pss5d2ihVBtRZ3Y+B08A@mail.gmail.com>
	<CAF3SDA7qCEUGNfmoJ0MXM4OAMSsC=rgnx3xPira7cZSch0ATMQ@mail.gmail.com>
	<CAF3SDA61uYo3jYxWBzhTUs0ywyXMtQGWpBAWb3VmJT5CFU9F=g@mail.gmail.com>
	<CAGAf8LzQcHY_rgue5oc_hurCE6yn6kMxB20tJ1=i8-eDrvUhWw@mail.gmail.com>
	<1513343351.15290.25.camel@genivi.org>
	<CAF3SDA7qxvPZvLh6-JRRZpEAncb7ywmw2-ULpskveYXFMZn+hw@mail.gmail.com>
Organization: GENIVI Alliance
Date: Fri, 15 Dec 2017 15:55:14 +0100
Mime-Version: 1.0
X-Mailer: Evolution 3.22.6 (3.22.6-2.fc25) 
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: .kernel-meta/configs folder missing make linux-raspberrypi to fail
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
X-List-Received-Date: Fri, 15 Dec 2017 14:55:48 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2017-12-15 at 12:50 -0200, Daniel. wrote:
> As I told before, by pass this is a simple matter of running devshell,
> creating the folder and running running the build again,
> 
> Paul ask me for more information and so I did, I'll remove that duplicated
> layer and fire `bitbake -fc cleanall linux-raspberry && bitbake linux-
> rapsberry` again, if I hit this I may try some digging. I don't think this
> has to do with Fedora version, anyway, sooner or latter this version will
> be tested, so this same error may arise, and at that time we'll be doing
> the same questions, so, why to wait? 

Agreed!  It would seem strange if it's a host problem, and even if it were,
it's better to get to the bottom of it, so that the latest popular distros
work as intended.  I just reacted to Zoran's suggestion, with what I find to
at least be a better alternative for controlling the build host.

Good luck!

- Gunnar

> 
> Regards,



