Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 512C7E00D31; Sun,  4 Aug 2019 02:05:02 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f42.google.com (mail-io1-f42.google.com
	[209.85.166.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D588E00935
	for <yocto@yoctoproject.org>; Sun,  4 Aug 2019 02:05:00 -0700 (PDT)
Received: by mail-io1-f42.google.com with SMTP id k8so161431182iot.1
	for <yocto@yoctoproject.org>; Sun, 04 Aug 2019 02:05:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=3vGKfcgSukYE77LluQewATXWyeO0N+i55t87BsWo+7E=;
	b=ZluFns9uMp1DUanIq746mi2rt/YRe7MDo0TDJPaCKzaH0IVanl0kMONjwyC/drKAwW
	tj0bXPw3vLV0W/lXlXUgSKyy7PfZDcYBtvAozh9W72tVHzR0og60MGtTKKrN4PJ2A7cg
	dlzhqm7qDDj/ggJQiyNkvbgiA1azfJYTnLvNkKmEdKlw1HLKXtXo/ypCioQms/SSBTwx
	qoIrzEj3qpx7HsHO9tppSlJ3bnVJwDzkW7Xt15e/dkTT9uiCkQNP2JvPHcubAHZ032nP
	13a+I7E+Y9nO4N4qSjWtUZ8AYICyc1p+eeFptnEtdrquM2VqzGMy2vtMI8cCkbrYIjDV
	+Olw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=3vGKfcgSukYE77LluQewATXWyeO0N+i55t87BsWo+7E=;
	b=OVcmbhM6bJs+t77qA8qan9rjxvtS585CRIhTxf7n0UDROZXmmW2INznQwGyPf2+XCh
	h15LgUbu+kbvymbtnClVVJYtN1W1gm7+Ywqnkm5naJnsUNJYg8G4s4i+PT9GuA7AO+Fz
	vY6OagxcTmdxBsVGhLHWggbppJiPS0CqiROifIlo3vJvrTXQGsGJtjV25gBmbgQIz234
	3S3chNc8/E9/6DQgaZqffk0Paurysi19rpEEO6h6c7Txqkd/vOT4HtCGyeSgroYvllAP
	a2Flq5ie76gmwlehXsbDcb42dDXV4KhgrV1SmFZnabb9SEHKXokVhCX7Bt+EW3ARmZhz
	3Z+g==
X-Gm-Message-State: APjAAAWlvwFEjH2sZzaWmA2uZQJD77iNoPV97yHMnfbmLnTJv8Q5/e2R
	f2ENYC1+WdysPXHqFsTa6U8Y11ptH/5dbxtYXw8amWJD
X-Google-Smtp-Source: APXvYqx5sFbxT2s6il/Ip7I2qv8lHMsHAF14Opl5X5jEZbpBtAiJ2hgsx/miKhdhVQX5a49lYfks2Hcqcp1Saz0IBHY=
X-Received: by 2002:a6b:8f47:: with SMTP id r68mr10837561iod.204.1564909500363;
	Sun, 04 Aug 2019 02:05:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP;
	Sun, 4 Aug 2019 02:04:59 -0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Sun, 4 Aug 2019 19:04:59 +1000
Message-ID: <CAA=hcWSByxp8OR09orkP6RO9uto6Dpf0rZmsGWigW0yQ82P=0g@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: QA issue applibrary rdepends on app-dev [dev-deps], where is the do_package_qa?
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
X-List-Received-Date: Sun, 04 Aug 2019 09:05:02 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I was running my Yocto build fine until I had a minor change to move
libapplibrary.so to libapplibrry.so.${PN} and made libapplibrary.so to
a symbolic link of libapplibrry.so.${PN}. Now it got an error of QA
issue applibrary rdepends on app-dev [dev-deps], QA run found fatal
errors, please consider fixing them.

Even I reverse the changes back the, it still complained the same error.

I don't have do_package_qa in my bb file, where is it from? What is
that error about? How to fix it?

Thank you.

Kind regards,

- jh

