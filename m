Return-Path: <theodor@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 80E58E00C0B; Wed,  9 Mar 2016 05:17:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,BODY_SINGLE_URI,
	BODY_SINGLE_WORD, DKIM_SIGNED, DKIM_VALID, RCVD_IN_DNSWL_LOW,
	TVD_SPACE_RATIO autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.0 TVD_SPACE_RATIO TVD_SPACE_RATIO
	*  0.0 BODY_SINGLE_URI Message body is only a URI
	*  0.0 BODY_SINGLE_WORD Message body is only one word (no spaces)
Received: from mail-qg0-f43.google.com (mail-qg0-f43.google.com
	[209.85.192.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AECC0E0088B
	for <yocto@yoctoproject.org>; Wed,  9 Mar 2016 05:17:29 -0800 (PST)
Received: by mail-qg0-f43.google.com with SMTP id t4so40598416qge.0
	for <yocto@yoctoproject.org>; Wed, 09 Mar 2016 05:17:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:date:message-id:subject:from:to;
	bh=fdkeB/A0FkbVP2k4J4pNPoeWH6vqBm9+b0C3OY87Cw8=;
	b=H7RD+cltDpfJUpmDPDlHMZYyYmrfxDxFsFtsS8o2NDJkbZs3hq/QnFhXnI5pQwxhPw
	VZtsfr29yvbK1Vem3x5NBwlh80QW+B80xxecwpx7bOkfHoPXeR7AJ/AG3bsH9nB2xAPZ
	2brNr+DWrr2hWhkCQmAJthKIbxvnKJqnZJgJlXn4MqYGk6cokCkybvRFKaR/RPqF4AD2
	vDLDvKuwPbJryqxLBrlYIy8Upk0gsgVjvjNjkIGODc3xV/b/rsiRr5n0DfpiLQh4eZCV
	nxguuBApTUZMgJ1qY4I1yXfpYjxxW+c1m9V5xNUV04H3ocKt9RbBomLASJRbe/x3fw/0
	MFNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=fdkeB/A0FkbVP2k4J4pNPoeWH6vqBm9+b0C3OY87Cw8=;
	b=gvlSGopcqVGuJENGAvbXRkVco0Q8vZAstloSERGJDBEaJIbWArifo6RjI3xet5/b4S
	Y+DImnDDF+Yo/9j10LxBJRcgocpjbQj95erGwS87gJPMgeHYcnolu0mPMgmzKzH5A2kS
	PHDIUUHVlccOYr591AE9Vj5o0EwjPjmYX2qqFhJNzMKIN20GREMRCfbvNFVj6ntaVrMC
	6dJYvzEyVwLVKZGQIpnYyVLoG40BEb0lrGhgpJPJqi2SnfO9bl56OKHemi/KlBQk7qUs
	Xs+8kdQ6/PUqMJyasmI5G7aWFv6ZZKIwiSWczKki8bIt3dQvuWZA/p5/khnSIfMk0brc
	Md5A==
X-Gm-Message-State: AD7BkJKeuXbLRETnZeighK73A20IGPLlA1VSII/2B5dp9VnNWr81UQN2GPSlAAvsf/bJEUMuhuCv/BDBjNBPcQ==
MIME-Version: 1.0
X-Received: by 10.140.85.133 with SMTP id n5mr43463598qgd.32.1457529448944;
	Wed, 09 Mar 2016 05:17:28 -0800 (PST)
Received: by 10.140.82.104 with HTTP; Wed, 9 Mar 2016 05:17:28 -0800 (PST)
X-Originating-IP: [109.100.140.128]
Date: Wed, 9 Mar 2016 15:17:28 +0200
Message-ID: <CAJjOg+FgAhe6eBqwaMvz1aUzsq4dJqUxHcX3=2-iXbD2JtEs2A@mail.gmail.com>
From: Theodor Gherzan <theodor@gherzan.ro>
To: yocto@yoctoproject.org
Subject: [meta-rapsberrypi][Patch]
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
X-List-Received-Date: Wed, 09 Mar 2016 13:17:34 -0000
Content-Type: text/plain; charset=UTF-8

Test

