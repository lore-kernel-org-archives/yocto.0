Received: from wout5-smtp.messagingengine.com (wout5-smtp.messagingengine.com [64.147.123.21])
 by mx.groups.io with SMTP id smtpd.web09.7637.1575544724002719618
 for <yocto@lists.yoctoproject.org>;
 Thu, 05 Dec 2019 03:18:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@betafive.co.uk header.s=fm3 header.b=SgrcqO9E;
 spf=pass (domain: betafive.co.uk, ip: 64.147.123.21, mailfrom: paul@betafive.co.uk)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id D2B49A5E;
	Thu,  5 Dec 2019 06:18:42 -0500 (EST)
Received: from imap2 ([10.202.2.52])
  by compute1.internal (MEProxy); Thu, 05 Dec 2019 06:18:43 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	 h=mime-version:message-id:in-reply-to:references:date:from:to
	:cc:subject:content-type; s=fm3; bh=ZwHw3X1zA/ctYWre8mYAOnyHzlMT
	9bip0RddnoRRkUU=; b=SgrcqO9EqVhJ7cQOjmBdxNEMa5fmd0+7ziBZbGUbE6pK
	T46HuXzGDl6rmRlIVvYM0SqHOtsGAni8qOJEfTifO0ekMKi8P0v8bWjxVwBYRm/C
	99vOqVxgH58I4cbOYt54UKZSBdr+tb+EUXmpX9q+RfZtI+7YjHxCZHheElduQhNc
	qxhvlv75/Hu+DEU9ePs205sl0es4FZHs4sckBfaAIAuRS/RlXWwKwllUn9RKMZxU
	GPy/EMkSoGzcLFuVXq9AKkFJnmwO+fLTuHOCy5m6bGbxh3DAY9iixXhVd5Fei/3Q
	6Nsw2jxCleZKVPn1jDDsyCejkSY4UtsNDoi6jpvccw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=ZwHw3X
	1zA/ctYWre8mYAOnyHzlMT9bip0RddnoRRkUU=; b=JLq/bCxNTOYkqE5yf6u6T+
	EaTQMz7hpo7IQM8BSe3ir/PeUJurbXkpMwSo904h9M2OvmnZz+bcA02NXhhNm/jS
	0AIhqis1ePAOl2tCYTIJwSKsf0XgGYrHrMaWFWslebJmlP+31A3gKsP/Ee1HMuH9
	4+xiIZuSJmBHu1jBlZFSQn0IuxVUKAJWpptPE1KVVMGaPrzqyhr7AzGvkfr6MZrI
	wXugmxkn8J3/HWq4jue0z6aVdAx4sJUvBD+SS6RXfnGCXi8l8g33PgKjnMVm+zGK
	KBWg4yOhjs10DtWCVKIVHEJZ1+DVKXqWhGYYRkn0scxo3ZCeunnRuuszPc+w86Aw
	==
X-ME-Sender: <xms:kefoXeWxdlYSeCcnvZdZLh4VPPSfjvY-mjXcvnPazC5Qbex01WzUqA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudekuddgvdejucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdfrrghu
    lhcuuegrrhhkvghrfdcuoehprghulhessggvthgrfhhivhgvrdgtohdruhhkqeenucffoh
    hmrghinhepghhithhhuhgsrdgtohhmpdhsrghntghlohhuugdrtghordhukhenucfrrghr
    rghmpehmrghilhhfrhhomhepphgruhhlsegsvghtrghfihhvvgdrtghordhukhenucevlh
    hushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:kefoXe1xnqpiiR49blCNnpBB4AuMaQP_Plb0eGR0OTiKPZ1Qz0IyyQ>
    <xmx:kefoXdZc-E1a8UvMkOL4xuAXeS73SRrA5HEK7D8iCALLtm10XkF2_w>
    <xmx:kefoXZrUbo4eCmtmKI7bvSYNF1K_DFIOTmjDr3s07cdlTXoVkoNjvg>
    <xmx:kufoXVETQyvk4w-N2z-XiVEoKj69Bp9ui9Vg090_3emvgS8oj1pjgA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 9FAA9E00A3; Thu,  5 Dec 2019 06:18:40 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-612-g13027cc-fmstable-20191203v1
