Return-Path: <jaghu@google.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C4A7E00D35; Tue,  6 Sep 2016 09:08:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.43 listed in list.dnswl.org]
	*  2.4 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.43 listed in dnsbl.sorbs.net]
Received: from mail-vk0-f43.google.com (mail-vk0-f43.google.com
	[209.85.213.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ECCCAE00D31
	for <yocto@yoctoproject.org>; Tue,  6 Sep 2016 09:08:50 -0700 (PDT)
Received: by mail-vk0-f43.google.com with SMTP id v189so104347452vkv.1
	for <yocto@yoctoproject.org>; Tue, 06 Sep 2016 09:08:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=m3k3K6Kxpko4yizUpCDRGCp+iSd9nehLbM/0Vs/l9EM=;
	b=K1GfoNE6qSSWrSOkbK4/b443KKeAnWEsLcjxIbbqoCrBjOF4OvyreRbv8ulStFPvnM
	lSF280Gzy1dsEkyc88RCGMsJiY8qC//40DHp9YtjVHqs5ekLfUwSthcLAaWX0IgiKFCJ
	uN/ndd8K/YCmKbF5SK1VAKKgt40C7QgIb3eI/l4ztnb35EoDHzqJEI2vki+4v2ywbA8H
	ahWZEyOrlRhmINwiXTXArjapbgq7mVBedl0n6iN63tjtY38Wm/9vOT0MhCA47Kn027h2
	FVHYFGL1DQ/GlGAsz7DxyXZBlfopvV5EI3DzaBDHT69VLLBuAYaecvHhYnNhr8xowF1G
	ghxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=m3k3K6Kxpko4yizUpCDRGCp+iSd9nehLbM/0Vs/l9EM=;
	b=QxZgx2OG3OkCHWhudoKtp5lNenxyC/lepbr9OzZa3ClGV/bbTBsuzWislGW1U1qneS
	Dq74gtSNLfuEYAMEWSSy2Rp4Zb+aXLoTk1k5Fe8vNqwSNCGZE2vZ8RksVBmiMy1BWsh3
	4qqtvAKpKDKIf2+7+ZH7+mpzlVaHQBm0MI2nZZG3P+Z5jO4Q24esMM2mE2ff8Rnp29Un
	xZSfCa3dfbcEkH3gQF7hzLr6z7ZrLxz8xHRik/px+2/lhS6NggvyaV9ob0B//gKoENFY
	+yPFxyewvv38C0U/jqSydyKJu0Ngo/9IejeaDhPYrbGBEejM5C4l4YzoFB9se6CtrEjy
	LVOQ==
X-Gm-Message-State: AE9vXwOLVJ7CnM6rzc0FFtYjgHcqGSeteQ59rdm7ubv6OurZG5BiC9LQSNMfaD5OH7Yd5RALTeQUfncZ4sqa3e9u
X-Received: by 10.31.125.9 with SMTP id y9mr9796145vkc.0.1473178128870; Tue,
	06 Sep 2016 09:08:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.92.200 with HTTP; Tue, 6 Sep 2016 09:08:28 -0700 (PDT)
From: Jaghathiswari Rankappagounder Natarajan <jaghu@google.com>
Date: Tue, 6 Sep 2016 09:08:28 -0700
Message-ID: <CANsWYUXE=HupyZ6PFc9q=g=tyH_PEA=j0YTgXXwSL19kZ263LA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Add some changes to a existing machine.conf file
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
X-List-Received-Date: Tue, 06 Sep 2016 16:08:53 -0000
Content-Type: multipart/alternative; boundary=94eb2c14c20a142fca053bd903d2

--94eb2c14c20a142fca053bd903d2
Content-Type: text/plain; charset=UTF-8

Hi... what would the correct way to add some changes via my layer to a
machine.conf file(existing in another layer)? The qemuarm.conf already
exists in meta/conf/ .. I want to add some dependencies to machine type
qemuarm in my layer..(qemuarm.conf file under meta/conf only gets included
and the qemuarm.conf file under my-layer/conf does not get included even
though my layer has higher priority)

--94eb2c14c20a142fca053bd903d2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi... what would the correct way to add some changes via m=
y layer to a machine.conf file(existing in another layer)? The qemuarm.conf=
 already exists in meta/conf/ .. I want to add some dependencies to machine=
 type qemuarm in my layer..(qemuarm.conf file under meta/conf only gets inc=
luded and the qemuarm.conf file under my-layer/conf does not get included e=
ven though my layer has higher priority)<br></div>

--94eb2c14c20a142fca053bd903d2--
