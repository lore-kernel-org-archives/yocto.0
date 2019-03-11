Return-Path: <paul@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D5755E009A4; Mon, 11 Mar 2019 08:45:29 -0700 (PDT)
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
	*      [66.111.4.26 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 543 seconds by postgrey-1.32 at yocto-www;
	Mon, 11 Mar 2019 08:45:28 PDT
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com
	[66.111.4.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11F23E0091D
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2019 08:45:28 -0700 (PDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id 9AFBD2294D;
	Mon, 11 Mar 2019 11:36:23 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
	by compute1.internal (MEProxy); Mon, 11 Mar 2019 11:36:23 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	h=message-id:in-reply-to:references:date:from:to:subject
	:content-type; s=fm3; bh=i89uuAM+XJdtS8h0XC/yKnWDdYxNFpGLXxhEwy/
	9TwA=; b=BKSTB8ty14dQrOAlbavz+2TcOhbn4hdr6EvUxIGN0J4vCr0RhAadQaK
	63crJIYdIA3OpHpJQJNw4lx9XRuqXtxoukztfvR2PVxwBO5mKMsiYRj2UnUl9ByA
	Up25axdhm0/KqJYq8p5B1K1zsO6pCA4w3cFaZNbnMKZbZYRrghO40+zGpR7TJR2O
	JeM6gSCIn2pmca5Pash/e6cM+IHcvyvNNqtiqdxwRLDZSvuWtJyQkkARKJM8R/S2
	/LGyRj7x7zKTnXRJdc77/nU0MFamu2s+qN64//zXBri5Yskk25/C76Xx+q4jwfDM
	r8XoRYlpgdZs8EERIIKPSEEeU4/ZAjg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:references:subject:to:x-me-proxy:x-me-proxy
	:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=i89uuAM+XJdtS8h0X
	C/yKnWDdYxNFpGLXxhEwy/9TwA=; b=Bu2dztZqPfMd5O/KQ2LZxV3wcKyVzKsl1
	El9Dm7IJSB+dOaEMLHk6IbWk3H99m8DgcUoOLZLKHhkfawjzUcrstNfiK40jepqP
	g5bXd8P4k+TKETtEHREE7EM8ZP47QPEjqHMjft7EoB6+OZ161BE8uEK3TTiamIXd
	oSRLCsdIxxQeRFQKhX+39dXkA0Y/PL7WRVpiwmoECubpZUvi28Ok+Bn6FaR1+ZsT
	WzeyZG/5BlE8hIsBxladfheZN5LefSJE+EvkKzDBHRQEW7F9bAic/BpraWl86Xeu
	ttNXy4fbkbvn4jePbNgO339T3d/ByAGbebWAA0Pj2dXrKi2IiULmw==
X-ME-Sender: <xms:d4CGXP40tJiddP_EYUzLMTNKuvWc4Kx6rDSFCoHt4yGwJCd3tcX1SA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddrgeeigdejlecutefuodetggdotefrodftvf
	curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
	uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
	fjughrpefofgfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdfrrghulhcu
	uegrrhhkvghrfdcuoehprghulhessggvthgrfhhivhgvrdgtohdruhhkqeenucffohhmrg
	hinhephihotghtohhprhhojhgvtghtrdhorhhgnecurfgrrhgrmhepmhgrihhlfhhrohhm
	pehprghulhessggvthgrfhhivhgvrdgtohdruhhknecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:d4CGXMnaH_3ojMbG6jdfgs4QSCGNWVYY474Rulej-V9VKkzoLuSbHg>
	<xmx:d4CGXIrNGsd8PSoPkA95WGK8jxrlwPT3TWCdIqMcGw8A3hLZaX13rw>
	<xmx:d4CGXO0E9cqzAaLP5TCFHKCB-Vtlx-IAtENT4rEFbKJ7tsb4yewKlw>
	<xmx:d4CGXC0a5qCRPjY2Kbv6VqfC-hI1n-Y25l5UOoV_c8UqRAswxIp-Cg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id F0F607C1EB; Mon, 11 Mar 2019 11:36:22 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.5-925-g644bf8c-fmstable-20190228v5
X-Me-Personality: 84186096
Message-Id: <f19f5439-6098-4909-9cf5-31b8136f81ae@www.fastmail.com>
In-Reply-To: <CAGk+JegHkafvb7NnPs8V5=fWMM_9GKj3Rk1NHSa3kNDpJi70sw@mail.gmail.com>
References: <CAGk+JegHkafvb7NnPs8V5=fWMM_9GKj3Rk1NHSa3kNDpJi70sw@mail.gmail.com>
Date: Mon, 11 Mar 2019 11:36:22 -0400
From: "Paul Barker" <paul@betafive.co.uk>
To: "rahul chauhan" <rahulchauhankitps@gmail.com>,
	"Yocto discussion list" <yocto@yoctoproject.org>
Subject: Re: Guidance to start yocto project.
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
X-List-Received-Date: Mon, 11 Mar 2019 15:45:29 -0000
Content-Type: text/plain

On Mon, 11 Mar 2019, at 15:32, rahul chauhan wrote:
> Hello,
> 
> I am beginner with yocto project and i want to learn the yocto project 
> and start working on it. 
>  can you please guide how can i proceed step by step and what are the 
> prerequisites? 

There's an excellent "Quick Build" guide in the documentation: https://www.yoctoproject.org/docs/

Beyond that I can highly recommend reading "Embedded Linux Systems with the Yocto Project" by Rudolf Streif.

> 
> Thanks and Regards
> Rahul Chauhan
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

-- 
Paul Barker
Managing Director & Principal Engineer
Beta Five Ltd

