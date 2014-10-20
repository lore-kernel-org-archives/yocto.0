Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 735CAE00861; Mon, 20 Oct 2014 02:40:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.53 listed in list.dnswl.org]
Received: from mail-qa0-f53.google.com (mail-qa0-f53.google.com
	[209.85.216.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F8EDE0071C
	for <yocto@yoctoproject.org>; Mon, 20 Oct 2014 02:40:51 -0700 (PDT)
Received: by mail-qa0-f53.google.com with SMTP id v10so3008344qac.26
	for <yocto@yoctoproject.org>; Mon, 20 Oct 2014 02:40:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=LeSc28ZS/rmb6pgGSlEuJmFKacxph9Duo9PTrNFtctk=;
	b=V05VU85eII1qjKFjbgwKxWg667Im9IRontSpJ2Sdku426UwA4f5GygfFcNXqs9KsRP
	KLU9b10N4BfCCTwYvl0UH7ZUofrqld/U3um1cHXJvyqrXRcNzgODUC4Hczbf/Mnv/o2P
	Ul0Je/y+7gxXpaVpi0mNIMHbKgMQVl1raKdHVUPgdNwbBtubRbvc5xRMb1fJ4pgXb8k6
	muSqHHGIStNi/rqcvQVeQmSGkEiFFb9GPmKKO+seVByg27lWAW4WDiS4htFj1fdVJRRg
	rLh2ISmlcWL7hqiYRTGfupTB5hEiiuROmE84rCexr3ooC11omlYEN2wpqd2uT+Hp22qE
	fOMQ==
X-Gm-Message-State: ALoCoQnSLXGr43uimlI+5ku2fPjpyGwP7IXIhA6h3mQNjkvr0H1q4cgRMbCrHLKF0JPURK7OuYDl
X-Received: by 10.224.2.135 with SMTP id 7mr34822149qaj.64.1413798050872; Mon,
	20 Oct 2014 02:40:50 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.93.65 with HTTP; Mon, 20 Oct 2014 02:40:30 -0700 (PDT)
In-Reply-To: <544404D7.9030905@gmail.com>
References: <544404D7.9030905@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 20 Oct 2014 10:40:30 +0100
Message-ID: <CAJTo0Lb_tRj9ROyQ5D6ZSca-FoeY_wDt-2qOY9Fe53PFLnspeQ@mail.gmail.com>
To: akuster808 <akuster808@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] Poky X11
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
X-List-Received-Date: Mon, 20 Oct 2014 09:40:54 -0000
Content-Type: text/plain; charset=UTF-8

On 19 October 2014 19:37, akuster808 <akuster808@gmail.com> wrote:
> When I build 'core-image-x11' on Poky, X on wont start. I am using the
> standard Poky clone with no added layers. When I manually start x I get the
> following error:
>
> startx
> /etc/X11/xinit/xinitrc: line 95: twm : command not found
> /etc/X11/xinit/xinitrc: line 96: xclock : command not found
> /etc/X11/xinit/xinitrc: line 97: xterm : command not found
> /etc/X11/xinit/xinitrc: line 98: xterm : command not found
> /etc/X11/xinit/xinitrc: line 99: exec : command not found

Did you at some point do a build with meta-oe enabled, and then not
enabled?  There's a known bad interaction between oe-core and
meta-oe's X init scripts which results in problems like this.  The
quick fix is to wipe your tmp and rebuild (using sstate this should
take just a few minutes).

Ross

