Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DA782E00848; Tue, 28 Oct 2014 07:20:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [83.145.59.140 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from stoexhubfe01.domain01.net (STOEXHUBFE01.domain01.net
	[83.145.59.140])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2286FE00848
	for <yocto@yoctoproject.org>; Tue, 28 Oct 2014 07:20:44 -0700 (PDT)
Received: from ad.chargestorm.se (81.232.163.241) by stoexhubfe01.domain01.net
	(10.12.10.6) with Microsoft SMTP Server (TLS) id 8.3.279.1;
	Tue, 28 Oct 2014 15:20:40 +0100
Date: Tue, 28 Oct 2014 15:20:09 +0100
From: Anders Darander <anders@chargestorm.se>
To: Andrew Wozniak <drew.woz@gmail.com>
Message-ID: <20141028142009.GH7577@ad.chargestorm.se>
Mail-Followup-To: Andrew Wozniak <drew.woz@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CANMvBxCyi6V2RzxyD=twcUMpCfFGLJcjThES+W2ihZYTbhtzTA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANMvBxCyi6V2RzxyD=twcUMpCfFGLJcjThES+W2ihZYTbhtzTA@mail.gmail.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.23 (2014-03-12)
X-GFI-SMTP-Submission: 1
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Read-only rootfs, excluding /tmp and /var/logs
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
X-List-Received-Date: Tue, 28 Oct 2014 14:20:50 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

* Andrew Wozniak <drew.woz@gmail.com> [141028 15:05]:
> I'm fairly new to the Yocto environment but have worked with lower
> level Linux build systems. To get started, my target needs to have a
> read-only rootfs, while excluding specific directories like /tmp and
> /var/logs...

> The Project Dev Manual 5.15 section mentions the configuration of a
> read-only filesystem. I haven't tried this method yet and was
> wondering if there are any options for custom exclusions other than
> the /tmp and /var/run mentioned in the docs.

If you're working on the lates release, check out the volatile-binds
recipe in oe-core. 

Otherwise, check out https://github.com/MentorEmbedded/meta-ro-rootfs,
which is were volatile-binds originates from.

Cheers,
Anders

-- 
Anders Darander
ChargeStorm AB / eStorm AB

