Return-Path: <allen.curtis@curtisembedded.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7B857E00AAA; Wed, 14 Oct 2015 09:32:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [69.89.20.122 listed in list.dnswl.org]
Received: from gproxy9-pub.mail.unifiedlayer.com
	(gproxy9-pub.mail.unifiedlayer.com [69.89.20.122])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 36418E009B8
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 09:32:25 -0700 (PDT)
Received: (qmail 8737 invoked by uid 0); 14 Oct 2015 16:32:24 -0000
Received: from unknown (HELO CMOut01) (10.0.90.82)
	by gproxy9.mail.unifiedlayer.com with SMTP; 14 Oct 2015 16:32:24 -0000
Received: from box410.bluehost.com ([69.89.31.210]) by CMOut01 with 
	id V4YJ1r01J4Y0hd9014YMv8; Wed, 14 Oct 2015 10:32:23 -0600
X-Authority-Analysis: v=2.1 cv=VOBOwb/X c=1 sm=1 tr=0
	a=ETof7DMrXRHAC+dJixH5gQ==:117 a=ETof7DMrXRHAC+dJixH5gQ==:17
	a=cNaOj0WVAAAA:8
	a=f5113yIGAAAA:8 a=3_4UIzzJAAAA:8 a=kj9zAlcOel0A:10 a=mHfT8ucao3sA:10
	a=o0XNLtqhUCMA:10 a=5lJygRwiOn0A:10 a=kWiFOrczT70UZUEUCXYA:9
	a=CjuIK1q_8ugA:10 a=u2V3AP73M9cA:10
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=curtisembedded.com; s=default; 
	h=Mime-Version:To:Date:Message-Id:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=mfzlzlVfBgt4RMuzv18ds72kGl2MyrCKQhxo7/2shRo=; 
	b=zKKvKFn8ifu4BFhZKxpX7WwmGLoHbfYIxjcrUJ98upU8mTFIyBySOgCYjBtg3WEE2e6URleXNvwRzM8aKoLi3E5PZ5hB7go4BPk9FBOOIDT3L19zDroWBpRFE48ODWMk;
Received: from [68.225.237.157] (port=56385 helo=[192.168.0.3])
	by box410.bluehost.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.84) (envelope-from <allen.curtis@curtisembedded.com>)
	id 1ZmOyR-0003fI-Pm
	for yocto@yoctoproject.org; Wed, 14 Oct 2015 10:32:19 -0600
From: Allen Curtis <allen.curtis@curtisembedded.com>
Message-Id: <24D62272-F484-4CBA-9113-6D83AD754818@curtisembedded.com>
Date: Wed, 14 Oct 2015 09:32:15 -0700
To: yocto <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 6.6 \(1510\))
X-Mailer: Apple Mail (2.1510)
X-Identified-User: {2323:box410.bluehost.com:actwoent:curtisembedded.com}
	{sentby:smtp auth 68.225.237.157 authed with
	allen.curtis@curtisembedded.com}
Subject: mtd-utils floating point exception
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
X-List-Received-Date: Wed, 14 Oct 2015 16:32:30 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hello,

When I execute any of the mtd utilities from a Yocto AM335x build, they =
terminate with a floating point exception.

Is this a known bug?

Is there a patch?

TIA=

