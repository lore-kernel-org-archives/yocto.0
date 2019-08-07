Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 75B82E00D8E; Wed,  7 Aug 2019 01:11:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.41 listed in list.dnswl.org]
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com
	[209.85.210.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10FD4E00D8A
	for <yocto@yoctoproject.org>; Wed,  7 Aug 2019 01:11:29 -0700 (PDT)
Received: by mail-ot1-f41.google.com with SMTP id q20so100804837otl.0
	for <yocto@yoctoproject.org>; Wed, 07 Aug 2019 01:11:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=u+3FarTcJoocITliJ3f7j4sOYnl8Z1WQWiylHDZgNps=;
	b=Df2q8FF4xh6WAFmGhc2VAafhPxT5qU+k2AFxtLQPAXgzPNJtaTMB13oEEF2yNQjkjV
	H2+ms0gXo/8yNfM15jnMTLBgtQTliz2Fvuh7bygsZllr40AX55xU9E5CDu7L2G5ax0h9
	IyfBL6o/owqprw41wJMWL9VAutoH3oCiulKAtZckyNKYzXaK/IPUIDZ5lVF1rgQP3Fs+
	iqEd3bwDSzAkRPyL+8f/yAfVoDqna6dd9laAtXHYg1mI88YUpfrOO4f1Y5tydC97SGZE
	HhTRCt/tIuO8KOadACz0kdY6hQlS9zZKHQDUJst5i5u+aHIY/j+ulpdggeHbGugic9Qz
	kDDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=u+3FarTcJoocITliJ3f7j4sOYnl8Z1WQWiylHDZgNps=;
	b=Ciqzv6IVbjhrtLnfjLXQlNclZ/jCmfbHHqLnPHeFxsWyOcQfHLt2PgvfKHCiYmtLf1
	HziRryRRdbmGSDbvFAKBQmVVpnH4wEeUjppiQaGSeNYF/eahClQL5Ixb8RU/ZthY7S+v
	u7lWZpsHm1cQS4Er9/ETCiBiYlvBg+ONKfXf05LjyZNm31QQiGpJJIPNTW123KneTmn2
	qL4MwPpIsLRvZ6rwwKY/ebXQmjV06oR1XwlG1dzgE9Jyil/bw6ZlOwDFddOoLzPYkLV+
	38/gK9Cuc+YgZxhRBOQNvpGta+eiOWTVLmR7I1hxJ3q5qY28/jjBze3TdFkzH2umAGYB
	vIqA==
X-Gm-Message-State: APjAAAVW4H4Fo/JGLH07du9+hekAWrALGBZeSZx96s1ofuBg8kFt0HC2
	noAiE5DrN7ldSq1XAN/CKkUxc89DJ3Gr2rpkIRnGHYeI
X-Google-Smtp-Source: APXvYqwLu9C2g/FfcINa+P1Pd33H7RQA2wYg7H7GufU+oieJXJlXg8UoUbN4AIvC60lRd4srqRvPVL846w+JJU5B/MA=
X-Received: by 2002:a5d:8f8a:: with SMTP id l10mr1002835iol.306.1565165489154; 
	Wed, 07 Aug 2019 01:11:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP;
	Wed, 7 Aug 2019 01:11:28 -0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Wed, 7 Aug 2019 18:11:28 +1000
Message-ID: <CAA=hcWS8cd8oXtY2z=JMAL6BB=tMSEi6yZMxSzz2fK8zyHnGEQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: How to create a service only startes at shutdown process?
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
X-List-Received-Date: Wed, 07 Aug 2019 08:11:30 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

Most of the services are started in boot, how can I have create a
service only to be active in shutdown (not in boot) to clean up?

Thank you.

Kind regards,

- jh

