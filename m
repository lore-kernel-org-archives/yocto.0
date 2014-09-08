Return-Path: <errordeveloper@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8C12E0056A; Mon,  8 Sep 2014 11:07:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (errordeveloper[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EBF1E0034C
	for <yocto@yoctoproject.org>; Mon,  8 Sep 2014 11:07:42 -0700 (PDT)
Received: by mail-ie0-f170.google.com with SMTP id tp5so4337268ieb.29
	for <yocto@yoctoproject.org>; Mon, 08 Sep 2014 11:07:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=a9/89AZiG/FXamotfMc7+IGbYhQGEefCk2YjPK/a+FY=;
	b=lL0MGyGbpmMj2flJUOHCbdl0RI/AVO2EMXKXiniTw99eaGmMDJV8eQnSEtyC9hkXao
	hTyfBBh3mJ1MqCeLTCrzCa3JeH07VoN3eSgI3rU1MfTjuhAENv/f5NZKfeU6l63VtHVf
	lveUxf8+1mnSMt202cAi7H0nqEGorHlVdLb6mHpSuWa50OEt1SSRcfR/e90YJWH6UumE
	7XsFGS+z39GAA0ISaFF7jignPGxWTRyaO+iaAKcRQJsn85+A3RrZKBNRhRWCGXs8TnlO
	lNh42zKLVa7C0TMZF2OWMExmS21BV5rYZ26P9QpuLM2+PBBqcUm6gqk1ScM8S00Z8u0a
	nB3A==
MIME-Version: 1.0
X-Received: by 10.50.30.72 with SMTP id q8mr25630854igh.14.1410199662139; Mon,
	08 Sep 2014 11:07:42 -0700 (PDT)
Received: by 10.64.238.106 with HTTP; Mon, 8 Sep 2014 11:07:42 -0700 (PDT)
In-Reply-To: <CAPhDKbH3sj49qfuBnKY-JvD2AGarFpx1PnSOij67Uvr3gABeTg@mail.gmail.com>
References: <CAPhDKbFei3vk24Zt2K169DGW+_QLhEWtV+MGXFPOgOr8TFFX0w@mail.gmail.com>
	<540C68E0.5050907@windriver.com>
	<CAPhDKbGc=aZ0Uy2XD5nSivugzwERKFJXbW3MJH=ye4UEM-X5Tg@mail.gmail.com>
	<540D9DC2.5010900@windriver.com>
	<CAPhDKbH3sj49qfuBnKY-JvD2AGarFpx1PnSOij67Uvr3gABeTg@mail.gmail.com>
Date: Mon, 8 Sep 2014 19:07:42 +0100
Message-ID: <CAPhDKbHBLE1_PVZZzWhLoz0Dxhh7GVWuoyNpQ+faV-7ZcV912A@mail.gmail.com>
From: Ilya Dmitrichenko <errordeveloper@gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: Kernel features
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
X-List-Received-Date: Mon, 08 Sep 2014 18:07:56 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 8 September 2014 13:14, Bruce Ashfield <bruce.ashfield@windriver.com> wrote:

> Ah, but we do verify it. There's a check config task, that used to
> be more visible, I got complaints and we hid it. I have a 1.7 task
> to make it more visible again :)

I have ran kernel_configcheck and it didn't appear to indicate anything.

>> Warning: The Kconfig option CONFIG_SND_DAVINCI_SOC_MCASP that you have
>> specified depends on CONFIG_SND_DAVINCI_SOC. I will enable
>> CONFIG_SND_DAVINCI_SOC as a module for you.
>
>
> This one you can't do without parsing and evaluating all the Kconfigs,
> which is expensive, and hard to do. We can do something basic by looking
> at only the direct options within a particular Kconfig, since they are
> immediately available.

I see. Have anyone though of making Kconfig itself to dump out deps
tree in JSON or other machine-readable format?

> But we do detect a whole set of other errors already, and for the most
> part, they lead pretty quickly to the issue.

Bruce, that's great to hear!

