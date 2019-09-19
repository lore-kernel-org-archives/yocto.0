Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD3B3E00D54; Thu, 19 Sep 2019 07:16:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_00,
	BODY_QUOTE_MALF_MSGID, DKIM_SIGNED, DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  2.0 BODY_QUOTE_MALF_MSGID Malformed MSGID with quote
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A95CDE00B1A
	for <yocto@yoctoproject.org>; Thu, 19 Sep 2019 07:16:57 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 46YzS523jwz2C;
	Thu, 19 Sep 2019 16:16:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1568902614;
	bh=OWM19g+m99F+SsHrRMu1HT7BQfo4wKhzBJblWmp/BXU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=EH/JiDsqLQWX8f6V4dMzdeUT/xneJDEF33GOUoZ0v3NfmJvD8ELldctrz/CPB+ZnP
	t55ACkcNckkqqrM5HMFp+hxa2N3/p2QoUVNnfTl5s5CAR8rcDNgpRXyHmfb5jHp1pc
	Sb8zMKKjGL0TyIvlgVsXtY5J+IqEJww80b5JRN40L7ouA5v/8AkDqCvbH4sNfB9HyH
	QGBdp3FRrFKl4yW7VSLTcCZkeFoyowrl1AWugzK4FlfRZn+4CrONc2nAvSCxqP7jW0
	u+gWZYgr+BNUhMsLGLkU65D/a8uNyg2RQhMjNyD0suAmj5d6F6VSTICaOfZ1hKfTW6
	AyNTnV5vbfcjFZL93Nm0RDMlubBLlpTAtppkD0bl07Z36aX7CI8eou8C0kpTQ20Pvh
	BQ4IszCbt9k2wq4/eeUsphX8mVBjKT4MXQzd4cMEKjWwDR21htAOUIDz7Q31JyMaNq
	J6xkX3gw1I+K0iI0US3Tt3WOss9r4gTcElvukXZpAlni3A8ox3mBQP7pC3SLvxPyVJ
	tZNFAA3IMvILtTIr5yLF5Eq3bjvLM2A1o0SxRW4Y6driKNOiOYDHpzh2um64orH+F8
	qSOeH95tIrCar23aOpbGNLNVOZgSvypTQ9c3q5nSulgayWzezi6Bl0CS8y+3XnAfll
	Rid4KG5akofs3mBWvfP08FoM=
Date: Thu, 19 Sep 2019 17:16:50 +0300
From: Adrian Bunk <bunk@stusta.de>
To: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <20190919141650.GA23770@localhost>
References: <8f3933f8-bbad-7dbd-ff9a-afdab91ced3f@gmail.com>
	<ed609776-571f-0633-fb68-055236d32897@windriver.com>
MIME-Version: 1.0
In-Reply-To: <ed609776-571f-0633-fb68-055236d32897@windriver.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: yocto@yoctoproject.org, simon.spannagel@cern.ch
Subject: Re: gitlab-runner
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
X-List-Received-Date: Thu, 19 Sep 2019 14:16:59 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Thu, Sep 19, 2019 at 09:39:55AM -0400, Randy MacLeod wrote:
> On 9/19/19 2:56 AM, Robert Berger@yocto.user wrote:
> > Hi,
> > 
> > Does someone happen to have a BitBake recipe for gitlab-runner?[1]
> > 
> > [1] https://gitlab.com/gitlab-org/gitlab-runner
> > 
> > A quick search did not show up anything;)
> 
> There's nothing in the layer index:
> 
> https://layers.openembedded.org/layerindex/branch/master/recipes/?q=runner
> 
> (It wasn't clear if you knew about the index.)
> 
> I did find:
> https://gitlab.cern.ch/Caribou/meta-caribou/tree/master/misc/gitlab-ci
> that mentions gitlab-runner but it doesn't seem like that layer provides
> a recipe but you might want to check it out anyway and let us know if
> it works for you.
>...

It just downloads an ARM binary from the internet.

Any layer actually building gitlab-runner would have to provide
200 Go libraries.

> ,./Randy

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


