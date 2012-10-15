Return-Path: <anders@chargestorm.se>
Received: from stoexhub03.domain01.net (STOEXHUB03.domain01.net
	[83.145.59.144])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 25A64E01385
	for <yocto@yoctoproject.org>; Sun, 14 Oct 2012 23:02:04 -0700 (PDT)
Received: from localhost (193.41.119.134) by stoexhub03.domain01.net
	(10.12.10.3) with Microsoft SMTP Server id 8.3.279.1; Mon, 15 Oct 2012
	08:01:48 +0200
Date: Mon, 15 Oct 2012 08:01:48 +0200
From: Anders Darander <anders@chargestorm.se>
To: <yocto@yoctoproject.org>
Message-ID: <20121015060147.GB9736@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <87hapzvgqn.fsf@sonatest.com>
MIME-Version: 1.0
In-Reply-To: <87hapzvgqn.fsf@sonatest.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.20 (2009-12-10)
X-GFI-SMTP-Submission: 1
Subject: Re: Revision file in images
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 15 Oct 2012 06:02:05 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

* Marc Ferland <ferlandm@sonatest.com> [121012 17:40]:

> Hi,

> Is a revision file populated in the images produced by the build process?
> Something listing the revisions of the different layers used. Just like
> the "OE Build Configuration" summary.

As Saul wrote, I don't know any way of getting this info.


> I'd like to easily identify what a target system currently runs.

In my own project, I'm using something like:


IMAGE_PREPROCESS_COMMAND += "rootfs_update_timestamp ;\
             git describe --dirty --long --always
>${IMAGE_ROOTFS}/etc/build ;\
             "

This doesn't explicitly put the SHA1's of the included layers into the
rootfs, but it does put my the most recent tag from my top-layer,
together with the number of commits after that tag, and an abreviated version
of the current commits SHA1 into the file /etc/build. This will give me
all info I need.

Cheers,
Anders

> Regards,

> Marc
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Anders Darander
ChargeStorm AB / eStorm AB

