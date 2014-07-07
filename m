Return-Path: <atul.singh008@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC09CE00563; Mon,  7 Jul 2014 12:11:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (atul.singh008[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
Received: from mail-ig0-f170.google.com (mail-ig0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60191E002AA
	for <yocto@yoctoproject.org>; Mon,  7 Jul 2014 12:11:23 -0700 (PDT)
Received: by mail-ig0-f170.google.com with SMTP id h15so10774765igd.3
	for <yocto@yoctoproject.org>; Mon, 07 Jul 2014 12:11:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=I8Cu9fTTUzr0OagaEOdSeCaOm6/rbpT9GKwarM/9LGw=;
	b=xJLurxctf42juuV4XbBINRtoImpuOs9INl262S/WFIi+3l4hNMCnaBOVstFBtvZbfL
	447lNyrwyn7YgeeX46trXYIu3vDiH9Nt49hjUzXzcW5lpgPKqBatL9aq0N3pSHywTY2e
	pL0JvE8rjWBVdRdn8JwLkbdEBS3+XuURF1sLl5TRnCUV2OV0dCIe7BiWppb6Mbb1hwRb
	rJlHGLu12RRSnUsvUkFJRLUA+FsEvNGSSo0Fdwux7WAIAa4LAV7jYVHOCsT/gIyjw/ok
	cA/Q2b+efSfk1ZrLAKMexIJ6oboHZDAEo4fPzt0NcIDzVzLHmyRXbNLjnfyaWuJKTd9e
	qSkQ==
MIME-Version: 1.0
X-Received: by 10.43.112.197 with SMTP id et5mr35579594icc.31.1404760282946;
	Mon, 07 Jul 2014 12:11:22 -0700 (PDT)
Received: by 10.64.86.225 with HTTP; Mon, 7 Jul 2014 12:11:22 -0700 (PDT)
Received: by 10.64.86.225 with HTTP; Mon, 7 Jul 2014 12:11:22 -0700 (PDT)
Date: Tue, 8 Jul 2014 00:41:22 +0530
Message-ID: <CAH21_vFKzJAR8GRArhZoKfOQzSpHkogfX+d+j_MML9v4AYD1+A@mail.gmail.com>
From: atulkumar singh <atul.singh008@gmail.com>
To: yocto@yoctoproject.org
Subject: Aarch64 support
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
X-List-Received-Date: Mon, 07 Jul 2014 19:11:26 -0000
Content-Type: multipart/alternative; boundary=bcaec5171b29a8e41a04fd9f3d73

--bcaec5171b29a8e41a04fd9f3d73
Content-Type: text/plain; charset=UTF-8

Hi All,

Is there support for Aarch64(64 bit ARMv8) available right now?
If so then what i need to mention as a MACHINE in local.conf.
Please let me know with your valuable suggestion if any.

Thanks and regards,
Atul

--bcaec5171b29a8e41a04fd9f3d73
Content-Type: text/html; charset=UTF-8

<p>Hi All,</p>
<p>Is there support for Aarch64(64 bit ARMv8) available right now?<br>
If so then what i need to mention as a MACHINE in local.conf.<br>
Please let me know with your valuable suggestion if any.</p>
<p>Thanks and regards,<br>
Atul</p>

--bcaec5171b29a8e41a04fd9f3d73--
