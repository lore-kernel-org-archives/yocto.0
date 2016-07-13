Return-Path: <jags.gediya@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DCB0E00DA5; Wed, 13 Jul 2016 07:53:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jags.gediya[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CFE71E00CCD;
	Wed, 13 Jul 2016 07:53:31 -0700 (PDT)
Received: by mail-it0-f41.google.com with SMTP id f6so7952047ith.0;
	Wed, 13 Jul 2016 07:53:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=wVleaHrxT0U0ZhCWHBLTintxeERlWRdX3jAul4lWQxc=;
	b=Wl5+3wcO/zIr/lMz72oK8l4V90ctueBuOBz/s3UovsC+90DrRF1qDRupIqSwSIc+ak
	cNMCxZKcLu41M+MyhVABsbRIfBdp/8inB4klLX2ogPjdnJkN52TGclk6UvRnGw37KgKr
	zATIQvHR2HGk7ZZenv4ollKBAJD9d4AZPk5HMaFH+60DP+NMbXecwAi7c9nlW63vCHMX
	6hw0bxMEB/PUVPFZPMNKOimAXeDhsJu0SBU2G5GJv2QEkkFLorc54z6yKMNdKZTNXeA9
	02b83f1MLhdsZn9sRp7B4E8YpxfkAz305a+MOnoqWP6GH3upLVD5beiDM3yqz5pHz594
	7FAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=wVleaHrxT0U0ZhCWHBLTintxeERlWRdX3jAul4lWQxc=;
	b=EGx8iKd3GvnXwNBtRl41FLJkWPsZZMW8LfxqhCdfgQKymli5Qa4V6FZC9btRAFOcQc
	7a0rql//Wagk0IsSCKY9aQGlwnPa5LiR5mC/Oc6C7KOkuBZ8ao9d+c6fpi0nEiRykNNl
	qORfRmSi1WSqxr3+HjCPnBK/PGuZllNMzs41xIRmz2l6lud7DvxnXbZa/MLQ8DMWizqL
	o308ZY7DUa+Hr6A5VNTTggl2p/AtjIz/SivgqC6dUczZz5qADyPAhjusrUirgr5fKdnd
	7N92byCq1j5e4mayR6oTckOGgkODaTMgXhIHtMRVWyCMNFIJkz3ygTxdxqqcdXph1T5Q
	glog==
X-Gm-Message-State: ALyK8tLLdaEKMMQJZ0iDA2l5JmD0s4vL4KU652iQ/2fqonURZN+qaj8jzqvQBqtfWyv9kCneTiBjJEopeGJrew==
X-Received: by 10.36.129.86 with SMTP id q83mr9080973itd.35.1468421610706;
	Wed, 13 Jul 2016 07:53:30 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.113.203 with HTTP; Wed, 13 Jul 2016 07:53:30 -0700 (PDT)
From: jags gediya <jags.gediya@gmail.com>
Date: Wed, 13 Jul 2016 20:23:30 +0530
Message-ID: <CAP3RZojxQ2g-_i+tzw-u3CcUvRXokua8MPkUQadZTRFUZ3ZBWQ@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>
Subject: how to clean externalsrc?
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
X-List-Received-Date: Wed, 13 Jul 2016 14:53:35 -0000
Content-Type: multipart/alternative; boundary=94eb2c06018e7c9d930537858c47

--94eb2c06018e7c9d930537858c47
Content-Type: text/plain; charset=UTF-8

I am building external kernel source for imx7 board.

I have done below changes for it, it is working fine while build.

inherit
externalsrc

EXTERNALSRC = /path/to/kernel/
EXTERNALSRC_BUILD = /path/to/kernel

but when i do clean through bitbake, clean is not happening in externalsrc
pointed directory. I want clean to be working on externalsrc too. what
modifications need to be done in yocto?

--94eb2c06018e7c9d930537858c47
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdj48ZGl2PkkgYW0gYnVpbGRpbmcgZXh0ZXJuYWwga2VybmVsIHNv
dXJjZSBmb3IgaW14NyBib2FyZC48YnI+PGJyPjwvZGl2PjxkaXY+SSBoYXZlIGRvbmUgYmVsb3cg
Y2hhbmdlcyBmb3IgaXQsIGl0IGlzIHdvcmtpbmcgZmluZSB3aGlsZSBidWlsZC48YnI+PC9kaXY+
PGRpdj48YnI+aW5oZXJpdCBleHRlcm5hbHNyY8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAgPGJyPkVYVEVSTkFMU1JDID0gL3BhdGgvdG8va2VybmVsLzxicj5FWFRFUk5B
TFNSQ19CVUlMRCA9IC9wYXRoL3RvL2tlcm5lbDxicj48YnI+PC9kaXY+YnV0IHdoZW4gaSBkbyBj
bGVhbiB0aHJvdWdoIGJpdGJha2UsIGNsZWFuIGlzIG5vdCBoYXBwZW5pbmcgaW4gZXh0ZXJuYWxz
cmMgcG9pbnRlZCBkaXJlY3RvcnkuIEkgd2FudCBjbGVhbiB0byBiZSB3b3JraW5nIG9uIGV4dGVy
bmFsc3JjIHRvby4gd2hhdCBtb2RpZmljYXRpb25zIG5lZWQgdG8gYmUgZG9uZSBpbiB5b2N0bz88
YnI+PGJyPjwvZGl2PjxkaXY+PGJyPjxicj48L2Rpdj48L2Rpdj4NCg==

--94eb2c06018e7c9d930537858c47--
