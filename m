Return-Path: <prvs=95227d08a=Richard.Leitner@skidata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D3330E00EBB; Tue, 31 May 2016 00:12:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail2.skidata.com (mail2.skidata.com [80.120.57.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7209EE00E3C
	for <yocto@yoctoproject.org>; Tue, 31 May 2016 00:12:32 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: A2CpBACOOE1X/0oKEKxchRW3cIQXhhECggMBAQEBAQGBDYRFAQEBAwEyAUURCw0BCgkWDwkDAgECAUUGAQwIAogjvA0BAQEBBgIlhieETYoiAQSTN4UAgVaOM4RPgwkXDIU4j0yCaByBTYkqfwEBAQ
X-IPAS-Result: A2CpBACOOE1X/0oKEKxchRW3cIQXhhECggMBAQEBAQGBDYRFAQEBAwEyAUURCw0BCgkWDwkDAgECAUUGAQwIAogjvA0BAQEBBgIlhieETYoiAQSTN4UAgVaOM4RPgwkXDIU4j0yCaByBTYkqfwEBAQ
To: Julien Gueytat <contact@jgueytat.fr>, <yocto@yoctoproject.org>
References: <1463939183-14049-1-git-send-email-contact@jgueytat.fr>
	<57455B94.10500@skidata.com> <574CB6EF.9090002@jgueytat.fr>
From: Richard Leitner <richard.leitner@skidata.com>
Message-ID: <574D3981.2080706@skidata.com>
Date: Tue, 31 May 2016 09:13:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.8.0
MIME-Version: 1.0
In-Reply-To: <574CB6EF.9090002@jgueytat.fr>
X-Originating-IP: [172.16.60.30]
X-ClientProxiedBy: sdex1srv.skidata.net (172.16.10.92) To sdex1srv.skidata.net
	(172.16.10.92)
Subject: Re: [psplash][PATCH] Add fbdev option to set the proper /dev/fbX.
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
X-List-Received-Date: Tue, 31 May 2016 07:12:42 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit

Hi Julien,

On 05/30/2016 11:55 PM, Julien Gueytat wrote:
> 
> For FBDEV, I have been told on #yocto that the FBENV variable is kind of
> useless at least for the startup as the environment is not read yet.
> This why I replaced it. But I will let it available in the next patch if
> this is what should be done.

Ok, sorry I didn't knew that. In that case you can of course remove that
"feature". But please add this description somewhere to the commit text
or create a separate patch for it. So that everybody can understand why
it was removed (also in the future).

> 
> For the psplash documentation, I did not find any. Where am I supposed
> to complete it?

I just took a second look at your patch and saw that you've added the
option to the "Usage text". This should be enough. Sorry that I didn't
see it the first time! :-(

Unfortunately there is no "real" documentation for psplash AFAIK...

> 
> Thanks for pointing out that a patch should serve a single purpose. I
> will correct the indentation in a separate commit.
> 

Thanks.


Furthermore please add yourself to the AUTHORS file and add a short
description to the ChangeLog when re-sending the patch(es).

Thank you!

kind regards,
Richard

