Return-Path: <tang@jtang.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7AECCE0076F; Wed,  4 Mar 2015 18:43:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 308 seconds by postgrey-1.32 at yocto-www;
	Wed, 04 Mar 2015 18:43:21 PST
Received: from highcastle.jtang.org (mail.jtang.org [173.10.136.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EFE45E00718
	for <yocto@yoctoproject.org>; Wed,  4 Mar 2015 18:43:21 -0800 (PST)
Received: from [10.0.0.193] (unknown [10.0.0.193]) (Authenticated sender: tang)
	by highcastle.jtang.org (Postfix) with ESMTPSA id DB3E6BEEFC;
	Wed,  4 Mar 2015 21:38:12 -0500 (EST)
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
From: "J. Tang" <tang@jtang.org>
In-Reply-To: <54F779F8.8010709@dynamicdevices.co.uk>
Date: Wed, 4 Mar 2015 21:38:12 -0500
Message-Id: <C3B68278-FF0B-4733-8140-C783C57BEF6A@jtang.org>
References: <54F779F8.8010709@dynamicdevices.co.uk>
To: Alex J Lennon <ajlennon@dynamicdevices.co.uk>
X-Mailer: Apple Mail (2.1878.6)
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Resizing root flash partition/filesystem on first boot
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
X-List-Received-Date: Thu, 05 Mar 2015 02:43:26 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Mar 4, 2015, at 16:32 , Alex J Lennon <ajlennon@dynamicdevices.co.uk> =
wrote:

> I'd like to be able to build an SD card image, deploy to a system and
> have it automatically resize on first boot. I haven't seen =
functionality
> that would do this in Yocto. If there is a setting for this could
> anybody let me know where that is?

I wrote a startup script that does exactly this. If you are interested, =
I can publish the code + BitBake recipe.

--=20
Jason Tang  /  tang@jtang.org





