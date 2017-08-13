Return-Path: <bluehills7@comcast.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4DA89E00C3A; Sun, 13 Aug 2017 03:58:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bluehills7[at]comcast.net)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [69.252.207.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from resqmta-ch2-11v.sys.comcast.net
	(resqmta-ch2-11v.sys.comcast.net [69.252.207.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD890E00C0A
	for <yocto@yoctoproject.org>; Sun, 13 Aug 2017 03:58:34 -0700 (PDT)
Received: from resomta-ch2-19v.sys.comcast.net ([69.252.207.115])
	by resqmta-ch2-11v.sys.comcast.net with ESMTP
	id gqbJdhScG4W2QgqbJdiaLh; Sun, 13 Aug 2017 10:58:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1502621913;
	bh=SRru3BfMrXJlosUpaWJAQR725xZq7ZupgwT+d2u6y04=;
	h=Received:Received:From:Content-Type:Mime-Version:Subject:
	Message-Id:Date:To;
	b=Nc27J92iWFFDOm5CdVqortJkWkc4FhtZCpLvVMvZpd0S6FqU1P8x0/uQznDPrLews
	XF3EzoTbFQ/oSHizaSBYu6AAj5+RelQ9TvXmt92xTnL/5ngYmjMV0zM9bMXrq+1KzD
	AM6fNVM0P81XRDzrHJNfXTYlvJsGiI7KRfakoW+58Fli946aN0dTatKGUYLFHvcvDM
	tocwtcUwxIyIPNFh609XF9snzN9+fw29dmwYdSqoFfqLWR7VDTMC5mGZrAHUxTalax
	hcDvMqWeN5S0MFKBKXQqekSfsiUV6Y+v/ZMUanERcP1KS8G9Jxq3d4jt7t5aDCSDpQ
	Q7Vx4yci1J1sQ==
Received: from [IPv6:2601:18f:800:acc1:3c93:9071:3d1c:b036]
	([IPv6:2601:18f:800:acc1:3c93:9071:3d1c:b036])
	by resomta-ch2-19v.sys.comcast.net with SMTP
	id gqbJdv2J8cYpvgqbJdirOZ; Sun, 13 Aug 2017 10:58:33 +0000
From: Russell Peterson <bluehills7@comcast.net>
Mime-Version: 1.0 (Mac OS X Mail 10.3 \(3273\))
Message-Id: <CC06751E-FB4C-46CE-8127-6344F8B00D96@comcast.net>
Date: Sun, 13 Aug 2017 06:58:32 -0400
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3273)
X-CMAE-Envelope: MS4wfAMCWf7gWKELU9A1q4CV0Sm2dXeK8ZHRxS04vRjbLY5l8hh+fT8HDlcmZcKx021dSN4iQt88RGFbkFvST5NdaxteGwDds0UWkdkUoNw8D5NMZ5kedAWz
	y0n0/+ds88bn6bXxwsJggszQKH7NMDL7qRpx+iE0I0vyU1J/bhOHpMJJOIe23vjuofyzbm2oDBbHDxOm1YAwFMGGOjgCmrXXFRg=
Subject: release management
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
X-List-Received-Date: Sun, 13 Aug 2017 10:58:35 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello.

As I learn more about yocto and more importantly gain practical =
experience with it I have started to think about my release structure.  =
Is there a =E2=80=9Cbest practices=E2=80=9D document or something like =
that that speaks to this?

For example, how does everyone deal with =E2=80=9Cexternal=E2=80=9D meta =
layer dependencies?  My software uses poky and meta-openembedded, of =
course.  It also relies on some recipes in meta-linaro and =
meta-virtualization.  I suspect there will be more as time goes by.  I =
have tweaked my layer priorities as well as used BBMASK to avoid =
unwanted bbappend files etc=E2=80=A6 works but seems slightly clunky=E2=80=
=A6 still better than duplicating recipes in my meta layer I think.

Also=E2=80=A6 I quickly came to the conclusion that =E2=80=9Cthou shall =
not modify poky or meta-openembedded=E2=80=9D.  That is, ALWAYS use =
bbappend files instead of modifying external layers.  If I think that =
poky or some other layer has a recipe bug or want to change something in =
poky, for example, I plan to upstream a fix to the project and when that =
becomes available I rebase my poky and remove the bbappend from my meta =
layer. One thing about modifying poky and not using bbappend files is =
that I would then need to ship patches for poky instead of just =
directing users to to use this branch and this commit for release x.y.z.

Comments and suggestions welcome.

Regards,

Russell




