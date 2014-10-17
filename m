Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 709ABE007DC; Fri, 17 Oct 2014 13:57:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from a180.4uh.net (a180.4uh.net [89.248.60.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8779FE00796
	for <yocto@yoctoproject.org>; Fri, 17 Oct 2014 13:57:11 -0700 (PDT)
Received: from durham.keylevel.com ([88.97.63.243]:21927
	helo=macbook-pro.durham.keylevel.com)
	by a180.4uh.net with esmtpsa (TLSv1:AES128-SHA:128) (Exim 4.82)
	(envelope-from <opensource@keylevel.com>) id 1XfEaA-003eYV-2p
	for yocto@yoctoproject.org; Fri, 17 Oct 2014 21:57:08 +0100
From: Chris Tapp <opensource@keylevel.com>
Message-Id: <D8F05E17-2E19-41DC-ADDD-EB608B708A69@keylevel.com>
Date: Fri, 17 Oct 2014 21:57:08 +0100
To: Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
X-Mailer: Apple Mail (2.1878.6)
X-OutGoing-Spam-Status: No, score=-3.5
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - a180.4uh.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: a180.4uh.net: authenticated_id:
	chris.tapp@keylevel.com
Subject: DEFAULT_PREFERENCE not working as expected
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
X-List-Received-Date: Fri, 17 Oct 2014 20:57:14 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I've got a layer that includes a recipe for libsoup at version 2.40.3 =
which sets DEFAULT_PREFERENCE =3D "-1".

However, this version gets used when I build rather than the 2.38.? =
version in poky/meta (under danny). Why is this?

--

Chris Tapp
opensource@keylevel.com
www.keylevel.com

----
You can tell you're getting older when your car insurance gets real =
cheap!


