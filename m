Return-Path: <petrcvekcz@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA1E7E00D03; Sun, 19 Nov 2017 14:10:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (petrcvekcz[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.171 listed in list.dnswl.org]
Received: from mail-wr0-f171.google.com (mail-wr0-f171.google.com
	[209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FF40E00CBF
	for <yocto@yoctoproject.org>; Sun, 19 Nov 2017 14:10:34 -0800 (PST)
Received: by mail-wr0-f171.google.com with SMTP id k18so1493396wre.1
	for <yocto@yoctoproject.org>; Sun, 19 Nov 2017 14:10:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-language:content-transfer-encoding;
	bh=tUPSwWeMKu1PnfvqG1hAhP1Hakx3+wtH65uCM1vOTU4=;
	b=pWdxaqHKYBp1Ho+Svr7BY+/d+669Z21yI3tP5a7Jo94jpMXT6K/gxv67qf2BWcxR3t
	zh1a4J20F4Yi1iFoCU+fkM5o2sWpzZA7HlZpEZLwmuGtSQFj5GGxSifg77cBRAipgIw8
	R2YNi5haQGzKwz8flyNMyhp0olBYUrzo+d6G2YxAbMBjoK3BBHjsn2QWvyO9jORvHP+z
	5lBncFGr98TseLAtCCA11jqpuhujH0HwYPzEgOBRCD4+uTznup81Hf/12DJmrbv5SoAH
	foluwXol24RLLlgjTGvmUhao8oDoBs6nymj3COtN0+wj7kzUNQ2us2rvvIo9+2ZJND9E
	6Zqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-language:content-transfer-encoding;
	bh=tUPSwWeMKu1PnfvqG1hAhP1Hakx3+wtH65uCM1vOTU4=;
	b=QP92gf0RXzDORX9kfrF3YdJP0Cgi3GH+J7B1uTMbErr83zFCRw19+jUUNy2VAFaYmf
	HV+K1T/5plJ54jV1i9+EwMxl+jtkhBTKCCdNE1W7UH5PWDYJG1wPm4Ydw0wVmwssn22F
	0ep5qsvIscfdKDzLe2PFmH+tyAd6HSUZrhQ2ACof5nPLdKkO6GlUYa8+/G9Fl6fHkrM+
	lWWq6D/S7tQePe+G3PnRQ7PHknNpTeKSW9bW/btSZ6A2UvK4DryT/O49DGr55l2nmwao
	3v1YqBTaAxVbtb9AIUOaW+W+Y00tKnlzV/f7MZW4jiwVTVn3AkautwK9te1JaTWiatIa
	gh/w==
X-Gm-Message-State: AJaThX584Bf7e+x8eIYgYpYxVyIn2FifNmLJxLd5Q3vdqadOkJrljWNr
	38VlNhn3UFrU6urB4yGqQVCChFkx
X-Google-Smtp-Source: AGs4zMaHVgjrR9rsFprYvMoWeLnrbh10DGrVtsRY6VlAqMxOpVVBnA/80YjJWALt7PFZnm6QrIkBug==
X-Received: by 10.223.157.138 with SMTP id p10mr10282623wre.28.1511129433075; 
	Sun, 19 Nov 2017 14:10:33 -0800 (PST)
Received: from ?IPv6:2001:1ae9:ff1:f191:7cf1:2a52:24fe:d1f3?
	([2001:1ae9:ff1:f191:7cf1:2a52:24fe:d1f3])
	by smtp.gmail.com with ESMTPSA id
	f10sm8720634wrg.20.2017.11.19.14.10.31 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 19 Nov 2017 14:10:32 -0800 (PST)
To: yocto@yoctoproject.org
From: Petr Cvek <petrcvekcz@gmail.com>
Message-ID: <f7be7a33-611c-9bba-ccc7-6bcfda53e969@gmail.com>
Date: Sun, 19 Nov 2017 23:11:13 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
X-Mailman-Approved-At: Mon, 20 Nov 2017 10:30:36 -0800
Subject: [libfakekey] Missing new version releases in yocto repository
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
X-List-Received-Date: Sun, 19 Nov 2017 22:10:36 -0000
Content-Type: text/plain; charset=iso-8859-2; format=flowed
Content-Language: cs
Content-Transfer-Encoding: 7bit

Hello,

I was playing with libfakekey and I've found the source repository at

http://downloads.yoctoproject.org/releases/matchbox/libfakekey/

is a very old one.

Is this repository the official source or is it obsolete? I'm using two 
linux distributions (buildroot and Slackware) and bugs on v0.1 make it 
impossible to use this version ("<" and ">" key presses etc.).

If this repository is obsolete and not for active use I can gladly 
resend the info to maintainers of distribution I'm using.

best regards,
Petr Cvek

