Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4A52E00C12; Thu,  6 Dec 2018 06:46:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [62.149.158.146 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpweb146.aruba.it (smtpweb146.aruba.it [62.149.158.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C378E00BB5
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2018 06:46:15 -0800 (PST)
Received: from [192.168.0.238] ([93.61.39.49])
	by smtpcmd05.ad.aruba.it with bizsmtp
	id 8emE1z00513dqtH01emEjh; Thu, 06 Dec 2018 15:46:14 +0100
To: Yocto Project <yocto@yoctoproject.org>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <b982d678-8d83-cbdf-27ef-4df8a5f29d7f@faresoftware.it>
Date: Thu, 6 Dec 2018 15:46:16 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.3.2
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1544107574; bh=I5SOZoQJTh5ffsRCiXpz9dxiTUfnPgLMEsiWamViuGQ=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=Vcu74zEB3KdtagLrk0hZBqSi0MM5oRJpQT1RxRpa0Xem1R1aRLidUAMbJ7lXwtrBy
	xPO4tvpcll6ptjex7XxakCQUOhp7O6SokBiYHzJPOlGBaZ13t3edf9wFaq/fBubW/c
	7tVyLX33pQkkI+hpUYz4ro1RTKwr/D98tDm9WmvZUIbezh+1ShMbAE95SHUwF2SqjN
	O5rFxUPySY1aBCgBjhkhtYAW/IDLZ6vbC+nTawxm+jgKvcGptvmy/9eRyXl/M+4SoX
	tnL9EBm9nZOdkhMQKlJe2KjgqO7ZkmQPbnwarbPUsLVF57lZj0tX1epc/I4I6I7mRb
	N2yYNTOWSZosQ==
Subject: Content of a packagegroup
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
X-List-Received-Date: Thu, 06 Dec 2018 14:46:19 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 7bit
Content-Language: it

Hi all

There is the possibility to known which recipes are included in a 
packagroup?

Toaster can be the solution or there a cli command to know which recipes 
are in a packagegroup?


MZ


