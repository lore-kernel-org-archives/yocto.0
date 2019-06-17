Return-Path: <star@gmx.li>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6122FE00CBD; Mon, 17 Jun 2019 05:03:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (star[at]gmx.li)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [212.227.15.15 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 98479E00931
	for <yocto@yoctoproject.org>; Mon, 17 Jun 2019 05:03:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=badeba3b8450; t=1560772981;
	bh=MYjFwPgCUICbcv/G7JMnxAsM91FyLJP+PBoF/ClZOSk=;
	h=X-UI-Sender-Class:From:To:Subject:Date;
	b=WSocaX9cfFtRkoHOQtnjp/i4UiYSS7ox7oEYtkjpWjHWMST7FbqFaohtcQ+/xWFjw
	9UqAQt2D68nIgeqM5F2Gqp8cz6QD9X5YnB+e3cl/qJakxTmsx1ulWxU+bS9dtAM63E
	/8CsvOA/Gysu/asTEffLH0gU86uoPtWPi6RKlI9o=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [62.225.157.196] ([62.225.157.196]) by web-mail.gmx.net
	(3c-app-gmx-bs08.server.lan [172.19.170.59]) (via HTTP);
	Mon, 17 Jun 2019 14:03:01 +0200
MIME-Version: 1.0
Message-ID: <trinity-1bbd10a3-ee46-4746-90c7-0b5a49a62f26-1560772981350@3c-app-gmx-bs08>
From: "Arno Steffens" <star@gmx.li>
To: "Yocto Project" <yocto@yoctoproject.org>
Date: Mon, 17 Jun 2019 14:03:01 +0200
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K1:4xlhVFWXCJnREioSVDg4XG1OjITjgCp6p2lD61vORX3ClGyec4Um8VH3UZ8t423JBxXac
	Y/19Q3VFyqcdlDIX5223Be0BtdVvd6lYuSBXY3zw/Uw0I3raXNs7amjFHPkzZsXqxLxqhVvAqb+x
	NyaxID+38WPSHELuMjhm7/MP/CfHzu1JXcx+ojiN+01s0TxGGPyQNqWcqyy31C41ztsQJZOKAut0
	Hm/Y4mbu8rJCXIoF2hV6D4IJtDFnX89acLlsJ1TwhnaxWyFAA14Cc8opQb2avD/n1s21fIt830dq
	6A=
X-UI-Out-Filterresults: notjunk:1;V03:K0:NdPFnkqS9cA=:GIrmLrf1F3af/llTP1DOUs
	UTF/4ftgeW6RzraT1QU/aTMzycvc6+uP0DKj2pg4BOrKN7P4SbfGgqjfm/h7cNk7iSQasjleP
	6wrYJ/IkdDkyz08Xltxwstl30y03B5XlVrPfcwoRQJmSDjzEw6bXo6CVjdNIWeuyU0UPaHWhT
	DR0VwTUuxJzbLQX3D3zaZQDrW6h5TQJK6o19ckX8W/ioLotzE4ucIZx2Z5zTTtq5itJyZZTqn
	KKH1WR1UlqmShxZEv1THq5uLau+67YsrxGG2fOKEeQjKHffXMXA0GdTvJ8fInQA7R5jN0cg+O
	7eAfZvhO5ATN4cAA0ygB89pyO9avjJZM57wh3OIHy9MZ8BgM47/dR++xRUu0swPr2ChyWpSWH
	gPtjCL609Oex/DIIpoVYf/0tqJWBiCuG23Yp3i2xhbS6QuWg99PchUpVz8E+H2270v6zeV0dr
	nGHQ+NP3xZ0IGDOzR9bMx8+/Lynqcrr2G/BjDtV8oPIcele8TMgfxMDo7Rhw03bPebOlNA6yl
	h7vgNRUb3NFL9N9pOvvuQkSkEkAlbIiZK4BU4xPN6uzsuJqeeb9s2Fdb/648kMiTuIum3/0XG
	IRRN2xqmc/FqXAPr5+pXcyntJsJvDmKNi4QyJ21x8WOSlFEF5jJji+HQ==
Subject: cortexa9t2hf instead of cortexa9hf
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
X-List-Received-Date: Mon, 17 Jun 2019 12:03:03 -0000
Content-Type: text/plain; charset=UTF-8

I switched from Yocto 2.5 to 2.7 and recognised a new architetcure name.
Instead of cortexa9hf it is now build for cortexa9t2hf? Did I do something wrong or what exactly does this t2 mean?
Target system is a Zynq7020 system.

