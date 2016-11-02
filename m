Return-Path: <andrew.stuart@supercoders.com.au>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF2C4E0071C; Wed,  2 Nov 2016 04:08:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0071]
X-Greylist: delayed 336 seconds by postgrey-1.32 at yocto-www;
	Wed, 02 Nov 2016 04:08:26 PDT
Received: from mail.supercoders.com.au (mail.supercoders.com.au [54.215.13.78])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 70098E006E9
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 04:08:26 -0700 (PDT)
Received: from [192.168.1.100] (unknown [101.167.6.11])
	by mail.supercoders.com.au (Postfix) with ESMTPS id 31704637DD
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 11:02:49 +0000 (UTC)
From: Andrew Stuart <andrew.stuart@supercoders.com.au>
Message-Id: <356DF612-5CB8-4D89-92D8-0F7EDD7AF609@supercoders.com.au>
Date: Wed, 2 Nov 2016 22:02:47 +1100
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Mailer: Apple Mail (2.3124)
X-Mailman-Approved-At: Thu, 03 Nov 2016 07:49:45 -0700
Subject: Guide to how to build a minimal system
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
X-List-Received-Date: Wed, 02 Nov 2016 11:08:27 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I want to build a minimal Nginx system that does nothing else but serve =
static files. Preferably with nothing else installed at all apart from =
network configuration via /etc/network/interfaces. Perhaps also =
optionally with ssh.

Ideally I would be able to provide the HTML files that make up the =
website via an initramfs file.

I=E2=80=99d like this to run on x86-64 on KVM.

I=E2=80=99m looking for a guide that shows me the key steps to implement =
something minimal like this.  Does such a guide exist?

I=E2=80=99ve watched several hours of Youtube videos on Yocto, I=E2=80=99v=
e read various getting started guides and spent several hours installing =
and building.

Quite how to configure something down to minimal still is not clear.

Can someone guide me please as to where to find such docs?

One additional specific question - I can see that there is a web servers =
layer, but how to only get the one webserver that I want (nginx) as =
opposed to getting them all?

thanks

Andrew


