Return-Path: <allen.curtis@curtisembedded.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CDCDE00D1E; Wed,  7 Oct 2015 11:56:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [69.89.20.226 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 398 seconds by postgrey-1.32 at yocto-www;
	Wed, 07 Oct 2015 11:56:14 PDT
Received: from gproxy10-pub.mail.unifiedlayer.com
	(gproxy10-pub.mail.unifiedlayer.com [69.89.20.226])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 889A3E006D1
	for <yocto@yoctoproject.org>; Wed,  7 Oct 2015 11:56:14 -0700 (PDT)
Received: (qmail 12136 invoked by uid 0); 7 Oct 2015 18:49:34 -0000
Received: from unknown (HELO cmgw4) (10.0.90.85)
	by gproxy10.mail.unifiedlayer.com with SMTP; 7 Oct 2015 18:49:34 -0000
Received: from box410.bluehost.com ([69.89.31.210]) by cmgw4 with 
	id SJpS1r00d4Y0hd901JpVbZ; Wed, 07 Oct 2015 12:49:34 -0600
X-Authority-Analysis: v=2.1 cv=IekUBwaa c=1 sm=1 tr=0
	a=ETof7DMrXRHAC+dJixH5gQ==:117 a=ETof7DMrXRHAC+dJixH5gQ==:17
	a=cNaOj0WVAAAA:8
	a=f5113yIGAAAA:8 a=3_4UIzzJAAAA:8 a=kj9zAlcOel0A:10 a=mHfT8ucao3sA:10
	a=o0XNLtqhUCMA:10 a=5lJygRwiOn0A:10 a=d1n8-NlPFJtwUgwQqW8A:9
	a=CjuIK1q_8ugA:10
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=curtisembedded.com; s=default; 
	h=Mime-Version:To:Date:Message-Id:Subject:Content-Transfer-Encoding:Content-Type:From;
	bh=NpWOTMmEjTQzazqHKT+yooNXUsJ8zDqUI5I7JQnzHqU=; 
	b=kFNzStfErNA4NRzwrtJW2FJB/MqF2XVh4i8M1nWMq8zEy6sZavRfg0zkvg/uAI8onQs2OSHSW6N5LHvvz2KQpdDJpCXtslJ3dvctndQnemS6P3AmaR/1etcFgdI6JiNm;
Received: from [68.225.237.157] (port=53475 helo=[192.168.0.3])
	by box410.bluehost.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.84) (envelope-from <allen.curtis@curtisembedded.com>)
	id 1ZjtmI-0007Rd-9J
	for yocto@yoctoproject.org; Wed, 07 Oct 2015 12:49:26 -0600
From: Allen Curtis <allen.curtis@curtisembedded.com>
Message-Id: <C9092D70-8048-4B9A-A47E-0D31EABC9E66@curtisembedded.com>
Date: Wed, 7 Oct 2015 11:49:24 -0700
To: yocto <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 6.6 \(1510\))
X-Mailer: Apple Mail (2.1510)
X-Identified-User: {2323:box410.bluehost.com:actwoent:curtisembedded.com}
	{sentby:smtp auth 68.225.237.157 authed with
	allen.curtis@curtisembedded.com}
Subject: svn fetch problem?
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
X-List-Received-Date: Wed, 07 Oct 2015 18:56:15 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hello,

I am fetching my source code from SVN in my recipe file. The build works =
fine. However if I open a "devshell", the .svn directory is missing so I =
can not checkin any modifications. I looked at svn.py and it looks like =
it should be doing a checkout operation.

How do I fix this?


