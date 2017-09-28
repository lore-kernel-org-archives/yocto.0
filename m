Return-Path: <francescogiancane8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93CADE00C45; Thu, 28 Sep 2017 00:25:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (francescogiancane8[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67BD4E009F5
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 00:25:03 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id f4so646639wmh.4
	for <yocto@yoctoproject.org>; Thu, 28 Sep 2017 00:25:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=xnRcZ+9S+s+7RGXDH14yDizwVYrjlSWcsVk11Ht200w=;
	b=K+weaHAZ7znxkwpGGyi63LheacVo8Xd4P9TIuy8lpFc4/ZVF3TXmOBfjDXQwvCu34q
	EV3c/ZsQC8szdnDBuLysE99aAA2jqShCNU/MMU1LPuQHKzT0UBlSGGcYlqPclpjeC27V
	lb5yt7ara0rh1dT+av5SaSIZUDco4zUPz9BlT9Ki0VkU7DyhFjwBrgaANAPPv4T/Ncf9
	3+lICTD+L/FoNOmjPK2L4CTs8I5iNhw5LZiERbahyOAZiuFuSf77UpRN2syr26KgqCMS
	o77nTxG6OaDhz/ADrGfH4o3BZjYo26yuBT/iCtnC0IFNbLruk4yogRpn9fdSqQ6oVqyj
	ES9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=xnRcZ+9S+s+7RGXDH14yDizwVYrjlSWcsVk11Ht200w=;
	b=eCZ59lQjAC/gNhJlaFt/h6oox/KsCLKf0MJgT0vqQSpFHHSzxGHG5YXfyRqdviC8kz
	/Plz/lewy6iXv58H3FzVjRb0HH6DJ3rDTwvt4OTKonshbq9pq7fnfIdMstMdSG+7zOew
	EC1SOFtdCf9Zrk10/3GIDrPz6ehd1yES6kxQrNxsiy4UWIeYZmoDwhzY2jFkWivyVMiq
	bxBHhImjCXU/qqWWv5YSLs3nresTk3adWY7sWORgLynSceOV+g6e8ZwYwK/PLLhgymyk
	O/puJfooQYhoRYb6/9LibBeY0WIB2ssnikRi9N7QYeSeTUKawaBqL9BW9jw4OLTojAab
	1JzA==
X-Gm-Message-State: AHPjjUhSd3Ek0Op5Vxxu1vYY9iZG+CV05UWIdEU3ojEXQlPFsmTA7DAK
	UHBpUbuWo4ejfu2qbs3yKGAMxDH/ovOQHtsv7Rd+Dw==
X-Google-Smtp-Source: AOwi7QD+0mR/e3evWMSrtCQhPVV9hPPRraLrTjbgg/A3QXExxKbS1zCeehg2/I0ZEgCSQU+jkOHHHQREUEcGh6ZyXx8=
X-Received: by 10.80.182.195 with SMTP id f3mr4622211ede.127.1506583502727;
	Thu, 28 Sep 2017 00:25:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.142.236 with HTTP; Thu, 28 Sep 2017 00:25:00 -0700 (PDT)
From: Francesco Giancane <francescogiancane8@gmail.com>
Date: Thu, 28 Sep 2017 09:25:00 +0200
Message-ID: <CAEQ58si6bpFQ47B2XR6i3EbMF-z47ETYRvQtYAPCEcnwSTiqkQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: weston and xorg-xserver fail to build when using Raspberry Pi 3 user land
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
X-List-Received-Date: Thu, 28 Sep 2017 07:25:05 -0000
X-Groupsio-MsgNum: 38100
Content-Type: multipart/mixed; boundary="f403045c2acc814428055a3ace82"

--f403045c2acc814428055a3ace82
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

I noticed that if I changed the provider for virtual/mesa (in
particular, virtual/egl) to 'userland' for a raspberry pi 3 build,
bitbake fails to resolve the dependency chain, complaining about
missing RPROVIDES libegl.

The point is that NO libegl is ever provided, only "egl" package.
Thought it was a typo. No building errors so far.

What do you think?
Patch attached.
Francesco Giancane

--f403045c2acc814428055a3ace82
Content-Type: application/octet-stream; 
	name="0001-Fix-dependency-chain-of-PACKAGECONFIG-glamor.patch"
Content-Disposition: attachment; 
	filename="0001-Fix-dependency-chain-of-PACKAGECONFIG-glamor.patch"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_j844wknx0

RnJvbSBmNmJhNmFkMjRjMzhkY2Q0ZGMzN2M1NDU2NWQ3OWQyYTNmM2Y5YTc5IE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBGcmFuY2VzY28gR2lhbmNhbmUgPGZyYW5jZXNjby5naWFuY2Fu
ZUBwb2xpdG8uaXQ+CkRhdGU6IFRodSwgMjggU2VwIDIwMTcgMDk6MDE6NTYgKzAyMDAKU3ViamVj
dDogW1BBVENIXSBGaXggZGVwZW5kZW5jeSBjaGFpbiBvZiBQQUNLQUdFQ09ORklHW2dsYW1vcl0u
CgotLS0KIG1ldGEvcmVjaXBlcy1ncmFwaGljcy94b3JnLXhzZXJ2ZXIveHNlcnZlci14b3JnLmlu
YyB8IDIgKy0KIDEgZmlsZSBjaGFuZ2VkLCAxIGluc2VydGlvbigrKSwgMSBkZWxldGlvbigtKQoK
ZGlmZiAtLWdpdCBhL21ldGEvcmVjaXBlcy1ncmFwaGljcy94b3JnLXhzZXJ2ZXIveHNlcnZlci14
b3JnLmluYyBiL21ldGEvcmVjaXBlcy1ncmFwaGljcy94b3JnLXhzZXJ2ZXIveHNlcnZlci14b3Jn
LmluYwppbmRleCA4NjNkODBjZTQzLi4zM2ZlNjY4NDRlIDEwMDY0NAotLS0gYS9tZXRhL3JlY2lw
ZXMtZ3JhcGhpY3MveG9yZy14c2VydmVyL3hzZXJ2ZXIteG9yZy5pbmMKKysrIGIvbWV0YS9yZWNp
cGVzLWdyYXBoaWNzL3hvcmcteHNlcnZlci94c2VydmVyLXhvcmcuaW5jCkBAIC0xMzMsNyArMTMz
LDcgQEAgUEFDS0FHRUNPTkZJR1tkcmkyXSA9ICItLWVuYWJsZS1kcmkyLC0tZGlzYWJsZS1kcmky
LGRyaTJwcm90byIKICMgRFJJMyByZXF1aXJlcyB4c2htZmVuY2UgdG8gYWxzbyBiZSBlbmFibGVk
CiBQQUNLQUdFQ09ORklHW2RyaTNdID0gIi0tZW5hYmxlLWRyaTMsLS1kaXNhYmxlLWRyaTMsZHJp
M3Byb3RvIgogUEFDS0FHRUNPTkZJR1tnbHhdID0gIi0tZW5hYmxlLWdseCwtLWRpc2FibGUtZ2x4
LGdscHJvdG8gdmlydHVhbC9saWJnbCB2aXJ0dWFsL2xpYngxMSIKLVBBQ0tBR0VDT05GSUdbZ2xh
bW9yXSA9ICItLWVuYWJsZS1nbGFtb3IsLS1kaXNhYmxlLWdsYW1vcixsaWJlcG94eSxsaWJlZ2wi
CitQQUNLQUdFQ09ORklHW2dsYW1vcl0gPSAiLS1lbmFibGUtZ2xhbW9yLC0tZGlzYWJsZS1nbGFt
b3IsbGliZXBveHksZWdsIgogUEFDS0FHRUNPTkZJR1t1bndpbmRdID0gIi0tZW5hYmxlLWxpYnVu
d2luZCwtLWRpc2FibGUtbGlidW53aW5kLGxpYnVud2luZCIKIFBBQ0tBR0VDT05GSUdbeHNobWZl
bmNlXSA9ICItLWVuYWJsZS14c2htZmVuY2UsLS1kaXNhYmxlLXhzaG1mZW5jZSxsaWJ4c2htZmVu
Y2UiCiBQQUNLQUdFQ09ORklHW3htbHRvXSA9ICItLXdpdGgteG1sdG8sIC0td2l0aG91dC14bWx0
bywgeG1sdG8tbmF0aXZlIGRvY2Jvb2steG1sLWR0ZDQtbmF0aXZlIGRvY2Jvb2steHNsLXN0eWxl
c2hlZXRzLW5hdGl2ZSIKLS0gCjIuMTMuNQoK

--f403045c2acc814428055a3ace82--
