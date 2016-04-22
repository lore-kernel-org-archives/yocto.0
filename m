Return-Path: <prvs=91346fbda=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93C96E00E00; Fri, 22 Apr 2016 00:53:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail2.skidata.com (mail2.skidata.com [80.120.57.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23F72E00819
	for <yocto@yoctoproject.org>; Fri, 22 Apr 2016 00:53:05 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2CpBAD+1hlX/0oKEKxehQ63cYQRhgQKAoF3AQEBAQEBgQ2EQgEBBIEJCw0LCSUPAkYGDQgCx1cBAQEHIIYhhEuFC4UKBZgPgVWOJYdTFwyFNI8vhE2IYn4BAQE
X-IPAS-Result: A2CpBAD+1hlX/0oKEKxehQ63cYQRhgQKAoF3AQEBAQEBgQ2EQgEBBIEJCw0LCSUPAkYGDQgCx1cBAQEHIIYhhEuFC4UKBZgPgVWOJYdTFwyFNI8vhE2IYn4BAQE
To: <yocto@yoctoproject.org>
References: <1460710190-22696-1-git-send-email-richard.leitner@skidata.com>
From: Richard Leitner <richard.leitner@skidata.com>
Message-ID: <5719D87E.70604@skidata.com>
Date: Fri, 22 Apr 2016 09:53:34 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.7.0
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
X-List-Received-Date: Fri, 22 Apr 2016 07:53:11 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

Hi,
are any comments or possible improvements?
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

regards,
Richard

