Return-Path: <srsasi@yahoo.co.in>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27360E00C2E; Mon, 17 Jul 2017 06:45:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_MUA_MOZILLA, FREEMAIL_FROM,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (srsasi[at]yahoo.co.in)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [106.10.243.168 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.3 FORGED_MUA_MOZILLA Forged mail pretending to be from Mozilla
Received: from sonic318-48.consmr.mail.sg3.yahoo.com
	(sonic318-48.consmr.mail.sg3.yahoo.com [106.10.243.168])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 692A7E00B1B
	for <yocto@yoctoproject.org>; Mon, 17 Jul 2017 06:45:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.co.in; s=s2048;
	t=1500299132; bh=CnaGh5FEduakpck1eDWuUvyC+eZsGbEleOMpARjjf0Y=;
	h=Date:From:Reply-To:To:Subject:References:From:Subject;
	b=jzu76nfRyVm+7tQfhTq6PpxoE4x6Kgjcn7pjpnBSPFEBYT8vVu9CcWUAdtoSsElPx/af/iH0/KJs6SO7CE1SNu/o78nMySSUKM+UxpKTg8ew4GoL1bjARjmjLcRyfrSLn2fpqhzsk/5hMAHm486XbuGNg2baAGRdgPp3ZMZXA0RhHVuxVfJrnVFjK1Sbp32vHedzu9QhlcEBNb5Pb5M+z8/h/M9xcTmSVPrCFfoQlu37K0Zgifb5pOAGalfPd/+n/pyEXQNNWGYPtUYqNzGS7yNScR3diQiFS8+01wrfKyNLBx17QSYnyC+yyCaYhKFkw7P9i5mVnCZqIbOahjEpfQ==
X-YMail-OSG: De95LZsVM1luw5Ul2eujzp9AhD_AsBf7VdW80e_Ry3DKvhAqVJ6Y5xFbV23n8Od
	9KO.CNaKVWy.ewpyc9aExdX9nj4FeqoopzacglcenslTEpcI98X98kW7arQ1.vGWa7punEmYkshM
	63KoLlYTPG9l2W0K3opjKX.xqviZRIhoeG37agpn86v7ItOL7QyJpFGEmgEKm2hj8KTrSmhaoR6V
	rx_gt46_1qrOuBN2jH2X_Mp1QgG8ZK0mCe5cKd8ghuOmZ58jfm5Rlib5T2tFd0Q9ZIqqT.AfdryB
	CcM8Jlf84g54sVencTPuiCsbkb_gp.Hle57CVvsbPqanAqa8dDM_Uv_LnqllVM__FfydS9SQWqCx
	bGlfzXJ05gy8FZXK2G0yNLHEaSKGAjNFddq3piAfUHgIyVm713R5_jVdIT2YP3WbnHtPoZcDjvwZ
	nyNcn96R_xhDmBzgqvfGXvPkN8rXG3NcGorRfCeoXAEE0zJRKQ2ly4BHk1DE95_1WOmqqiIFe9.c
	0cnBFts99ptg9T52AkHLLoe3b6sgi
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic318.consmr.mail.sg3.yahoo.com with HTTP;
	Mon, 17 Jul 2017 13:45:32 +0000
Date: Mon, 17 Jul 2017 13:41:31 +0000 (UTC)
From: "S.R.Sasi Kumar" <srsasi@yahoo.co.in>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <1832597646.2562020.1500298891644@mail.yahoo.com>
MIME-Version: 1.0
References: <1832597646.2562020.1500298891644.ref@mail.yahoo.com>
X-Mailer: WebService/1.1.10092 YahooMailNeo Mozilla/5.0 (Windows NT 6.1)
	AppleWebKit/537.36 (KHTML,
	like Gecko) Chrome/59.0.3071.115 Safari/537.36
Subject: NTPd is not synchronizing the system clock continuously, but at every startup/reload; running on QEMUx86-64
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: "S.R.Sasi Kumar" <srsasi@yahoo.co.in>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 17 Jul 2017 13:45:36 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2562019_958368968.1500298891634"

------=_Part_2562019_958368968.1500298891634
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Greetings! I have installed Ubuntu 14.x on VirtualBox. I am building core-image-minimal for QEMU x86-64 using Krogoth branch. I created a sample application and able to run that simple application as expected. Next, I added ntpd_4.2.8p8 to the image. NTPd is updating system time at QEMU startup and whenever NTPd is reloaded, however it is not adjusting the drift in the system time continuously. The drift file is not getting created at the location specified in ntp.conf. I in fact, waited for several hours to see if drift file is getting created, and system time is synchronised. It does not work. Can I get some clue about it,

------=_Part_2562019_958368968.1500298891634
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: 7bit

<html><head></head><body><div style="color:#000; background-color:#fff; font-family:Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font-size:13px"><div id="yui_3_16_0_ym19_1_1500296252535_15864">Greetings! I have installed Ubuntu 14.x on VirtualBox. I am building core-image-minimal for QEMU x86-64 using Krogoth branch. I created a sample application and able to run that simple application as expected. Next, I added ntpd_4.2.8p8 to the image. NTPd is updating system time at QEMU startup and whenever NTPd is reloaded, however it is not adjusting the drift in the system time continuously. The drift file is not getting created at the location specified in ntp.conf. I in fact, waited for several hours to see if drift file is getting created, and system time is synchronised. It does not work. Can I get some clue about it,</div></div></body></html>

------=_Part_2562019_958368968.1500298891634--
