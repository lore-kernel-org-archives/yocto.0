Return-Path: <gandersson@genivi.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C457E013BE; Thu, 19 Jul 2018 03:41:33 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A4FEE0134B
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 03:41:31 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.genivi.org (Postfix) with ESMTP id 310904F4D;
	Thu, 19 Jul 2018 03:41:30 -0700 (PDT)
X-Virus-Scanned: Debian amavisd-new at smtp1.genivi.org
Received: from smtp1.genivi.org ([127.0.0.1])
	by localhost (smtp1.genivi.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p7YhwvoyaEQL; Thu, 19 Jul 2018 03:41:25 -0700 (PDT)
Received: from thislaptop (c83-248-73-53.bredband.comhem.se [83.248.73.53])
	by smtp1.genivi.org (Postfix) with ESMTPSA id F1FEB4F48;
	Thu, 19 Jul 2018 03:41:23 -0700 (PDT)
Message-ID: <1531996869.3103.16.camel@genivi.org>
From: Gunnar Andersson <gandersson@genivi.org>
To: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>, Yocto Project
	<yocto@yoctoproject.org>
In-Reply-To: <CALw8SCUPA9Ud9e2JxzexLr2GrZsvPX_6eiTKvhjWz--rkz8OUw@mail.gmail.com>
References: <CAGAf8Lxousw4NEGP_aHGzHiqvzkJNERFgGHMM1hxNyj6Km72aQ@mail.gmail.com>
	<CALw8SCUPA9Ud9e2JxzexLr2GrZsvPX_6eiTKvhjWz--rkz8OUw@mail.gmail.com>
Organization: GENIVI Alliance
Date: Thu, 19 Jul 2018 12:41:09 +0200
Mime-Version: 1.0
X-Mailer: Evolution 3.26.6 (3.26.6-1.fc27) 
Subject: cannelloni.bb (Was: [Chicken and Egg problem] Defining RDEPENDS of the package itself)
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
X-List-Received-Date: Thu, 19 Jul 2018 10:41:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2018-07-18 at 23:49 +0200, Mirza Krak wrote:
> On Wed, Jul 18, 2018, 13:38 Zoran Stojsavljevic <zoran.stojsavljevic@gmail
> .com> wrote:
> > Hello YOCTO community,
> > 
> > Since I need to build the latest and the greatest Github creations
> > from the independent contributors, I decided myself to write few YOCTO
> > recipes and to get myself to this (un)pleasant learning path.
> > 
> > I did few examples, simplistic ones, before I took more complex
> > recipes to write.
> > 
> > And... I need this one, Cannelloni, one defined here:
> > https://github.com/mguentner/cannelloni
> 
> Recipe for above can be found here, https://github.com/GENIVI/genivi-dev-
> platform/blob/master/meta-genivi-dev/meta-genivi-dev/recipes-
> extended/cannelloni/cannelloni.bb. 

Since that layer is not kept as a separate submodule, your only reasonable
option would be copying, so I'll jump in to preempt that.  

It would be better with a single location (shared maintenance).  meta-
genivi-dev is where we keep things that (seem to be so far) unique to our
platform, so rather than recommending to reuse that layer we strive to push
things out of there, as soon as it makes sense.

I'm happy to move cannelloni to a generic layer if there is wider interest.

meta-can-networking?  There might be some other CAN associated components of
interest so that it does not become one of those single-recipe layers...

On the other hand, some related things are elsewhere:

- meta-openembedded/meta-oe/recipes-extended/socketcan/*

Please share your thoughts.

- Gunnar




