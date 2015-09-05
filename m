Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 53258E00B7C; Sat,  5 Sep 2015 11:12:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.52 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rudolf.streif[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f52.google.com (mail-pa0-f52.google.com
	[209.85.220.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BCA7E00B03
	for <yocto@yoctoproject.org>; Sat,  5 Sep 2015 11:12:57 -0700 (PDT)
Received: by padhy16 with SMTP id hy16so52258233pad.1
	for <yocto@yoctoproject.org>; Sat, 05 Sep 2015 11:12:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:user-agent:in-reply-to
	:references:mime-version:content-transfer-encoding:content-type;
	bh=hLTmoDm46kLhD6yt09hbYzsc9Kl4/ic6yAWIfkHwoG8=;
	b=fLhnSp/F2VYdITzei95h6pF9CVHrsTRUEoo4u5pX4XGDsei0VfTPgEZXRqrxnGAlhr
	5vCvGev/RR6JXuXk0FjAiWeT2YCE5RtCUy5b+krJSR9HirVie3NWItg0TwVcWuK+XBdL
	ytLx9ZN/qUd5TDCQ5eoPS6TOgibBjvgevM1B/anwmOLomYgXfXzIV+XEDNE+AIvrK5eP
	1Q8Qsg8TMUWTMKnNWJqEBAKi1s+EoNzgDmDVhf2aUl5LHjhhntozHzY+PAEb52YNEgsr
	AFkuntYf1WOYk/jaCZ2Ye7ApiYItY5bfzLrPh3RM8qxx9CoAM8j9KTfioubvE93DBIda
	eTuQ==
X-Received: by 10.68.133.167 with SMTP id pd7mr24043230pbb.23.1441476777621;
	Sat, 05 Sep 2015 11:12:57 -0700 (PDT)
Received: from rjs-mbpro.streifs.net (ip68-7-48-20.sd.sd.cox.net. [68.7.48.20])
	by smtp.gmail.com with ESMTPSA id
	pe5sm6538720pac.17.2015.09.05.11.12.56
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 05 Sep 2015 11:12:56 -0700 (PDT)
From: Rudolf J Streif <rudolf.streif@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 05 Sep 2015 11:12:55 -0700
Message-ID: <9131288.7yJWbP0P4p@rjs-mbpro.streifs.net>
User-Agent: KMail/4.14.6 (Linux/3.19.3-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <1588577.KDHg4vLlIx@rjs-mbpro.streifs.net>
References: <msd33a$81v$1@ger.gmane.org>
	<55EB098B.7040401@reliableembeddedsystems.com>
	<1588577.KDHg4vLlIx@rjs-mbpro.streifs.net>
MIME-Version: 1.0
Cc: Robert Berger <gmane@reliableembeddedsystems.com>
Subject: Re: gdb/gdbserver vs. eclipse
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
X-List-Received-Date: Sat, 05 Sep 2015 18:12:59 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Robert,

What version of Poky/OpenEmbedded Core (meta) are you using?

I found that including Fido (1.8) the tcf-agent built by meta was stuck at 
version 0.4.0. That causes issues with running on the target and getting the 
console output back to Eclipse. That's now updated to 1.3 in master for 
Eclipse Mars. I built 1.2 for Luna which works, but 1.3 works with Luna too.

Cheers,
Rudi

