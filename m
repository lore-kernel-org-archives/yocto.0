Return-Path: <anders@chargestorm.se>
Received: from stoexhubfe01.domain01.net (STOEXHUBFE01.domain01.net
	[83.145.59.140])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DB0BE00292
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2012 22:50:18 -0700 (PDT)
Received: from localhost (193.41.119.134) by stoexhubfe01.domain01.net
	(10.12.10.6) with Microsoft SMTP Server id 8.3.279.1; Tue, 16 Oct 2012
	07:50:02 +0200
Date: Tue, 16 Oct 2012 07:50:02 +0200
From: Anders Darander <anders@chargestorm.se>
To: <yocto@yoctoproject.org>
Message-ID: <20121016055002.GC9736@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <87hapzvgqn.fsf@sonatest.com>
	<20121015060147.GB9736@ad.chargestorm.se>
	<87k3urmuov.fsf@sonatest.com>
MIME-Version: 1.0
In-Reply-To: <87k3urmuov.fsf@sonatest.com>
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
X-List-Received-Date: Tue, 16 Oct 2012 05:50:18 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

* Marc Ferland <ferlandm@sonatest.com> [121015 20:56]:

> FYI, I was able to put the SHA1 of each meta data layer by doing:

> def print_layers_version(d):
>	layertext = "Configured metadata layers:\n%s\n" % '\n'.join(get_layers_branch_rev(d))
>	return layertext

> IMAGE_PREPROCESS_COMMAND += "echo "${@print_layers_version(d)}" > /
> ${IMAGE_ROOTFS}/etc/build; "

Ah, nice solution!

That might be something to add to my own /etc/build. You can never get
too much info if some issues turn up...

/Anders

-- 
Anders Darander
ChargeStorm AB / eStorm AB

