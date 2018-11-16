Return-Path: <ptsneves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F58AE00C28; Fri, 16 Nov 2018 10:00:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ptsneves[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com
	[209.85.221.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E02DEE00BC1
	for <yocto@yoctoproject.org>; Fri, 16 Nov 2018 10:00:17 -0800 (PST)
Received: by mail-wr1-f53.google.com with SMTP id j26-v6so25770928wre.1
	for <yocto@yoctoproject.org>; Fri, 16 Nov 2018 10:00:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=XqyvEo6H8Cf2nwXp7B6l3732PhZ8Ms1XNqJbubFXQ0Y=;
	b=iMfcJQcYHmx3E2Hz3mJfC5cm4dphJ1bPNd2atofPto4U7AEip+oTo1/dqu8DXEUWH1
	4AEULly6KV6ZKONr3YsDd2zZt3cXT3iGVIFP2qzAEXCsW4l4nxYznVfjLCw0e7uFe91H
	BbJiwyV3hInv8vsLrYog18y9XSX1PQ2OzLsfLuk3pogUcSoDw3FQmkxJ4igTRwfD6v16
	/eRGWYTm0yeyEOmJma+s280Rv2erTI98MHxTv6IllOmbnLuCN7VSDqZz6WmPo8cdlgm2
	qJwBwP/jnOdHRKWN71Uxl+xQPlORZdUJFdomT1Zw1FV5vpA5OHIK72NX0iw0NAgSQjoG
	4+oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=XqyvEo6H8Cf2nwXp7B6l3732PhZ8Ms1XNqJbubFXQ0Y=;
	b=uDk0wqjqgESy1k5n+oHkTFKJDFToxVlEQmBvG91uTs45/Y40wb2azicBjo+mKmvAXZ
	SgObMlSL0vMKlk4/E+2Iom0FH98QBuuUzkaHmdpXUg9C/MUA9qGZ+TK0PNvoc2sxcUF1
	CqsT643kzUnZeAOtcGK3b2vJ0Kh6A0HZucIYBefN3E8NX80E2sd8EJY56znNZtCtQa9i
	OhhKlr3Jd5ljJ3zbjjEzZCVttsVkXCx0aegsK/hATCUt//YpnJD7ulm3/R2+v36SUpwC
	Jfq5Z7VEJdYSKotlCtUHuPUffY/fO+v3qtU8hjQEIEhYhECru67+sM6R26XtAzq3jQgQ
	QpXQ==
X-Gm-Message-State: AA+aEWaO/Sp/oXZ0uKbSt9neR2rUo36SIQQ7HsjUGg/jlXU2ZsdtH1bG
	Xcap7WBdnXyu7iLFnoasSMMkcLBcvCJBw5C6iRRk6Ow=
X-Google-Smtp-Source: AFSGD/Uueqj3bGfGnWlXmy5X87CSUml+d3FuZMgEEwCNcpv9ycsIaC9qx3D4clEc2pX1NrFk5PVwmVMHAmvnFLFnxqA=
X-Received: by 2002:a5d:4382:: with SMTP id i2mr7076553wrq.172.1542391216357; 
	Fri, 16 Nov 2018 10:00:16 -0800 (PST)
MIME-Version: 1.0
From: Paulo Neves <ptsneves@gmail.com>
Date: Fri, 16 Nov 2018 19:00:03 +0100
Message-ID: <CAJO0J4i67_WnweTEB6PPMe8erD3RLZL=6xR=FQCXKcZTqiyfbg@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: test cases: Depending on other tests
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
X-List-Received-Date: Fri, 16 Nov 2018 18:00:18 -0000
Content-Type: text/plain; charset="UTF-8"

Hello all

I have been working with the test functionality of yocto and have
created some testcases in a single python file.

Now I wanted refactor my code and split some of the cases across
smaller unit tests files. I have 2  functionalities required to
achieve this spliting:

* Be able to import a common piece of code
In the cases directory i created a GTestUtills.py and in my case i
import it. I get a syntax error on the import. Both GTestUtils.py and
my_testcase.py are in the cases directory.

* Be able to depend on tests from other cases
When mycase1.py has a testA which depends on a
mycase2.mycaseTest.testB it gives me an error saying that
mycase2.mycaseTest.testB is not available even though it clearly is.
It is not a typo because no options are available at all in the
failures' suggestion.

Interestingly open embedded testcases are available as well as the
mycase1 tests.

Paulo Neves

