Return-Path: <edwingate8@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 588EEE00C12; Thu,  6 Dec 2018 16:23:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (edwingate8[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.180 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f180.google.com (mail-it1-f180.google.com
	[209.85.166.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5E0BE00BB5
	for <yocto@yoctoproject.org>; Thu,  6 Dec 2018 16:23:50 -0800 (PST)
Received: by mail-it1-f180.google.com with SMTP id c9so4565158itj.1
	for <yocto@yoctoproject.org>; Thu, 06 Dec 2018 16:23:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=dCsXF4Q3r5iD3ciIoQn9E4TKwQyaEA1Az8bFH1vNfM4=;
	b=qQxTzm5nQKvOI0Aa2ykCTgIwJBeIsqBrKOpp11JLp7Es1NhCVZrSomMJdQ0lz8VdOi
	NJuwAkwlut6ukQPOv+Cwu8iUEriDZnXqz+1lLtM5SO51AZfsSCKth7Nz4qaL1o03Yqfc
	HZijjhWEE0puCGTp3hqbpTN+grqo0N/CSGgZQpXzLIWEFnW3ddS4ZkNXwGayG4yMKokl
	HkpR8oNy1PlyEwyfrPS+OWbVpcw5KeJlimeEKPmkjR5d52AnD7KDX6boBvUE3c7Bggdc
	GIBGMOTPACZ7kqgnIId2bUAqQEiRH8ojuqLj+FFyeBSY4snC/osgRflBLZzBOFlYeju/
	CnJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=dCsXF4Q3r5iD3ciIoQn9E4TKwQyaEA1Az8bFH1vNfM4=;
	b=isJR4dRSlxieD68wRqlLALXWaqbG7AGdnZ3hMYlptxLTDNvIqj2yhC32fVaA7Q5bTL
	Gr/3i5HawXkKISFoIbg2ZWknkBnzHMPsx+lRE9XXIZoahilYTBhFUpkoiXFS0OoWFYDp
	f/yjXch42qcftAKIO2EOzHC0i9HUz05FWSNxRTQbLOkwderEcF8nah4fKYexsoQWSUqE
	0PYY2oTLAiMT/Sp2mLR0oRznfNcun4BJayqOIwVYKtGnF3EWO7PDzApniIZlRkliSRve
	t0LpnWZJRhKPbz907+RY1YSybpqu+3YsKBvty25tziQJOzq/HQzP/K/xxMMoHdvnniCV
	W4Kw==
X-Gm-Message-State: AA+aEWY/+kD89ktHPQhYJzOIumpKotbjc+JQVjbUc86VlLrz41hiNHhb
	t4tnfONpaCJG7+gRWlV14/JK3Rz3OZtcTocZJnmvgUOH
X-Google-Smtp-Source: AFSGD/VUF9QpmOd+RICVzfYRjjWO6pJw9Hr5r12t3q8fD5UQeHrPFeoI4f8izyfGBBRYDZCcYS8lKP/907CEDNEXaGA=
X-Received: by 2002:a02:f95:: with SMTP id 21mr84318jao.66.1544142230131; Thu,
	06 Dec 2018 16:23:50 -0800 (PST)
MIME-Version: 1.0
From: Edward Wingate <edwingate8@gmail.com>
Date: Thu, 6 Dec 2018 16:23:41 -0800
Message-ID: <CAGMdoFmDg1ia5K06BUqK-yYZJW7wqMNyo66hK_SkBm5PWDZWWw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Duplicating a build configuration
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
X-List-Received-Date: Fri, 07 Dec 2018 00:23:51 -0000
Content-Type: text/plain; charset="UTF-8"

I have configured Yocto to build a jethro distribution that I've been
using for the past 3 years.  I want to duplicate this configuration on
another computer as a backup build machine.  I could just copy over
the poky directory and all my layers, but I think this would copy over
unnecessary files (build/tmp, old build artifacts?).

What would be the best way to make this backup computer be capable of
generating the same distribution?  Some of my layers are on the jethro
branch, and others on the master branch. Should I just configure from
scratch (git clone all the layers, set all the right branches)?  Or is
there a better way?  Could/should I reuse the download mirror or the
sstate cache on the original machine?

Thanks for your help/suggestions.

Ed

