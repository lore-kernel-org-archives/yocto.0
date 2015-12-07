Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE9EEE00A7D; Mon,  7 Dec 2015 09:48:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F6EAE00349
	for <yocto@yoctoproject.org>; Mon,  7 Dec 2015 09:48:33 -0800 (PST)
Received: by igcph11 with SMTP id ph11so79012699igc.1
	for <yocto@yoctoproject.org>; Mon, 07 Dec 2015 09:48:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=uH0Dt8q3hXq+NpkQRxKdrV3qf3DebTBqvvwLCTeyxRM=;
	b=tPuMMoajJuekHFAmNTGX6YpRFDVY1I5srXvIJVx+9Kt24iz9a3sESBxylIAlSgrRQQ
	MPjH/919yYe11Zec5xb7qpjCicUBj1DVl2PRr7C0WEGfQRCwEnzWHtgB9s7jdj/2oLCd
	hjus+BQoHsx+YXrGgjd7eVYhPr2NnTVCO9fl2EiAHi7S59Kd+QfsHuQ0IwXFFt/iW2JN
	tmaudAiz71JudYRXNkTK1mIzAm/eghiWLDWT0ZYqyIaC/FZg1eJZ1Cz/TyG+alJyDVPE
	VzmWx3DVhaMR4ytU6gqMf78c7bPOF8m4YUt1Ucw9FFCCdPxgYG8JZP5tyNh/OQxzFxcX
	m/eg==
X-Received: by 10.50.79.202 with SMTP id l10mr18520226igx.46.1449510512946;
	Mon, 07 Dec 2015 09:48:32 -0800 (PST)
Received: from [192.168.141.85] (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	j10sm6725523igx.13.2015.12.07.09.48.31
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 07 Dec 2015 09:48:32 -0800 (PST)
To: Bryan Evenson <bevenson@melinkcorp.com>,
	Michael Habibi <mikehabibi@gmail.com>
References: <CAOsp8o_WfYUB2nBXmGdVTF27RmkjzbvYJrHrW+R-Lv-P8WzS3A@mail.gmail.com>
	<BN3PR0501MB1090CB712DB3C7DE23120AA3BB0F0@BN3PR0501MB1090.namprd05.prod.outlook.com>
	<CAOsp8o9N0K0+ZgUcS7vdQE55NDaRW1F7a+cZsN3TTvA4LUW8hw@mail.gmail.com>
	<CAOsp8o9EtJmV97pQRrB1Wt9hr4S1b0vbNKgL6bPTuuO-L25GWQ@mail.gmail.com>
	<BN3PR0501MB109081CFF721741E6E0189EDBB0C0@BN3PR0501MB1090.namprd05.prod.outlook.com>
From: Trevor Woerner <twoerner@gmail.com>
Message-ID: <5665C66D.7060305@gmail.com>
Date: Mon, 7 Dec 2015 12:48:29 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <BN3PR0501MB109081CFF721741E6E0189EDBB0C0@BN3PR0501MB1090.namprd05.prod.outlook.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Best practice for files copied directly into sysroot?
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
X-List-Received-Date: Mon, 07 Dec 2015 17:48:38 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 12/04/15 09:03, Bryan Evenson wrote:
> Although I am having issues with the license; I haven't figured out where to put it and what to set LIC_FILES_CHKSUM to in the recipe so that bitbake can find the license.  If anyone has a good answer for that, let me know.

You could try:
    LICENSE = "CLOSED"

then you don't need a checksum line.

