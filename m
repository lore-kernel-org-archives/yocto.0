Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
 by mx.groups.io with SMTP id smtpd.web08.4137.1604757227666123810
 for <yocto@lists.yoctoproject.org>;
 Sat, 07 Nov 2020 05:53:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm1 header.b=X/x8th+Q;
 spf=pass (domain: fastmail.fm, ip: 64.147.123.20, mailfrom: manwag@fastmail.fm)
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
	by mailout.west.internal (Postfix) with ESMTP id A1316EAA
	for <yocto@lists.yoctoproject.org>; Sat,  7 Nov 2020 08:53:46 -0500 (EST)
Received: from imap9 ([10.202.2.59])
  by compute3.internal (MEProxy); Sat, 07 Nov 2020 08:53:46 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:date:from:to:subject:content-type; s=
	fm1; bh=uaSQf7X4r2GzUauTnLYC2jqQvcGj8C5ADSENLZ8V0c4=; b=X/x8th+Q
	Vh90O1qkfKOA/AbthP0oThptCsHaUL5DuVHyzLTmea60QBT/4Kp9Zrty64FzvMJI
	qYM86WnZUe7dAlosTBXy8AFrZvwcWo1sJRZyX9Ho4i6JoJM5onblh0X8O2BKeYZ/
	Lzx3NNou6eo3Ulo/uWme7Ah8aXhvedGVct7CgTT5vp+lXo840kAn3QcqFlv0Z/W/
	b0Er+zXS1NYiRDGoICwfjvT6jbgTFBHiQWjbiv3OfVCHqewEqXqpxJF53eYRh9RJ
	wfq9XKwfyYV2DGsVzFl5B/H1GpllBJBetxdzYA55ky5BUq7c77+xyKsh2rU8ZVxb
	TDVOVczKIQhT2w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; bh=uaSQf7X4r2GzUauTnLYC2jqQvcGj8
	C5ADSENLZ8V0c4=; b=ImLSzgECe4dmPjsgS76fBmZn0RvXUuY/bB7Koq0B+Elea
	V9jCIaDSCB1Kc7l0ykYJ2wFdzdld5PSSswbnErMQbNa7qh1Q4PVXIWhRFSUSk1pv
	JELgjXIiLeQH3BcqnMYyzCOxsQvl1RXt0hQaf44XoKOMBI+XpPftnXyOY6yjRJqA
	lLOLj7jtbWIuOVg/qYtiowwvoeLDfqVHCtuWZvkYS3VXNUTQHgzphRYRoQ6baUwM
	rYPeS/larok9sWboynaeTrdGsAG3HmazqaDTs9x0XKsLEjTpyXoZWCNHApt9dBNx
	VuRkIdgsPaV9uoxz214o0TJYSMGjqXWQaLyLT5aJQ==
X-ME-Sender: <xms:6qamX0x5ow9r4tmP9LKSuBFMH_ylSYXdVFXOyd2KZw62H4xyD3wIpg>
    <xme:6qamX4QJm4lLiLbSEQFvPytE7AYUNZT5bl4FYr4znVNK4gO2VvhaYdx8ULbVD8qjB
    0aBKpVEBNoUkSD3>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedujedrudduuddgheelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfffhffvufgtsehttdertd
    erredtnecuhfhrohhmpedfofgrnhhuvghlucghrghgvghsrhgvihhthhgvrhdfuceoofgr
    nhghrghgsefhrghsthforghilhdrhffoqeenucggtffrrghtthgvrhhnpefhtefhleehje
    efjeefudeugeetieefffffheehiedugfehleejhffhtddtleefudenucffohhmrghinhep
    hihotghtohhprhhojhgvtghtrdhorhhgnecuvehluhhsthgvrhfuihiivgeptdenucfrrg
    hrrghmpehmrghilhhfrhhomhepofgrnhghrghgsefhrghsthforghilhdrhffo
X-ME-Proxy: <xmx:6qamX2X9nxbTwGrDYlttuhdrxNLIqZvuL4ookrhFyjfXHeQEXdc5-Q>
    <xmx:6qamXygOx9MsSciiWRxI553hos73u6sqVYepkcmVMHJz11BwbOOk5Q>
    <xmx:6qamX2C7nPtPbZfO50UdRVbZ53sdlwtLLrqGaCHAlBG8VfNiHDEaGg>
    <xmx:6qamX5NBtdQGTsstBBqlgwa2HQ5CY4ZfjFef8ASLlNerqRdaFlf3BA>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id F10251C026F; Sat,  7 Nov 2020 08:53:45 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.3.0-570-gba0a262-fm-20201106.001-gba0a2623
Mime-Version: 1.0
Message-Id: <030738f3-1403-4071-8fdd-de7731cca65a@www.fastmail.com>
Date: Sat, 07 Nov 2020 14:53:25 +0100
From: ManWag@FastMail.FM
To: yocto@lists.yoctoproject.org
Subject: Syntax of multiconfig
Content-Type: text/plain

Hello all,

I'm trying the become acquainted with the multiconfig feature. I read the relevant chapters in the BitBake User Manual, but some questions I have suggest I did not yet get the whole picture.


1.)
In [1] the following examples are given:

`$ bitbake mc::target mc:target1:target mc:target2:target`

What does the `mc::target` stand for? If I omit the multiconfigname, is the target getting built for all configured multibuildnames?

[1] https://www.yoctoproject.org/docs/latest/bitbake-user-manual/bitbake-user-manual.html#executing-a-multiple-configuration-build


2.)
In [2], the following example is given:

`task_or_package[mcdepends] = "mc:from_multiconfig:to_multiconfig:recipe_name:task_on_which_to_depend"`
`image_task[mcdepends] = "mc:target1:target2:image2:rootfs_task"`

I do not understand why the `from_multiconfig` needs to be given at all. Isn't this redundant information? Per my understanding, when I'm having bitbake bake an image `my-image`, and this image includes a recipe which has such a multiconfig dependency, `from_multiconfig` must be `my-image` as well. So why the need for `from_multiconfig` at all?

I think it wouldn't just add any value, but would actively prevent this recipe/package to be included in images getting built in other configurations.

So I probably my understanding here is wrong.

[2] https://www.yoctoproject.org/docs/latest/bitbake-user-manual/bitbake-user-manual.html#bb-enabling-multiple-configuration-build-dependencies


3.)
The links above are using `target_1` and `target_2` for as configuration names. I think this is misleading, as target already refers to the recipe/package or image bitbake is building. How can I contribute to the BitBake documentation?

I checked [3] but couldn't see anything referencing the documentation.

[3] https://wiki.yoctoproject.org/wiki/Newcomers#How_to_Contribute


Best regards
Manuel
