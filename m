Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB521E00DA3; Thu,  1 Aug 2019 00:37:26 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.47 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com
	[209.85.166.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5895EE00CD7
	for <yocto@yoctoproject.org>; Thu,  1 Aug 2019 00:37:26 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id q22so22417537iog.4
	for <yocto@yoctoproject.org>; Thu, 01 Aug 2019 00:37:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=2Y57X4dXJMO01y6YGVMOcBhSgCZgXAcVJCYj7ClSMK4=;
	b=lpmV4hPGeTU8/uaKummnOuOx5rtz91XwvEl0a3J099UG91YGU0GYNGV8BmIcyXl0Cp
	MknDV4MPs8C03HjDW/JHc5rJagJvBssgSud7MPvOftvvhpxgtBD4dNFGFt9UPNM7X5gz
	fn7c8VVDT7PHxHQN+KmD9c5cVuctQ7BChVrZsdrEnEsYriCT3XriZAjwiHlSUqxndsea
	1vpXQu1DgekEI04pzTDDnnkfKd+K4FTnMeb5H9VBC99uMvmo82RMz0gVHRikIwojnnYk
	rTBpNjnqnuYnsMj5I3gMpZ0G8IznbbSarpGWZyHt7KY9OWeYC25hOjn8q1YlP9T7CSnt
	pRtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=2Y57X4dXJMO01y6YGVMOcBhSgCZgXAcVJCYj7ClSMK4=;
	b=oR31v5N6F2JamRXngL7SfdSoy5e/NnHhNC3TaVHp8fzoGT77zuR0opAJ0j/JOSLZpn
	vAjsG9IX776QVwnpEiLXi+yxmcll00EwM1Hk71Qk1qEjW+gA9S7ivxD+1FEstKyPDIuw
	lboq/Jpuwe+CgoBlSoezOLSlrpshKHgCoG59+PzeyADHvpCUsutq0elbipz45H1b7oce
	epKbsI5L1W/CCh7raKdT+bXm6zXTjnUWRRkGMttlriJhL2dOCn26bn70oBJRfy/U42jJ
	UYqbRCWxuudjK21n0XoApcqAn1gNcfsPxNU5WwgMOsn80W0UJng1OiPG2WTBnxrQhx2p
	kghA==
X-Gm-Message-State: APjAAAWPsDsIQU7aM56ywqqdJQ/SI82yTGvwnF4c2sowc/G4s72DE+S2
	kk5As5yyeBb1oxzWXMwGqXrGPFXWdBQo0y7lBXRKBf7t
X-Google-Smtp-Source: APXvYqwZ1zyUxsOkn9cj1gls46J/LQ2Ccg/U5zaoxjYhdk4ZIpYfnTFOaY2nLKquTdcon18LZ/cEIiLrhE0Jh5Z/SZU=
X-Received: by 2002:a6b:8f47:: with SMTP id
	r68mr121760932iod.204.1564645045650; 
	Thu, 01 Aug 2019 00:37:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a712:0:0:0:0:0 with HTTP;
	Thu, 1 Aug 2019 00:37:24 -0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Thu, 1 Aug 2019 17:37:24 +1000
Message-ID: <CAA=hcWSYrjxA8K1jURiiwpcY5pz6zb-cb6j7R9sOTM-831-BBQ@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Make the service the last run in boot
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
X-List-Received-Date: Thu, 01 Aug 2019 07:37:26 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

How can I find the systemd last run service I can put it in my network
application After=<last run tartget or service>?

I need my network application service to be run at last in boot, I
made After=connman and Requires=connman.service that did not work,
always failed in boot, I have to manually restart the network
application service which won't work in field operation.

Searched from Internet, there is a blog Systemd: Run it last to create
a custom.target After=multi-user.target, and put my network
application service WantedBy=custom.target, that works well, but it is
a little bit cumbersome to configure customer.target in Yocto bb file,
enabling the customer.target is called systemctl isolate
custom.target, the /etc/systemd/system/default.target link needs be
changed to from multi-user.target to custom.target. I am not sure how
it could be done in do_install, appreciate your tips.

Thank you.

Kind regards,

- JH

