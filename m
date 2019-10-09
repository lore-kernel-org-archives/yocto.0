Return-Path: <paul@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4F1A2E00D8A; Wed,  9 Oct 2019 03:16:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [64.147.123.20 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 484 seconds by postgrey-1.32 at yocto-www;
	Wed, 09 Oct 2019 03:15:59 PDT
Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com
	[64.147.123.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 45B6BE00C25
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2019 03:15:59 -0700 (PDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id 182B14E1;
	Wed,  9 Oct 2019 06:07:55 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
	by compute1.internal (MEProxy); Wed, 09 Oct 2019 06:07:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	h=mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm2; bh=cuwQuLAVmhRKR2MTffdl4uqxpDF7frx
	nS1QSlhGUDXs=; b=wcldcsc/g8E1dUC5iZJlanIx/bDqQ0X7QLyA39lhSgX382D
	sWfSoiREtQd7CD9oVaVgKnllT01AY0oeJ20NMrIs8NHRgJhVxg8ldVwx5db28aun
	hrPa+fe8S9BGIZCa/DaTQeMQ/e6EUKgHK4zlWJc/vpLAZSkk5IbH3WTOE3/Eo/s6
	QZ+CyNfEzzrgiX8V+TF+BfnmYMBNgKtv8hbiwICvMFdGg66qEj+zuPLvWeKxWVRM
	zyotMj4HmPaob+L0T/K0umk/WJiJUyoZYAXTid9WnlITcrV3Hsfcoe13SVBFfHYK
	pby/xmiSqcnr2AZQPTHvk8GhdQJMMmSVpn2tOvQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=cuwQuL
	AVmhRKR2MTffdl4uqxpDF7frxnS1QSlhGUDXs=; b=k7PLd23wsyE0t/tqzOKgbs
	fepnoA3TUsMESE/TFDTi5zgSx3CfN5RB2D5GdFlr/hlDTFdYOosoluPMUK234OiZ
	dYB7XYwGgT5me4y2RDDOVX5Jq/soEtkX1tQuDr9UXZLKj+EZWIck/5CMguVXWxP1
	UoxdjChbc3d7Etx1xj7iRbZWHnUMaFFpEb/WSt4ZdP1f+a/LauWzG/rIuHwnvKzG
	n8rlEpZzJy8WBo3laVCVdohEuMiEmppIUHOTMWiVGLQpiXAYRx94huqCipZNauqD
	2qG9saG8tYNBkctylvWptE9xwjqu0AfMUTstpcI/Cno7rZqPWbb4BzICbN659Flw
	==
X-ME-Sender: <xms:ebGdXS-imHOdw0pzc5BerpS6e6zClFZn_XkXXCWpMu70pRuE3vI5tQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrieduucetufdoteggodetrfdotffvucfrrh
	hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
	lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
	epofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdfrrghulhcuuegr
	rhhkvghrfdcuoehprghulhessggvthgrfhhivhgvrdgtohdruhhkqeenucfrrghrrghmpe
	hmrghilhhfrhhomhepphgruhhlsegsvghtrghfihhvvgdrtghordhukhenucevlhhushht
	vghrufhiiigvpedt
X-ME-Proxy: <xmx:ebGdXSQGn2wzMdCgBLoPnFAcGXVKoLgI-EEdr8qDRjNam5vTTSsasA>
	<xmx:ebGdXcGWHV7Vi7jbJ0JMcctES46Nj2Y6ggzDIZmZxIeQjH1v01YoXA>
	<xmx:ebGdXaMlabOjrGnKnXJT50EPLB1UxHbuQmqN8ZiF8vMTSd-JCqxuvA>
	<xmx:erGdXSeeGgrSW08cnD2iT3MRmDUOh4AP6VNanwFd327HuRFu-syqYQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id D4335E00A5; Wed,  9 Oct 2019 06:07:53 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-360-g7dda896-fmstable-20191004v2
Mime-Version: 1.0
Message-Id: <75274d36-ec83-4e33-8a05-c198ba13d718@www.fastmail.com>
In-Reply-To: <a51024a0-2c3f-a584-2821-c5c8a8a786a3@gherzan.ro>
References: <a51024a0-2c3f-a584-2821-c5c8a8a786a3@gherzan.ro>
Date: Wed, 09 Oct 2019 11:07:14 +0100
From: "Paul Barker" <paul@betafive.co.uk>
To: "Andrei Gherzan" <andrei@gherzan.ro>,
	"Yocto discussion list" <yocto@yoctoproject.org>
Subject: Re: Task vardeps on a variable changed externally
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
X-List-Received-Date: Wed, 09 Oct 2019 10:16:01 -0000
Content-Type: text/plain

On Wed, 9 Oct 2019, at 10:42, Andrei Gherzan wrote:
> Hi guys,
> 
> I struggle to figure out an issue that I lately got into. I want to have 
> a recipe which writes a manifest of all the layers part of the build. 
> These layers are all git repositories and I want their revision to be 
> exposed at runtime.

Do you need this to be an actual package or would you be happy with it just injected into the rootfs via IMAGE_PREPROCESS_COMMAND? If so you could take a look at image-buildinfo.bbclass which seemed to work well when I've done it in the past.

The only other way I've done something like this in the past is to put the git commands into do_compile for a recipe and set do_compile[nostamp] = "1". That way the task and every task that depends on it are always re-ran. It does mean that it will be re-ran even if the git repositories haven't been updated at all.

Thanks,

-- 
Paul Barker

