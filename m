Return-Path: <ranshalit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF0A8E00C78; Thu, 23 Nov 2017 06:08:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ranshalit[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9A436E00A62;
	Thu, 23 Nov 2017 06:08:36 -0800 (PST)
Received: by mail-wm0-f47.google.com with SMTP id x63so17084019wmf.2;
	Thu, 23 Nov 2017 06:08:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=BETgWrRylBDcd4pnelF5yLaydM1wjBmi1bMo/0xVPas=;
	b=YFi9t+zkiRvEg1zSyWwExLRwezinB36cIMrHzYn9xGI0PA0HW3BHD1/sEY5FiwDq9w
	cpS4w+IPR+zmoSalQRIDzxrqsIyccqREV67jwfJXfHExjI/QSMQYhZB1xQWXL8M8xKMo
	iC2he3+WCvuZIAHHwaLtdIoJaGRy5RrSYGQjkY4CyCzzTa59CwJaedHH3dp9TmRqcW8w
	xvlU/r5q/VkH+pJ8ggW6piDYqwgTEa4sfEZEK1kW7ew5pSrY22dsc1NTatnfGlJS66IL
	6AIjqSANeNkivFc4pGDCyH7OWDVeCvmSqADXIatsPtHKteigWr858FWbsmw8vpZsJ7g5
	TUTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=BETgWrRylBDcd4pnelF5yLaydM1wjBmi1bMo/0xVPas=;
	b=mOi3xCReyAAfcYUDr6mleGaWr9VeO2wogld5jTuNxVLCZhi33bihcRejU/ieGeq1nS
	Q3t19RTyKAbAKtAyveDQFVpYbWHFKdsdeuN6tnQ54oCSMD+bxM66Aiw+vFOrurJ6/izA
	9q1e8wyrT6fayERHe45TtxR4ytMHApv/MHIDVR1kSDCQMJF7WkizDwE+lZ4l4j2hWUGy
	fu+7vc2av1vA65zyb4CPkGQtu0s/z6DB15Mj+PjKeySZ0wvQRYzRlY1cf+NFww6cP8DK
	ZziI7ceE1PRNMZE2WQpq+MW/B2td6s4EJozcFgHiLfiGQ/MiFQKV2w1GkSXbO0XdKTWK
	0rZg==
X-Gm-Message-State: AJaThX5uP4e6cGvIMMnmug8cOjU+usveolH7MEN5Vg6HNi2lO8Xhc9fz
	JblvksLhGDl72agCmqUKwF9rXldVMabkjV4wrsxzlA==
X-Google-Smtp-Source: AGs4zMalsq0FVW+lRD6QCyd6sMrTswqaX5WM1NpxdclMg2nsebu1SM35miN3McWid6uSTvQ9ywwlxirbQ9JMaDLpQpo=
X-Received: by 10.80.213.90 with SMTP id f26mr35249302edj.225.1511446115263;
	Thu, 23 Nov 2017 06:08:35 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.135.197 with HTTP; Thu, 23 Nov 2017 06:08:34 -0800 (PST)
From: Ran Shalit <ranshalit@gmail.com>
Date: Thu, 23 Nov 2017 16:08:34 +0200
Message-ID: <CAJ2oMhKJyZnKSWEuMaMPC8g4jYGi4LC5kUatBY0mUrU480sBxw@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>, 
	Development list for the linux-yocto repositories
	<linux-yocto@yoctoproject.org>
Subject: snmp is not installed, only snmpd
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
X-List-Received-Date: Thu, 23 Nov 2017 14:08:38 -0000
Content-Type: text/plain; charset="UTF-8"

Hello,

Does anyone knows how I can add snmp to yocto, I manage to have
/etc/snmp/snmpd.conf , but not snmp.conf.

This is what I tried:
I added CORE_IMAGE_EXTRA_INSTALL += "net-snmp net-snmp-server
net-snmp-libs net-snmp-mibs" , yet snmp.conf is missing

I also tried to restart snmp as following:
root@imx6qsabresd:/etc/openvivoe# systemctl restart snmp.service
Failed to restart snmp.service: Unit snmp.service not found.

But snmpd service seems to exist in image:
root@imx6qsabresd:/etc/openvivoe# systemctl restart snmpd.service

Thank you for any idea,
Ran

