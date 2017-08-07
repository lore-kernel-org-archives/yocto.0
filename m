Return-Path: <andrew@bradfordembedded.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A890EE00A39; Mon,  7 Aug 2017 04:24:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [66.111.4.25 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 434 seconds by postgrey-1.32 at yocto-www;
	Mon, 07 Aug 2017 04:24:56 PDT
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com
	[66.111.4.25])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 55030E0078E
	for <yocto@yoctoproject.org>; Mon,  7 Aug 2017 04:24:56 -0700 (PDT)
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id F09A621AF9;
	Mon,  7 Aug 2017 07:17:41 -0400 (EDT)
Received: from frontend2 ([10.202.2.161])
	by compute6.internal (MEProxy); Mon, 07 Aug 2017 07:17:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	bradfordembedded.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=7xbiu05uxa4IFGygY9
	UF9937rACwlPS4P5x2M1njJNA=; b=Kbrmb3Ima7AnX+x1Ze/WlSvXb6HFWRzlzb
	t+BcKDHVNKPSpGGKNRahuh6n9qKlKQjstt+W7kJOC4W86m08N3QI/L4x+0DXYYHp
	ss8oQEfVPmZP5Ks2rD6wmxpWIBtwioYBA1LzkGjjIbMvi8lJY8sltyNBQ5SSKSF0
	eBtV0cX2om4pE0qBxyzClvnZWYaUPZIPuxRSN4hs8xQsv5/zAIqZzpOx2vwwcRq4
	XIC0yGvOqHaRe4iUh1f7LdYyIB7Q8TIMGhYgpTevEVD0Knb/BzyzQ0jiHW6AB8wB
	7q9WvNHa4NBns0f0l1nood+7Gyx2fEaoS0zjd2Le0IGhMlQhlU2A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=7xbiu05uxa4IFGygY9
	UF9937rACwlPS4P5x2M1njJNA=; b=VjROc3ELwbwJaZeJc4vqKUGPcKEMAOP9g5
	1DvCBw5OrRW8p/D8Tki68Br9camtWwM40UlejhEsQzO7g2JN4glGLwyGBVJkUaZs
	Geq//TrOXzCYKJQP8Sg34CxL/qvCrgYg8G7Yo5UGzbyvOPy8b/dyhHcdS89rG3Nd
	myzQgdQw7TdTE12T1WiVh+FI8qVFataQNIgEH85ctJd00ByksSYF/ncuSGXt8uf7
	XxJP1tk/JHz5R7OLirr0AsOShNh2bTO2loOqop2SGl6k+9I9yhv/2kO3RDu1ugf5
	tTbzx9wQnOG0ctunMC0ijfNgMzCJELPa4gMaN81DhXNKtHuc618A==
X-ME-Sender: <xms:VUyIWYPnCH5EhnjN9IerlPKkp8oBcGrDWRLJA5_W1L0B1ASyHA-B_A>
X-Sasl-enc: pF0W0wmT2Fm8gg7izhMSUyeRPeS2jpZFf7BLqQQXo9wJ 1502104661
Received: from kaim-eeyore.kodakalaris.net (clr-vpn01.kodakalaris.com
	[198.140.222.129])
	by mail.messagingengine.com (Postfix) with ESMTPA id 9D6C52459C;
	Mon,  7 Aug 2017 07:17:41 -0400 (EDT)
Date: Mon, 7 Aug 2017 07:17:40 -0400
From: Andrew Bradford <andrew@bradfordembedded.com>
To: Katu Txakur <katutxakurra@gmail.com>
Message-ID: <20170807111740.ppsdinlvltioc3uq@kaim-eeyore.kodakalaris.net>
References: <CAM1ZcoVg_NuFbLkAHCRJmXAhX7g9EA04h+9NYmWb9QAJWCcnKA@mail.gmail.com>
	<CAM1ZcoUYPs_TRwcCT=_9o6pWO1XDpmaRUuTZn=X1O5qkPkY3Eg@mail.gmail.com>
	<1593300.26TW5Pyds6@peggleto-mobl.ger.corp.intel.com>
MIME-Version: 1.0
In-Reply-To: <1593300.26TW5Pyds6@peggleto-mobl.ger.corp.intel.com>
User-Agent: NeoMutt/20170609 (1.8.3)
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Andrew Bradford <andrew.bradford@kodakalaris.com>, yocto@yoctoproject.org
Subject: Re: Perforce fetcher ignores module and label
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
X-List-Received-Date: Mon, 07 Aug 2017 11:24:57 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Hi Katu,

Sorry for the delay in my reply, I was on holiday.

On 08/02 10:28, Paul Eggleton wrote:
> Andrew Bradford (on CC) was the last person to make significant changes to 
> that module.
>
> On Wednesday, 2 August 2017 9:40:10 AM CEST Katu Txakur wrote:
> > I'm still having problems fetching from Perforce. Is there any
> > documentation based on the latest implementation of the
> > poky/bitbake/lib/bb/fetch2/perforce.py file?

There's some documentation now in the official Yocto Project
documentation location for bitbake fetchers [1].  Prior to my changes
there was very little if any documentation, afaik.

[1]: http://www.yoctoproject.org/docs/2.3.1/bitbake-user-manual/bitbake-user-manual.html#perforce-fetcher

> > 2017-07-25 10:05 GMT+01:00 Katu Txakur <katutxakurra@gmail.com>:
> > 
> > > Hi,
> > >
> > > I'm upgrading a recipe that fetches the source code from Perforce.
> > >
> > > The old recipe was:
> > >
> > > SRC_URI = " \
> > >   p4://${P4USER}:${P4PASSWD}:${P4HOST}:${P4PORT}@Depot/path/pe
> > > rforce/...;module=local/path/relativeto/p4;label=${P4CHANGELIST} \
> > >   "
> > >
> > > With the new version of /lib/bb/fetch2/perforce.py, I had to set P4PORT
> > > outside SRC_URI, leaving the recipe with:
> > >
> > > SRC_URI = " \
> > >   p4://${P4USER}:${P4PASSWD}@Depot/path/perforce/...;module=
> > > local/path/relativeto/p4;label=${P4CHANGELIST} \
> > >   "
> > >
> > > The Perforce fetcher kind of works, but it seems to be ignoring the
> > > "module" and the "label" attributes. After reading the Python script I can
> > > see that after the "@", only the substring before the first ";" is used.

Sorry for not making the label change more clear, but you should be able
to simply set SRCREV="labelname" and have the functionality you desire.
However, we don't use labels very often internally, so the use of labels
in SRCREV isn't tested that often by me.

This change to using labels, changelist numbers, and allowing the use of
AUTOREV was made so that the perforce fetcher would act more like the
other source code control system fetchers.  Prior to my changes to the
p4 fetcher, the way that recipes using p4 had to be written seemed
rather awkward to me.  The way it is now isn't perfect, but it's closer
to how the other fetchers act, I think (and hope).

> > > Is there a way to set module and label/changelist? I have several folders
> > > per recipe that I need to map to different subfolders and with the current
> > > script some of the folders don't get fetched.

I'm not sure I understand enough about how you use perforce and what you
mean by mapping different subfolders.  Can you explain this in a more
expanded way to me?  Maybe with some examples?

Thanks,
Andrew

