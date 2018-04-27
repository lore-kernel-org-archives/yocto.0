Return-Path: <bluehills7@comcast.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBCE0E008BF; Fri, 27 Apr 2018 16:26:09 -0700 (PDT)
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
	*      [69.252.207.33 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from resqmta-ch2-01v.sys.comcast.net
	(resqmta-ch2-01v.sys.comcast.net [69.252.207.33])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9198CE00823
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 16:26:07 -0700 (PDT)
Received: from resomta-ch2-19v.sys.comcast.net ([69.252.207.115])
	by resqmta-ch2-01v.sys.comcast.net with ESMTP
	id CBkUfFSlJySmGCCkhfpcxO; Fri, 27 Apr 2018 23:26:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
	s=q20161114; t=1524871567;
	bh=oR+fwVty3GSb9mzf4PYSwIhFij/iGwWlnYhrfzt9TX4=;
	h=Received:Received:From:Content-Type:Mime-Version:Subject:
	Message-Id:Date:To;
	b=gE8YPMD+H65vZXpOYntNn3eubiHFohKhT9ZPPvNPpNeNd0ZxLBBw9wXyXH06rtgWB
	gaxbu+be9brKjvMtgNUYwBAJBRkQmsyY5QxjJ1M1rioO8Tfu4AM4wnklswEEwd4SPQ
	dWsk7KUdUYXdN40cvawuFAr71Z5rHvh3IGQ9Cxk78EXWqhJ+gXwgNOs4QtyfzBC2UP
	zj+VVCH8xjc/ci4W7CLEUnMdzywEJWzSCQrIJFY2YiADVj6wLVkOONxROlE7azOqe9
	o9nzlyDX45ScnAHl6XSV8OTQYQgesYkGeJPtPaC5bh1G++zHaPunOZTL6CoQ5YLifM
	KNoNO0AcANKyw==
Received: from [IPv6:2601:18f:880:9aeb:d5d3:c56d:56b7:5bb5]
	([IPv6:2601:18f:880:9aeb:d5d3:c56d:56b7:5bb5])
	by resomta-ch2-19v.sys.comcast.net with ESMTPSA
	id CCkff5sv53rorCCkgfIiwv; Fri, 27 Apr 2018 23:26:07 +0000
From: Russell Peterson <bluehills7@comcast.net>
Mime-Version: 1.0 (Mac OS X Mail 11.2 \(3445.5.20\))
Message-Id: <7ED8F308-F150-4C07-9FA9-325E45D1388B@comcast.net>
Date: Fri, 27 Apr 2018 19:26:04 -0400
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.3445.5.20)
X-CMAE-Envelope: MS4wfDoqIKPvFCuB+8dHEnzfv1yJwfSW+uhTgR+0Yn9OysCK36RZsuYETmVKWdHK+ubMwug+g13A5QWSclMg+oPlx+9Kec5sI2MVPu1N91g9XpNcpLTkYXwn
	5IdiJtT2AghXg3jFzFMIV+5LbtTTVuXJ8y+V6WFHuZa0/mPmoAv/C2jidtqpMTl2y/OY91ZX9cBuC4WVnTxoy08kWoQeNxjDxA/zlfDndcbOTNPSrZzElKvW
	C3rTbrdMHIrnAAp+IK2pKAXUIf5qiaSzUP0Nl/VxEVen6fPwY+/Dk2w7Iz2/bBa0
Subject: python & xml2
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
X-List-Received-Date: Fri, 27 Apr 2018 23:26:09 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

I am trying to install libxml2 for python2 in my image recipe.  Seems =
like it is being installed in the python3 site packages directory =
instead of the python2 site packages directory.  While looking into this =
I have become very confused.  Is there some documentation on this?  Do I =
need to set some kind of variable in the xml2 recipe??

Russell


