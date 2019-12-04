Received: from wout4-smtp.messagingengine.com (wout4-smtp.messagingengine.com [64.147.123.20])
 by mx.groups.io with SMTP id smtpd.web09.1799.1575453608778438714
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Dec 2019 02:00:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@betafive.co.uk header.s=fm3 header.b=mEQtS43U;
 spf=pass (domain: betafive.co.uk, ip: 64.147.123.20, mailfrom: paul@betafive.co.uk)
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id E92D4A83
	for <yocto@lists.yoctoproject.org>; Wed,  4 Dec 2019 05:00:07 -0500 (EST)
Received: from imap2 ([10.202.2.52])
  by compute1.internal (MEProxy); Wed, 04 Dec 2019 05:00:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=betafive.co.uk;
	 h=mime-version:message-id:date:from:to:subject:content-type; s=
	fm3; bh=/+qZamug4C8lEwfwILjdNKld4ywZqQs/MTttNfmyVSM=; b=mEQtS43U
	C5awJPxZfbYTP+4ay3AYDkHWG5hgxP0nSgBG7IHXfvf0ZBRZYTWIBKSk9YvBA3z+
	6onpdQwDSAGAF0PU1E0togFDoMIFndHMYe7tT8iMgepn6oVwN1WxLV37HPxxkMw2
	7GYmgXV5Dl2p7psqAohZrl8ooJPRAHFkiNO0zjp1IlnpFhlr7oBD6SLrtj6DUMGF
	Lis2z1VCe61GyBJVm4y6hJBI1ZLwT+VEmlw7rw9VV264jxf/tzNqfcOgh1+v5ewW
	kwccQguMbiQYshzsCCuR+FUk/2xkui9T0+S0KqyQ3TcTj72ZR9wNKx/4YnL70Qto
	KgXCddoEYLBywA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=content-type:date:from:message-id
	:mime-version:subject:to:x-me-proxy:x-me-proxy:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; bh=/+qZamug4C8lEwfwILjdNKld4ywZq
	Qs/MTttNfmyVSM=; b=siN9xCDXK0aG5ksHkMxNgBcZLdJkD+MWZWk6obVV8dPL1
	Tg0bIdn9QOkxb1vAxukMY0j9VSMXvPufmDK5KVxIi41HUlRoh2sj3MPNxjv/i7nD
	mqCaHB6ILbt3fyX7K/dVdlwb37y4cSy8GE0kSlM0eTYGNWbMoI29bKOYQSXyDVx2
	iFPUlqXSnMzNdc7i0P836hii6Z7SeDDmiol6eYmDj4YiF9I966AvtFzp00e5HLOT
	PVuG9980ybaMP+T5eQC+3fh66kmHSRsUThQkCncd63cofZdhnOMFokPrRcUCsqTQ
	n1/S56VpEKEgGhJgse7JmOBQzXanuLL7tiSP7LbPg==
X-ME-Sender: <xms:p4PnXabYRyvx0WMHARV00RDALH-C7So2pcUMW1WMXzBIbG5tQpyxAQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudejledgtdelucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpefofgggkfffhffvufgtsehttdertd
    erredtnecuhfhrohhmpedfrfgruhhluceurghrkhgvrhdfuceophgruhhlsegsvghtrghf
    ihhvvgdrtghordhukheqnecuffhomhgrihhnpehgihhthhhusgdrtghomhenucfrrghrrg
    hmpehmrghilhhfrhhomhepphgruhhlsegsvghtrghfihhvvgdrtghordhukhenucevlhhu
    shhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:p4PnXShXo8HuyJ7w77kRLkjR8-XchojykdDTm5yKfbIQMU9AJjlanA>
    <xmx:p4PnXX7ji7hd-4v1wYOusGBHQCAmQ_5Wtw6xbui9rtI7BiUBxlfoSQ>
    <xmx:p4PnXSpZZ3Fz-UfMhO5IrMgfTF_u8Zt8UdFyu-MG2d9hscuxCMtIsg>
    <xmx:p4PnXZw1wByMjEHebFsq8uBaVb2gSn9gpTCJMdO5b18rSWuxGNbirQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
	id 2734DE00A2; Wed,  4 Dec 2019 05:00:07 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-612-g13027cc-fmstable-20191203v1
Mime-Version: 1.0
Message-Id: <04e3ffe3-4733-4010-ac76-29b72ae20c89@www.fastmail.com>
Date: Wed, 04 Dec 2019 09:59:46 +0000
From: "Paul Barker" <paul@betafive.co.uk>
To: yocto@lists.yoctoproject.org
Subject: Missing layer in the layer index
Content-Type: text/plain

Hi,

I'd like to make sure meta-sancloud (https://github.com/SanCloudLtd/meta-sancloud) is listed in the layer index. I can't see it listed for either of the branches we support (thud & rocko). However, when I try to add the layer I get the error message "Layer with this Layer name already exists."

Perhaps this was already added with an old URL. Is there any way to get this fixed up?

Thanks,

-- 
Paul Barker
