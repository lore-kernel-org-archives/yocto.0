Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9609BE00C92; Wed,  5 Dec 2018 22:50:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [62.149.156.146 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd13146.aruba.it (smtpcmd13146.aruba.it [62.149.156.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED028E00C7E
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2018 22:50:22 -0800 (PST)
Received: from [192.168.24.108] ([87.26.78.158])
	by smtpcmd13.ad.aruba.it with bizsmtp
	id 8WqM1z00E3QvvBK01WqMKm; Thu, 06 Dec 2018 07:50:21 +0100
To: Yocto Project <yocto@yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <aba073ef-c202-92d7-4945-7928988ac65b@faresoftware.it>
Date: Thu, 6 Dec 2018 07:50:21 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.3.2
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1544079021; bh=0ABSm1sUnDMBdjyKjEXPTDxph1ofuFSH6QyjGDzFemA=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=fdY+X7bgScINjyy8O+A/9cG5E0RKwGTVeYRKXCo56ky9Mp/PUWh163T0G7Vb8N2fi
	ug4zNfF4Pk1/7MbBHcLKSdBL2ABAmQoGe1G3UutAA+OFtuNcB6dhQnbABrpr0QA75N
	+QuNKzgIg5jAX7/n/7TmxUErsHW0wsu/JksNmUyKQ0UMb5c/qCPOgVP3E6lSVbim2r
	1OhPKqSdK97GooNI22iT8HNfN5Gl2rsmIMatq6mCsmIsYwDt7pcVoA+7mWoQYL8FEJ
	Hqm67LGv755ieajQLOQd+eU2vr3nwfjtXG+myAbYDggFyNIbGiNFbcxqSh4Ys2MpZg
	cA85rHLNSNe0A==
Subject: connmand+dbus. Which alternatives?
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
X-List-Received-Date: Thu, 06 Dec 2018 06:50:26 -0000
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

I'm working on a imx6dl sabresd project with an usb wifi dongle (edimax
EW7811un)

My app uses Connman by DBus to manage ethernet and wifi connections.

Normally the sytstem works well. Sometimes, randomly, the system freeze
or the app crashes.

I made many test and this happens when the system is connected to a SSID.

So I suspect that the problem is in connamd_1.31+dbus_1.10.6


I'm using Yocto fsl 4.1.5-2.0.1 qith Qt5 5.6.2


Can you suggest me an alternative to connmand?


Best regards,

  MZ


