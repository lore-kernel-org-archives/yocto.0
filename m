Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA4E6E00A0A; Wed, 15 Feb 2017 16:11:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.44 listed in dnsbl.sorbs.net]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com
	[209.85.214.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E77CE009DF
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 16:11:52 -0800 (PST)
Received: by mail-it0-f44.google.com with SMTP id c7so7271090itd.1
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 16:11:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=J1uFJWJ7XPojEe0iXZWXHkLjPZDvI+CKM4WlmSGHhUw=;
	b=oK13VKbjA70ke54BdnKBmmNsg1zyoJxUu6THH8kXCBW08+fMamOeMwFJfXgG4L+CCD
	xFjz7Rs1Uf4+Yapa80IXTXjUWimPqy1CK/Kc6E1gTkZFvdpj7hbnl+j9RncHK/ky8NEQ
	ZrY663tZ+QBFH1eTL4OB4hNIg0u1cg+Y074IJzDktm96+pz9HkqxL58n9z0YXYoumq7U
	ZHO6L/sseoGCScNLjOWadNig+x8J5dcoTGEaI4cM4TIvvCUmLUEa5kTNX2pIAmFhp09N
	H3XKszZ973JShC01fyrtZytBgRs/kVOVD6D8xjnZBaFND+/VgqQRC7F6oSUee7n3W04r
	oQxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to
	:content-transfer-encoding;
	bh=J1uFJWJ7XPojEe0iXZWXHkLjPZDvI+CKM4WlmSGHhUw=;
	b=gVHjEV42cjI8Vkcp5PX6krctEnM78EPyit8Ad2pTEv0ObMW9shcProRmIUFo+MJfAJ
	Pl0fH6Fl1+vB3LQo95nZhB58Vgh0J056aoA2VGcuMdZjInbwbrsbDQWx36OmkXzHKmQx
	a5Fs+IRaa9JCsR7I0crb1tFsVpk6OFeETdiO5DzowigyQQjkr7iiT0RlQztwUic/Y1uI
	WBsXZAZX+qHRVs4oiqFeesynYUJbEyeAvD9GfpHkrc6ywuJBS3ryPdFSZnixqPELVDAW
	z5qzv9uZWBtlo9c/UHWy1eUU9YutkrNmr/szDa4do0qWUdwuL7PUgUEdvd57ACrpCxEg
	5bxg==
X-Gm-Message-State: AMke39nkbZ5mwcCBXs3rKO9cL7psNqEiazM9Bn1d1ivjjw/Xy+mhcJfwzZNfsSk4OEZY1vRZPrpbj+IYe2kcuQ==
X-Received: by 10.36.40.142 with SMTP id h136mr11800297ith.95.1487203911311;
	Wed, 15 Feb 2017 16:11:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.79.34.71 with HTTP; Wed, 15 Feb 2017 16:11:10 -0800 (PST)
X-Originating-IP: [2603:3023:807:fbe0:ab77:6fd:9c01:1923]
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Wed, 15 Feb 2017 16:11:10 -0800
Message-ID: <CAK18fxE4+8s3QAWm9mVQQjimvAQ1FSL44yWwuGEyDcWki5Tbpw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Change ssh key for meta-raspberrypi
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
X-List-Received-Date: Thu, 16 Feb 2017 00:11:53 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I changed my SSH key for authenticating to the yocto git servers
(https://git.yoctoproject.org/cgit/cgit.cgi/meta-raspberrypi/). Who do
I have to talk to get this configured?

My new public key is:

ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDcC4O7+4b9RYdBnPeHjsyyCDrtam7l5KRuQmZ=
KPAIsuN+AfHs4dp8vmeLD32+RpoO1S5HmUJHzt+g6CxXkomDIrqMN8dHiMgvxc3qk4PWzsve5Q5=
hUuWm5uO1SK7VdV9cBMtRQf56w59CUlt77izYfj0FoMu0bfcWORrRG/7dGzRj26F0jC13sd5bjb=
3yVFVULp8Z9RGMPuwe9Cp04LNe2/tx5sqrIGiIc98ISKgr+0me9roIGZHkNW90LuxC+6WMsVUeg=
TdeCjo0oWIivEULZu5TZiFoP0YCdsfAJGBzGV6qnEJWaDeJdlLPa8f/nYxiaFyEKpL1/jZcV3Fl=
s0T1n
cardno:000604159237

Thanks,

--
Andrei Gherzan

