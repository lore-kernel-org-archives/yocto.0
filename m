Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E8378E00CB9; Thu, 17 Jan 2019 06:07:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [62.149.158.116 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 63 seconds by postgrey-1.32 at yocto-www;
	Thu, 17 Jan 2019 06:07:09 PST
Received: from smtpcmd03116.aruba.it (smtpcmd03116.aruba.it [62.149.158.116])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 47CDAE00C46
	for <yocto@yoctoproject.org>; Thu, 17 Jan 2019 06:07:09 -0800 (PST)
Received: from [192.168.24.172] ([79.2.65.198])
	by smtpcmd03.ad.aruba.it with bizsmtp
	id RS641z00M4GeqKz01S64hk; Thu, 17 Jan 2019 15:06:04 +0100
To: yocto@yoctoproject.org
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <0dd6be51-9a1c-c514-6cfb-2f8bc3464b2a@faresoftware.it>
Date: Thu, 17 Jan 2019 15:06:04 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.3.3
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1547733964; bh=+q5R/T5sy4IS60lBNQS/p5oUI79D07VzWjtwDTx2r0U=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=lqQ9LfB51Dw/7m8cMNipntEqvOEJKHuhHK5Up6ogqZqe5KGXr+R2hz8Ss3BqbSNSf
	mWxbY8xxUtl1viT5sci9R5UC0Fpu0XA4kCAyzlP4+IN0SlJCkqIaUXL7B4jvF5f0W2
	UiDTxpdaMmOjEysgZSmhJGqX9TMA0UPow39d5jsQ/uZr8DkahNLv8MhUx4EW92x93v
	LdH3NctUehRcToynjtB0KnvAjI2unrxSVQItC0xSCdlcyjwdxQ6uMsOLYcOZ6S24oE
	r/H5UXLvUhH34+uz3rH0RwsAXwdGiXPAZk5fpt3s36NZpOO8cXkQ007d9JBQ3PnOR6
	89J9X5C2zSHKA==
Subject: Fetch from git every bitbake
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
X-List-Received-Date: Thu, 17 Jan 2019 14:07:11 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

How can I force the pull from git repository of my app every time I do

bitbake app


Best regards,

   MZ


