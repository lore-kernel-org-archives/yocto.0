Return-Path: <Aaron_Wright@selinc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7912CE00CFF; Mon, 18 Dec 2017 14:20:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.117.214.142 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from scamp.selinc.com (scamp.selinc.com [74.117.214.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EAC01E00A9C
	for <yocto@yoctoproject.org>; Mon, 18 Dec 2017 14:20:44 -0800 (PST)
Received: from pps.filterd (scamp.selinc.com [127.0.0.1])
	by scamp.selinc.com (8.16.0.21/8.16.0.21) with SMTP id vBIMBVGr008431
	for <yocto@yoctoproject.org>; Mon, 18 Dec 2017 14:20:44 -0800
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=selinc.com;
	h=to : mime-version :
	subject : message-id : from : date : content-type; s=SELinc2017;
	bh=7v2WOZ13lFnp23LiKzL1xtfWJVFKu4M5RrjabCXfYBs=;
	b=b8vZnlraABNt+TCKmGiFYUm1+J1lmvk9j5yQF6xsMVSsrRJgtFB0+AItB4iHxUHZPPtd
	Q40luaipQdUf53iyVqx4wz0/AYpnhVWIbM/epHxG4tt+ybXOwEPc5iiXeTwOXdMUgCDa
	RF+lwZUSBRWAcVSlAq4fr2Xbb6AxJc/GH5g1w4M6/BL3M49bouze8SpXwDopsv6Sc+X3
	yuvT7TwT1bDp3KLq2QVq2jtU17U6k7b+CrQBQnQV9ycymcAqTPGGuNqXIPOTB0hUaGYL
	bn3soSor+MSvrv8z/JEIatoRIuHaGOoZs6kc8OlJmdKAANZ/p+gTqjXwG1PLAHa7xTsO
	iQ== 
Received: from edison.ad.selinc.com (edison.ad.selinc.com [10.100.0.15])
	by scamp.selinc.com with ESMTP id 2ew2b2wfrf-1
	for <yocto@yoctoproject.org>; Mon, 18 Dec 2017 14:20:44 -0800
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: A1764F43:186958F6-882581FA:00780D74;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0.1FP6 April 21, 2016
Message-ID: <OFA1764F43.186958F6-ON882581FA.00780D74-882581FA.007ABF6E@selinc.com>
From: Aaron_Wright@selinc.com
Date: Mon, 18 Dec 2017 14:20:43 -0800
X-MIMETrack: Serialize by Router on Edison/SEL(Release 9.0.1FP9 HF139|October
	06, 2017) at 12/18/2017 02:20:43 PM,
	Serialize complete at 12/18/2017 02:20:43 PM
X-Proofpoint-Virus-Version: vendor=nai engine=5900 definitions=8749
	signatures=668649
Subject: How to use iconv natively in do_compile?
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
X-List-Received-Date: Mon, 18 Dec 2017 22:20:45 -0000
Content-Type: multipart/alternative;
	boundary="=_alternative 007ABF6E882581FA_="

--=_alternative 007ABF6E882581FA_=
Content-Type: text/plain; charset="US-ASCII"

I'm on pyro, and I have a do_compile step that converts some files to 
UTF8. I use iconv to do this.

According to `oe-pkgdata-util find-path /usr/bin/iconv`, iconv is provided 
by the glibc-utils package. So I tried adding glibc-native or glibc to my 
DEPENDS, but that didn't work. 

I also tried virtual/libiconv-native without any luck. virtual/libiconv is 
listed in ASSUME_PROVIDED but iconv isn't in HOSTTOOLS. I'm not 100% sure 
how those variables are supposed to work.

What do I put in my DEPENDS so that iconv is natively available during 
do_compile?

--=_alternative 007ABF6E882581FA_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">I'm on pyro, and I have a do_compile step
that converts some files to UTF8. I use iconv to do this.</font>
<br>
<br><font size=2 face="sans-serif">According to `oe-pkgdata-util find-path
/usr/bin/iconv`, iconv is provided by the glibc-utils package. So I tried
adding glibc-native or glibc to my DEPENDS, but that didn't work. </font>
<br>
<br><font size=2 face="sans-serif">I also tried virtual/libiconv-native
without any luck. virtual/libiconv is listed in ASSUME_PROVIDED but iconv
isn't in HOSTTOOLS. I'm not 100% sure how those variables are supposed
to work.</font>
<br>
<br><font size=2 face="sans-serif">What do I put in my DEPENDS so that
iconv is natively available during do_compile?</font>
<br>

--=_alternative 007ABF6E882581FA_=--
