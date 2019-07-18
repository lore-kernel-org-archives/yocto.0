Return-Path: <jaymin.dabhi@vivaldi.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1D99E00D8A; Wed, 17 Jul 2019 22:50:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [82.221.130.149 listed in list.dnswl.org]
X-Greylist: delayed 528 seconds by postgrey-1.32 at yocto-www;
	Wed, 17 Jul 2019 22:50:03 PDT
Received: from smtp.vivaldi.net (smtp.vivaldi.net [82.221.130.149])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 44AB2E00B8F
	for <yocto@yoctoproject.org>; Wed, 17 Jul 2019 22:50:03 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by smtp.vivaldi.net (Postfix) with ESMTP id 3568A3FB96
	for <yocto@yoctoproject.org>; Thu, 18 Jul 2019 05:41:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.10.3 smtp.vivaldi.net 3568A3FB96
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net; s=mail;
	t=1563428474; bh=NYNPHQwpXddsulm2MMD9IY7CFrNFqeIQBNBDWKZawf0=;
	h=Date:From:To:Subject:From;
	b=rGolmhKwxX7uwo7Q9M6tmXBRUs603KgNrnvPKgHECx9dhxZLB+YQNEHxk607U3vrQ
	OlImlUY17bjpvybv1DQIs8S191MXKNE/wmFTsB5nhKr20Dy/lKSaO5TgWMBKukMJR2
	zfmNOXgpqGaA1ZEbHOLNDw2celbzI3zsJm1vXj/4egVRf2zca3r1Fx/AeZYlZ7OhH4
	Etro9Ts9xgL9FZOZxycsDWhORm/CznHBbBpIz9WLgXEqkgFtp0/7PEw/yLOrv2SJhD
	l2Nhs74HbrH8EfmaOD/Ffi4b5QdMUf4pSeY7WbUN+IrVSh2qPxZW7Lhyh7bHhCyJHC
	8Y/xwumAaHSVQ==
X-Virus-Scanned: Debian amavisd-new at smtp.vivaldi.net
Received: from smtp.vivaldi.net ([127.0.0.1])
	by localhost (mxo-new.viv.ext [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 7izCv6vryOzq for <yocto@yoctoproject.org>;
	Thu, 18 Jul 2019 05:41:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.10.3 smtp.vivaldi.net 4AF353FB02
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=vivaldi.net; s=mail;
	t=1563428470; bh=NYNPHQwpXddsulm2MMD9IY7CFrNFqeIQBNBDWKZawf0=;
	h=Date:From:To:Subject:From;
	b=h1hlbKNhV67FQbfr4t2IMARyZZp0FHkJTz+UqN8Vir3G/eubvfTz+eSSwk4ZHodDT
	OgMEylkwNK9PSxhfmGAfN7H/VpaCL1aOPNjEXI773xqb10dVh2BPsOPNGipKoTd7l1
	PrlQTMXVSck2xnmge7jB9kYbJM3z+IslxqV6l7isNkZXEQOBbxYXnQ4nlqXynct/Bm
	wqQ7vpNVOrNluVDiIdm6IVMYyy6njhAguL/5qg0xqRAS9Tx0NzEghr3WsIwMwWMgmj
	DE8O9AgT8iAxKaCyUJVt2KqBHKFwt4vOTmedMx86qMwvLyKf4w03c6A8EgunjcMkOy
	w/sy4UqT4gHCw==
Date: Thu, 18 Jul 2019 11:11:05 +0530
From: jaymin.dabhi@vivaldi.net
To: yocto@yoctoproject.org
Message-ID: <2df6a579f4b90431256b6e19a41d852f@vivaldi.net>
X-Sender: jaymin.dabhi@vivaldi.net
User-Agent: Roundcube Webmail/1.3.9
Subject: List of Supported Python versions
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
X-List-Received-Date: Thu, 18 Jul 2019 05:50:03 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Hello Team,

Which Python, Python-OpenCV, Python-Numpy, Python-Scipy and OpenCV 
(max)versions are supported in Yocto 2.0.3 (Jethro) distro version?

Can I get list of notes in which version of all supported modules have 
been mentioned?


Please let me know.

Regards,
Jaymin

