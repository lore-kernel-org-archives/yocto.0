Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF0CBE00BC8; Mon, 29 Oct 2018 11:31:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.53 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f53.google.com (mail-io1-f53.google.com
	[209.85.166.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D09F1E00AC5
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 11:31:58 -0700 (PDT)
Received: by mail-io1-f53.google.com with SMTP id n18-v6so5609578ioa.9
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 11:31:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=deserted-net.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=gt+8vbVEJGoQDdD+vPhiieuuvwXltQ5W3Gd0WVqpyuc=;
	b=UldnzG6MHnVkS/lsIEPIYqa1rcJ9QKkjnWU9L2RU7BlK0/1bM5rqKQyZS1VYeR2f7Q
	ismomwm6bUTN6brZWJIhcSB8pf0Kxm4ukcSkFPFdYuEYT86uL+7jP0B7BpZ4oTu4eBKa
	/dQ2e9wmOQQB1QSa964IsasyvNv9YFp0Rnto7y7onDuO26AOH2HXiDvnKSyGXnaHjc2W
	OZN1c5JLKmh2xVoEHTvdNuQAiFlNRZ7jkzcEFsipzjRKf0QJecRfLzWzUYTJv2oRzsia
	t+GBhCbvkkwNncQZumdKtWb1vgPevBNf1ZeolzK4qw/o1Zla1iYXrDqcJOSFsr1BZ/DK
	/vAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=gt+8vbVEJGoQDdD+vPhiieuuvwXltQ5W3Gd0WVqpyuc=;
	b=LPTDH5xdc50ftdXsvli/cfK8n4r3XmcrFviEwGN0NxvaSuChsm3/XD7XkV61FFxGV9
	zvOmhmLMAPblv0joR2w2MsNIU+LWK+FZRs3HbPtOrpo4JNHiPFgAUDVNzCLGczKJTZjZ
	9sjGr280O7GTkk19LcyVvx95kqca32FwYBft3J9HtlHetcIQ1zU5PMBMJgumrK7s/7cL
	NSRCOMTaGzM3M9HfUDLRwP79GEKdbayfTQSDhsmosfIyfnHacUxtapkaIFrub8mciUCd
	yYYj3ZFTLh6REqKSZcVPdACN+WTwsOVO6ZIYPfNG5XPOaDObj1jDOUmsd1RM8UL4aWSY
	QbWQ==
X-Gm-Message-State: AGRZ1gJHHMujO9ekDXtTPJB2eNxypOwVS2WOk47HLREjPqkSJkz8Ap1+
	djxekHUB24hqOydFRNpZNIGKcF07lcbeVZOacfTrvLW2+xbAnw==
X-Google-Smtp-Source: AJdET5fWBKWxMm6VQxp0Yb7Sudh2rcCpZdyACcY/G3axjP/zyhcvxuI4phBfCGmIeoFLeOcWiNm+bzQeLCP8yr2e/mU=
X-Received: by 2002:a6b:bd45:: with SMTP id
	n66-v6mr9338436iof.25.1540837917715; 
	Mon, 29 Oct 2018 11:31:57 -0700 (PDT)
MIME-Version: 1.0
From: Joe MacDonald <joe@deserted.net>
Date: Mon, 29 Oct 2018 14:31:46 -0400
Message-ID: <CANBf+V1cOSgDpoKvmz4shhZEjCKXtYAe9gz13K2PPjuTWf7KRA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-selinux][sumo][PATCH 0/7] Refpolicy updates for sumo
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
X-List-Received-Date: Mon, 29 Oct 2018 18:32:00 -0000
Content-Type: multipart/alternative; boundary="000000000000be2680057962482b"

--000000000000be2680057962482b
Content-Type: text/plain; charset="UTF-8"

I'm sending this out  as a follow-up to our discussion from last week. This
set will be placed on the newly-created 'sumo' branch.  I plan to follow up
with a slightly different version for a new 'thud' branch as well, at which
point things should be stable enough on those two branches that I can
finish up the refpolicy update (2.20180701) I'd started a little while
ago.  After that, I think top of my list is to clean up some (I think
unintended) behaviour in the _git recipe variants.

Comments / suggestions / etc. more than welcome.

-- 
Joe MacDonald
:wq

--000000000000be2680057962482b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I&#39;m sending this out=C2=A0 as a follow-up to our =
discussion from=C2=A0last week. This set will be placed on the newly-create=
d &#39;sumo&#39; branch.=C2=A0 I plan to follow up with a slightly differen=
t version for a new &#39;thud&#39; branch as well, at which point things sh=
ould be stable enough on those two branches that I can finish up the refpol=
icy update (2.20180701) I&#39;d started a little while ago.=C2=A0 After tha=
t, I think top of my list is to clean up some (I think unintended) behaviou=
r in the _git recipe variants.</div><div><br></div><div>Comments / suggesti=
ons / etc. more than welcome.</div><div><br></div>-- <br><div dir=3D"ltr" c=
lass=3D"gmail_signature" data-smartmail=3D"gmail_signature">Joe MacDonald<b=
r>:wq</div></div>

--000000000000be2680057962482b--
