Return-Path: <patrick.boettcher@posteo.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A27F1E00D12; Thu, 28 Mar 2019 09:56:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [185.67.36.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mout02.posteo.de (mout02.posteo.de [185.67.36.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C3BB0E00AD5
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 09:56:29 -0700 (PDT)
Received: from submission (posteo.de [89.146.220.130]) 
	by mout02.posteo.de (Postfix) with ESMTPS id 69B042400FD
	for <yocto@yoctoproject.org>; Thu, 28 Mar 2019 17:56:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=posteo.de; s=2017;
	t=1553792188; bh=OzNQCv2YG3NqezeCVkHakLBP9yR0ON8jKQ0q6zPEG7s=;
	h=Date:From:To:Cc:Subject:From;
	b=nE14ZDSTbMC8Id3HF2Xphmqszp7CK2rp1rCiXOJ5ibHbvCpvpFTVs8wIG53wD5MOs
	YiUcnq8CpiX8EiQNROj2B6HjCa2TPAtt60KyRq/MEl8JNWqxOTvSonsHGM/ffmAHKn
	RBUz4MIP2JmzFClpg4FQnYzCDLdcLiCpd5GQfNfVRMM/pPSbL0wE9GBr6hHs9PM8aW
	668HIiWuQz/q+av/U6v9HlPgN7pp8DLcKGhPzFAIvfOjQPVSZ3sG0mN0FHsFOaALvn
	6VOuHTHXvobjT3Kr5ZpsHO53bELvTfOLDPjboXpy1UIZav8GagZ1p8pLG0JTWx9L6n
	zVLfGN7FHj9cQ==
Received: from customer (localhost [127.0.0.1])
	by submission (posteo.de) with ESMTPSA id 44VWGz63cpz9rxG;
	Thu, 28 Mar 2019 17:56:27 +0100 (CET)
Date: Thu, 28 Mar 2019 17:56:27 +0100
From: Patrick Boettcher <patrick.boettcher@posteo.de>
To: A <aaron.biver@gmail.com>
Message-ID: <20190328175627.46f0b25a@posteo.de>
In-Reply-To: <CAMd7AX_J0w+iwWN8w8To1FmzxdEro0sz7xWOT2TUZNBmpcexJw@mail.gmail.com>
References: <CAMd7AX-pAObJ38twArWYpif7OCb5Z_mQmnfgRe7GxrnMXv-1mQ@mail.gmail.com>
	<20190328173042.5a4d9f0b@posteo.de>
	<CAMd7AX_J0w+iwWN8w8To1FmzxdEro0sz7xWOT2TUZNBmpcexJw@mail.gmail.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Basic Yocto+CMake Usage question
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
X-List-Received-Date: Thu, 28 Mar 2019 16:56:30 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Thu, 28 Mar 2019 12:51:54 -0400
A <aaron.biver@gmail.com> wrote:

> Thank you for the quick suggestion.
> 
> Unfortunately, I tried setting OECMAKE_FIND_ROOT_PATH_MODE_LIBRARY to
> "ONLY", "NEVER", and "BOTH" separately, and none of the above
> worked.  I must be doing something fundamentally wrong.
> 
> Any other suggestions?

More information would be needed: What fails? When does it fail? How
does it fails? You should find these details in the log-files. Could
you provide parts of it?

--
Patrick.

