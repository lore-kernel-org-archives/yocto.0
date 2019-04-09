Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14DCDE00AD5; Tue,  9 Apr 2019 04:28:20 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0511E00A84
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2019 04:28:18 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id n11so13964213ioh.1
	for <yocto@yoctoproject.org>; Tue, 09 Apr 2019 04:28:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=XrniWYQuBRQOT4fP2yBPTc8v3VwHuidcs8buPFb/7rM=;
	b=WXjjh2PvL9opmWLFts65blN0k8VAhIU3GBXuzZILKffhB+iterRVvZV9i70zGlK7+/
	432biLR0aztekKnCFM/CBjKiRLde39cYd8BixaMkXPub8NOojR0djimyFysFj/BzuQs2
	LnizHSJPVt4B6FS/drpZr85jr9zAFvt7MFmRHRzNpzT9CyyphvZzs/ewgDB7oRwUZZWs
	uHOVpfsvnSLhvir+Ffraq6Ely6K8isj/lo0SdZY8aAPvAkEM3QKTguU56i74R2n6LqKP
	xYkpLkEogzJOMg3vFMuxg0JFvC/uhl+KBQVgeLWbIsZ9tK2v/QbpmPXqA6DLVK5ZLghT
	KRPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=XrniWYQuBRQOT4fP2yBPTc8v3VwHuidcs8buPFb/7rM=;
	b=tAMpb6sh5uX+rSg7JV32W8t4MedqH0Eit7qEjfxKKiWTmUqAIsjMJB6OUotkk8KIQD
	1B5Yred0k8/wHFUUjLa2Kwv4yzx9RDzIm8i5K6Vhdkhcpgyz8QDMkTejgKuBfgNDYvHS
	SAhV1+Qtu4nB4iHbed7SWSKDxNwhwROP5oHKT7FUnrwAXZonY22c6B4MK3E8WL5uKiM9
	xdc7BoUPNJsBcALopvGF7dHyZAyvSM9j9+wygmgRoi8pAEUZI5EDVjD/YXbY6CKNAwCm
	GgTXgBkoCmYEg2oR+fltH2u8uvDncN9RWGEYMUvP1A6YvW8enB5E537VPRoWXyT+97XP
	qlMQ==
X-Gm-Message-State: APjAAAUJXRkqYwO73JM51LfYPhbrdxouLJoIVtoujg//QOMLewmVArJ1
	DqIwX2KxykjNd8AahvDL4O3TBG42UyT+BkGisKw6Ew==
X-Google-Smtp-Source: APXvYqxW4eke1xFFLb5tS2U7bRKi3aq95/CoJr29kvQlecA8uWz2CIaeCni4cD6JXSZasaKH5g+rF5Db9mzSk23NLps=
X-Received: by 2002:a6b:db04:: with SMTP id t4mr23486667ioc.243.1554809298253; 
	Tue, 09 Apr 2019 04:28:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:91a9:0:0:0:0:0 with HTTP;
	Tue, 9 Apr 2019 04:28:17 -0700 (PDT)
From: JH <jupiter.hce@gmail.com>
Date: Tue, 9 Apr 2019 21:28:17 +1000
Message-ID: <CAA=hcWR5R973+X4hTGhD+kY5EJ0deVJa8cjzRJsSSSXfhYkq7w@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Anyone used uBlox EMMY-W1 and has patches?
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
X-List-Received-Date: Tue, 09 Apr 2019 11:28:20 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

The Marvell firmware sd8887_uapsta_a2 seems diff to the current sd8887_uapsta.

Thanks.

- jupiter

