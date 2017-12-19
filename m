Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 38E5DE00C0F; Tue, 19 Dec 2017 07:23:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f51.google.com (mail-pl0-f51.google.com
	[209.85.160.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C942FE008FB
	for <yocto@yoctoproject.org>; Tue, 19 Dec 2017 07:23:47 -0800 (PST)
Received: by mail-pl0-f51.google.com with SMTP id b12so7130883plm.3
	for <yocto@yoctoproject.org>; Tue, 19 Dec 2017 07:23:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=kj+LWSXOOZLNlGrRQ91EIhHgByAgarOnmT1531gVtDA=;
	b=cDRmXTPhzZCzACvP6+NAZcIOkng/52fkjOAGQQFZHjDGf7TNNaDxipmyrd0wBAkWgU
	MbIpSO/yam8EoTP5wUJTlaz9RsaD2I+cobmfV99n5v/uSzIgOA1Ai0zLIt1YzKPSdVms
	SHZ9FSc6QbK0K89LoSn1sOMcXiibgbMZSuVmCUn8dZ7Gv8JQL/ObXz8+wvNPSadvoosa
	c9Uk/+GXghE84w6WdIb1iSjegBaIwmgPfphtIKh6gnE4f5Yv+s1Kb8tkWfu/FaXSOTyV
	KOkCiQFQY8VkYguUaTMXcDTSCoXvOiTbEkmEFwL3chRj1JgEAxIoMKaJYzo6D648Ct/d
	0gnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=kj+LWSXOOZLNlGrRQ91EIhHgByAgarOnmT1531gVtDA=;
	b=iYSU4F1aH9gtOxWBWOk7Ig7Z81rwzEfutq3caBkIcZEKMc+3XqZVs3nfav7CNTMM64
	SiSwOxARx494b3JTymGBHMJs6Jade26zau2lowJBt4Jsh52/TsAg+aB3VLoGa4puKRca
	oTG6yiZBhYCm5I9Z7cEkdiHic/4DYm2zd4TEVXDk1kZ+VkB2jkdY3FaGotZZawF1gb3c
	Yz+4RoAhVwmej12zmfgzt1LHdVFzEs4SO1IK5tAnxgq2tHOCeebEO+sn4WhcS/8tpDcr
	qaebrm/EagiX7TfTod5wFpmdWG0YPosCCCLnOfbKK5hk+kntQMpcAnyi6NkVIAsy1QMX
	eoaA==
X-Gm-Message-State: AKGB3mLRdt60WZQa2dViufvWkncTmsdrcQyLG7OEAryQHzdp2AvBw3yY
	q4GWQlqWAHVjpO8JDnx93sbJ2adW3inQT3MSUDk=
X-Google-Smtp-Source: ACJfBou9gu6IUZMxhO/V8msjDOFZrnVZdEG9/TmmGNzfAH80TGm3uCrDN96rrXjFmPqjweTlseZ9eP6PRhYgQihYhDE=
X-Received: by 10.84.236.7 with SMTP id q7mr3592882plk.401.1513697026980; Tue,
	19 Dec 2017 07:23:46 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Tue, 19 Dec 2017 07:23:46 -0800 (PST)
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Tue, 19 Dec 2017 16:23:46 +0100
Message-ID: <CAPb0b+OT2_4F8mcXmw=bBMxFQgOHW0wBtWY2R_P4=JxWa-seNg@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: rfkill cannot open control device
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
X-List-Received-Date: Tue, 19 Dec 2017 15:23:48 -0000
Content-Type: multipart/alternative; boundary="f403045ff638973fb20560b30d8b"

--f403045ff638973fb20560b30d8b
Content-Type: text/plain; charset="UTF-8"

i used core-image-minimal for a raspberry pi 0w. But i get rfkill can not
open control device. when i give rfkill , i get the syntanx output, this
means it exists.
the wifi driver is installed.

What is the rfkill device? is it /dev/rfkill ?

--f403045ff638973fb20560b30d8b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>i used core-image-minimal for a raspberry p=
i 0w. But i get rfkill can not open control device. when i give rfkill , i =
get the syntanx output, this means it exists. <br></div>the wifi driver is =
installed.<br><br></div>What is the rfkill device? is it /dev/rfkill ?<br><=
/div><br></div>

--f403045ff638973fb20560b30d8b--
