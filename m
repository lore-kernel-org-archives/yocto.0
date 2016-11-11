Return-Path: <andrew.stuart@supercoders.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7A23E00CA6; Fri, 11 Nov 2016 02:34:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.0 required=5.0 tests=BAYES_20 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.0 BAYES_20 BODY: Bayes spam probability is 5 to 20%
	*      [score: 0.1013]
Received: from mail.supercoders.com.au (mail.supercoders.com.au [54.215.13.78])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8DBEBE00C9D
	for <yocto@yoctoproject.org>; Fri, 11 Nov 2016 02:34:32 -0800 (PST)
Received: from [192.168.1.132] (unknown [101.167.6.11])
	by mail.supercoders.com.au (Postfix) with ESMTPS id B379160841
	for <yocto@yoctoproject.org>; Fri, 11 Nov 2016 10:34:29 +0000 (UTC)
From: Andrew Stuart <andrew.stuart@supercoders.com.au>
Message-Id: <7BF75520-D032-43DE-9B21-85E6B02C30FE@supercoders.com.au>
Date: Fri, 11 Nov 2016 21:34:26 +1100
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
Subject: No eth0 device on Xen / EC2
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
X-List-Received-Date: Fri, 11 Nov 2016 10:34:34 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hello

I=E2=80=99m trying to run Yocto on EC2 which is Xen.

It boots, but for some reason there is no eth0 device, even though I =
have used the xen-guest-image-minimal recipe.

Can anyone suggest what I need to do to get networking going on Xen =
guests?

thanks

Andrew=

