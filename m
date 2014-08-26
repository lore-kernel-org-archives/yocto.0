Return-Path: <jags.gediya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9DBBBE00809; Tue, 26 Aug 2014 07:48:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jags.gediya[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0005]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
Received: from mail-qc0-f178.google.com (mail-qc0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59296E007F6;
	Tue, 26 Aug 2014 07:48:36 -0700 (PDT)
Received: by mail-qc0-f178.google.com with SMTP id x3so15473999qcv.37
	for <multiple recipients>; Tue, 26 Aug 2014 07:48:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=7mSVtn313987b4LUIhjk6e2m2NY7TH/AFO15oP4P4nQ=;
	b=CZHZb9N4JU1CotJA2WcjgkjpshP/HjWhgjssiBHN1O+SCsj5+XxPKTKQ1VeAwspkbC
	zsVAbO4pmWTfhsapmtOf4Q3Fx9k6MVRrVdSmeeGGZAsyy+l0pM2GD+WRtGXpJ2Oqp7IP
	EHT7/u0BCjq43wx4C3YZ1AXy8u7g+UMwVrQoGa67aQ/OFhYmrZ5DdmANTDhuWPXHfc29
	Wtt9wpB0Vv+62aunGOSMdFpcE5JGOtf1aLTOGj3hqJJtSMbrijqdMQ/GQf3lJP88bqjU
	7SssP28vM+gnKz1KGfhhsETzkfcyGZiwgXSoCwnqd5+tJg6CkMAJCMlf6+sVZFcW52iU
	ldVQ==
MIME-Version: 1.0
X-Received: by 10.224.54.205 with SMTP id r13mr47176890qag.59.1409064516092;
	Tue, 26 Aug 2014 07:48:36 -0700 (PDT)
Received: by 10.224.25.80 with HTTP; Tue, 26 Aug 2014 07:48:36 -0700 (PDT)
Date: Tue, 26 Aug 2014 20:18:36 +0530
Message-ID: <CAP3RZoguYp0g+oWc7Fx4qghYv4L3=Zp_NVCY5G1f149-AxWmJQ@mail.gmail.com>
From: jags gediya <jags.gediya@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, 
	"meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>
Subject: Remove Bluez4 and add Bluez5 in core-image-base
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
X-List-Received-Date: Tue, 26 Aug 2014 14:48:44 -0000
Content-Type: text/plain; charset=UTF-8

I am using yocto project for imx6sl evolution kit based custom board.
I want to use core-image-base as basic image and put other packages on that.
By default , core-image-base have Bluez4, but i want to use Bluez5.
How can i remove default Bluez4 from core-image-base?

