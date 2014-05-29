Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3238E00B74; Wed, 28 May 2014 19:11:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ie0-f169.google.com (unknown [209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82C41E00B6C
	for <yocto@yoctoproject.org>; Wed, 28 May 2014 19:11:21 -0700 (PDT)
Received: by mail-ie0-f169.google.com with SMTP id at1so11228473iec.0
	for <yocto@yoctoproject.org>; Wed, 28 May 2014 19:11:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=qrvxRtXHI7Dccw9Zny1Wmvn9Gmx2Klv8J4487yek+Vw=;
	b=Gu3JZ8aYIcDxbYHTWvwaXFILieTtkcPZDrFANGgM82KEUN3+fFYnxs338xBMrKqZ2s
	4G41NAgSBzQOc8YQrSAgHUdtdcXxbxoiei1mCatpTXUEEHaOZnAQHQPWKiOMNFhoOMhx
	dBE5LUrrDT/wGtHy7mpISrXxkKVj1NoCiHP4w9gU4Nma+B7XfI1TrnR6O92Jr5ksSH8t
	RaACeq4qISJGRq15cMrucpOTOG7bafe0A9QojSIITtA1vTKBNrI3Hz+ZYLVTTZzEtaya
	pU8ic2eHPlPEuUv/BtIz4wYpBkqoBEh4ZGG/muuRKva2BJrL4Q7Yfq6jl6XGttZtD7PN
	1LbA==
X-Gm-Message-State: ALoCoQnXE61nh5h/IU9DoQoagqapNMjgPQ87pGAVSSKb0zMWc41rqHljhpWpuuywGGiiEZOXoygW
X-Received: by 10.50.153.8 with SMTP id vc8mr48755150igb.16.1401329480774;
	Wed, 28 May 2014 19:11:20 -0700 (PDT)
Received: from mir.deserted.net (24-246-4-250.cable.teksavvy.com.
	[24.246.4.250])
	by mx.google.com with ESMTPSA id y15sm20305959igy.2.2014.05.28.19.11.19
	for <multiple recipients>
	(version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 28 May 2014 19:11:19 -0700 (PDT)
From: Joe MacDonald <joe@deserted.net>
To: valentin.cobelea@enea.com,
	Alexandru.Vaduva@enea.com
Date: Wed, 28 May 2014 22:11:11 -0400
Message-Id: <1401329473-23967-1-git-send-email-joe@deserted.net>
X-Mailer: git-send-email 1.7.9.5
Cc: yocto@yoctoproject.org
Subject: [meta-cgl][PATCH 0/2] cosmetic updates
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
X-List-Received-Date: Thu, 29 May 2014 02:11:28 -0000

I'm just taking a look now at meta-cgl and gearing up to do some submissions to
it.  I've been working from:

   git://git.enea.com/linux/meta-cgl

which hasn't seen much activity recently, but it seems to still be the
authoritative source.  I apologize if I'm working from an out-of-date tree.

For starters, if I could make a request, any chance we could get the README
file updated with instructions on where you'd like to see patches go, so I don't
unnecessarily spam the list?  :-)

-J.

