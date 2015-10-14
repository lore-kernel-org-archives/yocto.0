Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E983E00B3D; Wed, 14 Oct 2015 02:08:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.54 listed in list.dnswl.org]
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5C0EE00B0B
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 02:08:52 -0700 (PDT)
Received: by pabrc13 with SMTP id rc13so48989287pab.0
	for <yocto@yoctoproject.org>; Wed, 14 Oct 2015 02:08:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:content-type:content-transfer-encoding;
	bh=7GKgbAGmERpzZAdNLcCYfWwAF4Ky/Di6R++jAbvCygQ=;
	b=QSxnVekwHzspjqsARW5YwwkIqtdF1WUc5wYucsjnys7lk+uxYcazHgRIeCcTHsH/4J
	bHmRMYY2VJu9L9EMZuywp5J2e7GK0Gr3MyZ3xqWQSpHd+hfYF2EKibLQ1EjSz2P6wVv5
	62dFLdKVF8EV6to7i7hIAp/7Viq2Aq/xZMM9YNc8oVqFEFieXBFrGOL0xpRd/FVd7Oiw
	5U8MVzZzK6cp8uShQOOP5KteMdWoFnF+iCvkDenm0Af3COqs+eOWa2ySApgDDgWPouOQ
	xNQtDCIbqKQtMVP1gpnmwlMcwJJ0Kk8Kg22JgN6BF4+aDOdV2vU/964d2NUZiCjdM9Ub
	Yn7A==
X-Received: by 10.68.94.99 with SMTP id db3mr2532836pbb.165.1444813732174;
	Wed, 14 Oct 2015 02:08:52 -0700 (PDT)
Received: from [10.154.14.143] ([192.165.183.201])
	by smtp.googlemail.com with ESMTPSA id
	x6sm8360933pbt.3.2015.10.14.02.08.49
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 14 Oct 2015 02:08:50 -0700 (PDT)
Message-ID: <561E1B9D.1080406@gmail.com>
Date: Wed, 14 Oct 2015 02:08:45 -0700
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.7.0
MIME-Version: 1.0
To: Richard Purdie <richard.purdie@linuxfoundation.org>, 
	Saul Wold <sgw@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>
Subject: Dizzy 1.7.4??
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
X-List-Received-Date: Wed, 14 Oct 2015 09:08:56 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

The current dizzy version under test is 1.7.3. Will there be one more
update after 2.0 releases, a 1.7.4? I have not done a last call and I
have patches being stage for one more update. I have updated the 3.14
kernel but it introduced lttng issues. If 1.7.3 is the last update,
there is no point in trying to resolve the lttng issue.

regards,
Armin

