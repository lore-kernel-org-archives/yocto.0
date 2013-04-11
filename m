Return-Path: <richard.purdie@linuxfoundation.org>
Received: from dan.rpsys.net (dan.rpsys.net [93.97.175.187])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCCC3E014AE
	for <yocto@yoctoproject.org>; Thu, 11 Apr 2013 01:38:36 -0700 (PDT)
Received: from localhost (dan.rpsys.net [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r3B8nhrS004862; Thu, 11 Apr 2013 09:49:44 +0100
X-Virus-Scanned: Debian amavisd-new at dan.rpsys.net
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id iozsZEnMUdg3; Thu, 11 Apr 2013 09:49:43 +0100 (BST)
Received: from [192.168.3.10] (rpvlan0 [192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-2.1ubuntu1) with ESMTP id
	r3B8nYqh004839
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256
	verify=NOT); Thu, 11 Apr 2013 09:49:37 +0100
Message-ID: <1365669493.16702.42.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Date: Thu, 11 Apr 2013 09:38:13 +0100
In-Reply-To: <CAPhnLPAmLKbfehcGK3NPZFbNCja6H3TG=Y9q9r=A1PsjURy4gg@mail.gmail.com>
References: <CAPhnLPAmLKbfehcGK3NPZFbNCja6H3TG=Y9q9r=A1PsjURy4gg@mail.gmail.com>
X-Mailer: Evolution 3.6.2-0ubuntu0.1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: 1.4_M6.rc1 started
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
X-List-Received-Date: Thu, 11 Apr 2013 08:38:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2013-04-10 at 15:48 -0700, Flanagan, Elizabeth wrote:
> Our first release candidate for dylan has been started. It will be
> available this evening at:
> http://autobuilder.yoctoproject.org/pub/nightly/20130410-1
> 
> Repo               Branch      Hash
> poky                dylan         adb63ca02348af72a30cef2f20de2234b74a7200
> meta-intel       dylan         fd58fb07cf4fcc0553d0608f5688fc03e41ea15c
> meta-qt3         dylan         4c27cce6688aa39852f3cba5e7b80ec279019605
> meta-fsl-arm  dylan         5b8683ad04d63f0d5b2638cac245bff28468b634
> meta-fsl-ppc   master      3312fd5ce9caced68eff577cd0e83ff1471b0612
> eclipse-poky   dylan         e5172830f61b7dcc3ac03d18a03e63389c6b4629
> 
> So far everything looks pretty green. I'll have tags up tonight once
> it completes.

For the reasons Bruce and Trevor alluded to, I'm pronouncing this build
DoA. We've tried to pull together too much too fast. We've fixes for
several major issues and will run another build which should look better
and this time, be worth testing.

QA Folks: Please wait for the next build.

Cheers,

Richard


