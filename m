Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3CD0E00C9C; Sat, 10 Aug 2019 03:16:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.158.131 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Sat, 10 Aug 2019 03:16:02 PDT
Received: from smtpcmd04131.aruba.it (smtpcmd04131.aruba.it [62.149.158.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 482A2E009EA
	for <yocto@yoctoproject.org>; Sat, 10 Aug 2019 03:16:02 -0700 (PDT)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd04.ad.aruba.it with bizsmtp
	id nNEv2000b2wfazh01NEv5Q; Sat, 10 Aug 2019 12:14:56 +0200
To: Yocto discussion list <yocto@yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <98045ddf-89a0-e3f4-0d08-324c9d08f6c9@faresoftware.it>
Date: Sat, 10 Aug 2019 12:14:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1565432096; bh=7e2Hko56vZsS4yJQ5M/1H4rf3q2u3I/gIKVFKUXRLYs=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=iuXsnm2puZiyCG9VDXJGaEdEfbT9AraaksDm1K5op0xvM3MPTH0JzVImof2Uj4Qq9
	sYOT+KOCG/1Wh3JlCkOelHrTWxIIk+ipctTQtgSvFe/ydBEl+R9y/QUvvaMn+Og4en
	tqmi4cbcRTJRjzQfFYs2Ff4eM3GPoxG5cJXbPY42nxLn6wx7vVnT6D8RZeF/CjIjEf
	v3QH/hNYGdrzJ+57f9i5TWHHRqk/JDdCq+eje7H4QhQ5PwsbwEKcnM9rQj9jsryjIv
	sgp8jQ6Y9Qm2cVh63cUvAgKqykpOUBDOpNyyM5P4eerTR5QAvZviwg6Jp+T9UaswKe
	Hittqz7aUA3mw==
Subject: Adding dtb to machine.conf extending it
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
X-List-Received-Date: Sat, 10 Aug 2019 10:16:03 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: it

Hi all.

I need to add my dtbo to overlays.

I'm using RaspberryPI 3 with pyro and meta-raspberrypi

I have to add tft35a.dtb to /boot/overlays in the file image.


Can I extend raspberrypi3.conf?


MZ


