Return-Path: <prvs=031b76774=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A90AE00CAF; Thu, 18 Aug 2016 00:10:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,BODY_URI_ONLY,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [91.230.2.99 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0002]
	* 1.0 BODY_URI_ONLY Message body is only a URI in one line of text or
	for *      an image
X-Greylist: delayed 64 seconds by postgrey-1.32 at yocto-www;
	Thu, 18 Aug 2016 00:10:37 PDT
Received: from mail1.skidata.com (mail1.skidata.com [91.230.2.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DE97E00C7C
	for <yocto@yoctoproject.org>; Thu, 18 Aug 2016 00:10:37 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2DqBQA2KbVX/0oKEKxehERSB7VFgg+BfYYTCgKCIBMCAQEBAQEBAYEFQRCEDgEFgQkLDQsuVwYNBgICFsY4AQEIJ4YqgXgIgk2FDIRyHQWZRIFkjyWHaxcMhVCMO4N4IAGEL2yBeoQ0fwEBAQ
X-IPAS-Result: A2DqBQA2KbVX/0oKEKxehERSB7VFgg+BfYYTCgKCIBMCAQEBAQEBAYEFQRCEDgEFgQkLDQsuVwYNBgICFsY4AQEIJ4YqgXgIgk2FDIRyHQWZRIFkjyWHaxcMhVCMO4N4IAGEL2yBeoQ0fwEBAQ
To: <yocto@yoctoproject.org>
References: <1460710190-22696-1-git-send-email-richard.leitner@skidata.com>
From: Richard Leitner <richard.leitner@skidata.com>
Message-ID: <e278b8dd-7bf7-5174-ed81-ceaea12aad7e@skidata.com>
Date: Thu, 18 Aug 2016 09:09:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.2.0
MIME-Version: 1.0
In-Reply-To: <1460710190-22696-1-git-send-email-richard.leitner@skidata.com>
X-Originating-IP: [172.16.60.30]
X-ClientProxiedBy: sdex1srv.skidata.net (172.16.10.92) To sdex2srv.skidata.net
	(172.16.10.93)
Subject: Re: [psplash][PATCH] psplash: add option to read startup message from file
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
X-List-Received-Date: Thu, 18 Aug 2016 07:10:40 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

Any comments/news on that patch from APRIL?
On 04/15/2016 10:49 AM, Richard Leitner wrote:
> This patch adds an option to read the displayed message from a file.
> Additionally the maximum length for the read string can be defined.
> If both, a message (STARTUP_MSG) and a file (STARTUP_MSG_FILE) are
> defined the content of the file will be appended to the message.
> The string will be cutted after the given maximum number of chars.
> 
> For these changes the following defines were introduced:
>   PSPLASH_STARTUP_MSG_MAX_LEN ... maximum lenght of the complete message
>   PSPLASH_STARTUP_MSG_FILE ...... path to the file to read
> 
> Signed-off-by: Richard Leitner <richard.leitner@skidata.com>

