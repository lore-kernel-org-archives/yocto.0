Return-Path: <gandersson@genivi.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 908C4E00AE6; Sun, 18 Jun 2017 11:20:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [38.101.164.234 listed in list.dnswl.org]
X-Greylist: delayed 473 seconds by postgrey-1.32 at yocto-www;
	Sun, 18 Jun 2017 11:20:13 PDT
Received: from smtp1.genivi.org (smtp1.genivi.org [38.101.164.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C044E00718
	for <yocto@yoctoproject.org>; Sun, 18 Jun 2017 11:20:13 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.genivi.org (Postfix) with ESMTP id BD727103D5C;
	Sun, 18 Jun 2017 11:12:18 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at smtp1.genivi.org
Received: from smtp1.genivi.org ([127.0.0.1])
	by localhost (smtp1.genivi.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YQr94O1kYO-n; Sun, 18 Jun 2017 11:12:09 -0700 (PDT)
Received: from linuxlap.lan (217-211-99-246-no148.bredband.skanova.com
	[217.211.99.246])
	by smtp1.genivi.org (Postfix) with ESMTPSA id E7ADC103D5B;
	Sun, 18 Jun 2017 11:12:07 -0700 (PDT)
Message-ID: <1497809434.2788.77.camel@genivi.org>
From: Gunnar Andersson <gandersson@genivi.org>
To: yocto@yoctoproject.org
In-Reply-To: <mailman.66247.1497786545.15860.yocto@yoctoproject.org>
References: <mailman.66247.1497786545.15860.yocto@yoctoproject.org>
Organization: GENIVI Alliance
Date: Sun, 18 Jun 2017 20:10:34 +0200
Mime-Version: 1.0
X-Mailer: Evolution 3.22.1 (3.22.1-2.fc25) 
Subject: Re: Compiling meta-browser ==>chromium ? cleaning ?
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
X-List-Received-Date: Sun, 18 Jun 2017 18:20:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit


Riko Ho <antonius.riko@gmail.com> wrote:

> Hello Everyone,
> 
> I tried to compile chromium but never succeeded, took me already 12 
> hours and stopped on 99%, I used bitbake for doing it,

Not sure what would cause it to just stop and it could have been some
temporary glitch?   Maybe you want to provide some logs of your build if
Martin's reference does not help.

> 
> Is chromium not compatible with arm CPU ? it was working with X86_64 
> before.

Is it a Wayland based project or X based desktop type?  

GENIVI worked with Igalia to update chromium support for Wayland.  You can
take a look at the feature branch for GENIVI Development Platform [1] if it
helps.  I think you'd need to work out why your build freezes completely
first, however.

Since it's a work in progress I don't guarantee that it is clean or easy to
follow yet.  A lot of workarounds and tweaks: [2]. We're temporarily on a
fork of ozone-wayland because of recent multi-screen support for example.

It builds and runs on Renesas R-Car generation 3 (64 bit ARMv8).  It builds
on Raspberry Pi as well but there's a runtime problem.  And of course x86_64
like e.g. Minnowboard.  It seems to need a few unique tweaks for every ARM
board so I guess it depends what you are doing.

Please feel free to help us get things extracted out of there and into meta-
browser and chromium or ozone upstream.  We're focusing first on fixing the
boards that don't work and then we'll know more what the final patches for
upstream should look like.

> And how can I clean after building it ? It took about 70Gb of my drive

You could also try  INHERIT += "rm_work"
see [3], item 4.


Hope this helps
- Gunnar

[1] https://github.com/genivi/genivi-dev-platform/tree/chromium/
[2] https://github.com/GENIVI/genivi-dev-platform/blob/chromium/meta-genivi-dev/meta-genivi-dev/recipes-extended/chromium/chromium-wayland_%25.bbappend
[3] http://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#building-an-image-for-emulation  

-- 
Gunnar Andersson <gandersson@genivi.org>
Development Lead
GENIVI Alliance



> 
> Thanks