Mime-Version: 1.0
Message-Id: <246218da-6308-4f5e-ad7d-c203e4d44c92@www.fastmail.com>
In-Reply-To: <2549390.Jah5HLDfuQ@shodan>
References: <04e3ffe3-4733-4010-ac76-29b72ae20c89@www.fastmail.com>
 <1725959.xBGxL0dlV4@shodan>
 <717103ea-e4b3-4e9e-88eb-e31f80eb1cb3@www.fastmail.com>
 <2549390.Jah5HLDfuQ@shodan>
Date: Thu, 05 Dec 2019 11:18:22 +0000
From: "Paul Barker" <paul@betafive.co.uk>
To: "Paul Eggleton" <paul.eggleton@linux.intel.com>
Cc: "Nicolas Dechesne" <nicolas.dechesne@linaro.org>,
 "Yocto discussion list" <yocto@yoctoproject.org>,
 yocto@lists.yoctoproject.org
Subject: Re: [yocto] Missing layer in the layer index
Content-Type: text/plain

On Thu, 5 Dec 2019, at 10:07, Paul Eggleton wrote:
> On Thursday, 5 December 2019 9:48:48 PM NZDT Paul Barker wrote:
> > On Thu, 5 Dec 2019, at 01:37, Paul Eggleton wrote:
> > > On Wednesday, 4 December 2019 11:10:49 PM NZDT Nicolas Dechesne wrote:
> > > > > I'd like to make sure meta-sancloud (https://github.com/SanCloudLtd/meta-> > sancloud) is listed in the layer index. I can't see it listed for either
> > > > > of the branches we support (thud & rocko). However, when I try to add the
> > > > > layer I get the error message "Layer with this Layer name already exists."
> > > > >
> > > > > Perhaps this was already added with an old URL. Is there any way to get
> > > > > this fixed up?
> > > > 
> > > > yes, this is the reason. It exists with the following URL:
> > > > https://bitbucket.sancloud.co.uk/scm/yb/meta-sancloud.git
> > > > 
> > > > The maintainer for that layer is not listed.. was it you?
> > > 
> > > Oddly there are no maintainer records and no layer branch records either, 
> > > hence why the layer doesn't show up properly. I'm unsure how it would have got 
> > > into that state or how long it's been there, but since it's pretty much 
> > > useless I have gone ahead and deleted it - Paul, could you please file your 
> > > submission again?
> > 
> > Thanks for that, it may have got broken in the layer index when we moved the repo from our private Bitbucket instance over to GitHub. I've resubmitted now.
> 
> Actually looking at the new repo I think I know what might have 
> happened. The layer index does not currently handle layers that don't 
> have a master branch perfectly; it could be that the original repo went 
> away and that caused it to remove all the layerbranches, and since 
> maintainers are per layerbranch they also got removed. (If a master 
> layerbranch is there it is protected from deletion even if upstream 
> master goes away, you just get a warning during parsing.)
> 
> I can understand why people don't want to have a master branch if they 
> aren't using it; that most layers have it was an assumption I made in 
> the earlier design. It's fixable but will take a bit of work to ensure 
> the correct behaviour. (This assumption is also reflected in the 
> submission process - by default a master layerbranch is created, but 
> for layers without a master branch as the approver you then have to go 
> in and switch the master branch to whatever the "main" branch is - I 
> just did that for this layer.)

Ah ok. I have a pet hate of layers with a master branch that doesn't actually work with master of oe-core and other layers. I'd rather see a repository with no master branch!

In this case we're building with meta-ti & meta-arago which only support every other release. I know they also have a master branch but it's always been broken when I've tried to use it in the past. I may see if I can give it another try.

-- 
Paul Barker
