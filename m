Return-Path: <allen.curtis@curtisembedded.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6ACCAE00F6F; Thu, 24 Sep 2015 16:33:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [67.222.33.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 399 seconds by postgrey-1.32 at yocto-www;
	Thu, 24 Sep 2015 16:33:31 PDT
Received: from gproxy8-pub.mail.unifiedlayer.com
	(gproxy8-pub.mail.unifiedlayer.com [67.222.33.93])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id F34ABE00D4E
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 16:33:31 -0700 (PDT)
Received: (qmail 19331 invoked by uid 0); 24 Sep 2015 23:26:50 -0000
Received: from unknown (HELO CMOut01) (10.0.90.82)
	by gproxy8.mail.unifiedlayer.com with SMTP; 24 Sep 2015 23:26:50 -0000
Received: from box410.bluehost.com ([69.89.31.210]) by CMOut01 with 
	id MBSj1r0024Y0hd901BSm3l; Thu, 24 Sep 2015 17:26:49 -0600
X-Authority-Analysis: v=2.1 cv=EbVbHpWC c=1 sm=1 tr=0
	a=ETof7DMrXRHAC+dJixH5gQ==:117 a=ETof7DMrXRHAC+dJixH5gQ==:17
	a=cNaOj0WVAAAA:8
	a=f5113yIGAAAA:8 a=3_4UIzzJAAAA:8 a=kj9zAlcOel0A:10 a=mHfT8ucao3sA:10
	a=o0XNLtqhUCMA:10 a=ff-B7xzCdYMA:10 a=OzMwxpkeXOBbRpthfjsA:9
	a=CjuIK1q_8ugA:10 a=pBEZvZCEs6YA:10
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=curtisembedded.com; s=default; 
	h=Mime-Version:To:Date:Message-Id:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=3I7LnxBhdkc9gMku8WJAAJcecNWcvCdCavO1VrzcQKc=; 
	b=TtPjjolikvas+5pzW0TuK75ODZK8JLE2CPt92dpT5F0mHO6c4Q95fKtn295o1kYd5wdXl/f4Xfy+7TcsTRnB7N93zJRDiht4ChtdFVdoAdo1RPBbgj/cej+2+QJMcv4j;
Received: from [68.225.237.157] (port=55085 helo=[192.168.0.6])
	by box410.bluehost.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.84) (envelope-from <allen.curtis@curtisembedded.com>)
	id 1ZfFuV-0006LS-Ks
	for yocto@yoctoproject.org; Thu, 24 Sep 2015 17:26:43 -0600
From: Allen Curtis <allen.curtis@curtisembedded.com>
Message-Id: <C1A04CEA-EE1B-49E0-B675-4C319BA62244@curtisembedded.com>
Date: Thu, 24 Sep 2015 16:26:40 -0700
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 6.6 \(1510\))
X-Mailer: Apple Mail (2.1510)
X-Identified-User: {2323:box410.bluehost.com:actwoent:curtisembedded.com}
	{sentby:smtp auth 68.225.237.157 authed with
	allen.curtis@curtisembedded.com}
Subject: bbappend a "required" bb file
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
X-List-Received-Date: Thu, 24 Sep 2015 23:33:33 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hello,

I am working with a BSP that has multiple image recipes.

foo-hwbringup-image.bb
foo-qt5demo-image.bb

foo-qt5demo-image.bb contains "require foo-hwbringup-image.bb"

However if I create foo-hwbringup-image.bbappend, it gets ignored.

What are the rules with appending included recipes?

TIA



