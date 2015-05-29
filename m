Return-Path: <mkarascybi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99F9CE009A3; Fri, 29 May 2015 07:40:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.177 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (mkarascybi[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f177.google.com (mail-ig0-f177.google.com
	[209.85.213.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 30873E0096A
	for <yocto@yoctoproject.org>; Fri, 29 May 2015 07:40:35 -0700 (PDT)
Received: by igbpi8 with SMTP id pi8so16261205igb.0
	for <yocto@yoctoproject.org>; Fri, 29 May 2015 07:40:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=G9xB7sJH+M97elFPFLf4HzuAxFWGwD32zLyzHq8AA5M=;
	b=VDiWF4ftfJn9L6y+y9Cd9PX2Q5xnWis4/xUps9G+iVRO3UEew1xSRyiy75mUV6/YTX
	lgxBWHO57YObaKFyrJU9UJEBi8FpZd3AcUqfxRNSGzNN9+SKauLkodTTIBls4+fMrDUh
	MK4R8gU+b0a9A09D0tgATngJ8LEF2ManYANbfIgE4UM3Mtkpx32DNuSU9/EGVLadwIOr
	NtrGea/b6R8gfYObM8eAJn5XIu5ZKpVvr4uApE7EZll7gHDsERaxzzt+5B4f7kRaIe3f
	2nh2XsxTtZFimh0QExbVMA7V4OcWFgUuP432+Ohr70RSMR1JqOfHH1fTPlO70BsuzS9x
	zHRA==
MIME-Version: 1.0
X-Received: by 10.50.138.74 with SMTP id qo10mr4443355igb.39.1432910435316;
	Fri, 29 May 2015 07:40:35 -0700 (PDT)
Received: by 10.36.73.71 with HTTP; Fri, 29 May 2015 07:40:35 -0700 (PDT)
Date: Fri, 29 May 2015 10:40:35 -0400
Message-ID: <CADu_VSZCW7YegWTzRWQX+ZzQH=CygvxorwUH7KvgtkyYO-feVQ@mail.gmail.com>
From: Matthew Karas <mkarascybi@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Dropbear configuration
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
X-List-Received-Date: Fri, 29 May 2015 14:40:37 -0000
Content-Type: text/plain; charset=UTF-8

I am trying to configure dropbear to do the following.

1) Only listen on port 22 of the tun0 interface (made by openvpn service).
2) Only use public key authorization.

To do this I've overridden the dropbear.socket file with my own.

---------------------------------------------------- start
[Unit]
Conflicts=dropbear.service
After=openvpn@foo.service
Wants=openvpn@foo.service

[Socket]
ListenStream=22
Accept=yes
BindToDevice=tun0  <<<<<<< made by open vpn

[Install]
WantedBy=sockets.target
Also=dropbearkey.service

----------------------------------------------------finish

I also install my public key to where I think dropbear needs the keys.

--------bb append snippet-----------------------------------
do_install_append() {
    install -d ${D}/root/.ssh
    install -m 0600 ${WORKDIR}/authorized_keys ${D}/root/.ssh/authorized_keys
    echo 'DROPBEAR_EXTRA_ARGS="-E -g"'> ${D}${sysconfdir}/default/dropbear
}

FILES_${PN} += "/home/root/.ssh/authorized_keys"
-------------------------------------------------------------------

Currently the system finds a system ordering loop and shuts down openvpn.

How do I get the dropbear.socket to depend on openvpn - when openvpn
depends on the sockets being up  (and sockets.target wants
dropbear.socket)?  Is there another way to have dropbear only look at
the tun0 port 22 and not the eth0 port 22?

Thanks

