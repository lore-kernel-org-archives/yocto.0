Return-Path: <andrei@gherzan.ro>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3343AE00739
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 11:59:04 -0700 (PDT)
Received: by yenl5 with SMTP id l5so1257582yen.35
	for <yocto@yoctoproject.org>; Wed, 25 Jul 2012 11:59:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-originating-ip:from:date:message-id:subject:to
	:content-type:x-gm-message-state;
	bh=ryBfBGKhMYQ+XnmdlpbSVuxproPmrMk9dQkHOgA0KOM=;
	b=J31VzqzwFDMjmip7hPuiTGQmQpHFCgOJ9ihFbWUkJZMEzcQ1ZiX9YexXP4rb9ex2/n
	7g8W5A1HWxWK9MrBrR8fqgPDEIg/mAqrneNlTv2NYoxqUYp+gc7UbQSuHj6FU6h8rcBF
	oUFEZdoYIKTlcecp3c7DliG9Q0WinSnrU0H94/k/L63hFQitLznEEDTGULLRc0vsdiAY
	2UMgATmKfz2w27Kj1mLmAE17BM5c8Cz0JAIdMGWIVz5ogcdES5if32qXwFxwxt0j9mn6
	4mnCOZbnNabI7WGUEXlcJTlb7TBEpqp0amRCIqfHfaZKEVa1R+UW+kO3zZIk3VIyJpgh
	RlRw==
Received: by 10.42.255.68 with SMTP id nh4mr26639360icb.38.1343242743251; Wed,
	25 Jul 2012 11:59:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.139.164 with HTTP; Wed, 25 Jul 2012 11:53:26 -0700 (PDT)
X-Originating-IP: [79.117.115.156]
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 25 Jul 2012 21:53:26 +0300
Message-ID: <CAK18fxEgmH_vMXtvXfO5JEVMWizcA5kwf6+WJi7+rPxDNsMAYA@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQm3TgF4/4uAV6bztGZSysZ3gGdxITwRqoBkujtQiwQo3W4GBWPSPBltjRdhkmYyoHkKqJtK
Subject: Fail to rm a 4G file...
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 25 Jul 2012 18:59:04 -0000
Content-Type: multipart/alternative; boundary=bcaec50148c18f017f04c5ac12a2

--bcaec50148c18f017f04c5ac12a2
Content-Type: text/plain; charset=ISO-8859-1

Anybody faced this error before and can save me from searching the roots of
the problem?

| 53135360 bytes (53 MB) copied, 1.21693 s, 43.7 MB/s
| rm: cannot remove `<img-name>.sdimg': Value too large for defined data
type
| ERROR: Function failed: do_rootfs

P.S. Using yocto master + rpi layer.

Thank you,

ag

--bcaec50148c18f017f04c5ac12a2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>Anybody faced this error before and can save me from=A0searching=A0the=
 roots of the problem?</div><div><br></div><div>| 53135360 bytes (53 MB) co=
pied, 1.21693 s, 43.7 MB/s</div><div>| rm: cannot remove `&lt;img-name&gt;.=
sdimg&#39;: Value too large for defined data type</div>

<div>| ERROR: Function failed: do_rootfs</div><div><br></div><div>P.S. Usin=
g yocto master + rpi layer.</div><div><br></div><div>Thank you,</div><div><=
br></div><div>ag</div>

--bcaec50148c18f017f04c5ac12a2--
