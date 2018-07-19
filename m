Return-Path: <gandersson@genivi.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60FDEE01320; Thu, 19 Jul 2018 05:51:24 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC733E0108C
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 05:51:23 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.genivi.org (Postfix) with ESMTP id DCC715037;
	Thu, 19 Jul 2018 05:51:22 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at smtp1.genivi.org
Received: from smtp1.genivi.org ([127.0.0.1])
	by localhost (smtp1.genivi.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id GD8LkflZl_2J; Thu, 19 Jul 2018 05:51:14 -0700 (PDT)
Received: from thislaptop (c83-248-73-53.bredband.comhem.se [83.248.73.53])
	by smtp1.genivi.org (Postfix) with ESMTPSA id 827934FFF;
	Thu, 19 Jul 2018 05:51:13 -0700 (PDT)
Message-ID: <1532004653.3103.60.camel@genivi.org>
From: Gunnar Andersson <gandersson@genivi.org>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
In-Reply-To: <CAGAf8Lw0sQ10zoGLLW=o7ziYOaARKix=++=Tt_wnB4cYmHXHfw@mail.gmail.com>
References: <CAGAf8Lxousw4NEGP_aHGzHiqvzkJNERFgGHMM1hxNyj6Km72aQ@mail.gmail.com>
	<CALw8SCUPA9Ud9e2JxzexLr2GrZsvPX_6eiTKvhjWz--rkz8OUw@mail.gmail.com>
	<1531996869.3103.16.camel@genivi.org>
	<CAGAf8LxRFrB+LboH7_odfmYQZBdAOM3c+4diJ6XW4rTgoQoEiA@mail.gmail.com>
	<CAGAf8Lw0sQ10zoGLLW=o7ziYOaARKix=++=Tt_wnB4cYmHXHfw@mail.gmail.com>
Organization: GENIVI Alliance
Date: Thu, 19 Jul 2018 14:50:53 +0200
Mime-Version: 1.0
X-Mailer: Evolution 3.26.6 (3.26.6-1.fc27) 
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: cannelloni.bb (Was: [Chicken and Egg problem] Defining RDEPENDS of the package itself)
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
X-List-Received-Date: Thu, 19 Jul 2018 12:51:24 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2018-07-19 at 14:44 +0200, Zoran Stojsavljevic wrote:
> Actually, I ran into this:
> http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/recipes-
> extended/socketcan

:-)  I mentioned that in my original response.

> 
> So here, I think, can-utils recipes should be revisited, cannelloni
> recipe added, and also another application recipe added as well:
> https://github.com/dschanoeh/socketcand/

Great, you're answering some of the follow-up questions I had.  I need to
task switch now, but I will finish up that response later anyway so we can
figure out a good strategy together.

- Gunnar

-- 
Gunnar Andersson <gandersson@genivi.org>
Development Lead
GENIVI Alliance


