Return-Path: <virgi200@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3061EE0088C; Wed, 28 Oct 2015 11:42:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	MIME_QP_LONG_LINE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (virgi200[at]gmx.de)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.22 listed in list.dnswl.org]
X-Greylist: delayed 303 seconds by postgrey-1.32 at yocto-www;
	Wed, 28 Oct 2015 11:42:08 PDT
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4831DE0071C
	for <yocto@yoctoproject.org>; Wed, 28 Oct 2015 11:42:08 -0700 (PDT)
Received: from [192.168.2.101] ([178.7.42.254]) by mail.gmx.com (mrgmx101)
	with ESMTPSA (Nemesis) id 0MOBOi-1ZoBfg1ZIq-005Uza for
	<yocto@yoctoproject.org>; Wed, 28 Oct 2015 19:37:04 +0100
From: Virgilia Eigner <virgi200@gmx.de>
Mime-Version: 1.0 (1.0)
Message-Id: <C5143333-4B76-4AC2-B295-F63B89B4F14D@gmx.de>
Date: Wed, 28 Oct 2015 19:37:03 +0100
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
X-Mailer: iPhone Mail (12B436)
X-Provags-ID: V03:K0:Kpy5L0OAs2Qj+UaoDspfoO6yvfyojXnLZKyJw1reRsFY/rFuYlc
	MJOK1L9AYbyudWxvEwgWWnrEtmqxY4rxDoF/c/8UiChPwLBYHiJyF30iORKp8Js2ugWJFud
	gADDaY0iZ9uscaQzSHQeNmNrR29GWD2/a3DJZK7iIrax7Q42f3MySVXDOBzDb2mNm0sIRCf
	m5GeSNcQ9xFg2r+Vo5O+w==
X-UI-Out-Filterresults: notjunk:1;V01:K0:dXOZd+29/es=:UarGoXsQ0c5wptcMz/uj1f
	Tw3S8a7soqanAGN39EtZ3/gMofqoO6VZLSaP0k4z6XweZ3F5pTXsNOoANZcjB1l6nP4efhf2I
	uzw2Ug20OGfssQIOekl/kmplJ80UbUOnXrMT4BgUA1uIDNfH9ZpqbG1ThvF45q3AVHp4PNcHt
	wOy/oHNtRcYvpgzP2x+oaFZ81ZMzQ8iyDhhFnf470c/THZTNdslDGqld3gWoBNdAcORgXBNAT
	X/CSZy7v66Q80MOCjELKfxhcyFhdBdtjmkHptQiqwhTMKu6wtafTI7aGc1KP0xNalTCbjEEyr
	r2M9urQFsLdtjtM8Z995GdmEw8AWL/KQ3lOnMWN51os/7UbqFizXTxKmhcdaSR84Ue1kpqgYa
	tlrQALOOPASBeb+Auw9Y+Q0wFAaoStyOa3xgpRZSwudss8KVS3jOD7gxEjYFJ9fFv9+mOnQgd
	QxdXIL0To++WDVqJQTyfEHKMnGL36s/jZkWbq2DAKCQMVWlDAXvOvHPATeIsk/SFUtiumghqd
	lRfukN+kia9n8DBDgT460mtMLjM856w1Vqa9Ql+5/Vpd28ZicKgvKFFRhoa3eKb9m89RjoUNR
	c6kBzyk8ySpfr13Xt3gSzQ4BxgYv0i0PpqPXGXV1Xxhok/41flUywl4TYpph3hqQ/Sd5G0xFq
	f5qCVfOc/aHnTJo86O2lR4buNetxwHPPBX9haK69ZSH6oIfE0+8S3RZj9IXIDo5G82t93Rg9R
	g+JvlS9uZuBvfSXe3ywlgoVN/WxFNXNjqfQr3gpMEJdpRyToVkZcGKitXre+D3W1+CMT6tAtu
	a6RXali
Subject: External toolchain
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
X-List-Received-Date: Wed, 28 Oct 2015 18:42:23 -0000
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi,
=20
I am working on a image for my personal hardware.
In this case I use to prefer my own toolchain (used before in buildroot).
Now I am not sure how to proceed.=20
Is it possible to include the old toolchain with a few chance setting in loc=
al.conf
Or do i have to create my own Layer?=20
How should i start with, are there some examples?
=20
-Yocto Version YP Core-Dizzy 1.7.2
-My own customize hardware, with different interfaces
=20
=20
best regards Lisa=

