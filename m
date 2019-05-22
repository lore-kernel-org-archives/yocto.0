Return-Path: <paul@betafive.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 59D4EE00931; Wed, 22 May 2019 00:50:56 -0700 (PDT)
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
	*      [64.147.123.25 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from wout2-smtp.messagingengine.com (wout2-smtp.messagingengine.com
	[64.147.123.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CD31E00931
	for <yocto@yoctoproject.org>; Wed, 22 May 2019 00:50:55 -0700 (PDT)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id ED6C84A7;
	Wed, 22 May 2019 03:50:53 -0400 (EDT)
Received: from imap2 ([10.202.2.52])
	by compute1.internal (MEProxy); Wed, 22 May 2019 03:50:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	h=mime-version:message-id:in-reply-to:references:date:from:to
	:cc:subject:content-type; s=fm1; bh=UwU0FDnXzWVJIpHJK/w2oQaNLy7S
	x1z59Cs6UoLXO3o=; b=BbrB64fmWJyECVb61CsM1e6eenPCN+7JXq4ur2QrTMfj
	BuLA9B4j47a2bczTLlJ/rtZ+8XDWuQvMnhUFL9+y8neeHWxal68GsWBuEkIVHsuC
	l5AKkA0zZ20hfzA44mBN88nCqMGEj2PHrsytOwewaIBONDDxAhqdksPyZsvyf17V
	rLGf5iGRR64FLcmdXmXh+ckI3tDppVU/ipcj4YBdAX9uGgo7+lFVFyKVbqbCsMkE
	4vVKpqifvUZlMbyMD4/v4TJlBpqxi0xRc3ZQlB0Mw9dJS3weQxTHlcqIco8BUVjy
	8jH6lG6ANsvlgo/PU3n2B3nnIQeHGv5LPqWYVc2lTA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=UwU0FD
	nXzWVJIpHJK/w2oQaNLy7Sx1z59Cs6UoLXO3o=; b=QKYBMM9k62i3pZmSvCyhzh
	AQC2nzgrcIFxaJFmzn+VCTgvLgTqnnlJOLPaMfOhm30fPY02XqGBvJwNUA41fNbQ
	NAwMR0Ve8mLFSXIY6Jg6db7ndZdUCNyhGWKS5JID/EPRx9YDIt60TFB6J1COXqUU
	iYcHmf9DXfhE3Ut+Xuw4Dx4ccV8/uTbJjkF0BG2sil1y8iYBrdl22ZJfbG0T1/F0
	aGjvLTot9+lOOgwXwq7PeJ3zy1LMYSFnNB7DV1t29bywW7pZzncwyn7jIaX0PW+w
	xICa1kh3ctV4J027jYZ2npvtagOx6SmMoAb4Ev1RzFiuBgfxW2i9AU41gELH2HoA
	==
X-ME-Sender: <xms:Xf_kXECpagRP7ukgX9LhfdYM4s0-A5yWiw0stcdJM14eBJNcroSuDw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduuddrudduuddguddvhecutefuodetggdotefrod
	ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
	necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
	enucfjughrpefofgggkfgjfhffhffvufgtsehttdertderredtnecuhfhrohhmpedfrfgr
	uhhluceurghrkhgvrhdfuceophgruhhlsegsvghtrghfihhvvgdrtghordhukheqnecurf
	grrhgrmhepmhgrihhlfhhrohhmpehprghulhessggvthgrfhhivhgvrdgtohdruhhknecu
	vehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:Xf_kXMoIbotQgL30exG4EiWTLshi2Oek4hIk9oHD73VfRldv_Z0vhQ>
	<xmx:Xf_kXMtuwoxXcRkctAHiRiYlQ-6i_BvtwB8soTU9emfoCbizzx5G_w>
	<xmx:Xf_kXBBEDxMq2HkvTANu26cUNWFCQrEU6VGHGz1ZG2yQ_6zohZ7PzQ>
	<xmx:Xf_kXCvJ9s25DlWkXeLLSnuHopCtXYSsf83tR0d-vPq5JMSrKLipdg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 00E1AE00A1; Wed, 22 May 2019 03:50:52 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.6-550-g29afa21-fmstable-20190520v1
Mime-Version: 1.0
Message-Id: <7247318a-7294-4879-bc0b-6af506cab3ca@www.fastmail.com>
In-Reply-To: <CAAfyv37ZAPU-5HZP+LpXM6oeuoscnku_rOzCDFXNuoVC+zOFcQ@mail.gmail.com>
References: <CAAfyv36rHpLWA0sO=nZHePMHVjLBpsUgGmPUXpQ2gObF7+2gJA@mail.gmail.com>
	<CANNYZj_E0+sizpK0gvTa3H_8r1wZtW2sY3S2rz7PbMnU99Zv8w@mail.gmail.com>
	<CAAfyv34RLBR_vJqnZxnW5T_+SyGU8Mtn4eM_gzKuFcCoMx2y_w@mail.gmail.com>
	<CANNYZj--jzkXeyqGiMms05wvD0yQvWt1uUmJD9xGe3=xrN7b5Q@mail.gmail.com>
	<CAAfyv37ZAPU-5HZP+LpXM6oeuoscnku_rOzCDFXNuoVC+zOFcQ@mail.gmail.com>
Date: Wed, 22 May 2019 08:50:52 +0100
From: "Paul Barker" <paul@betafive.co.uk>
To: "Belisko Marek" <marek.belisko@gmail.com>,
	"Alexander Kanavin" <alex.kanavin@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: setting SRC_URI runtime - possible options
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
X-List-Received-Date: Wed, 22 May 2019 07:50:56 -0000
Content-Type: text/plain

On Tue, 21 May 2019, at 11:23, Belisko Marek wrote:
> On Tue, May 21, 2019 at 12:14 PM Alexander Kanavin 
> <alex.kanavin@gmail.com> wrote:
> > You can write a class which sets the template for SRC_URI and then a
> >  series of recipes that inherit the class, and define the variable that
> >  would turn the template into the actual URI.
> OK I think it make sense. So parsing of config file will be done in 
> class and then class will be used in recipes to set correct SRU_URI.
> Do you have any idea what is wrong with actual code I posted? Why it is 
> doing some strange things? Thanks.

You're setting the SRC_URI value only in the do_fetch task. It's needed in at least the do_unpack task as well and possibly other tasks.

You could look at setting this in an anonymous python function instead if you really need to parse a config file.

-- 
Paul Barker
Managing Director & Principal Engineer
Beta Five Ltd

