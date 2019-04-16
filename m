Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0080CE00D2A; Mon, 15 Apr 2019 18:10:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.172 listed in list.dnswl.org]
Received: from mail-it1-f172.google.com (mail-it1-f172.google.com
	[209.85.166.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B055FE00CC9
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2019 18:10:03 -0700 (PDT)
Received: by mail-it1-f172.google.com with SMTP id y10so29936744itc.1
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2019 18:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=CU2MRnyCTm89pvChyIc1/smGgq2pcLzxWNFBgdE801M=;
	b=NC1bwjuwyFotJfF+eaVwvzzbeIXeB1iSduD21OQRDScYYiTn0YRrrZPAiaqSu1/ewl
	lZNN/GodAtk8Thtr0DMUw4xxCGkfbnz3SLvWtl519Dxzd0FqfRRYts+N/sxLsSz69bhg
	A9dWm0Qb2ATSsWVFxuUualMZnOcmIfGvtgS9dFB7MstDnf7EpOLBcNU1yFj9SMrO62Jo
	/aWDM3nWTDx63bD2QrpOvROr6mBsM7TGVsBEIKKoFlEo8irCS47bav2+mPvhREeNDaqx
	eI/gfgeDTyeCHi4PO0RV5wBKbmV5i7ONPthIF6dFi/AQ8RCjknXh5W73tJBov/2CLPp/
	4hPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=CU2MRnyCTm89pvChyIc1/smGgq2pcLzxWNFBgdE801M=;
	b=jLmqgnDxvayoRv4Mf38z1T16kFEvmH7D5ZzKX5YjjCRD0U3WV3n2GocvlqaLffv9r8
	f6lfdWR4d50pKUVH49YhrJgsD8SsZ/PZVGJpE0LXCZISrgQ742CyrT9XyADJWG4Iuk2L
	XpCdesTv83idyH8eiyGx+7zeZHJJvAJI5j5YrysFWRiVR1lhAfsv6rKmGpKwSlzNNYXa
	ns1jeGOALVG7ZjbRVRBDubMyUmkTZE5pAOJP2HA811L4GLFcaIENhuOH6qezL5nYokES
	BmQcTzYMGdLFDK0bLUztZ3UGligbRz71BQhA+RZQqOhYJnlHyOC3EzKafyx3PqTKljyg
	a5qg==
X-Gm-Message-State: APjAAAXGdNQGGoWKMwroQOMvBvfdsu+EAlrXo0OrtcDVqOPDX1ct1Pb0
	6AgUJNO4PIKc0nfBdYLm8ptCwFBruvS0VhhCMal6QQ==
X-Google-Smtp-Source: APXvYqyOE+Rtvzky6SH/q1UER4gifxbSY/ee6h5KEnUhra2C1U7x/GvR0/AaY7XwxprtixyefVqYjsFYZVSDeV0Csh4=
X-Received: by 2002:a24:56d1:: with SMTP id
	o200mr27082611itb.111.1555377002919; 
	Mon, 15 Apr 2019 18:10:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:91a9:0:0:0:0:0 with HTTP; Mon, 15 Apr 2019 18:10:02
	-0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Tue, 16 Apr 2019 11:10:02 +1000
Message-ID: <CAA=hcWSbKYtANQJOCgpjdbuod_yoONGCygBynrnzdjWxULEnmw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Failed to execute GCC
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
X-List-Received-Date: Tue, 16 Apr 2019 01:10:04 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I am building an image on Ubuntu 18.04 host, I got following error:

 unable to execute 'x86_64-linux-gnu-gcc': No such file or directory
 | error: command 'x86_64-linux-gnu-gcc' failed with exit status 1

I can see the x86_64-linux-gnu-gcc is available, but why it failed to find it?

$ which x86_64-linux-gnu-gcc
/usr/bin/x86_64-linux-gnu-gcc

Thank you.

Kind regards,

- jh

