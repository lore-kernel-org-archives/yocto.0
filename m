Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2A08E00AAF; Wed,  1 Nov 2017 09:01:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5ED70E00928
	for <yocto@yoctoproject.org>; Wed,  1 Nov 2017 09:01:35 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id 36939260E9F
Message-ID: <1509552091.13007.37.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: Adam Lee <adam.yh.lee@gmail.com>
Date: Wed, 01 Nov 2017 17:01:31 +0100
In-Reply-To: <CAFeBWL79uCL0tci-9YDTeUYLFZGoND1t7yx5rMi3rPJFNt9iOg@mail.gmail.com>
References: <CAFeBWL7V1TNoGj4gpc5QkQ4mraFwUmvt77sAAxyGTmrivTQ-Mw@mail.gmail.com>
	<1509546479.13007.35.camel@collabora.co.uk>
	<CAFeBWL79uCL0tci-9YDTeUYLFZGoND1t7yx5rMi3rPJFNt9iOg@mail.gmail.com>
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Checking for xwayland
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
X-List-Received-Date: Wed, 01 Nov 2017 16:01:36 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Wed, 2017-11-01 at 15:58 +0000, Adam Lee wrote:
> Thanks Fabien, I definitely don't have Xwayland in my rootfs. My manifest is missing xserver-xorg-
> xwayland as well.
> 
> Which image are you using? I thought including of  "x11 wayland" was sufficient. Perhaps not..?
> 

The image I built is a custom one but I tried core-image-weston on imx6 and rpi3 and it does the
job.

> Adam
> 
> On Wed, Nov 1, 2017 at 10:28 AM Fabien Lahoudere <fabien.lahoudere@collabora.co.uk> wrote:
> > On Wed, 2017-11-01 at 14:10 +0000, Adam Lee wrote:
> > > Hello, how do I tell if I successfully built xwayland into my image?
> > >
> > > I looked for "xwayland" binary but to no avail.
> > 
> > I have this /usr/bin/Xwayland in my rootfs.
> > 
> > Check you manifest. It should contain xserver-xorg-xwayland.
> > 
> > >
> > > Adam
> > --
> > Fabien
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> > 
-- 
Fabien

