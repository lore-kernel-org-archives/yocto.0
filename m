Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7CDF4E009EB; Mon,  4 Feb 2019 07:35:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [62.149.156.116 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd11116.aruba.it (smtpcmd11116.aruba.it [62.149.156.116])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F5DEE00994
	for <yocto@yoctoproject.org>; Mon,  4 Feb 2019 07:35:14 -0800 (PST)
Received: from [10.0.3.91] ([78.6.3.122]) by smtpcmd11.ad.aruba.it with bizsmtp
	id YfbC1z00t2dwwGE01fbC9F; Mon, 04 Feb 2019 16:35:13 +0100
To: yocto@yoctoproject.org
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <c0b624bd-1c1a-3628-94e8-8e880263d289@faresoftware.it>
Date: Mon, 4 Feb 2019 16:35:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.5.0
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1549294513; bh=gZ4+R4N8rPm0nFDKKUWXV5zDz/dm6/b0EAJj1zRIpaw=;
	h=To:From:Subject:Date:MIME-Version:Content-Type;
	b=oLdlmeRbyKHYARriGuyrlNhEo+56wHCKJJx8fw703qICp1Sq2IEZzQKXferNo1iZO
	/+yn0X23wv18R8T2SuYctjdCUPURR6VdR5ShDDpe+4zqk/3yvEKQi96o6v+w9N6WbS
	AEv0z7BCWwC9hn2z9TpSac7a/tTGD7yJtTIgXsx1Qcv3oqCJMHkGRBRadWfpz0Sy0l
	Lw0oMgKbx+XQHqJqGu3c27OxpIHLI7r3+jQ0403F/yJ6uyZYyS1teurRRt+WKJmU3q
	vOTgOWhcq7X1u1VhopkZ8OtHl6GKTp9hV4Wmh/jofD+ptxhiIx98pXI4lmSMqo753+
	Fo1qfP5wl8tTQ==
Subject: GPG key used to authenticate DEB packages
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
X-List-Received-Date: Mon, 04 Feb 2019 15:35:17 -0000
Content-Type: text/plain; charset=iso-8859-15
Content-Transfer-Encoding: 8bit
Content-Language: it

Hi all.

My yocto image integrates package-management for package_deb.

I made my own debian repository and all works fine.

I miss only where Yocto save the gpg key  used to sign Release.gpg files.


So when I try apt-get update/upgrade onto my production system, apt-get
tell me that all packages are not recognized as authenticate.


Where is the gpg key to copy in production system?


Best regards,

  MZ


