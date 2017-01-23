Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9168E00839; Mon, 23 Jan 2017 05:27:08 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.42 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.42 listed in dnsbl.sorbs.net]
Received: from mail-it0-f42.google.com (mail-it0-f42.google.com
	[209.85.214.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F2D5E0082E
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 05:27:06 -0800 (PST)
Received: by mail-it0-f42.google.com with SMTP id r185so65468846ita.0
	for <yocto@yoctoproject.org>; Mon, 23 Jan 2017 05:27:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=608gPOGNYaIw6EzSJgfdEgeTEgJzoLLHA7iOaoDsT7E=;
	b=bHWu8TINBXnEUZA2Kx9J+es4H2HrjAtvTS8nXyr0SyUPO24NmJUvzmI1G+Gv0uSpji
	QTgxseZet0v12kNY8S8B+nIfXqrV2t9x+uZQPOWqPaoTOeCpmjKCJcHwO6qH+Ak2rz9N
	5zOJSGLNyIaqcHqMnL4AvucTSGyznxvNQZ+OYmJujDgx3vlbkJG3i633NZX2U8dPYodR
	yHhXcuPWiAF7qwJ+28TLk28gckPwkrEJkS2PPET0FCI/z8zPUJYyGfPHu52CjLwQe2x9
	z5NHq3RuiQsHZnETppvYo20uV9gfVIe8wh+p6A8HKVG78GKjIJi52LNys/dYkdVfO7i8
	q+jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=608gPOGNYaIw6EzSJgfdEgeTEgJzoLLHA7iOaoDsT7E=;
	b=HjQ0BoojHigtksQdqD4gS4GZvUWNkMHlJ/FFjN83rOXMuTxgkiPnoQlS/qPJcBlQjo
	NdUuA0kKbr4LQPUsX393UAYxOB0YFuQFVKggw0Bjp0U9r4FXbE0oAXHTBxmq9/yz4GJh
	hgLEQ5FMvtiFWEur8ogPSjGMZ+6ZS8xODWkqALp2TripinhjdnsCr1jGp+b44hGg2x4A
	Nq20yNsraoTL9sRZKP7StoZ/zaTEOp1ARNi/TxMNu4D30ro0sRGqHkgejs3qW8OQAiPc
	RrHQ4fmJz96r1wKSg6Oc02ye6TL5nMuw2WgXeFMk/9ei6SzgoIpsPvBDH1ScEzJSshwC
	zXoA==
X-Gm-Message-State: AIkVDXLSiFBjRcUlKtixmpBuIxbo1VmohSmU6WEXWyzbR4reW+YBHlB/Mp1JMUXbaOqi2hWS
X-Received: by 10.36.2.1 with SMTP id 1mr14205486itu.10.1485178025936;
	Mon, 23 Jan 2017 05:27:05 -0800 (PST)
Received: from pohly-mobl1 (p5DE8FC12.dip0.t-ipconnect.de. [93.232.252.18])
	by smtp.gmail.com with ESMTPSA id
	y42sm9526544ioi.21.2017.01.23.05.27.01
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 23 Jan 2017 05:27:02 -0800 (PST)
Message-ID: <1485178020.20333.33.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>
Date: Mon, 23 Jan 2017 14:27:00 +0100
In-Reply-To: <1484671769.3257.8.camel@andred.net>
References: <20170117155910.23792-1-git@andred.net>
	<1484671376.19478.75.camel@intel.com>
	<1484671769.3257.8.camel@andred.net>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-swupd][PATCH] swupd-image.bbclass: do_swupd_update() depends on time-native
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
X-List-Received-Date: Mon, 23 Jan 2017 13:27:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2017-01-17 at 16:49 +0000, André Draszik wrote:
> I have no preference either way.

Let's remove the hard dependency. I've posted a "swupd-image.bbclass:
avoid depending on time command" patch which does that. Are you okay
with that?

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




