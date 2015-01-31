Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 27973E007AB; Sat, 31 Jan 2015 06:58:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.2 required=5.0 tests=BAYES_00,FSL_HELO_FAKE,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: *  2.8 FSL_HELO_FAKE FSL_HELO_FAKE
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-la0-f53.google.com (mail-la0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD843E003D4
	for <yocto@yoctoproject.org>; Sat, 31 Jan 2015 06:58:54 -0800 (PST)
Received: by mail-la0-f53.google.com with SMTP id gq15so29243617lab.12
	for <yocto@yoctoproject.org>; Sat, 31 Jan 2015 06:58:52 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-type:content-disposition
	:content-transfer-encoding:in-reply-to:user-agent;
	bh=DXmUuWlfZiG+Pnszf5YPNrWBUHjTExCjNNriHYrJM4U=;
	b=VxEii7goRyB4CQ9kLOtCr8aVUhsUH6znZVZuStDfVe2cWMEyBZ/NRzmp4I5d5WTOOp
	+lz4ILzOA71prMvEXGenrya6VXXjSDIrSROZ4yGpqxidtwsGEJmESN3uL8xAWMhCsK+W
	9Es6dTZvChaUoWp9Jeg2ACLwCKD/9Gp8f/QkFUdqQRJiunMcOHWPjIJujZQz8HyeldT5
	baMY86TunaC7IelZTl2eRx2hn9mXme/d6vO5/jtaUHXaQDhwvrSCJV8s37OgO3CzPKtG
	0MRt5kM6yC1mZcaBnr5xJKm4cKGraxnlaQrIz322kx0OyFJDfl1pkQT3ZpwO5ytPkPfV
	MvjQ==
X-Gm-Message-State: ALoCoQkmjRFJpKuWhjKVc1xW0EB3/QCs064+yQqyMdKBC62gYxDWcb+VphexuhZlXSstOuRkvmLL
X-Received: by 10.152.178.197 with SMTP id da5mr10932667lac.87.1422716332277; 
	Sat, 31 Jan 2015 06:58:52 -0800 (PST)
Received: from gmail.com (dhcp-186-165.gjk.dk. [195.249.186.165])
	by mx.google.com with ESMTPSA id v8sm3338534lae.6.2015.01.31.06.58.51
	(version=TLSv1.2 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Sat, 31 Jan 2015 06:58:51 -0800 (PST)
Date: Sat, 31 Jan 2015 16:58:46 +0200
From: Andrei Gherzan <andrei@gherzan.ro>
To: Petter =?iso-8859-1?Q?Mab=E4cker?= <petter@technux.se>
Message-ID: <20150131145846.GA25509@gmail.com>
References: <1417604626-52166-1-git-send-email-incnews@jenslucius.de>
	<CAK18fxEe4GfNZ9qyOPc5oMU+Y8WyLKSjVw9LnZGj2q4ZBMhRNA@mail.gmail.com>
	<b437815e1d543db649048ea5af01f905@technux.se>
MIME-Version: 1.0
In-Reply-To: <b437815e1d543db649048ea5af01f905@technux.se>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: theodor@gherzan.ro, info@jenslucius.de, yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: Replace not working v3.16.1 by v3.16.5
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
X-List-Received-Date: Sat, 31 Jan 2015 14:58:57 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Tue, Jan 27, 2015 at 06:52:54AM +0100, Petter Mabäcker wrote:
> Hi,
>
> Actually this bump is already included in meta-raspberrypi:
>
> efd760d linux-raspberrypi: faulty branch and srcrev for 3.16

Correct. Thanks.


--
Andrei Gherzan

