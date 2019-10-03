Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1335AE00D8E; Thu,  3 Oct 2019 05:13:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
	[209.85.166.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9659EE00D8C
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2019 05:13:50 -0700 (PDT)
Received: by mail-io1-f44.google.com with SMTP id a1so4914829ioc.6
	for <yocto@yoctoproject.org>; Thu, 03 Oct 2019 05:13:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=DcKVhu9mlXXIcuAVIQURpDkoAQQLLxxpRtqySXe11E4=;
	b=IEoc04dVNdY14kWEN0gBeDPQE/kr4BY/CX3ihvD4OGcnclrKnMdXS7YJg2JneuAyRf
	1kG/tEW8KBxgq0e0dcjj8069n3gfNipOBZdhavLaKxP/Kub1T31uv6njbRN1QSq8/jvo
	/OHEQySDyhhxfnk40PY/6qoMgdDEnP/LBO14vrlnu+ErBYWvm9K6lLNBkKcPJ9uJHQBW
	hlacGmD0/1JPhhKszknE0oE/kiZgW/+pEA3F1XaSzlvQ12dob7laT3jkry13KO07uB58
	s1LuTKMMDlUQgIDd7qX0/uNeoFDF0AvAZ+R4AEH8xhxEuRVR2GddODr13bv37bOZmRze
	HJcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=DcKVhu9mlXXIcuAVIQURpDkoAQQLLxxpRtqySXe11E4=;
	b=MZ17iMiWzjgR+aewHdpB4E2OvBRs9oM9dPgUvDyWiYJQeyIdXQ3wcmLqCtUTKhCJRt
	SlyV3lTr885KZ+PvuPEX2kJi7+rZ88BmSWlcaJuitgrrdWhwvjdnv6GlXefocThMfE8+
	rprUvKoNmqK4zBA7r/dK4l1I7yT3BEHPSaBurH4YSPZcYtcD9CicM+u+e78Oxh8BsWFI
	MhqpD/FiP7e3Uh0NRLgk8mJMK17YoEHSYzK9GyZuKxAOG9ch+fjX5iyxqcXk9hg2IcgD
	K6WWp4cf07m5Pf0SQiAxsIoPhIr//ZD1ceKGsLXtQVgIr1/xphG9m6KGEWuJEVCsgQJu
	eTFQ==
X-Gm-Message-State: APjAAAVleyabZCu14cp8HLHdCqaq/Bhv4skliYXrLPKn4LMH8TIUEbPq
	KpxwoNBHFcZbLrtn5sVyrXzexvNimnpUODLrx2Lhw+Y+
X-Google-Smtp-Source: APXvYqwd3zA2BxG2cAqVLowNPJeV7mzJvsk+t0othGW3+x3flZAngthgOu39Fxf8ozO+2sBSXgWN4gDXpcJ2zUtgqK8=
X-Received: by 2002:a5e:df04:: with SMTP id f4mr8080193ioq.192.1570104829774; 
	Thu, 03 Oct 2019 05:13:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c85:0:0:0:0:0 with HTTP;
	Thu, 3 Oct 2019 05:13:49 -0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Thu, 3 Oct 2019 22:13:49 +1000
Message-ID: <CAA=hcWTcATzOmKvw0F=c0FQNvzwJF9UXiC-O2T2Mg+Q4rmWU6Q@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Yocto initramfs image format
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
X-List-Received-Date: Thu, 03 Oct 2019 12:13:52 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

What image format similar to zImage-initramfs I could define in
IMAGE_FSTYPES to create an initramfs image and to run the image in
RAM?

Thank you.

Kind regards,

- jh

