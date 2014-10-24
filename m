Return-Path: <rehsack@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E140FE00830; Fri, 24 Oct 2014 02:14:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rehsack[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f181.google.com (mail-lb0-f181.google.com
	[209.85.217.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 615CFE0079E
	for <yocto@yoctoproject.org>; Fri, 24 Oct 2014 02:14:27 -0700 (PDT)
Received: by mail-lb0-f181.google.com with SMTP id l4so2164378lbv.40
	for <yocto@yoctoproject.org>; Fri, 24 Oct 2014 02:14:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:content-transfer-encoding:subject:date:message-id
	:cc:to:mime-version;
	bh=TbhtIjvmFHgavCx8gapfDv6v8v5kyJr3qyNFP/BgfCo=;
	b=TK9ZY2uPe77B+9OFPOlAdj/N1yqCqyKbv3l6QR3RSASH3ku8Go2fCgOsRArg0cdEV/
	N0RJAWwEKHLRT1u3R+KLAxEZW1Oq+59zIIoQ3Jv2xtGW0mVdJxO81bdmORFN+uMwExYt
	6ON7qWPHcOEW2ewdRbaWJB3S4ZtSjj/gm1jUjvGZNCQ4LzaAmILaNV3G/2aLPCTZNs7j
	UfCTWVv44nMbv2zMpMMkkS4ipj1genIXoJwJvv1e/VcQIcbxWTcTZnuk25U40LsWSQWB
	PMvFsOZK8ksL3OV8F9QTJw5FgfBJ0XGjhQdeXrbjbbaykJKg31FQJmDRQVW0e387D58m
	4hBQ==
X-Received: by 10.112.173.69 with SMTP id bi5mr3002304lbc.61.1414142064239;
	Fri, 24 Oct 2014 02:14:24 -0700 (PDT)
Received: from [172.20.224.121] (ip150.99.69.80.in-addr.arpa. [80.69.99.150])
	by mx.google.com with ESMTPSA id
	f6sm1665402lbh.10.2014.10.24.02.14.22 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 24 Oct 2014 02:14:23 -0700 (PDT)
From: Jens Rehsack <rehsack@gmail.com>
Date: Fri, 24 Oct 2014 11:14:21 +0200
Message-Id: <DEACBB97-4D85-4426-ACA9-1FF991E74AF1@gmail.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
X-Mailer: Apple Mail (2.1878.6)
Subject: OpenSSL-1.0.1j update making builds failing ...
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
X-List-Received-Date: Fri, 24 Oct 2014 09:14:36 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,

yesterday applied OpenSSL update on daisy =
(https://github.com/rdm-dev/poky/commit/27a877becf76a1410aa96c02a25bb885bf=
bddf04) fails to bitbake, because newly added *ptest* files does not =
exists. Further patches had been removed from recipe without removing =
the files themselves ...

The first (for us critical) issue I've hacked away by =
https://github.com/rdm-dev/poky/commit/1ab58562a6adbbc1f48a78900912c7775f6=
172a3 - I do not recommend to apply that patch, I favor fixing the root =
cause (unfortunately a task for Ross?).

Best regards and thanks for the continuous improvements!
--=20
Jens Rehsack
rehsack@gmail.com






