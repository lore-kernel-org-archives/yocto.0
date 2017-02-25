Return-Path: <ranshalit@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 290E0E0095F; Sat, 25 Feb 2017 13:37:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ranshalit[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 759F0E00804
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2017 13:37:43 -0800 (PST)
Received: by mail-wm0-f47.google.com with SMTP id v77so37402722wmv.0
	for <yocto@yoctoproject.org>; Sat, 25 Feb 2017 13:37:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=7JJkGOjxF7sUsbX1H1yCJwMxglQqSg5A5dlE1hEa70Q=;
	b=eRUzlU1oP5wAT+XNMjAcF3ZQWm/8j3ZzIZaKi16N/09b9RQbS+F/dsQJEtTdJYV4eP
	6NK7wmuqIFF1nkKRU1CL3RvghGNjlirkAaj8Xwvugz3WHxUpCGJevxPKvqWggfWIF5aW
	/bJAwjlnSOLt4ubIHIfEyJtOVmh1QELOu7vSEP/qaFfgLpv89tPNLDF58RxyJ9uDNcR/
	H6yYqMe352r4S40JrdNiTxmcGkxPKdVpnCoarc9DYBQ4KIiGe/jQ2wponuSDk7sXpUm9
	yABPiOHh2cnIcDf7mBPkhFgbMYgpCIcZjMvY/cSGU4PUVHm6W+oVq0nhduqt31iXA/sY
	E+TQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=7JJkGOjxF7sUsbX1H1yCJwMxglQqSg5A5dlE1hEa70Q=;
	b=CFqHgR1jHKqnaFMpuCQWBjB3hbhiaCoDq3G0TllPQ2I5Ea4P4Yac+6HAJGmqBijyyp
	pz8s2quMgFLvcZQ+MxDS4+UxifjWK3GBr4TA6drAFBJYyW3EViWdp1wzUVkFQRvEHB5n
	/8ynBknaZRuAhkJZ6b95MqGA0lj9ZoGk+oOOmj0tiCSGBcOel6DLS0XFmnpRHt5Dx2bl
	i+B7epBbBz2JJXt82TfgTzg6qyRJLk61AODmPlPtwb7DdjIWumcgIBgcUVuiA82cPYt7
	6IrlqgZoklw2Unq0rHgiuLbXisGW2mgtWQXH/0wAi+VCPGZZpO4nkm9Y8+mV10AswONh
	txrw==
X-Gm-Message-State: AMke39l0b+LyNn0VvDXV0pNnA0bW9TDzpH8KoQ3vXSQwgLs2bPosxznaLkmUbiCPwr2q/SlbhSs5ppuoWYREQg==
X-Received: by 10.28.216.14 with SMTP id p14mr7284960wmg.56.1488058661574;
	Sat, 25 Feb 2017 13:37:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.80.149.23 with HTTP; Sat, 25 Feb 2017 13:37:41 -0800 (PST)
From: Ran Shalit <ranshalit@gmail.com>
Date: Sat, 25 Feb 2017 23:37:41 +0200
Message-ID: <CAJ2oMhL-3AEgtoqZpQF2KkPMae_yhVhzvMo=17+-nzusS-EVsQ@mail.gmail.com>
To: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: hddimg vs iso
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
X-List-Received-Date: Sat, 25 Feb 2017 21:37:45 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

I try to understand the difference between hddimg and iso, but yet
didn't find the answer for that.

I think both contain bootloader, and probably hddimg is format for usb
harddisk and iso a format for usb cdrom.

Is that correct ? Is there actually format for "usb harddisk" and "usb cdrom" ?

Thank you,
Ran

