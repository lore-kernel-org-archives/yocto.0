Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86589E00C75; Thu, 17 May 2018 05:18:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.149.156.56 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from smtpcmd0756.aruba.it (smtpcmd0756.aruba.it [62.149.156.56])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4AE2E00B18
	for <yocto@yoctoproject.org>; Thu, 17 May 2018 05:18:07 -0700 (PDT)
Received: from [10.0.3.130] ([78.6.3.122])
	by smtpcmd07.ad.aruba.it with bizsmtp
	id nQJ51x00y2dwwGE01QJ59U; Thu, 17 May 2018 14:18:06 +0200
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <d8bc33da-e352-7408-c5ab-2c175529f90d@faresoftware.it>
Date: Thu, 17 May 2018 14:18:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1526559486; bh=+ElkkIQeIi8N5DpsQ9VG+xKwa5iEhuAaOhTbcbnQf7k=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=gsih1JlxqsTonJ85XgrJzOAOOKWAPkDR/0056CPfmddME7IcwsT8ukOGI/bNXKH5u
	6NwoU6MQoiYkvb+VwFSGdYI4SCBoLVHKCrQtwgIFKM7I0Eh9PxSZQx9jO+f5OOCH67
	BLGVrVZCbRvEubnV1n77pHmea4A9FrWXc3E4pRrmwNodbVEKAccU8UU67RoB66LDmH
	V34Bp1rVDYg/6MCmJ9smJWHWqvoSUOMxHpCqaeOh3OxCcjZgN2e8eNHN23e2O7Q9my
	ZA6+q3QfcW17kkJ/0CxrmG4yuTlP4CD17okY43mkeqnIJCNlvSRkmTPfNbnKWF2Kl6
	IXlfCDJgaZBsw==
Subject: Configuration network from qt5
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
X-List-Received-Date: Thu, 17 May 2018 12:18:09 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

Which the betst choice to perform the network configuration in Yocto 
Krogoth from a qt5 application?

The configuration should be made without external script, using dbus.


Best regards,

   MZ


