Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4AEAE00CF3; Wed, 27 Sep 2017 02:17:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.171 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f171.google.com (mail-ua0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA78CE00CEC
	for <yocto@yoctoproject.org>; Wed, 27 Sep 2017 02:17:43 -0700 (PDT)
Received: by mail-ua0-f171.google.com with SMTP id q29so8070619uaf.3
	for <yocto@yoctoproject.org>; Wed, 27 Sep 2017 02:17:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=CQu1vhaS9oZPybaCAU9XxYuTc4BX3feqXryIqV+YIjA=;
	b=QZYQBpKS/XB7LVsrGf7nHK47464HHhLHAWchg5ksmCdAP08dRme5/5pHWLWuSptORM
	p+SMEi99xn7zWS5VBBNbwVhhIe9/wO7M2AKMlILhd3mrLREKMp5TqyEsbPfo4qM8QRRQ
	emZbc9N9p6SqdD9U0RyCD8hLo6nSzpqttRphb0NRsTZQeTOJUoJ35/eoFVRbDZxEE9+s
	KSC7ApUokbSKxv3FQda21dfrqXxcjFcP7up1DLA5DfqHn59N8k0jeGThGtKJgCI6cef8
	8b3b4SpNCG0+6CFKfhA7KnjkQRoDnTBa8u00GsfOf5RxncKGLBBCPRKHjdPEAuaXtuvV
	6xHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=CQu1vhaS9oZPybaCAU9XxYuTc4BX3feqXryIqV+YIjA=;
	b=PAceCrTr/+wjw8l3yutsyDAK7ulSPm6lLEPTEVw43httr0XT1/8deNTTzahvdyHzjH
	96LUWAdKytxA0WkoPnSZeI0ggC/1F+bjoH3Q2hdNKeTNwJXySgOkq/ImiJvoLU0WLktw
	H/bXZsjKzlb4cJDwo3cE4ZDIHO3Q1seSXF6u9AXPJR7FefFfsVNuSH+nRglWSDZEiYAQ
	1dgYJNXlGV6/J1zUl54cpjmWqnRf1OZuJross95BV0Aj9wdlCkvtqVRY9n6h6lQEd31n
	lIdaaRPW09TWqShaX1m9pECBgKUJrQNwgLJTsutYL1FUAs/LS5eNrsL4glqU/486lfK5
	tlYA==
X-Gm-Message-State: AMCzsaUDdOoeowu8GpVI0gVS8pUY+sG6F4e/kAkQ8pTDpGne97jndvGS
	f9DJTff1D3X0vs6JO3NtBvGtn1Bk7dY7msxnHcSjIA==
X-Google-Smtp-Source: AOwi7QBeAs21JkExArHL2bV3GkkmTek96dXyTUZfQlmMBJ6iiobOMNFZjmkyQkZmzrifJ397aIgZYfgYFMCHbdneNZc=
X-Received: by 10.159.51.236 with SMTP id y44mr535191uab.2.1506503862479; Wed,
	27 Sep 2017 02:17:42 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.86.193 with HTTP; Wed, 27 Sep 2017 02:17:42 -0700 (PDT)
From: Andrea Galbusera <gizero@gmail.com>
Date: Wed, 27 Sep 2017 11:17:42 +0200
Message-ID: <CAC+thW29EEDcrdz+bvD82fnDSV8Q0siUmXqq0GVcWKAe7W0vYA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: do_populate_sdk_ext always being triggered
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
X-List-Received-Date: Wed, 27 Sep 2017 09:17:45 -0000
Content-Type: multipart/alternative; boundary="f403043ef77c93afa8055a28436e"

--f403043ef77c93afa8055a28436e
Content-Type: text/plain; charset="UTF-8"

I noticed that periodically running 'bitbake -c do_populate_sdk_ext' for an
image in my CI loop does always trigger the task to be executed even if no
changes where applied either to metadata or to the configuration between
two iterations. Is this expected? If so, why? Shouldn't SDK artifacts
exploit the sstate as i.e. images do?

--f403043ef77c93afa8055a28436e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I noticed that periodically running &#39;bitbake -c do_pop=
ulate_sdk_ext&#39; for an image in my CI loop does always trigger the task =
to be executed even if no changes where applied either to metadata or to th=
e configuration between two iterations. Is this expected? If so, why? Shoul=
dn&#39;t SDK artifacts exploit the sstate as i.e. images do?<br></div>

--f403043ef77c93afa8055a28436e--
