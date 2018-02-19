Return-Path: <sarrazin.thibaut.celad@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B7E99E00E36; Mon, 19 Feb 2018 08:00:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sarrazin.thibaut.celad[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f172.google.com (mail-wr0-f172.google.com
	[209.85.128.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 221AAE00DD3
	for <yocto@yoctoproject.org>; Mon, 19 Feb 2018 08:00:39 -0800 (PST)
Received: by mail-wr0-f172.google.com with SMTP id o76so10136916wrb.7
	for <yocto@yoctoproject.org>; Mon, 19 Feb 2018 08:00:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=to:from:subject:message-id:date:user-agent:mime-version
	:content-transfer-encoding:content-language;
	bh=qu1WltHZtY7PuPQZXODdsJS2eiR3EXozZq2rmQmI5zE=;
	b=fRWugVs5MJJA9kRt8BHlGA37/hc1ZJa5esqg5ZSnOfXDJfgA8XtuAhRItwhnPb3Q2Q
	I+uOd7btwKW87/5r3Uzhv5yd0ZJgKJ72tEO8xPz15KpCTyAVF+T35KPbja/ZMk4e8r1G
	i1/Wvt2bQkv50RzEJuQmPbbqhFkNOF5WVqCULD9r5jlSuZRxqcFW/rdblWE+nq806wSP
	XDciqCnBWLv2xLNrDVtwyJGFxOKGcJVL4mdzsLNlXQEOcuk2udQaCa7N33nBRU0+9Zuo
	N+BYDerp+EGxfSg7pqD0kSSOGDJCewzepiXy73CvVAwwQD0zdBnVcrWv1Z8N5aMmU7I/
	HR4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:to:from:subject:message-id:date:user-agent
	:mime-version:content-transfer-encoding:content-language;
	bh=qu1WltHZtY7PuPQZXODdsJS2eiR3EXozZq2rmQmI5zE=;
	b=pSuIZ5mj2IGgdKNEHx6uNYKMIg5It+hM590CGRzXcK9Yd/2Ezr5rnbzUYYW/PnFOdM
	6l49KV13q5DVMSmLOz0AdigCtxwQexzW7745SAoW/dqFDc9FQTeHyeT77Q17xtl58Vas
	rh6QUSl0S9tjZDSOFmeMIrpiOAV8/PJPPfljOBtercZITCbA6ttUnBr+gi18mEUlCAo2
	t69TXb3ePxiWoYkwrwIOfR8jK1P4m4LNX/TGZNbZ8lTV5gfTnLKCQkLqYsSQqOnu/efd
	P6GnklqUl6fT2SLKzn22PgC9xYDfu6L/db02hW1asrmi7jYGlZTWqSemYnpoGSsAweux
	uTHw==
X-Gm-Message-State: APf1xPAFIplf4CmjDve0TUQEBDtDnFwC8F6+z+MPAGfDdev1ZQ6tuaFw
	bCNk6HmPWd7MVmOstgW8XgDPPhcg
X-Google-Smtp-Source: AH8x225IZRIc/fIFCUiDmLXVFaRIbb4otzh2+EKb2VmKKdlouJZ4e7efWTw3opbE/p8DqO69Gfqlyw==
X-Received: by 10.223.175.50 with SMTP id z47mr12768329wrc.198.1519056038545; 
	Mon, 19 Feb 2018 08:00:38 -0800 (PST)
Received: from [192.168.1.146]
	(LStLambert-658-1-124-250.w217-128.abo.wanadoo.fr. [217.128.22.250])
	by smtp.gmail.com with ESMTPSA id
	q1sm23574970wrf.40.2018.02.19.08.00.37 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 19 Feb 2018 08:00:37 -0800 (PST)
To: yocto@yoctoproject.org
From: Thibaut SARRAZIN <sarrazin.thibaut.celad@gmail.com>
Message-ID: <11f25cc0-ad3a-0550-68f3-2ea962e68427@gmail.com>
Date: Mon, 19 Feb 2018 17:00:34 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.2
MIME-Version: 1.0
X-Mailman-Approved-At: Tue, 20 Feb 2018 08:19:05 -0800
Subject: add a new partition during flash with mfgtools
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
X-List-Received-Date: Mon, 19 Feb 2018 16:00:40 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: fr


Hello everybody,


I don't find solution to add a new partition to my emmc directly during 
the flash. I don't know if I need to modify the u-boot-fslc recipe or if 
there is another solution.

board : mx6qroj


Thanks you all  for your help,


