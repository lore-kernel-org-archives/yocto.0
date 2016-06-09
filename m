Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C738E00D57; Thu,  9 Jun 2016 10:29:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.194 listed in list.dnswl.org]
Received: from mail-pf0-f194.google.com (mail-pf0-f194.google.com
	[209.85.192.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9F69E00D4F
	for <yocto@yoctoproject.org>; Thu,  9 Jun 2016 10:29:03 -0700 (PDT)
Received: by mail-pf0-f194.google.com with SMTP id t190so3246588pfb.2
	for <yocto@yoctoproject.org>; Thu, 09 Jun 2016 10:29:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:user-agent:in-reply-to
	:references:mime-version:content-transfer-encoding;
	bh=Veyrb38jsfBlzdEP9j5EDV6AY+GjFbdJu0lcALFLESM=;
	b=PPGl4OLBV9zDOdQMF8dpPBfmQKm37TV8bLmlM98Qpsq/rL4Apf8rSWK1g5NdZseEdg
	q66rFnyZoBalL2i7I66mNnh0tlhJHUqLVQwYVqFjBoqJjqUxR00/Y4FtYFH4G8weYnQU
	/SngFD5Cs8hnd0Sj3oroY9VTuVjGkwt/9SzTwTxOBUKekSb8P4JjbiaLtUH6hRRYKQA9
	aaPa+2vIcExwPI9cAuenFvUll9X3RfNvVTgf0Gtpn6Lxunr/UbmV0sIDiObz1jDi1+VT
	bEHLiHIshV23HVRokTR2BiT3jiUL14mfFn733H5cVYQhHJqZ8IFf0bBMXB/Ioy9TfuL2
	F/7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:user-agent
	:in-reply-to:references:mime-version:content-transfer-encoding;
	bh=Veyrb38jsfBlzdEP9j5EDV6AY+GjFbdJu0lcALFLESM=;
	b=WpVtHr+i19mVXDU9slhHZ/4ULM0VanfyNyZ5/M0ZK0/Dg15AKHo400UFJ615l9S3P8
	ZvwA+BJKK3x55mbiIVVshqB4E8i+7Bk5i/uRlB09b8zpAEM68GseAhrieI/+tBjcmMy8
	VMnKqRJUO++r/i6C+ZWJxK8vYwVqmLOyNQ5GSdZywG6q2ysZwfwDO1C5B//ijlC/7ZEd
	7XlE84s1kDaKQiZknV8wITUp+gBH5fvO0YXGtot9dHOjwzms/UqutCPCHm+/oBYEm+JW
	FaeeCJg6ujAXI7XCJw2uwoK5dt0JALfTRDFzTxEyAurdXTvdpB2k/LaGsCs11f+zguVk
	BQrg==
X-Gm-Message-State: ALyK8tLidUyk9C/ZOLP6THSGcSFY3YcGDd1ojudlFLgHf666OlCb6GqjOjEu8voDN6bCYA==
X-Received: by 10.98.5.196 with SMTP id 187mr5626751pff.133.1465493342820;
	Thu, 09 Jun 2016 10:29:02 -0700 (PDT)
Received: from rjs-zotac.streifs.net (ip68-7-48-20.sd.sd.cox.net. [68.7.48.20])
	by smtp.gmail.com with ESMTPSA id
	xn3sm11423358pab.32.2016.06.09.10.28.54
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 09 Jun 2016 10:28:59 -0700 (PDT)
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 09 Jun 2016 10:28:53 -0700
Message-ID: <14822256.OY8cr5cEx1@rjs-zotac.streifs.net>
User-Agent: KMail/4.14.10 (Linux/4.4.10-200.fc22.x86_64+debug; KDE/4.14.17;
	x86_64; ; )
In-Reply-To: <OFE919EA27.F1B27E75-ONC1257FCD.0052E7E6-C1257FCD.0054015A@esa-grimma.de>
References: <OF631D75D9.DBAD0BFE-ONC1257FCD.0030963E-C1257FCD.00317358@esa-grimma.de>
	<CAHiDW_HFdwtg+eQDVzvwPKKA18ruRisYyiqbUZ5W0WDW6HqhCg@mail.gmail.com>
	<OFE919EA27.F1B27E75-ONC1257FCD.0052E7E6-C1257FCD.0054015A@esa-grimma.de>
MIME-Version: 1.0
Subject: Re: Antwort: Re: Problems with do_rootfs when changing the user password
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
X-List-Received-Date: Thu, 09 Jun 2016 17:29:07 -0000
Content-Transfer-Encoding: base64
Content-Type: text/plain; charset="iso-8859-1"

SGksCgo+IAo+IEhvdyBhcmUgdGhlIHN0ZXBzIHRvIChyZSlzZXQgdGhlIHJvb3QgcGFzc3dvcmQ/
CgpJIGFtIHVzaW5nIHNvbWV0aGluZyBsaWtlIHRoaXMgdG8gc2V0IHBhc3N3b3JkczoKCmluaGVy
aXQgZXh0cmF1c2VycwoKIyBzZXQgaW1hZ2Ugcm9vdCBwYXNzd29yZApST09UX1BBU1NXT1JEID0g
InNlY3JldCIKREVWX1BBU1NXT1JEID0gImhhY2ttZSIKCkVYVFJBX1VTRVJTX1BBUkFNUyA9ICJc
CiAgICBncm91cGFkZCBkZXZlbG9wZXJzOyBcCiAgICB1c2VyYWRkIC1wIGBvcGVuc3NsIHBhc3N3
ZCAke0RFVl9QQVNTV09SRH1gIGRldmVsb3BlcjsgXAogICAgdXNlcmFkZCAtZyBkZXZlbG9wZXJz
IGRldmVsb3BlcjsgXAogICAgdXNlcm1vZCAtcCBgb3BlbnNzbCBwYXNzd2QgJHtST09UX1BBU1NX
T1JEfWAgcm9vdDsgXAoiCgAKCj4gCj4gSWYgeW91IGxpa2UgSSB3b3VsZCBwcmVmZXIgdG8gc29s
dmUgdGhpcyBxdWVzdGlvbiBsaWtlIGEgdHV0b3JpYWwuCj4gCgpTaGFtZWxlc3MgcGx1ZyBoZXJl
LCBwbGVhc2UgZXhjdXNlOiBJIGFtIGV4cGxhaW5pbmcgdGhpcyBhbmQgbW9yZSBpbiBteSBib29r
ICJFbWJlZGRlZCBMaW51eCBTeXN0ZW1zIHdpdGggdGhlIFlvY3RvIFByb2plY3QiLgoKPiBUaGUg
c3RhcnRpbmcgcG9pbnQgaXMgYSBvd24gbGF5ZXIgKCJteUxheWVyIikgYW5kIGEgcGFzc3dvcmQg
Cj4gKCJteU5ld1Bhc3N3b3JkMTIzNCIpLgo+IAoKVXNpbmcgeW91ciBvd24gbGF5ZXIgZm9yIHlv
dXIgY3VzdG9tIGRpc3Ryby9pbWFnZSBjb25maWd1cmF0aW9uIGlzIHRoZSB3YXkgdG8gZ28uIEp1
c3QgcHV0IHRoZSBjb2RlIGFib3ZlIGludG8geW91ciBpbWFnZSByZWNpcGUgbGlrZSB0aGlzOgoK
U1VNTUFSWSA9ICJDdXN0b20gaW1hZ2UgcmVjaXBlIGZyb20gc2NyYXRjaCIKREVTQ1JJUFRJT04g
PSAiRGlyZWN0bHkgYXNzaWduIElNQUdFX0lOU1RBTEwgYW5kIElNQUdFX0ZFQVRVUkVTIGZvciBc
CiAgICAgICAgICAgICAgIGZvciBkaXJlY3QgY29udHJvbCBvdmVyIGltYWdlIGNvbnRlbnRzLiIK
CkxJQ0VOU0UgPSAiTUlUIgoKIyBXZSBhcmUgdXNpbmcgdGhlIGFzc2lnbm1lbnQgb3BlcmF0b3Ig
KD0pIGJlbG93IHRvIHB1cnBvc2VseSBvdmVyd3JpdGUKIyB0aGUgZGVmYXVsdCBmcm9tIHRoZSBj
b3JlLWltYWdlIGNsYXNzLgpJTUFHRV9JTlNUQUxMID0gInBhY2thZ2Vncm91cC1jb3JlLWJvb3Qg
cGFja2FnZWdyb3VwLWJhc2UtZXh0ZW5kZWQgXAogICAgICAgICAgICAgICAgICR7Q09SRV9JTUFH
RV9FWFRSQV9JTlNUQUxMfSIKCmluaGVyaXQgY29yZS1pbWFnZQppbmhlcml0IGV4dHJhdXNlcnMK
CiMgc2V0IGltYWdlIHJvb3QgcGFzc3dvcmQKUk9PVF9QQVNTV09SRCA9ICJzZWNyZXQiCkRFVl9Q
QVNTV09SRCA9ICJoYWNrbWUiCgpFWFRSQV9VU0VSU19QQVJBTVMgPSAiXAogICBncm91cGFkZCBk
ZXZlbG9wZXJzOyBcCiAgIHVzZXJhZGQgLXAgYG9wZW5zc2wgcGFzc3dkICR7REVWX1BBU1NXT1JE
fWAgZGV2ZWxvcGVyOyBcCiAgIHVzZXJhZGQgLWcgZGV2ZWxvcGVycyBkZXZlbG9wZXI7IFwKICAg
dXNlcm1vZCAtcCBgb3BlbnNzbCBwYXNzd2QgJHtST09UX1BBU1NXT1JEfWAgcm9vdDsgXAogICAi
CgpCZXN0IHJlZ2FyZHMsClJ1ZGkK


