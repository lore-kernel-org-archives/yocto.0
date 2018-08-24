Return-Path: <gandersson@genivi.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D810E007AD; Fri, 24 Aug 2018 03:15:09 -0700 (PDT)
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
X-Greylist: delayed 424 seconds by postgrey-1.32 at yocto-www;
	Fri, 24 Aug 2018 03:15:08 PDT
Received: from smtp1.genivi.org (smtp1.genivi.org [38.101.164.234])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C468AE00720
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2018 03:15:08 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.genivi.org (Postfix) with ESMTP id C10435276;
	Fri, 24 Aug 2018 03:08:03 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at smtp1.genivi.org
Received: from smtp1.genivi.org ([127.0.0.1])
	by localhost (smtp1.genivi.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CGxugkqfLe9g; Fri, 24 Aug 2018 03:08:02 -0700 (PDT)
Received: from android-a8ad607dc99b25c1 (h-244-80.A137.corp.bahnhof.se
	[176.10.244.80])
	by smtp1.genivi.org (Postfix) with ESMTPSA id 4A9C35275;
	Fri, 24 Aug 2018 03:08:01 -0700 (PDT)
Message-ID: <1535105270.7736.120.camel@genivi.org>
From: Gunnar Andersson <gandersson@genivi.org>
To: "Pandey, Kamal" <Kamal.Pandey@ifm.com>, Stefano Babic <sbabic@denx.de>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
In-Reply-To: <f843bc097fd44130b4e77f0f9f166190@ifm.com>
References: <fc50e40975134a01920906aad4ab0e75@ifm.com>
	<ef914983-18be-fb83-c66c-0a4f143bcd3f@denx.de>
	<f843bc097fd44130b4e77f0f9f166190@ifm.com>
Organization: GENIVI Alliance
Date: Fri, 24 Aug 2018 12:07:50 +0200
Mime-Version: 1.0
X-Mailer: Evolution 3.26.6 (3.26.6-1.fc27) 
Subject: Re: chromium is compiling but is not able to add in the image
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
X-List-Received-Date: Fri, 24 Aug 2018 10:15:09 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2018-08-24 at 06:24 +0000, Pandey, Kamal wrote:

[trimmed]

> Apart of that, are you trying to get in running with something provided by
> Marek for Mali (GPU support) ? I just warn that Chromium without GPU is
> very slow and pratically unusable. Even with GPU support it looks quite
> slow...
> 
> Are you enable x11 ? As far as I know, chromium is running just on top of
> x11 - I added Marek in CC that can sugest something else.

For what it's worth - lots of effort put in the last few years to run
Chromium on Wayland (also for embedded).  It's running on weston in the GDP,
see [1].  Looking at that might help the OP, but also other systems make use
of these layers.

The community GDP distro used meta-browser layer before but is for the
moment on another fork that was developed by LG Electronics I believe,
called meta-lgsvl-browser.  We typically follow the advice of some dedicated
expert companies in this area.

Hope this helps,

- Gunnar

[1] https://github.com/GENIVI/genivi-dev-platform

-- 
Gunnar Andersson <gandersson@genivi.org>
Development Lead
GENIVI Alliance

> Best regards,
> Stefano Babic
> 
> --
> =====================================================================
> DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
> HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
> Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
> =====================================================================



