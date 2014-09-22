Return-Path: <sodovkar@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A4441E007A0; Mon, 22 Sep 2014 10:07:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sodovkar[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.54 listed in list.dnswl.org]
Received: from mail-la0-f54.google.com (mail-la0-f54.google.com
	[209.85.215.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AF28BE0034C
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 10:07:42 -0700 (PDT)
Received: by mail-la0-f54.google.com with SMTP id ge10so6987268lab.41
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 10:07:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject
	:content-type:content-transfer-encoding;
	bh=iynhVjD/23oPtrjvEFFBXrKHCN3faMMkAC3rz48RQxQ=;
	b=Bz+xF6yn1AIV6BuHq06BS1lD6/R4AzOUnfPb5VWtLnL6Y/WHc40PWFbsdZQ0XQgi2X
	QAoYJuTJtO0UTEJ7N4nwk4+qPPchcGSyZpO94jI7vsu+eaX4QjDlEMboO0J+CRO/iXBj
	HVf4iodZOF7zB1/jFg/EN/I7gP6XfPkjSLyIRZQNeBuQefEKcwD4szER5hqA9rsV5QH2
	znUskN+t3F1Qg83OIm/jHv97W9fK/nLJAqiKZesycX1PRbEV0mpDn4KvSO6j4naXJ3LY
	iA3RfIRGjVpCoh7DQhMh04QqZ4AGRRU7Q4XLduGP/SplWlM2ZV4dKQNJ+uEqmaF6QcCd
	iDpQ==
X-Received: by 10.112.72.10 with SMTP id z10mr3910005lbu.87.1411405661742;
	Mon, 22 Sep 2014 10:07:41 -0700 (PDT)
Received: from ?IPv6:2a00:1028:86f0:2742:922b:34ff:fed2:fd27?
	(dynamic-2a00-1028-86f0-2742-922b-34ff-fed2-fd27.ipv6.broadband.iol.cz.
	[2a00:1028:86f0:2742:922b:34ff:fed2:fd27])
	by mx.google.com with ESMTPSA id wj8sm3950516lbb.34.2014.09.22.10.07.39
	for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 22 Sep 2014 10:07:40 -0700 (PDT)
Message-ID: <5420569D.4090306@gmail.com>
Date: Mon, 22 Sep 2014 19:04:29 +0200
From: Soda <sodovkar@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.8.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
Subject: midnight-commander sub-shell
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
X-List-Received-Date: Mon, 22 Sep 2014 17:07:44 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,
the mc package is working well in my distro. But I cannot enable the 
subshell (ctrl+o) even if mc -V shows
"With subshell support as default".  Any advices please?

