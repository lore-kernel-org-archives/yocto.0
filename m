Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com [66.111.4.26])
 by mx.groups.io with SMTP id smtpd.web09.10608.1629031189371461701
 for <yocto@lists.yoctoproject.org>;
 Sun, 15 Aug 2021 05:39:49 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fastmail.fm header.s=fm3 header.b=qA7EFojU;
 spf=pass (domain: fastmail.fm, ip: 66.111.4.26, mailfrom: manwag@fastmail.fm)
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
	by mailout.nyi.internal (Postfix) with ESMTP id B76B05C00E1;
	Sun, 15 Aug 2021 08:39:48 -0400 (EDT)
Received: from imap41 ([10.202.2.91])
  by compute4.internal (MEProxy); Sun, 15 Aug 2021 08:39:48 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fastmail.fm; h=
	mime-version:message-id:in-reply-to:references:date:from:to
	:subject:content-type; s=fm3; bh=dIYn4tZl30QnGedOMBT/4uUg0TgfbW2
	qS4cy/L/ndMM=; b=qA7EFojUU8TzGXWAw4/dYGFKXj16HEB53VZHg0L6rZ4RvsN
	xKZhnEM/Ns3dze/uOrPKs/G+romJ6ZNns8nLP+/1SfHjjTnFV0JtoxE5rlVR9liZ
	/JMvR0fWKKyHgIHBankbo5u6O2zI40jN/ZllO29uZKq1uDyryl4CUOy1/yFy4soO
	Ya031OM1PHE6KXlwhU1ySa1xsWaxK17SXJ8w5nGY2Pdbq9cvSpnANctpPN5Cwvv/
	rrNg4wnma1sH2Da9PNtd2xwTLonVnmF+EPMVqNqvyhK/eNy3CJeqWjJoAS+kAq5d
	FOjOPwwTkAf6jcQNmi80lFZ8QcC6msD+xaE1yrA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=dIYn4t
	Zl30QnGedOMBT/4uUg0TgfbW2qS4cy/L/ndMM=; b=IvxtrTx2XlXOfXYpII5Ul4
	4BBmqZRnSTD6mQXomgqAICMH7tBiHrD1oasa+fo1KyEQrVHDQFNOIEswM6/fgAVh
	4+XOkLsvpLUn9xIm2gUfI2xy7oP+r4kfx5fZJiBJVfYIRUmFr9cqGcFzMGLT5mf8
	9GncumVBBlNJtA1k14VouL3vX1xFykYh9KJJI1EiEGwIoewKvu82w+kP/OXykAUU
	XFYHawG/SPfnvh2dw20XKW4nKX9aYMBD0hV4YB62VnSBpIE0xgxccA8KQBy8pz9s
	/Upnp4XP1miBqHREanVIV9fbJersjw6O2PR4nw0VEtAkTAn5ycY3repOwi1QhMHQ
	==
X-ME-Sender: <xms:FAsZYSF2ibwhIKReMxp2xnu_qBPSmZPt1hasesGU4akHoz0oPKr_Eg>
    <xme:FAsZYTUOC5MUt3os_VIl0mt-8wZply4PvGlEtwDdTKDiLPBIvDjKEbWXiDyK2bD6w
    xdEGDYrTu64SBDD>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrkeelgdehhecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepofgfggfkjghffffhvffutgesthdtre
    dtreerjeenucfhrhhomhepfdforghnuhgvlhcuhggrghgvshhrvghithhhvghrfdcuoefo
    rghnhggrgheshfgrshhtofgrihhlrdfhofeqnecuggftrfgrthhtvghrnhepgeelledtvd
    evledtgfevjeeiueelfedvhedvkeevtdehtdetgeehkeduheehfeelnecuffhomhgrihhn
    pehgihhtlhgrsgdrtghomhenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmh
    grihhlfhhrohhmpeforghnhggrgheshfgrshhtofgrihhlrdfhof
X-ME-Proxy: <xmx:FAsZYcICtZCE0qnHsOIO88Pee2HZdkUuhWHvohZfj0FXK4VAaseoig>
    <xmx:FAsZYcHkR0ntuGbv7r9RmfGjHxZ8VD9sUN02PThUiHYk90j0MA0mEQ>
    <xmx:FAsZYYWQUUcTt4099qOclHxWyqPs67iEmfddwM3D_SMsGVv82LA7Ig>
    <xmx:FAsZYbDyrDovw_uzG7UOT9N2QAfr8-HQMIptfOyjX1MSV7e_jtzeAw>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 80A783C0453; Sun, 15 Aug 2021 08:39:48 -0400 (EDT)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.5.0-alpha0-1082-gccb13bca62-fm-ubox-20210811.001-gccb13bca
Mime-Version: 1.0
Message-Id: <4ec3a09b-ced0-42f3-85a3-3f19acc8653c@www.fastmail.com>
In-Reply-To: <991b2d93-b92c-2c73-58c4-c8cec2ea17e1@gmail.com>
References: <d99fc23e-41bc-46ef-a61b-4e6d45fab47d@www.fastmail.com>
 <991b2d93-b92c-2c73-58c4-c8cec2ea17e1@gmail.com>
Date: Sun, 15 Aug 2021 14:39:26 +0200
From: "Manuel Wagesreither" <ManWag@FastMail.FM>
To: "Robert Berger" <robert.berger.yocto.user@gmail.com>,
 yocto@lists.yoctoproject.org
Subject: Re: [yocto] Cannot build yocto anymore after updating all layers to current dunfell branch tips
Content-Type: text/plain

Am Sa, 14. Aug 2021, um 12:14, schrieb Robert Berger:
> On 14/08/2021 00:28, Manuel Wagesreither wrote:
> > Hello all,
> > 
> > I updated the layers of my project to the current dunfell branch tips. See here: https://gitlab.com/manuel_wagesreither/bora-proj/-/commit/de631634d7556987d2551d0cedca8f67530bc78d
> > 
> > Since then, the build is failing with the following message:
> > ```
> > ERROR: ParseError at /home/manuel/bora-proj/meta-openembedded/meta-oe/conf/layer.conf:104: unparsed line: 'DEFAULT_TEST_SUITES:pn-meta-oe-ptest-image = " ${PTESTTESTSUITE}"'
> > ```
> 
> There was an OVERRIDE syntax change and this is what are seeing.
> Some layers, like meta-openembedded incorporated this change into their 
> master branch. So either you need to update all your layers as well, or 
> you need to use meta-openembedded with a branch/commit before the change.
> 
> Regards,
> 
> Robert
Alright, thanks for the info. Did they switch from the underline _ to a colon : as seperator? Guess underline was becoming ambigous.

Manuel
