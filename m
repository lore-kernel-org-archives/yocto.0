Return-Path: <jaghu@google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 178A4E00F7F; Tue,  6 Sep 2016 08:35:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM, TVD_SPACE_RATIO autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.4 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.48 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 254ACE00F7A
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2016 08:35:14 -0700 (PDT)
Received: by mail-vk0-f48.google.com with SMTP id v189so103420740vkv.1
	for <yocto@yoctoproject.org>; Tue, 06 Sep 2016 08:35:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=fqtHis6PVF9SrJuqPJDMFqEJzrTBqQkvtRsV5u5ldPg=;
	b=Hux5BBJH5wbO/gbAgESrfGZTYiqnH6t7+q9hqSb1rFr0VlrDpJb6YcnAS83yRCD914
	V1OTiquj7x5rch4NZTkKUm0oTmHFdKGthYFaJaQwhe3hx3EzTct1nmXd6ujeQTbF2oqJ
	dU6JHoraRkOkN38v8P33s8gzhzCfs1J2C/wirZr9rtcAroQikihJqd0qAulveRYpofwI
	hz2vts/sC6pPy7oYoUsxbD904PAtHLQo8ZDYUjOb0vXnNMFgFsOvevuaPNwfCia/nXfS
	qhZUwO2S/U/JLss2veSVYKIadTo8rZvAMnXSC/31mvbjrVmqYoBvnSAfcQYFVe0TZ0Dl
	IGjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=fqtHis6PVF9SrJuqPJDMFqEJzrTBqQkvtRsV5u5ldPg=;
	b=XHN+RrTbMsORpxJWIiThba+dDCI3RvcorBN2U0/+o32Zqpjs9jNnmVRBHQF7d83s9F
	jgxsMvHZWsdVf1vYcIKo/ELjyOFcwp+rgjlpQsjGq11umWuq1wuIrtMhGlXtf4q/pGtZ
	+jD+WyUDBX8xh+J9yZfq6TLuU5h8g8X0AO0L+j60LwAmpntICbEiRwKn3u8qDAWuFpzv
	ZQ7HSGceCdTdAQG1EmjEspKJFIKHkDqV3wlKrCZj4Ihvm1DTQDQ2On1WplhScAS1v5KB
	oYROJK0c/guuKqUf2vbG75huR/hDywmbY7AlYjzOiBhvhHbqkTLfXEwO0DUVSBEQHjkM
	1GvA==
X-Gm-Message-State: AE9vXwNB1Vs9jFHE8UAnOjOW7diqD9dZXIqoSc85lx9hMetBi4HYwITFNPJEaxJ5LkXxvXQi7S97Xe1DSdXUwNUY
X-Received: by 10.31.114.193 with SMTP id n184mr2590739vkc.54.1473176113656;
	Tue, 06 Sep 2016 08:35:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.92.200 with HTTP; Tue, 6 Sep 2016 08:34:53 -0700 (PDT)
From: Jaghathiswari Rankappagounder Natarajan <jaghu@google.com>
Date: Tue, 6 Sep 2016 08:34:53 -0700
Message-ID: <CANsWYUUGjBPOE1UeWiOQOqLhv2uvqxcfkCyXaQqZS1ssutsefg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: jaghu@google.com
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
X-List-Received-Date: Tue, 06 Sep 2016 15:35:16 -0000
Content-Type: multipart/alternative; boundary=94eb2c149578f279a1053bd88aa1

--94eb2c149578f279a1053bd88aa1
Content-Type: text/plain; charset=UTF-8



--94eb2c149578f279a1053bd88aa1
Content-Type: text/html; charset=UTF-8

<div dir="ltr"><br></div>

--94eb2c149578f279a1053bd88aa1--
