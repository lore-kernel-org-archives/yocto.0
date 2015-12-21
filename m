Return-Path: <neuberfran@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2834EE00C19; Mon, 21 Dec 2015 09:02:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (neuberfran[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f52.google.com (mail-vk0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1293E00B67
	for <yocto@yoctoproject.org>; Mon, 21 Dec 2015 09:02:52 -0800 (PST)
Received: by mail-vk0-f52.google.com with SMTP id a188so105038503vkc.0
	for <yocto@yoctoproject.org>; Mon, 21 Dec 2015 09:02:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=0soa2tgmkVba7vqn3HoyMEJgh4E4IiVRb3ZDwQ5i8Ew=;
	b=DEO3R9c6IWtGIcyl2P+r3SAHOsbb34H/HOo2ubVpaa5+qxbW3gI/j1pYbuKp48zLVv
	pMDRFJA+iTs9eXxAIvKsvPLr6Hmek0SIZz9/LftjmyipoKKcMrqt3lSQukrBKWuiZui8
	CFyPCQw6Sih4l84r8EJhkpDNiSLYNMIz0b8okV2IOTCN8O9S6jQouhWtmpsp81X1+rqU
	BL9qIn3KG6UYv3CjtP+Zvw7sEB6YURda2mSEtOteMtzoRbxvcKOX94bregYG2zRnheDt
	ufXG1J6YPz3Y52Jepl8ROIO683K/BX+OAerXYTzyRhG10GGzZ2prfc6pnXnxlPGV84sL
	3+Hw==
MIME-Version: 1.0
X-Received: by 10.31.32.139 with SMTP id g133mr13013906vkg.8.1450717371571;
	Mon, 21 Dec 2015 09:02:51 -0800 (PST)
Received: by 10.31.47.71 with HTTP; Mon, 21 Dec 2015 09:02:51 -0800 (PST)
Date: Mon, 21 Dec 2015 14:02:51 -0300
Message-ID: <CABWL1PmEgX2_xjXr5L1gWxkqrQwgtHxGU-w5G_oq8EzdLc+gog@mail.gmail.com>
From: neuber sousa <neuberfran@gmail.com>
To: yocto@yoctoproject.org
Subject: I'm trying install DDCLIENT in intel edison with yocto project
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
X-List-Received-Date: Mon, 21 Dec 2015 17:02:53 -0000
Content-Type: multipart/alternative; boundary=001a113dad649a235105276b7581

--001a113dad649a235105276b7581
Content-Type: text/plain; charset=UTF-8

I have errors: root@neuberfran:~# ddclient -v
Can't locate Sys/Hostname.pm in @INC (you may need to install the
Sys::Hostname module) (@INC contains: /etc/perl
/usr/lib/perl/site_perl/5.20.0/ /usr/lib/perl/site_perl/5.20.0
/usr/lib/perl/vendor_perl/5.20.0/ /usr/lib/perl/vendor_perl/5.20.0
/usr/lib/perl/5.20.0/ /usr/lib/perl/5.20.0 /usr/local/lib/site_perl
/usr/lib/perl/5.20.0 .) at /usr/sbin/ddclient line 25.
BEGIN failed--compilation aborted at /usr/sbin/ddclient line 25.

I this is* because libjson-perl *package

How to install* libjson-perl *package in yocto image ?

--001a113dad649a235105276b7581
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I have errors: root@neuberfran:~# ddclient -v<div>Can&#39;=
t locate Sys/Hostname.pm in @INC (you may need to install the Sys::Hostname=
 module) (@INC contains: /etc/perl /usr/lib/perl/site_perl/5.20.0/ /usr/lib=
/perl/site_perl/5.20.0 /usr/lib/perl/vendor_perl/5.20.0/ /usr/lib/perl/vend=
or_perl/5.20.0 /usr/lib/perl/5.20.0/ /usr/lib/perl/5.20.0 /usr/local/lib/si=
te_perl /usr/lib/perl/5.20.0 .) at /usr/sbin/ddclient line 25.</div><div>BE=
GIN failed--compilation aborted at /usr/sbin/ddclient line 25.</div><div><b=
r></div><div>I this is<b><i><u> because libjson-perl </u></i></b>package</d=
iv><div><br></div><div>How to install<b><i> libjson-perl </i></b>package in=
 yocto image ?</div><div><br></div></div>

--001a113dad649a235105276b7581--
